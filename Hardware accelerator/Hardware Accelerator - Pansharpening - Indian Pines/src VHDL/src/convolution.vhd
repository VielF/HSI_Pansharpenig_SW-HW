----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/28/2018 10:43:33 AM
-- Design Name: 
-- Module Name: convolution - arch_1
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity convolution is
generic(
   p_WIDTH_PROCESSING : natural := 32;
   p_WIDTH_ADDRS : natural := 16;
   p_DWIDTH_CONTROL : natural := 2); 
port( 
   i_CLK                 : in  std_logic;              
   i_RST_n               : in  std_logic;
   i_START               : in  std_logic;
   
   i_EXTENDED_DIRAC : in std_logic_vector(p_WIDTH_PROCESSING-1 downto 0);
   i_WR_DATA_FIFO        : in std_logic_vector(p_WIDTH_PROCESSING-1 downto 0);
   
   o_WR_EN_MEM           : out std_logic;
   o_ADDRS_READ          : out std_logic_vector(p_WIDTH_ADDRS-1 downto 0);
   o_ADDRS_WRITE         : out std_logic_vector(p_WIDTH_ADDRS-1 downto 0);
   o_WR_DATA_CONV        : out std_logic_vector(p_WIDTH_PROCESSING-1 downto 0);
   
   o_DONE                : out std_logic);
   
end convolution;

architecture arch_1 of convolution is

   component convolution_control
   generic(
      p_DWIDTH_CONTROL : natural := 2); 
   port( 
      i_CLK                 : in  std_logic;              
      i_RST_n               : in  std_logic;              
      i_START               : in  std_logic;         
      o_INIT_ADDRS_HOR      : out  std_logic;
      o_INIT_ADDRS_VER      : out  std_logic;
      o_INIT_CAL            : out  std_logic;           
      o_WAIT_CALC           : out  std_logic;        
      o_SEL_MUX_ADDRS       : out std_logic;        
      o_SEL_MUX_OUT_CONV    : out std_logic;      
      o_WR_EN_FIFO          : out std_logic;
      o_ADDRS_VER_CHANGE    : out std_logic;
      o_ENA_ITERATIONS      : out std_logic;
      o_DONE                : out std_logic;
      i_DONE_ADDR_HOR       : in std_logic;
      i_DONE_ADDR_VER       : in std_logic;         
      i_END_LINE_HOR        : in std_logic;
      i_END_LINE_VER        : in std_logic;
      i_DONE_CALC           : in std_logic;              
      i_DONE_ITERATIONS     : in std_logic;
      i_DONE_COUNT_BUFFER_HOR   : in std_logic;
      i_DONE_COUNT_BUFFER_VER   : in std_logic);
   end component;
   
   component convolution_datapath
   generic(
      p_WIDTH_PROCESSING : natural := 32;
      p_WIDTH_ADDRS : natural := 16;
      p_DWIDTH_CONTROL : natural := 2); 
   port( 
      i_CLK                 : in  std_logic;              
      i_RST_n               : in  std_logic;      
      i_INIT_ADDRS_HOR      : in  std_logic;
      i_INIT_ADDRS_VER      : in  std_logic;
      i_INIT_CAL            : in  std_logic;    
      i_WAIT_CALC           : in  std_logic;
      i_ADDRS_VER_CHANGE    : in std_logic;     
      i_SEL_MUX_ADDRS       : in std_logic;     
      i_SEL_MUX_OUT_CONV    : in std_logic;     
      i_EXTENDED_DIRAC : in std_logic_vector(p_WIDTH_PROCESSING-1 downto 0);         
      i_WR_EN_FIFO          : in std_logic;
      i_WR_DATA_FIFO        : in std_logic_vector(p_WIDTH_PROCESSING-1 downto 0); 
      i_ENA_ITERATIONS      : in std_logic;   
      o_DONE_ADDR_HOR       : out std_logic;
      o_DONE_ADDR_VER       : out std_logic;      
      o_END_LINE_HOR        : out std_logic;
      o_END_LINE_VER        : out std_logic;           
      o_ADDRS_READ          : out std_logic_vector(p_WIDTH_ADDRS-1 downto 0);
      o_ADDRS_WRITE         : out std_logic_vector(p_WIDTH_ADDRS-1 downto 0);
      o_WR_DATA_CONV        : out std_logic_vector(p_WIDTH_PROCESSING-1 downto 0);
      o_WR_DATA             : out std_logic;
      o_DONE_CALC           : out std_logic;
      o_DONE_ITERATIONS     : out std_logic;
      o_DONE_COUNT_BUFFER_HOR   : out std_logic;
      o_DONE_COUNT_BUFFER_VER   : out std_logic);
   end component;

   signal w_INIT_ADDRS_HOR         : std_logic; 
   signal w_INIT_ADDRS_VER         : std_logic;   
   signal w_INIT_CAL               : std_logic;         
   signal w_WAIT_CALC              : std_logic;
   signal w_SEL_MUX_ADDRS          : std_logic;    
   signal w_SEL_MUX_OUT_CONV       : std_logic; 
   signal w_WR_EN_FIFO             : std_logic;          
   signal w_DONE_ADDR_HOR          : std_logic;           
   signal w_DONE_ADDR_VER          : std_logic;           
   signal w_END_LINE_HOR           : std_logic;           
   signal w_END_LINE_VER           : std_logic;                  
   signal w_DONE_ITERATIONS        : std_logic;                    
   signal w_DONE_COUNT_BUFFER_HOR  : std_logic;       
   signal w_DONE_COUNT_BUFFER_VER  : std_logic;       
   signal w_DONE_CALC              : std_logic;
   signal w_ADDRS_VER_CHANGE       : std_logic;
   signal w_ENA_ITERATIONS         : std_logic;
   
begin  
    control : convolution_control
    generic map(
      p_DWIDTH_CONTROL => p_DWIDTH_CONTROL) 
    port map( 
      i_CLK                     => i_CLK,             
      i_RST_n                   => i_RST_n,             
      i_START                   => i_START,        
      o_INIT_ADDRS_HOR          => w_INIT_ADDRS_HOR,
      o_INIT_ADDRS_VER          => w_INIT_ADDRS_VER,
      o_INIT_CAL                => w_INIT_CAL,           
      o_WAIT_CALC               => w_WAIT_CALC,        
      o_SEL_MUX_ADDRS           => w_SEL_MUX_ADDRS,       
      o_SEL_MUX_OUT_CONV        => w_SEL_MUX_OUT_CONV,
      o_ADDRS_VER_CHANGE        => w_ADDRS_VER_CHANGE,     
      o_WR_EN_FIFO              => w_WR_EN_FIFO,
      o_ENA_ITERATIONS          => w_ENA_ITERATIONS,
      o_DONE                    => o_DONE,       
      i_DONE_ADDR_HOR           => w_DONE_ADDR_HOR,
      i_DONE_ADDR_VER           => w_DONE_ADDR_VER,       
      i_END_LINE_HOR            => w_END_LINE_HOR,
      i_END_LINE_VER            => w_END_LINE_VER,
      i_DONE_CALC               => w_DONE_CALC,       
      i_DONE_ITERATIONS         => w_DONE_ITERATIONS,
      i_DONE_COUNT_BUFFER_HOR   => w_DONE_COUNT_BUFFER_HOR,
      i_DONE_COUNT_BUFFER_VER   => w_DONE_COUNT_BUFFER_VER
   );
   
 
   datapath : convolution_datapath
   generic map(
      p_WIDTH_PROCESSING => p_WIDTH_PROCESSING,
      p_WIDTH_ADDRS      => p_WIDTH_ADDRS,
      p_DWIDTH_CONTROL   => p_DWIDTH_CONTROL)
   port map( 
      i_CLK                     => i_CLK,
      i_RST_n                   => i_RST_n,
      i_INIT_ADDRS_HOR          => w_INIT_ADDRS_HOR,
      i_INIT_ADDRS_VER          => w_INIT_ADDRS_VER,
      i_INIT_CAL                => w_INIT_CAL,
      i_WAIT_CALC               => w_WAIT_CALC,
      i_SEL_MUX_ADDRS           => w_SEL_MUX_ADDRS,
      i_SEL_MUX_OUT_CONV        => w_SEL_MUX_OUT_CONV,
      i_ADDRS_VER_CHANGE        => w_ADDRS_VER_CHANGE,
      i_EXTENDED_DIRAC          => i_EXTENDED_DIRAC,   
      i_WR_EN_FIFO              => w_WR_EN_FIFO,
      i_WR_DATA_FIFO            => i_WR_DATA_FIFO,
      i_ENA_ITERATIONS          => w_ENA_ITERATIONS,
      o_DONE_ADDR_HOR           => w_DONE_ADDR_HOR,
      o_DONE_ADDR_VER           => w_DONE_ADDR_VER,
      o_END_LINE_HOR            => w_END_LINE_HOR ,
      o_END_LINE_VER            => w_END_LINE_VER ,
      o_ADDRS_READ              => o_ADDRS_READ,
      o_ADDRS_WRITE             => o_ADDRS_WRITE,
      o_WR_DATA_CONV            => o_WR_DATA_CONV,
      o_WR_DATA                 => o_WR_EN_MEM,
      o_DONE_CALC               => w_DONE_CALC, 
      o_DONE_ITERATIONS         => w_DONE_ITERATIONS,
      o_DONE_COUNT_BUFFER_HOR   => w_DONE_COUNT_BUFFER_HOR,
      o_DONE_COUNT_BUFFER_VER   => w_DONE_COUNT_BUFFER_VER
   );





end arch_1;
