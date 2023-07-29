
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity compare_value is
generic (
    p_VALUE_COMPARE : integer := 0;
    p_WIDTH : natural := 1); -- data width
port (
    i_CLK : in std_logic; -- clock
    i_RST_n : in std_logic; -- reset
    i_ENA : in std_logic; -- enable
    i_DIN : in std_logic_vector(p_WIDTH-1 downto 0); -- input data
    o_DOUT  : out std_logic);-- output data
end compare_value;

architecture arch_1 of compare_value is
    signal r_DATA : std_logic_vector(p_WIDTH-1 downto 0);
begin
   process(i_CLK, i_RST_n)
   begin
      if (i_RST_n = '0') then
          r_DATA <= (others => '0');
      elsif (rising_edge(i_CLK)) then -- or (i_CLK'event and i_CLK='1')
          if (i_ENA = '1') then
              r_DATA <= i_DIN;
          end if;
      end if;
   end process;

   o_DOUT <= '1' when (conv_integer(r_DATA) = p_VALUE_COMPARE) else '0';

end arch_1;
