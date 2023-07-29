--Cycles Counter to use whit memory sync and others
-- Author: Felipe Viel
-- Date: 02/10/18

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.pack.all;

entity counter_cycles_up is
    generic(
        p_CYCLES: integer := to_integer(unsigned(IMG_WIDTH_VALUE)) - 1;
        p_WIDTH : natural := 3);
    port(
        i_CLK : in std_logic;
        i_RST : in std_logic;
        i_ENA : in std_logic;
        o_DONE : out std_logic;
        o_CYCLES : out std_logic_vector(p_WIDTH -1 downto 0)
    );
end counter_cycles_up;

architecture arch_1 of counter_cycles_up is
    signal w_CYCLES : std_logic_vector(p_WIDTH - 1 downto 0) := (others => '0');
begin
    u_0: process(i_CLK,i_RST,i_ENA)
    begin
        if(i_RST = '0') then
            w_CYCLES <= (others => '0');
        elsif(i_CLK'Event and i_CLK = '1') then
            if(i_ENA = '1') then
                w_CYCLES <= w_CYCLES + 1;
            end if;
        end if;
    end process;


    o_DONE <= '1' when (conv_integer(w_CYCLES) = p_CYCLES) else '0';
    o_CYCLES <= w_CYCLES;


end arch_1;
