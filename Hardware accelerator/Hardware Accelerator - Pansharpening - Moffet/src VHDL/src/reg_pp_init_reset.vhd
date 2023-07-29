-- Parametrizable register
-- Author: Felipe Viel
-- Date: 02/10/18

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity reg_pp_init_reset is
    generic (
        p_WIDTH : natural := 32;
        p_RST_INIT : integer := 24); -- data width
    port (
        i_CLK : in std_logic; -- clock
        i_RST_n : in std_logic; -- reset
        i_ENA : in std_logic; -- enable
        i_DIN : in std_logic_vector(p_WIDTH-1 downto 0); -- input data
        o_DOUT : out std_logic_vector(p_WIDTH-1 downto 0));-- output data
end reg_pp_init_reset;

architecture arch_1 of reg_pp_init_reset is
    signal r_DATA : std_logic_vector(p_WIDTH-1 downto 0);
begin
    process(i_CLK, i_RST_n)
    begin
    if (i_RST_n = '0') then
        r_DATA <= std_logic_vector(to_unsigned(p_RST_INIT, p_WIDTH));
    elsif (rising_edge(i_CLK)) then -- or (i_CLK'event and i_CLK='1')
        if (i_ENA = '1') then
            r_DATA <= i_DIN;
        end if;
    end if;
    end process;
    o_DOUT <= r_DATA;
end arch_1;