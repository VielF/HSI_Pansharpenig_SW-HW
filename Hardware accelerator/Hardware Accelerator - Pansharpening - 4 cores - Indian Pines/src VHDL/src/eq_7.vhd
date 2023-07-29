-----------------------------------------------------------------
-- Project: EQ_7
-- Author:  Felipe Viel
-- Date:    08/10/2018 
-- File:    eq_7.vhd
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity eq_7 is
generic(
   p_DWIDTH_DATA : natural := 32;
   p_DWIDTH_CONTROL : natural := 2);
port(
   --clock and reset signals
   i_CLK :  in std_logic;
   i_RST_n :  in std_logic;

   --control imputs
   i_START           : in std_logic;

   --control outputs
   o_DONE       : out std_logic;

   --data inputs
   i_U   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_DT  :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_REGTERM   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_LMB :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_ALPHA  :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_PANTERM   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_MU  :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_CONVOL :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);

   --data outputs
   o_UPD :  out std_logic_vector(p_DWIDTH_DATA-1 downto 0));
end eq_7;

architecture arch_1 of eq_7 is
   
-----------------------------------------------------------------------------------
-------------------------------TO SIMULATE-----------------------------------------
--   signal i_DT  :  std_logic_vector(p_DWIDTH_DATA-1 downto 0) := x"3c23d70a";
--   signal i_REGTERM   :  std_logic_vector(p_DWIDTH_DATA-1 downto 0) := x"00000000";
--   signal i_LMB :  std_logic_vector(p_DWIDTH_DATA-1 downto 0) := x"42c80000";
--   signal i_ALPHA  :  std_logic_vector(p_DWIDTH_DATA-1 downto 0) := x"3cc7cd8a";
--   signal i_PANTERM   :  std_logic_vector(p_DWIDTH_DATA-1 downto 0) := x"c4a74000";
--   signal i_MU  :  std_logic_vector(p_DWIDTH_DATA-1 downto 0) := x"43c80000";
--   signal i_CONVOL :  std_logic_vector(p_DWIDTH_DATA-1 downto 0) := x"c391e822";
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

   component eq_7_control
   generic(
      p_DWIDTH_CONTROL : natural := 2); 
   port ( 
      i_CLK             : in  std_logic;              
      i_RST_n           : in  std_logic;              
      i_START           : in  std_logic;
      i_VALID_MUL       : in std_logic_vector(p_DWIDTH_CONTROL-1 downto 0);
      i_VALID_ADD_SUB   : in std_logic;
      i_READY_MUL_0     : in std_logic;
      i_READY_MUL_1     : in std_logic;
      i_READY_ADD_SUB   : in std_logic;  
      o_MUX_MUL         : out std_logic_vector(p_DWIDTH_CONTROL-1 downto 0);
      o_MUX_ADD_SUB     : out std_logic_vector(1 downto 0);
      o_VALID_MUL       : out std_logic_vector(p_DWIDTH_CONTROL-1 downto 0);
      o_VALID_ADD_SUB   : out std_logic; -- data and operatio type
      o_READY_MUL       : out std_logic;
      o_READY_ADD_SUB   : out std_logic;
      o_OPERATION       : out std_logic_vector(7 downto 0);
      o_DONE            : out std_logic
   );
   end component;

   component eq_7_datapath
   generic(
      p_DWIDTH_DATA : natural := 32;
      p_DWIDTH_CONTROL : natural := 2);
   port(
      i_CLK             :  in std_logic;
      i_RST_n           :  in std_logic;
      i_READY_MUL       : in std_logic;
      i_READY_ADD_SUB   : in std_logic;
      i_VALID_MUL       : in std_logic_vector(p_DWIDTH_CONTROL-1 downto 0);
      i_VALID_ADD_SUB   : in std_logic;
      i_OPERATION       : in std_logic_vector(7 downto 0);
      i_MUX_MUL         : in std_logic_vector(p_DWIDTH_CONTROL-1 downto 0);
      i_MUX_ADD_SUB     : in std_logic_vector(1 downto 0);
      o_VALID_MUL       : out std_logic_vector(p_DWIDTH_CONTROL-1 downto 0);
      o_VALID_ADD_SUB   : out std_logic;
      o_READY_MUL_0           : out std_logic;
      o_READY_MUL_1           : out std_logic;
      o_READY_ADD_SUB       : out std_logic;  
      i_U               :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_DT              :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_REGTERM         :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_LMB             :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_ALPHA           :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_PANTERM         :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_MU              :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_CONVOL          :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      o_UPD             :  out std_logic_vector(p_DWIDTH_DATA-1 downto 0));
   end component;

   signal w_READY_MUL               : std_logic;
   signal w_READY_ADD_SUB           : std_logic;
   signal w_VALID_MUL_OPERAND       : std_logic_vector(p_DWIDTH_CONTROL-1 downto 0);
   signal w_VALID_ADD_SUB_OPERAND   : std_logic;
   signal w_OPERATION               : std_logic_vector(7 downto 0);
   signal w_MUX_MUL                 : std_logic_vector(p_DWIDTH_CONTROL-1 downto 0);
   signal w_MUX_ADD_SUB             : std_logic_vector(1 downto 0);
   signal w_VALID_MUL_RESULT        : std_logic_vector(p_DWIDTH_CONTROL-1 downto 0);
   signal w_VALID_ADD_SUB_RESULT    : std_logic;
   
   signal w_READY_MUL_0_OPERAND           : std_logic;
   signal w_READY_MUL_1_OPERAND           : std_logic;
   signal w_READY_ADD_SUB_OPERAND         : std_logic; 

begin
   control: eq_7_control
   generic map(
      p_DWIDTH_CONTROL => p_DWIDTH_CONTROL)
   port map ( 
      i_CLK            => i_CLK,
      i_RST_n          => i_RST_n,
      i_START          => i_START,
      i_VALID_MUL      => w_VALID_MUL_RESULT,
      i_VALID_ADD_SUB  => w_VALID_ADD_SUB_RESULT,
      i_READY_MUL_0    => w_READY_MUL_0_OPERAND,  
      i_READY_MUL_1    => w_READY_MUL_1_OPERAND,  
      i_READY_ADD_SUB  => w_READY_ADD_SUB_OPERAND,
      o_MUX_MUL        => w_MUX_MUL,
      o_MUX_ADD_SUB    => w_MUX_ADD_SUB,
      o_VALID_MUL      => w_VALID_MUL_OPERAND,
      o_VALID_ADD_SUB  => w_VALID_ADD_SUB_OPERAND,
      o_READY_MUL      => w_READY_MUL,
      o_READY_ADD_SUB  => w_READY_ADD_SUB,
      o_OPERATION      => w_OPERATION,
      o_DONE           => o_DONE
   );

   datapath: eq_7_datapath
   generic map(
      p_DWIDTH_DATA => p_DWIDTH_DATA,
      p_DWIDTH_CONTROL => p_DWIDTH_CONTROL)
   port map(
      i_CLK            => i_CLK,
      i_RST_n          => i_RST_n,
      i_READY_MUL      => w_READY_MUL,
      i_READY_ADD_SUB  => w_READY_ADD_SUB,
      i_VALID_MUL      => w_VALID_MUL_OPERAND,
      i_VALID_ADD_SUB  => w_VALID_ADD_SUB_OPERAND,
      i_OPERATION      => w_OPERATION,
      i_MUX_MUL        => w_MUX_MUL,
      i_MUX_ADD_SUB    => w_MUX_ADD_SUB,
      o_VALID_MUL      => w_VALID_MUL_RESULT,
      o_VALID_ADD_SUB  => w_VALID_ADD_SUB_RESULT,
      o_READY_MUL_0    => w_READY_MUL_0_OPERAND,
      o_READY_MUL_1    => w_READY_MUL_1_OPERAND,
      o_READY_ADD_SUB  => w_READY_ADD_SUB_OPERAND,
      i_U              => i_U,
      i_DT             => i_DT,
      i_REGTERM        => i_REGTERM,
      i_LMB            => i_LMB,
      i_ALPHA          => i_ALPHA,
      i_PANTERM        => i_PANTERM,
      i_MU             => i_MU,
      i_CONVOL         => i_CONVOL,
      o_UPD            => o_UPD
   );
   
end arch_1;