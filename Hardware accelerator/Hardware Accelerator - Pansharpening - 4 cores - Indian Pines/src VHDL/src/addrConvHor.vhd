----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2018 05:00:55 PM
-- Design Name: 
-- Module Name: addrConvHor - Behavioral
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


entity addrConvHor is
   generic(
      p_WIDTH : natural := 16;
      p_DWIDTH_CONTROL : natural := 2); 
   port( 
      i_CLK                 : in  std_logic;              
      i_RST_n               : in  std_logic; 
      
      i_START               : in  std_logic;
      
      i_WAIT_CALC           : in std_logic;
      
      o_CYCLES_1 : out std_logic_vector(HALFSIZE-1 downto 0);
      o_CYCLES_2 : out std_logic_vector(p_WIDTH-1 downto 0);
      o_CYCLES_3 : out std_logic_vector(HALFSIZE-1 downto 0);
      o_CYCLES_IMG : out std_logic_vector(p_WIDTH-1 downto 0);
      
      o_ADDR                : out std_logic_vector(p_WIDTH-1 downto 0);
      
      o_END_LINE            : out std_logic;  
      
      o_VALID               : out std_logic;
      
      o_DONE                : out std_logic);
end addrConvHor;

architecture arch_1 of addrConvHor is

   component addrConvHor_datapath
   generic(
      p_WIDTH : natural := 16); -- data width
   port( 
      i_CLK : in std_logic;
      i_RST_n : in std_logic;
--      i_RST_COUNTER_1 : in std_logic;
--      i_RST_COUNTER_2 : in std_logic;
--      i_RST_COUNTER_3 : in std_logic;
      i_RST_COUNTER : in std_logic;
      i_RST_COUNTER_IMG : in std_logic;
      i_ENA_COUNT_ADDR_1 : in std_logic;
      i_ENA_COUNT_ADDR_2 : in std_logic;
      i_ENA_COUNT_ADDR_3 : in std_logic;
      i_ENA_REG_WIDTH : in std_logic;
      i_ENA_COUNT_IMG  : in std_logic; 
      i_SEL_MUX_ADDER : in std_logic;
      i_SEL_MUX_REG_ADDR : in std_logic;
      i_ENA_REG_ADDR : in std_logic;
      o_CYCLES_1 : out std_logic_vector(HALFSIZE-1 downto 0);
      o_CYCLES_2 : out std_logic_vector(p_WIDTH-1 downto 0);
      o_CYCLES_3 : out std_logic_vector(HALFSIZE-1 downto 0);
      o_CYCLES_IMG : out std_logic_vector(p_WIDTH-1 downto 0);
      o_DONE_COUNT_ADDR_1 : out std_logic;
      o_DONE_COUNT_ADDR_2 : out std_logic;
      o_DONE_COUNT_ADDR_3 : out std_logic;
      o_DONE_COUNT_IMG    : out std_logic;
      o_ADDR : out std_logic_vector(p_WIDTH-1 downto 0));
   end component;
   
   component addrConvHor_control
   generic(
      p_DWIDTH_CONTROL : natural := 2); 
   port( 
      i_CLK                 : in  std_logic;              
      i_RST_n               : in  std_logic;              
      i_START               : in  std_logic;
      i_DONE_COUNT_1           : in std_logic;
      i_DONE_COUNT_2           : in std_logic;
      i_DONE_COUNT_3           : in std_logic;
      i_DONE_COUNT_IMG         : in std_logic;
      i_WAIT_CALC              : in std_logic;
      o_ENA_COUNT_ADDR_1 : out std_logic;
      o_ENA_COUNT_ADDR_2 : out std_logic;
      o_ENA_COUNT_ADDR_3 : out std_logic;
      o_ENA_REG_WIDTH : out std_logic;
      o_SEL_MUX_ADDER : out std_logic;
      o_SEL_MUX_REG_ADDR : out std_logic;
      o_ENA_REG_ADDR : out std_logic;
      o_ENA_COUNT_IMG : out std_logic;
--      o_RST_COUNTER_1 : out std_logic;
--      o_RST_COUNTER_2 : out std_logic;
--      o_RST_COUNTER_3 : out std_logic;
      o_RST_COUNTER : out std_logic;
      o_RST_COUNTER_IMG : out std_logic;
      o_END_LINE        : out std_logic;  
      o_VALID           : out std_logic; -- indicate a valid addrs
      o_DONE                : out std_logic
   
   );
   end component;

   signal w_ENA_REG_ADDR  : std_logic;
   
   signal w_ENA_REG_WIDTH     : std_logic;
  
   signal w_SEL_MUX_ADDER  : std_logic; 
   signal w_SEL_MUX_REG_ADDR : std_logic;
   
   signal w_ENA_COUNT_ADDR_1 : std_logic;
   signal w_ENA_COUNT_ADDR_2 : std_logic;
   signal w_ENA_COUNT_ADDR_3 : std_logic;
      
--   signal w_RST_COUNTER_1       : std_logic;
--   signal w_RST_COUNTER_2       : std_logic;
--   signal w_RST_COUNTER_3       : std_logic;
   signal w_ENA_COUNT_IMG     : std_logic;
   signal w_RST_COUNTER       : std_logic;
   signal w_RST_COUNTER_IMG   : std_logic;
   signal w_DONE_COUNT_ADDR_1 :  std_logic;
   signal w_DONE_COUNT_ADDR_2 :  std_logic;
   signal w_DONE_COUNT_ADDR_3 :  std_logic;
   signal w_DONE_COUNT_IMG    :  std_logic;

begin

   datapath:  addrConvHor_datapath
   generic map(
      p_WIDTH => 16) -- data width
   port map( 
      i_CLK                => i_CLK,
      i_RST_n              => i_RST_n,
--      i_RST_COUNTER_1      => w_RST_COUNTER_1,
--      i_RST_COUNTER_2      => w_RST_COUNTER_2,
--      i_RST_COUNTER_3      => w_RST_COUNTER_3,
      i_RST_COUNTER        => w_RST_COUNTER,
      i_RST_COUNTER_IMG    => w_RST_COUNTER_IMG,
      i_ENA_COUNT_ADDR_1   => w_ENA_COUNT_ADDR_1,
      i_ENA_COUNT_ADDR_2   => w_ENA_COUNT_ADDR_2,
      i_ENA_COUNT_ADDR_3   => w_ENA_COUNT_ADDR_3,
      i_ENA_REG_WIDTH      => w_ENA_REG_WIDTH,
      i_ENA_COUNT_IMG      => w_ENA_COUNT_IMG,
      i_SEL_MUX_ADDER      => w_SEL_MUX_ADDER,
      i_SEL_MUX_REG_ADDR   => w_SEL_MUX_REG_ADDR,
      i_ENA_REG_ADDR       => w_ENA_REG_ADDR,
      o_CYCLES_1           => o_CYCLES_1,
      o_CYCLES_2           => o_CYCLES_2,
      o_CYCLES_3           => o_CYCLES_3,
      o_CYCLES_IMG         => o_CYCLES_IMG,
      o_DONE_COUNT_ADDR_1  => w_DONE_COUNT_ADDR_1,
      o_DONE_COUNT_ADDR_2  => w_DONE_COUNT_ADDR_2,
      o_DONE_COUNT_ADDR_3  => w_DONE_COUNT_ADDR_3,
      o_DONE_COUNT_IMG     => w_DONE_COUNT_IMG,
      o_ADDR               => o_ADDR
   );
   
   control : addrConvHor_control
   generic map(
      p_DWIDTH_CONTROL => 2)
   port map( 
      i_CLK                 => i_CLK,
      i_RST_n               => i_RST_n,
      i_START               => i_START,
      i_DONE_COUNT_1        => w_DONE_COUNT_ADDR_1,
      i_DONE_COUNT_2        => w_DONE_COUNT_ADDR_2,
      i_DONE_COUNT_3        => w_DONE_COUNT_ADDR_3,
      i_DONE_COUNT_IMG      => w_DONE_COUNT_IMG,
      i_WAIT_CALC           => i_WAIT_CALC,
      o_ENA_COUNT_ADDR_1    => w_ENA_COUNT_ADDR_1,
      o_ENA_COUNT_ADDR_2    => w_ENA_COUNT_ADDR_2,
      o_ENA_COUNT_ADDR_3    => w_ENA_COUNT_ADDR_3,
      o_ENA_REG_WIDTH       => w_ENA_REG_WIDTH,
      o_SEL_MUX_ADDER       => w_SEL_MUX_ADDER,
      o_SEL_MUX_REG_ADDR    => w_SEL_MUX_REG_ADDR,
      o_ENA_REG_ADDR        => w_ENA_REG_ADDR,
      o_ENA_COUNT_IMG       => w_ENA_COUNT_IMG,
--      o_RST_COUNTER_1       => w_RST_COUNTER_1,
--      o_RST_COUNTER_2       => w_RST_COUNTER_2,
--      o_RST_COUNTER_3       => w_RST_COUNTER_3,
      o_RST_COUNTER        => w_RST_COUNTER,
      o_RST_COUNTER_IMG     => w_RST_COUNTER_IMG,
      o_END_LINE            => o_END_LINE,    
      o_VALID               => o_VALID,
      o_DONE                => o_DONE
   );

end arch_1;
