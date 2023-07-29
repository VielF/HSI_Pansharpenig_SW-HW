----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2018 05:00:55 PM
-- Design Name: 
-- Module Name: addrConvHor_datapath - Behavioral
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


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.pack.all; 

entity addrConvVer_datapath is
generic(
   p_WIDTH : natural := 16); -- data width
port( 
   i_CLK : in std_logic;
   i_RST_n : in std_logic;
   
   i_RST_COUNTER : in std_logic;
   i_RST_COUNTER_IMG : in std_logic;
   --i_WIDTH: in std_logic_vector(p_WIDTH-1 downto 0);
   
   i_ENA_COUNT_ADDR_1 : in std_logic;
   i_ENA_COUNT_ADDR_2 : in std_logic;
   i_ENA_COUNT_ADDR_3 : in std_logic;
   
   i_ENA_REG_WIDTH : in std_logic;
   i_SEL_MUX_REG_ADDR : in std_logic_vector(1 downto 0);
   
   i_ENA_REG_ADDR : in std_logic;
   i_ENA_COUNT_IMG : in std_logic;
   
   o_DONE_COUNT_ADDR_1 : out std_logic;
   o_DONE_COUNT_ADDR_2 : out std_logic;
   o_DONE_COUNT_ADDR_3 : out std_logic;
   o_DONE_COUNT_IMG    : out std_logic;
   
   o_CYCLES_1 : out std_logic_vector(HALFSIZE-1 downto 0);
   o_CYCLES_2 : out std_logic_vector(p_WIDTH-1 downto 0);
   o_CYCLES_3 : out std_logic_vector(HALFSIZE-1 downto 0);
   o_CYCLES_IMG : out std_logic_vector(p_WIDTH-1 downto 0);
   
   o_ADDR : out std_logic_vector(p_WIDTH-1 downto 0));
   
end addrConvVer_datapath;

architecture arch_1 of addrConvVer_datapath is
   component adder_addr
   generic (
      p_WIDTH : natural := p_WIDTH); -- data width
   port (
      i_DIN0 : in std_logic_vector(p_WIDTH-1 downto 0);  -- data input
      i_DIN1 : in std_logic_vector(p_WIDTH-1 downto 0);  -- data input
      o_DOUT : out std_logic_vector(p_WIDTH-1 downto 0); -- data output
      o_COUT : out std_logic);                           -- carry output
   end component;
   
   component sub_addr
   generic (
      p_WIDTH : natural := p_WIDTH); -- data width
   port (
      i_DIN0 : in std_logic_vector(p_WIDTH-1 downto 0);  -- data input
      i_DIN1 : in std_logic_vector(p_WIDTH-1 downto 0);  -- data input
      o_DOUT : out std_logic_vector(p_WIDTH-1 downto 0); -- data output
      o_COUT : out std_logic);                           -- carry output
   end component;
   
   component mux2
   generic (
      p_WIDTH : natural := p_WIDTH); -- data width
   port (
      i_SEL  : in std_logic; -- selector
      i_DIN0 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
      i_DIN1 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
      o_DOUT : out std_logic_vector(p_WIDTH-1 downto 0)); -- data output
   end component;
   
   component mux3
   generic (
      p_WIDTH : natural := p_WIDTH); -- data width
   port (
      i_SEL  : in std_logic_vector(1 downto 0); -- selector
      i_DIN0 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
      i_DIN1 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
      i_DIN2 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
      o_DOUT : out std_logic_vector(p_WIDTH-1 downto 0)); -- data output
   end component;
   
      
   component reg_pp_init_reset is
   generic (
      p_WIDTH : natural := 32;                  
      p_RST_INIT : integer := 24); -- data width); -- data width
   port (
      i_CLK :   in std_logic; -- clock
      i_RST_n : in std_logic; -- reset
      i_ENA :   in std_logic; -- enable
      i_DIN :   in std_logic_vector(p_WIDTH-1 downto 0); -- input data
      o_DOUT :  out std_logic_vector(p_WIDTH-1 downto 0));-- output data
   end component;
   
   component counter_cycles_up
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
   end component;
   
   signal w_OUT_REG_L : std_logic_vector(p_WIDTH-1 downto 0);
   signal w_OUT_ADDER_WIDTH : std_logic_vector(p_WIDTH-1 downto 0);
   
   signal w_OUT_ADDER : std_logic_vector(p_WIDTH-1 downto 0);


   signal w_OUT_SUB : std_logic_vector(p_WIDTH-1 downto 0);

   signal w_OUT_MUX_ADDR : std_logic_vector(p_WIDTH-1 downto 0);

   signal w_OUT_REG_ADDR : std_logic_vector(p_WIDTH-1 downto 0);
   
   signal w_DONE_COUNT_ADDR_3 : std_logic;
   
   signal w_RESET_COUNTER : std_logic;
   signal w_RESET_COUNTER_IMG : std_logic;

begin
---------------------------------------------------------------------
-----------------------WIDTH-----------------------------------------
   adder_width : adder_addr
   generic map ( p_WIDTH => p_WIDTH) -- data width
   port map(
      i_DIN0 => ONE_CONSTANT,  -- data input
      i_DIN1 => w_OUT_REG_L,  -- data input
      o_DOUT => w_OUT_ADDER_WIDTH -- data output
   -- o_COUT =>                            -- carry output
   );
   
   reg_l : reg_pp_init_reset
   generic map ( p_WIDTH => p_WIDTH,
                 p_RST_INIT=> INIT_VALUE_CONV_VER) -- data width
   port map(
      i_CLK   => i_CLK,
      i_RST_n => w_RESET_COUNTER_IMG,
      i_ENA   => i_ENA_REG_WIDTH,
      i_DIN   => w_OUT_ADDER_WIDTH,
      o_DOUT  => w_OUT_REG_L 
   );

---------------------------------------------------------------------
-----------------------ADDR -----------------------------------------
   adder_reg : adder_addr
   generic map ( p_WIDTH => p_WIDTH) -- data width
   port map(
      i_DIN0 => w_OUT_REG_ADDR,  -- data input
      i_DIN1 => IMG_WIDTH_VALUE,  -- data input
      o_DOUT => w_OUT_ADDER -- data output
   -- o_COUT =>                            -- carry output
   );

   sub_reg : sub_addr
   generic map ( p_WIDTH => p_WIDTH) -- data width
   port map(
      i_DIN0 => w_OUT_REG_ADDR,  -- data input
      i_DIN1 => IMG_WIDTH_VALUE,  -- data input
      o_DOUT => w_OUT_SUB -- data output
   -- o_COUT =>                            -- carry output
   );

   mux_reg_addr : mux3
   generic map ( p_WIDTH => p_WIDTH) -- data width
   port map(
      i_SEL  => i_SEL_MUX_REG_ADDR,
      i_DIN0 => w_OUT_REG_L,
      i_DIN1 => w_OUT_ADDER,
      i_DIN2 => w_OUT_SUB,
      o_DOUT => w_OUT_MUX_ADDR
   );
      
   reg_addr : reg_pp_init_reset
   generic map ( p_WIDTH => p_WIDTH,
                 p_RST_INIT=> 0) -- data width
   port map(
      i_CLK   => i_CLK,
      i_RST_n => w_RESET_COUNTER_IMG,
      i_ENA   => i_ENA_REG_ADDR,
      i_DIN   => w_OUT_MUX_ADDR,
      o_DOUT  => w_OUT_REG_ADDR 
   ); 

   o_ADDR <= w_OUT_REG_ADDR;
---------------------------------------------------------------------
-----------------------COUNTERS----------------------------------------- 
   
   w_RESET_COUNTER <= i_RST_n and i_RST_COUNTER;
   w_RESET_COUNTER_IMG <= i_RST_n and i_RST_COUNTER_IMG;
   
   count_1 : counter_cycles_up
   generic map(
      p_CYCLES => HALFSIZE,
      p_WIDTH => HALFSIZE)
   port map(
      i_CLK => i_CLK,
      i_RST => w_RESET_COUNTER,
      i_ENA => i_ENA_COUNT_ADDR_1,
      o_DONE => o_DONE_COUNT_ADDR_1,
      o_CYCLES => o_CYCLES_1
   );
   
   
   count_2 : counter_cycles_up
   generic map(
      p_CYCLES => IMG_HEIGHT,
      p_WIDTH => p_WIDTH)
   port map(
      i_CLK => i_CLK,
      i_RST => w_RESET_COUNTER,
      i_ENA => i_ENA_COUNT_ADDR_2,
      o_DONE => o_DONE_COUNT_ADDR_2,
      o_CYCLES => o_CYCLES_2
   );
   
   
   count_3 : counter_cycles_up
   generic map(
      p_CYCLES => HALFSIZE,
      p_WIDTH => HALFSIZE)
   port map(
      i_CLK => i_CLK,
      i_RST => w_RESET_COUNTER,
      i_ENA => i_ENA_COUNT_ADDR_3,
      o_DONE => w_DONE_COUNT_ADDR_3,
      o_CYCLES => o_CYCLES_3 
   );
   
   o_DONE_COUNT_ADDR_3 <= w_DONE_COUNT_ADDR_3;
   
   count_image : counter_cycles_up
   generic map(
      p_CYCLES => IMG_HEIGHT-1,
      p_WIDTH => p_WIDTH)
   port map(
      i_CLK => i_CLK,
      i_RST => w_RESET_COUNTER_IMG,
      i_ENA => i_ENA_COUNT_IMG,
      o_DONE => o_DONE_COUNT_IMG,
      o_CYCLES => o_CYCLES_IMG 
   );
      
end arch_1;
