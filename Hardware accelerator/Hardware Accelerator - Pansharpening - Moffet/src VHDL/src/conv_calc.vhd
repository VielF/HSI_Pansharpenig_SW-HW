-----------------------------------------------------------------
-- Project: REG_TERM
-- Author:  Felipe Viel
-- Date:    10/10/2018 
-- File:    ret_term.vhd
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity conv_calc is
generic(
   p_DWIDTH_DATA : natural := 32;
   p_DWIDTH_CONTROL : natural := 2);
port(
   --clock and reset signals
   i_CLK :  in std_logic;
   i_RST_n :  in std_logic;

   --control imputs
   i_START           : in std_logic;


   i_COUNT_0            : in std_logic;
   i_COUNT_1            : in std_logic;

   --control outputs
   o_WR_DATA            : out std_logic;
   o_DONE       : out std_logic;
   
   --data inputs
   i_BP_0   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_KP_0   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_BP_1   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_KP_1   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   
   o_VALID_MUL_0        : out std_logic;
   o_VALID_ADD_SUB_0    : out std_logic;
   o_VALID_MUL_1        : out std_logic;
   o_VALID_ADD_SUB_1    : out std_logic;

   --data outputs
   o_CONV :  out std_logic_vector(p_DWIDTH_DATA-1 downto 0)
   );
end conv_calc;

architecture arch_1 of conv_calc is
   
   component conv_calc_controler
   generic(
      p_DWIDTH_CONTROL : natural := p_DWIDTH_CONTROL); 
   port( 
      i_CLK                : in  std_logic;              
      i_RST_n              : in  std_logic;              
      i_START              : in  std_logic;
      i_COUNT_0            : in std_logic;
      i_COUNT_1            : in std_logic;
      i_VALID_MUL_0        : in std_logic;
      i_VALID_ADD_SUB_0    : in std_logic;
      i_VALID_MUL_1        : in std_logic;
      i_VALID_ADD_SUB_1    : in std_logic;
      i_READY_MUL_0        : in std_logic;
      i_READY_ADD_SUB_0    : in std_logic;
      i_READY_MUL_1        : in std_logic;
      i_READY_ADD_SUB_1    : in std_logic;
      o_MUX_ADD_SUB        : out std_logic;
      o_COUNT_CONV_ENA_n   : out std_logic;
      o_VALID_MUL          : out std_logic;
      o_VALID_ADD_SUB      : out std_logic; 
      o_READY_MUL          : out std_logic;
      o_READY_ADD_SUB      : out std_logic;
      o_OPERATION          : out std_logic_vector(7 downto 0);
      o_RST_REG_DONE       :  out std_logic;
      o_WR_DATA            : out std_logic;
      o_DONE               : out std_logic);
   end component;

   component conv_calc_datapath
   generic(
      p_DWIDTH_DATA : natural := p_DWIDTH_DATA;
      p_DWIDTH_CONTROL : natural := p_DWIDTH_CONTROL);
   port(
      i_CLK                            :  in std_logic;
      i_RST_n                          :  in std_logic;
      i_RST_REG_DONE                   :  in std_logic;
      i_MUX_ADD_SUB_1                  : in std_logic;
      i_COUNT_CTRL_0                   : in std_logic;
      i_COUNT_CTRL_1                   : in std_logic;
      i_COUNT_CONV_ENA_n               : in std_logic;
      i_BP_0                           :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_KP_0                           :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_BP_1                           :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_KP_1                           :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_VALID_MUL          : in std_logic;
      i_VALID_ADD_SUB      : in std_logic; 
      i_READY_MUL          : in std_logic;
      i_READY_ADD_SUB      : in std_logic;  
      o_READY_MUL_0           : out std_logic;
      o_READY_ADD_SUB_0       : out std_logic;
      o_READY_MUL_1           : out std_logic;
      o_READY_ADD_SUB_1       : out std_logic;   
      o_VALID_MUL_0        : out std_logic;
      o_VALID_ADD_SUB_0    : out std_logic;
      o_VALID_MUL_1        : out std_logic;
      o_VALID_ADD_SUB_1    : out std_logic;   
      i_OPERATION          : in std_logic_vector(7 downto 0);
      o_CONV                           :  out std_logic_vector(p_DWIDTH_DATA-1 downto 0)
   );
   end component;

   signal w_MUX_ADD_SUB : std_logic;
   signal w_M_AXIS_RESULT_TREADY_MUL : std_logic;
   signal w_M_AXIS_RESULT_TREADY_ADD_SUB : std_logic;
   signal w_COUNT_CONV_ENA_n   : std_logic;
   signal w_RST_REG_DONE       : std_logic;
   
   signal w_VALID_MUL          : std_logic;
   signal w_VALID_ADD_SUB      : std_logic;
   signal w_READY_MUL          : std_logic;
   signal w_READY_ADD_SUB      : std_logic;
   signal w_VALID_MUL_0        : std_logic;
   signal w_VALID_ADD_SUB_0    : std_logic;
   signal w_VALID_MUL_1        : std_logic;
   signal w_VALID_ADD_SUB_1    : std_logic;
   signal w_OPERATION          : std_logic_vector(7 downto 0);
   
   signal w_READY_MUL_0        : std_logic;
   signal w_READY_ADD_SUB_0    : std_logic;
   signal w_READY_MUL_1        : std_logic;
   signal w_READY_ADD_SUB_1    : std_logic;
   
begin
      
   control_calc : conv_calc_controler
   generic map(
      p_DWIDTH_CONTROL => p_DWIDTH_CONTROL) 
   port map( 
      i_CLK                => i_CLK ,
      i_RST_n              => i_RST_n,
      i_START              => i_START,
      i_COUNT_0            => i_COUNT_0, --
      i_COUNT_1            => i_COUNT_1, --
      i_VALID_MUL_0        => w_VALID_MUL_0,
      i_VALID_ADD_SUB_0    => w_VALID_ADD_SUB_0,
      i_VALID_MUL_1        => w_VALID_MUL_1,
      i_VALID_ADD_SUB_1    => w_VALID_ADD_SUB_1,
      i_READY_MUL_0        => w_READY_MUL_0,    
      i_READY_ADD_SUB_0    => w_READY_ADD_SUB_0,
      i_READY_MUL_1        => w_READY_MUL_1,    
      i_READY_ADD_SUB_1    => w_READY_ADD_SUB_1,
      o_MUX_ADD_SUB        => w_MUX_ADD_SUB,
      o_COUNT_CONV_ENA_n   => w_COUNT_CONV_ENA_n,
      o_VALID_MUL          => w_VALID_MUL, --
      o_VALID_ADD_SUB      => w_VALID_ADD_SUB, --
      o_READY_MUL          => w_READY_MUL, --
      o_READY_ADD_SUB      => w_READY_ADD_SUB, --
      o_OPERATION          => w_OPERATION, 
      o_RST_REG_DONE       => w_RST_REG_DONE,
      o_WR_DATA            => o_WR_DATA,
      o_DONE               => o_DONE
   );
   
   datapath: conv_calc_datapath
   generic map(
      p_DWIDTH_DATA => p_DWIDTH_DATA,
      p_DWIDTH_CONTROL => p_DWIDTH_CONTROL)
   port map(
      i_CLK                            => i_CLK,
      i_RST_n                          => i_RST_n,
      i_MUX_ADD_SUB_1                  => w_MUX_ADD_SUB,
      i_COUNT_CTRL_0                   => i_COUNT_0,
      i_COUNT_CTRL_1                   => i_COUNT_1,
      i_COUNT_CONV_ENA_n               => w_COUNT_CONV_ENA_n,
      i_BP_0                           => i_BP_0,
      i_KP_0                           => i_KP_0,
      i_BP_1                           => i_BP_1,
      i_KP_1                           => i_KP_1,
      i_RST_REG_DONE                   => w_RST_REG_DONE,
      i_VALID_MUL                      => w_VALID_MUL,
      i_VALID_ADD_SUB                  => w_VALID_ADD_SUB,
      i_READY_MUL                      => w_READY_MUL,
      i_READY_ADD_SUB                  => w_READY_ADD_SUB,
      o_READY_MUL_0                    => w_READY_MUL_0, 
      o_READY_ADD_SUB_0                => w_READY_ADD_SUB_0,
      o_READY_MUL_1                    => w_READY_MUL_1,    
      o_READY_ADD_SUB_1                => w_READY_ADD_SUB_1,
      o_VALID_MUL_0                    => w_VALID_MUL_0,
      o_VALID_ADD_SUB_0                => w_VALID_ADD_SUB_0,
      o_VALID_MUL_1                    => w_VALID_MUL_1,
      o_VALID_ADD_SUB_1                => w_VALID_ADD_SUB_1,
      i_OPERATION                      => w_OPERATION,
      o_CONV                           => o_CONV
   );

   o_VALID_MUL_0 <= w_VALID_MUL_0;
   o_VALID_ADD_SUB_0 <= w_VALID_ADD_SUB_0;
   o_VALID_MUL_1 <= w_VALID_MUL_1;
   o_VALID_ADD_SUB_1 <= w_VALID_ADD_SUB_1;
      
end arch_1;