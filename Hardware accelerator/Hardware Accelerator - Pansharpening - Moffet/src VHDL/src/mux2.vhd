library ieee;
use ieee.std_logic_1164.all;

entity mux2 is
generic (
   p_WIDTH : natural := 32); -- data width
port (
   i_SEL : in std_logic; -- selector
   i_DIN0 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
   i_DIN1 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
   o_DOUT : out std_logic_vector(p_WIDTH-1 downto 0)); -- data output
end mux2;

architecture arch_1 of mux2 is
begin
   o_DOUT <= i_DIN0 when i_SEL = '0' else
             i_DIN1;
end arch_1;       