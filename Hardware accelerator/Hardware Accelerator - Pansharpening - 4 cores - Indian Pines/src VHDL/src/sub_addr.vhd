library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sub_addr is
generic (
      p_WIDTH : natural := 16); -- data width
port (
   i_DIN0 : in std_logic_vector(p_WIDTH-1 downto 0);  -- data input
   i_DIN1 : in std_logic_vector(p_WIDTH-1 downto 0);  -- data input
   o_DOUT : out std_logic_vector(p_WIDTH-1 downto 0); -- data output
   o_COUT : out std_logic);                           -- carry output
end sub_addr;

architecture arch_1 of sub_addr is
   signal w_DOUT : std_logic_vector(p_WIDTH downto 0);
begin
   w_DOUT <= ('0' & i_DIN0) - ('0' & i_DIN1);
   o_DOUT <= w_DOUT(p_WIDTH-1 downto 0);
   o_COUT <= w_DOUT(p_WIDTH);
end arch_1;
