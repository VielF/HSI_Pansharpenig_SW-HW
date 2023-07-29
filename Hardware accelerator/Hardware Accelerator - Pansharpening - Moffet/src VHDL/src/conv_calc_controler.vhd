----------------------------------------------------------------
-- Project: REG_TERM_CONTROL
-- Author:  Felipe Viel
-- Date:    10/10/2018 
-- File:    reg_term_control.vhd
-----------------------------------------------------------------

library ieee;   
use ieee.std_logic_1164.all;
 
entity conv_calc_controler is
generic(
   p_DWIDTH_CONTROL : natural := 2); 
port( 
   i_CLK                 : in  std_logic;              
   --i_RST_n               : in  std_logic;
   i_RST_n               : in std_logic;              
--input control signals  
   -- set to start the processing
   i_START               : in  std_logic;

   --COUNT BUFFER OPERATIONS BP with KP
   i_COUNT_0           : in std_logic;
   i_COUNT_1           : in std_logic;

   -- FPU AXI4-Stream signal to sinalize ready to receive data to process
   --i_READY_MUL           : out std_logic_vector(4 downto 0);
   --i_READY_ADD_SUB       : out std_logic_vector(1 downto 0);  -- data and operatio type

   -- FPU AXI4-Stream signal to sinalize that data processing done
   i_VALID_MUL_0           : in std_logic;
   i_VALID_ADD_SUB_0       : in std_logic;

   i_VALID_MUL_1           : in std_logic;
   i_VALID_ADD_SUB_1       : in std_logic;
   
   i_READY_MUL_0        : in std_logic;
   i_READY_ADD_SUB_0    : in std_logic;
   i_READY_MUL_1        : in std_logic;
   i_READY_ADD_SUB_1    : in std_logic;
   

--output control signals
   --singal tha control de FPU mux
   o_MUX_ADD_SUB         : out std_logic;
   o_COUNT_CONV_ENA_n    : out std_logic;
   -- FPU AXI4-Stream signal to sinalize that there are data to process
   o_VALID_MUL           : out std_logic;
   o_VALID_ADD_SUB       : out std_logic; -- data and operatio type
   
   -- FPU AXI4-Stream signal to sinalize ready to receive data that was processed
   o_READY_MUL           : out std_logic;
   o_READY_ADD_SUB       : out std_logic;

   -- FPU AXI4-Stream data that indicate operation type to ADD_SUB FPU block
   o_OPERATION           : out std_logic_vector(7 downto 0);
   
   o_RST_REG_DONE   : out std_logic;
   
   o_WR_DATA        : out std_logic;
   --indicate that the all processing done
   o_DONE                : out std_logic

);
end conv_calc_controler;
    
architecture arch_1 of conv_calc_controler is 
   type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8);  
   signal r_state_reg : state_type;  
   signal r_next_state : state_type;

   signal w_VALID_MUL : std_logic;
   signal w_VALID_ADD_SUB : std_logic;
   signal w_COUNT : std_logic;
begin  

   p_state_reg : process(i_CLK, i_RST_n)  
   begin  
      if (i_RST_n = '0') then  
         r_state_reg <= s0; -- idle 
      elsif (i_CLK='1' and i_CLK'event) then  
         r_state_reg <= r_next_state;
      end if;
   end process;

   w_VALID_MUL <= i_VALID_MUL_0 and i_VALID_MUL_1;
   w_VALID_ADD_SUB <= i_VALID_ADD_SUB_0 and i_VALID_ADD_SUB_1;
   w_COUNT <= i_COUNT_0 and i_COUNT_1; 

   p_next_state : process(r_state_reg,i_START, w_VALID_MUL, w_VALID_ADD_SUB, w_COUNT, i_READY_MUL_0, i_READY_MUL_1, i_READY_ADD_SUB_0, i_READY_ADD_SUB_1)
   begin
      case (r_state_reg) is
         when s0 => 
            if(i_START = '1') then
               r_next_state <= s1;
            else
               r_next_state <= s0;
            end if;
         
         -- parc0 = bp_0 * kp_0
         -- parc1 = bp_1 * kp_1      
         when s1 => --r_next_state <= s2;
             if(i_READY_MUL_0 = '1' and i_READY_MUL_1 = '1') then  
                r_next_state <= s2;
             else
                r_next_state <= s1;
             end if;

         when s2 => 
            if(w_VALID_MUL = '1') then
               r_next_state <= s3;
            else
               r_next_state <= s2;
            end if;
         
         -- parc2 = REG_MUL0 + parc0
         -- parc3 = REG_MUL1 + parc1     
         when s3 => --r_next_state <= s4;
             if(i_READY_ADD_SUB_0 = '1' and i_READY_ADD_SUB_1 = '1') then  
                r_next_state <= s4;
             else
                r_next_state <= s3;
             end if;
             
         when s4 => 
            if(w_VALID_ADD_SUB = '1' and w_COUNT = '0') then
               r_next_state <= s3;
            elsif(w_VALID_ADD_SUB = '1' and w_COUNT = '1') then
               r_next_state <= s5;
            else
               r_next_state <= s4;
            end if;

         -- conv = parc2 + parc3    
         when s5 => --r_next_state <= s6;
             if(i_READY_ADD_SUB_1 = '1') then  
                r_next_state <= s6;
             else
                r_next_state <= s5;
             end if;
             
             
         when s6 => 
            if(w_VALID_ADD_SUB = '1') then
               r_next_state <= s7;
            else
               r_next_state <= s6;
            end if;
         
         when s7 => r_next_state <= s8;
         
         when s8 => r_next_state <= s0;
         
         when others => r_next_state <= s0;
      end case;
   end process;

   o_MUX_ADD_SUB     <= '1' when r_state_reg = s5 else 
                        '1' when r_state_reg = s6 else
                        '0';
   o_COUNT_CONV_ENA_n <= '0' when r_state_reg = s6 else
                         '1';
   
   o_READY_MUL     <= '0' when r_state_reg = s0 else '1';

   o_READY_ADD_SUB <= '0' when r_state_reg = s0 else '1';
   
   o_VALID_MUL <= '1' when r_state_reg = s1 else 
                  '1' when r_state_reg = s3 else
                  '0';   
   
   o_VALID_ADD_SUB <= '1' when r_state_reg = s3 else
                      '1' when r_state_reg = s5 else
                      '0';

   o_OPERATION <=  x"00";
   
   o_RST_REG_DONE <= '0' when r_state_reg = s8 else '1';
   
   o_WR_DATA  <= '1' when r_state_reg = s7 else '0';

   o_DONE     <= '1' when (r_state_reg = s8) else '0';
         

end arch_1;