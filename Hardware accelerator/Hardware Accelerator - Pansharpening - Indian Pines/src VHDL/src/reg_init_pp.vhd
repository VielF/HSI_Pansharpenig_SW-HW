-- Parametrizable register counter down with initial value
-- Author: Felipe Viel
-- Date: 02/10/18

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity reg_init_pp is
generic (
    p_WIDTH : natural := 32); -- data width
port (
    i_CLK : in std_logic; -- clock
    i_RST_n : in std_logic; -- reset
    i_PST : in std_logic; -- enable
    i_ENA : in std_logic; -- enable
    i_DIN : in std_logic_vector(p_WIDTH-1 downto 0); -- input data
    o_DONE  : out std_logic);-- output data
end reg_init_pp;

architecture arch_1 of reg_init_pp is
    signal r_DATA : std_logic_vector(p_WIDTH-1 downto 0);
begin
    process(i_CLK, i_RST_n)
    begin
    if (i_RST_n = '0') then
        r_DATA <= (others => '0');
    elsif (rising_edge(i_CLK)) then -- or (i_CLK'event and i_CLK='1')
        if (i_PST = '1') then
            r_DATA <= i_DIN;
        elsif (i_ENA = '1') then
            r_DATA <= r_DATA - 1;
        end if;
    end if;
    end process;
    
    o_DONE <= '1' when (conv_integer(r_DATA) = 0) else '0';
    
end arch_1;