----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2018 05:00:55 PM
-- Design Name: 
-- Module Name: addrConvHor_control - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


----------------------------------------------------------------
-- Project: REG_TERM_CONTROL
-- Author:  Felipe Viel
-- Date:    10/10/2018 
-- File:    reg_term_control.vhd
-----------------------------------------------------------------

library ieee;   
use ieee.std_logic_1164.all;
 
entity convolution_control is
generic(
   p_DWIDTH_CONTROL : natural := 2); 
port( 
   i_CLK                 : in  std_logic;              
   i_RST_n               : in  std_logic;              
--input control signals  
   -- set to start the processing
   i_START               : in  std_logic;
           
   o_INIT_ADDRS_HOR      : out  std_logic;
   o_INIT_ADDRS_VER      : out  std_logic;
   o_INIT_CAL            : out  std_logic;
             
   o_WAIT_CALC           : out  std_logic;
         
   o_SEL_MUX_ADDRS       : out std_logic;
         
   o_SEL_MUX_OUT_CONV    : out std_logic;
         
   o_WR_EN_FIFO          : out std_logic;
   
   o_ADDRS_VER_CHANGE    : out std_logic;
   
   o_ENA_ITERATIONS      : out std_logic;
   
   o_DONE                : out std_logic;
         
   i_DONE_ADDR_HOR       : in std_logic;
   i_DONE_ADDR_VER       : in std_logic;
         
   i_END_LINE_HOR        : in std_logic;
   i_END_LINE_VER        : in std_logic;
   
   i_DONE_CALC           : in std_logic;
              
   i_DONE_ITERATIONS     : in std_logic;
   
   i_DONE_COUNT_BUFFER_HOR   : in std_logic;
   i_DONE_COUNT_BUFFER_VER   : in std_logic);
end convolution_control;
    
architecture arch_1 of convolution_control is 
   type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,wait_wr_hor, wait_wr_ver, start_hor, start_ver, delay_hor_0, delay_ver_1, start_calc_hor_0, start_calc_hor_1, start_calc_ver_0, start_calc_ver_1, adder_int_dl_0, adder_int_dl_1);  --, delay_hor_0, delay_hor_1,  delay_hor_2
   signal r_state_reg : state_type;  
   signal r_next_state : state_type;
    
   signal w_DONE_COUNT_1 : std_logic;
   signal w_DONE_COUNT_2 : std_logic;
   signal w_DONE_COUNT_3 : std_logic;
   
begin  
   p_state_reg : process (i_CLK, i_RST_n)  
   begin  
      if (i_RST_n = '0') then  
         r_state_reg <= s0; -- idle 
      elsif (i_CLK='1' and i_CLK'event) then  
         r_state_reg <= r_next_state;
      end if;
   end process;


   p_next_state : process (r_state_reg, 
                           i_START,
                           i_DONE_ADDR_HOR, 
                           i_DONE_ADDR_VER, 
                           i_END_LINE_HOR, 
                           i_END_LINE_VER,  
                           i_DONE_ITERATIONS,
                           i_DONE_CALC,
                           i_DONE_COUNT_BUFFER_HOR,
                           i_DONE_COUNT_BUFFER_VER)
   begin
      case (r_state_reg) is
         when s0 => 
            if(i_START = '1') then
               r_next_state <= start_hor;
            else
               r_next_state <= s0;
            end if;
         
         when start_hor => r_next_state <= s1;
         
         when s1 => 
            if (i_END_LINE_HOR = '1') then
                if(i_DONE_ADDR_HOR = '0') then
                    r_next_state <= start_calc_hor_0;
                else 
                    r_next_state <= start_calc_hor_1;
                end if;
            else 
                r_next_state <= wait_wr_hor;
            end if;
         
         when wait_wr_hor => r_next_state <= s1;--delay_hor_0;
         
         --when delay_hor_0 => r_next_state <= s1;
        
         when start_calc_hor_0 => r_next_state <= s2;
         
         when s2 =>
            if(i_DONE_CALC = '1' and i_DONE_COUNT_BUFFER_HOR = '1') then
                r_next_state <= s1;
            elsif(i_DONE_CALC = '1' and i_DONE_COUNT_BUFFER_HOR = '0') then
                r_next_state <= start_calc_hor_0;
            else
                r_next_state <= s2;
            end if;
         
         when start_calc_hor_1 => r_next_state <= s3;
            
         when s3 =>
            if(i_DONE_CALC = '1') then
                if (i_DONE_COUNT_BUFFER_HOR = '1') then
                    r_next_state <= start_ver;
                else 
                    r_next_state <= start_calc_hor_1;
                end if;
            else
                r_next_state <= s3;
            end if; 
         
         when start_ver => r_next_state <= s4;   
         -- calculate addrs 1     
         when s4 => 
            if (i_END_LINE_VER = '1') then
                if(i_DONE_ADDR_VER = '0') then
                    r_next_state <= start_calc_ver_0;
                else 
                    r_next_state <= start_calc_ver_1;
                end if;
             else 
                    r_next_state <= wait_wr_ver;
             end if;
         
         when wait_wr_ver => r_next_state <= s4;--delay_ver_1; 
           
         --when delay_ver_1 => r_next_state <= s4;   
         
         when start_calc_ver_0 => r_next_state <= s5;
         -- calculate addrs 2     
         when s5 =>
            if(i_DONE_CALC = '1') then 
                if (i_DONE_COUNT_BUFFER_VER = '1') then
                    r_next_state <= delay_ver_1;
                else
                    r_next_state <= start_calc_ver_0;
                end if;
            else
                r_next_state <= s5;
            end if;
            
         when delay_ver_1 => r_next_state <= s4;
         
         when start_calc_ver_1 => r_next_state <= s6;
         -- calculate addrs 1     
         when s6 =>
            if(i_DONE_CALC = '1') then 
                if (i_DONE_COUNT_BUFFER_VER = '1') then
                    if( i_DONE_ITERATIONS = '0') then
                        r_next_state <= adder_int_dl_0;
                    else
                        r_next_state <= s7;
                    end if;
                else 
                    r_next_state <= start_calc_ver_1;
                end if;
             else
                r_next_state <= s6;
             end if;
             
         
         when adder_int_dl_0 => r_next_state <= adder_int_dl_1; 
           
         when adder_int_dl_1 => r_next_state <= start_hor;   
            
         when s7 => r_next_state <= s0;
                    
         when others => r_next_state <= s0;
      end case;
   end process;

   
   
   o_INIT_ADDRS_HOR      <= '1' when r_state_reg = start_hor else '0';
   
   o_INIT_ADDRS_VER      <= '1' when r_state_reg = start_ver else '0';
   
   o_INIT_CAL            <= '1' when r_state_reg = start_calc_hor_0 else
                            '1' when r_state_reg = start_calc_hor_1 else
                            '1' when r_state_reg = start_calc_ver_0 else
                            '1' when r_state_reg = start_calc_ver_1 else
                             
                            '0';
                
   o_WAIT_CALC           <= '0' when r_state_reg = s0 else
                            '0' when r_state_reg = start_hor else 
                            '0' when r_state_reg = s1 else
                            '0' when r_state_reg = start_ver else 
                            '0' when r_state_reg = s4 else 
                            '1';
           
   o_SEL_MUX_ADDRS       <= '0' when r_state_reg = s0 else
                            '0' when r_state_reg = delay_hor_0 else 
                            '0' when r_state_reg = start_hor else
                            '0' when r_state_reg = s1 else
                            '0' when r_state_reg = start_calc_hor_0 else
                            '0' when r_state_reg = s2 else 
                            '0' when r_state_reg = start_calc_hor_1 else 
                            '0' when r_state_reg = s3 else 
                            '0' when r_state_reg = wait_wr_hor else 
                            '1';
           
   o_SEL_MUX_OUT_CONV    <= '1' when r_state_reg = s4 and i_DONE_ITERATIONS = '0' else
                            '1' when r_state_reg = s5 and i_DONE_ITERATIONS = '0' else
                            '1' when r_state_reg = s6 and i_DONE_ITERATIONS = '0' else
                            '1' when r_state_reg = start_ver and i_DONE_ITERATIONS = '0' else
                            '1' when r_state_reg = wait_wr_ver and i_DONE_ITERATIONS = '0' else
                            '1' when r_state_reg = delay_ver_1 and i_DONE_ITERATIONS = '0' else
                            '1' when r_state_reg = start_calc_ver_0 and i_DONE_ITERATIONS = '0' else
                            '1' when r_state_reg = start_calc_ver_1 and i_DONE_ITERATIONS = '0' else
                            '1' when r_state_reg = adder_int_dl_0 and i_DONE_ITERATIONS = '0' else
                            '1' when r_state_reg = adder_int_dl_1 and i_DONE_ITERATIONS = '0' else
                            '0';            
   
   o_WR_EN_FIFO          <= '1' when r_state_reg = s1 else
                            '1' when r_state_reg = s4 else
                            '0';
                            
   --o_ADDRS_VER_CHANGE    <= '1' when r_state_reg = delay_ver_1 else
   o_ADDRS_VER_CHANGE    <= '1' when r_state_reg = s4 else
                            '0';
   o_ENA_ITERATIONS      <= '1' when r_state_reg = adder_int_dl_1 else
                            '0';
   
   o_DONE     <= '1' when r_state_reg = s7 else '0';            

end arch_1;
