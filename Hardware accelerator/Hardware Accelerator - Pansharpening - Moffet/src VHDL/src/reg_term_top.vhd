-----------------------------------------------------------------
-- Project: TOP
-- Author:  Felipe Viel
-- Date:    11/10/2018 
-- File:    top.vhd
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity reg_term_top is
generic(
   p_DWIDTH_DATA : natural := 32;
   p_DWIDTH_CONTROL : natural := 2);
port(
   --clock and reset signals
   i_CLK :  in std_logic;
   i_RST_n :  in std_logic;

   --control imputs
   i_START           : in std_logic;
   
   i_ENA_U0_REG_REGTERM      : in std_logic;
   i_ENA_U1_REG_REGTERM      : in std_logic;
   i_ENA_WEIGHT_REG_REGTERM  : in std_logic;

   --i_ENA_REGS        : in std_logic;

   i_REGTERM_ENA_EXT_CTRL : in std_logic;
   --control outputs
   o_DONE       : out std_logic;

   --data inputs
   i_U_0   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_U_1   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_REGTERM   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_WEIGHT   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
 
   --data outputs
   o_REGTERM :  out std_logic_vector(p_DWIDTH_DATA-1 downto 0));

end reg_term_top;

architecture arch_1 of reg_term_top is

   --signal i_U_0   :  std_logic_vector(p_DWIDTH_DATA-1 downto 0) := x"45562012";
   --signal i_U_1   :  std_logic_vector(p_DWIDTH_DATA-1 downto 0) := x"454024b8";
   --signal i_REGTERM   :  std_logic_vector(p_DWIDTH_DATA-1 downto 0) := x"4330f23a";
   --signal i_WEIGHT   :  std_logic_vector(p_DWIDTH_DATA-1 downto 0) := x"3eff98fa";
      
   component reg_term
   generic(
      p_DWIDTH_DATA : natural := p_DWIDTH_DATA;
      p_DWIDTH_CONTROL : natural := p_DWIDTH_CONTROL);
   port(
      i_CLK :  in std_logic;
      i_RST_n :  in std_logic;
      i_START           : in std_logic;
      i_REGTERM_ENA_EXT_CTRL : in std_logic;
      o_DONE       : out std_logic;
      i_U_0   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_U_1   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_REGTERM   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_WEIGHT   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      o_REGTERM :  out std_logic_vector(p_DWIDTH_DATA-1 downto 0)
   );
   end component;


   component reg_pp
   generic (
      p_WIDTH : natural := p_DWIDTH_DATA); -- data width
   port(
      i_CLK : in std_logic; -- clock
      i_RST_n : in std_logic; -- reset
      i_ENA : in std_logic; -- enable
      i_DIN : in std_logic_vector(p_WIDTH-1 downto 0); -- input data
      o_DOUT : out std_logic_vector(p_WIDTH-1 downto 0));-- output data
   end component;

   signal w_U_0   :  std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_U_1   :  std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_WEIGHT   :  std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   
begin

   u0 : reg_pp
   generic map (
      p_WIDTH => p_DWIDTH_DATA) -- data width
   port map(
      i_CLK => i_CLK,
      i_RST_n => i_RST_n,
      i_ENA => i_ENA_U0_REG_REGTERM,
      i_DIN => i_U_0,
      o_DOUT => w_U_0);-- output data
   
   u1: reg_pp
   generic map (
      p_WIDTH => p_DWIDTH_DATA) -- data width
   port map(
      i_CLK => i_CLK,
      i_RST_n => i_RST_n,
      i_ENA => i_ENA_U1_REG_REGTERM,
      i_DIN => i_U_1,
      o_DOUT => w_U_1);-- output data
   
   weight: reg_pp
   generic map (
      p_WIDTH => p_DWIDTH_DATA) -- data width
   port map(
      i_CLK => i_CLK,
      i_RST_n => i_RST_n,
      i_ENA => i_ENA_WEIGHT_REG_REGTERM,
      i_DIN => i_WEIGHT,
      o_DOUT => w_WEIGHT);-- output data
   
   
   
   system : reg_term
   generic map(
      p_DWIDTH_DATA => p_DWIDTH_DATA,
      p_DWIDTH_CONTROL => p_DWIDTH_CONTROL)
   port map(
      i_CLK                             => i_CLK,
      i_RST_n                           => i_RST_n,
      i_START                           => i_START,
      i_REGTERM_ENA_EXT_CTRL            => i_REGTERM_ENA_EXT_CTRL,
      o_DONE                            => o_DONE,
      i_U_0                             => w_U_0,
      i_U_1                             => w_U_1,
      i_REGTERM                         => i_REGTERM,
      i_WEIGHT                          => w_WEIGHT,
      o_REGTERM                         => o_REGTERM
   );



end arch_1; 