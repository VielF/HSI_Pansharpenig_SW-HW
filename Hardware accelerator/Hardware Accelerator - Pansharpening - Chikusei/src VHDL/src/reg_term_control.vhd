----------------------------------------------------------------
-- Project: REG_TERM_CONTROL
-- Author:  Felipe Viel
-- Date:    10/10/2018 
-- File:    reg_term_control.vhd
-----------------------------------------------------------------

library ieee;   
use ieee.std_logic_1164.all;
 
entity reg_term_control is
generic(
   p_DWIDTH_CONTROL : natural := 2); 
port( 
   i_CLK                 : in  std_logic;              
   i_RST_n               : in  std_logic;              
--input control signals  
   -- set to start the processing
   i_START               : in  std_logic;

   -- FPU AXI4-Stream signal to sinalize ready to receive data to process
   --i_READY_MUL           : out std_logic_vector(4 downto 0);
   --i_READY_ADD_SUB       : out std_logic_vector(1 downto 0);  -- data and operatio type

   -- FPU AXI4-Stream signal to sinalize that data processing done
   i_VALID_MUL           : in std_logic;
   i_VALID_ADD_SUB       : in std_logic;
   
   i_READY_MUL           : in std_logic;
   i_READY_ADD_SUB       : in std_logic;

--output control signals
   --singal tha control de FPU mux
   o_MUX_ADD_SUB         : out std_logic;
   
   -- FPU AXI4-Stream signal to sinalize that there are data to process
   o_VALID_MUL           : out std_logic;
   o_VALID_ADD_SUB       : out std_logic; -- data and operatio type
   
   -- FPU AXI4-Stream signal to sinalize ready to receive data that was processed
   o_READY_MUL           : out std_logic;
   o_READY_ADD_SUB       : out std_logic;

   -- FPU AXI4-Stream data that indicate operation type to ADD_SUB FPU block
   o_OPERATION           : out std_logic_vector(7 downto 0);

   -- enble write in regterm register
   o_REGTERM_ENA         : out std_logic;

   --indicate that the all processing done
   o_DONE                : out std_logic

);
end reg_term_control;
    
architecture arch_1 of reg_term_control is 
   type state_type is (s0,s1,s2,s3,s4, s5, s6, s7, s8);  
   signal r_state_reg : state_type;  
   signal r_next_state : state_type;  

begin  
   p_state_reg : process (i_CLK, i_RST_n)  
   begin  
      if (i_RST_n = '0') then  
         r_state_reg <= s0; -- idle 
      elsif (i_CLK='1' and i_CLK'event) then  
         r_state_reg <= r_next_state;
      end if;
   end process;

   p_next_state : process (r_state_reg, i_START, i_VALID_MUL, i_VALID_ADD_SUB)
   begin
      case (r_state_reg) is
         when s0 => 
            if(i_START = '1') then
               r_next_state <= s1;
            else
               r_next_state <= s0;
            end if;
         
         -- parc0 = u_1 - u_2      
         when s1 => 
            if(i_READY_ADD_SUB = '1') then  
               r_next_state <= s2;
            else
               r_next_state <= s1;
            end if;

         when s2 => 
            if(i_VALID_ADD_SUB = '1') then
               r_next_state <= s3;
            else
               r_next_state <= s2;
            end if;
         
         -- parc1 = parc0 * weight    
         when s3 => 
            if(i_READY_MUL = '1') then  
               r_next_state <= s4;
            else
               r_next_state <= s3;
            end if;

         when s4 => 
            if(i_VALID_MUL = '1') then
               r_next_state <= s5;
            else
               r_next_state <= s4;
            end if;

         -- regterm = regterm + parc1    
         when s5 => 
            if(i_READY_ADD_SUB = '1') then  
               r_next_state <= s6;
            else
               r_next_state <= s5;
            end if;

         when s6 => 
            if(i_VALID_ADD_SUB = '1') then
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

   o_READY_MUL     <= '0' when r_state_reg = s0 else '1';

   o_READY_ADD_SUB <= '0' when r_state_reg = s0 else '1';
   
   o_VALID_MUL <= '1' when r_state_reg = s3 else 
                  '0';   
   
   o_VALID_ADD_SUB <= '1' when r_state_reg = s1 else
                      '1' when r_state_reg = s5 else
                      '0';

   o_OPERATION <= x"01" when r_state_reg = s1 else x"00";

   o_REGTERM_ENA <= '1' when r_state_reg = s7 else '0'; 

   o_DONE     <= '1' when r_state_reg = s8 else '0';            

end arch_1;