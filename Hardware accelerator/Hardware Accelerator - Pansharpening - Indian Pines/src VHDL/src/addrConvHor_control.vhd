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
 
entity addrConvHor_control is
generic(
   p_DWIDTH_CONTROL : natural := 2); 
port( 
   i_CLK                 : in  std_logic;              
   i_RST_n               : in  std_logic;              
--input control signals  
   -- set to start the processing
   i_START               : in  std_logic;
   
   --COUNT BUFFER OPERATIONS BP with KP
   i_DONE_COUNT_1           : in std_logic;
   i_DONE_COUNT_2           : in std_logic;
   i_DONE_COUNT_3           : in std_logic;
   i_DONE_COUNT_IMG         : in std_logic;
    
   i_WAIT_CALC              : in std_logic;

--output control signals

   o_ENA_COUNT_ADDR_1 : out std_logic;
   o_ENA_COUNT_ADDR_2 : out std_logic;
   o_ENA_COUNT_ADDR_3 : out std_logic;
   
   o_ENA_REG_WIDTH : out std_logic;
   o_SEL_MUX_ADDER : out std_logic;
   o_SEL_MUX_REG_ADDR : out std_logic;

   o_ENA_REG_ADDR : out std_logic;
   
   o_ENA_COUNT_IMG : out std_logic;
--   o_RST_COUNTER_1 : out std_logic;
--   o_RST_COUNTER_2 : out std_logic;
--   o_RST_COUNTER_3 : out std_logic;
   o_RST_COUNTER : out std_logic;
   o_RST_COUNTER_IMG : out std_logic;
   
   o_END_LINE : out std_logic;  
   
   o_VALID           : out std_logic; -- indicate a valid addrs
   --indicate that the all processing done
   o_DONE                : out std_logic

);
end addrConvHor_control;
    
architecture arch_1 of addrConvHor_control is 
   type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8,wait_1, wait_2);  
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


   p_next_state : process (r_state_reg, i_START, i_DONE_COUNT_1,i_DONE_COUNT_2,i_DONE_COUNT_3, w_DONE_COUNT_2, w_DONE_COUNT_3, i_DONE_COUNT_IMG, i_WAIT_CALC)
   begin
      case (r_state_reg) is
         when s0 => 
            if(i_START = '1') then
               r_next_state <= s2;
            else
               r_next_state <= s0;
            end if;
         
         -- widht      
         when s1 => r_next_state <= s2;
        
         -- write in addrs reg 1, 2, 3
         when s2 =>
            if (i_WAIT_CALC = '1') then
               r_next_state <= s2;
            else 
               r_next_state <= s3;
            end if; 
            
         
         -- calculate addrs 1     
         when s3 => 
            if (i_DONE_COUNT_1 = '1') then
                r_next_state <= wait_1;
            else 
                r_next_state <= s3;
            end if;
            
         when wait_1 => 
            if (i_WAIT_CALC = '1') then
                r_next_state <= wait_1;
            else 
                r_next_state <= s4;
            end if;   
         -- calculate addrs 2     
         when s4 => 
            if (i_DONE_COUNT_2 = '1') then
                r_next_state <= wait_2;
            else 
                r_next_state <= s4;
            end if;
        
         when wait_2 => 
            if (i_WAIT_CALC = '1') then
                r_next_state <= wait_2;
            else 
                r_next_state <= s5;
            end if;
         -- calculate addrs 1     
         when s5 => 
            if (i_DONE_COUNT_3 = '1') then
                if(i_DONE_COUNT_IMG = '1') then
                    r_next_state <= s7;
                else 
                    r_next_state <= s6;
                end if;
            else
                r_next_state <= s5;
            end if;
         
         --when s6 => r_next_state <= s1;
         when s6 => 
            if (i_WAIT_CALC = '1') then
                r_next_state <= s6;
            else 
                r_next_state <= s1;
            end if;
         
         when s7 => r_next_state <= s8;
            
         when s8 => 
            if (i_WAIT_CALC = '1') then
                r_next_state <= s8;
            else 
                r_next_state <= s0;
            end if;
         
         when others => r_next_state <= s0;
      end case;
   end process;

   
   w_DONE_COUNT_1 <= '1' when (i_DONE_COUNT_1 = '1' and i_WAIT_CALC = '0') else '0';
   w_DONE_COUNT_2 <= '1' when (i_DONE_COUNT_2 = '1' and i_WAIT_CALC = '0') else '0';
   w_DONE_COUNT_3 <= '1' when (i_DONE_COUNT_3 = '1' and i_WAIT_CALC = '0') else '0';
   
   
   o_SEL_MUX_ADDER <= '0' when r_state_reg = s2 else '1';

   o_SEL_MUX_REG_ADDR <= '1' when r_state_reg = s3 else
                         '0' when r_state_reg = s4 else
                         '1' when r_state_reg = s5 else
                         '0';

   
   o_ENA_REG_ADDR <= '1' when r_state_reg = s2  and i_WAIT_CALC = '0' else
                     '1' when r_state_reg = s3  and i_WAIT_CALC = '0' else
                     '1' when r_state_reg = s4  and i_WAIT_CALC = '0' else
                     '1' when r_state_reg = s5  and i_WAIT_CALC = '0' else
                     '0';
   
   
   o_ENA_REG_WIDTH     <= '1' when r_state_reg = s1 else '0';
   
   o_ENA_COUNT_ADDR_1 <= '1' when (r_state_reg = s2 or r_state_reg = s3) and i_WAIT_CALC = '0'  else '0';
   o_ENA_COUNT_ADDR_2 <= '1' when (r_state_reg = wait_1 or r_state_reg = s4) and i_WAIT_CALC = '0' else '0';
   o_ENA_COUNT_ADDR_3 <= '1' when (r_state_reg = wait_2 or r_state_reg = s5 or r_state_reg = s6) and i_WAIT_CALC = '0' else '0';
   
                              
   o_RST_COUNTER       <= '0' when (r_state_reg = s0 or r_state_reg = s1) else '1';
   o_RST_COUNTER_IMG   <= '0' when r_state_reg = s8 else '1';
   
   o_VALID    <= '1' when r_state_reg = s3 else
                 '1' when r_state_reg = s4 else
                 '1' when r_state_reg = s5 else
                 '1' when r_state_reg = s6 else
                 '1' when r_state_reg = s7 else
                 '1' when r_state_reg = s8 else
                 '1' when r_state_reg = wait_1 else
                 '1' when r_state_reg = wait_2 else
                 '0';
   
   o_END_LINE <= '1' when (r_state_reg = s6 or r_state_reg = s7) else '0';--i_DONE_COUNT_3;
   
   o_ENA_COUNT_IMG <= '1' when r_state_reg = s1 else '0';
   
   o_DONE     <= '1' when r_state_reg = s7 else '0';            

end arch_1;
