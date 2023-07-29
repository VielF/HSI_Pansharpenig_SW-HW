-----------------------------------------------------------------
-- Project: REG_TERM
-- Author:  Felipe Viel
-- Date:    10/10/2018 
-- File:    ret_term.vhd
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity reg_term is
generic(
   p_DWIDTH_DATA : natural := 32;
   p_DWIDTH_CONTROL : natural := 2);
port(
   --clock and reset signals
   i_CLK :  in std_logic;
   i_RST_n :  in std_logic;

   --control imputs
   i_START           : in std_logic;

   i_REGTERM_ENA_EXT_CTRL : in std_logic;

   --control outputs
   o_DONE       : out std_logic;
   
   --data inputs
   i_U_0   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_U_1   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_REGTERM   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_WEIGHT   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
 

   --data outputs
   o_REGTERM :  out std_logic_vector(p_DWIDTH_DATA-1 downto 0)


);
end reg_term;

architecture arch_1 of reg_term is
   component reg_term_control 
   generic(
      p_DWIDTH_CONTROL : natural := p_DWIDTH_CONTROL); 
   port( 
      i_CLK                 : in  std_logic;              
      i_RST_n               : in  std_logic;              
      i_START               : in  std_logic;
      i_VALID_MUL           : in std_logic;
      i_VALID_ADD_SUB       : in std_logic;
      i_READY_MUL           : in std_logic;
      i_READY_ADD_SUB       : in std_logic;  
      o_MUX_ADD_SUB         : out std_logic;
      o_VALID_MUL           : out std_logic;
      o_VALID_ADD_SUB       : out std_logic; 
      o_READY_MUL           : out std_logic;
      o_READY_ADD_SUB       : out std_logic;
      o_OPERATION           : out std_logic_vector(7 downto 0);
      o_REGTERM_ENA         : out std_logic;
      o_DONE                : out std_logic
   
   );
   end component;      

   component reg_term_datapath
   generic(
      p_DWIDTH_DATA : natural := p_DWIDTH_DATA;
      p_DWIDTH_CONTROL : natural := p_DWIDTH_CONTROL);
   port(
      i_CLK                         : in std_logic;
      i_RST_n                       : in std_logic;
      i_MUX_ADD_SUB                 : in std_logic;
      i_REGTERM_ENA_INT_CTRL        : in std_logic;
      i_REGTERM_ENA_EXT_CTRL        : in std_logic;
      i_U_0                         : in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_U_1                         : in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_WEIGHT                      : in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_REGTERM                     : in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_VALID_MUL                   : in std_logic;
      i_VALID_ADD_SUB               : in std_logic;  
      i_READY_MUL                   : in std_logic; 
      i_READY_ADD_SUB               : in std_logic; 
      i_OPERATION                   : in std_logic_vector(7 downto 0);--data outputs 
      o_READY_MUL           : out std_logic;
      o_READY_ADD_SUB       : out std_logic;  
      o_VALID_MUL                   : out std_logic;
      o_VALID_ADD_SUB               : out std_logic;  
      o_REGTERM                     : out std_logic_vector(p_DWIDTH_DATA-1 downto 0)
   );
   end component;


   signal w_MUX_ADD_SUB : std_logic;

   signal w_REGTERM_ENA_INT : std_logic;
   
   signal w_VALID_MUL_OPERAND : std_logic;
   signal w_VALID_MUL_RESULT : std_logic;
   signal w_VALID_ADD_SUB_OPERAND : std_logic;
   signal w_VALID_ADD_SUB_RESULT : std_logic;
   signal w_READY_MUL : std_logic;
   signal w_READY_ADD_SUB : std_logic;
   signal w_OPERATION : std_logic_vector(7 downto 0);
   
   signal w_READY_MUL_OPERAND           : std_logic;
   signal w_READY_ADD_SUB_OPERAND       : std_logic;  

begin
     
   
   control: reg_term_control 
   generic map(
      p_DWIDTH_CONTROL => p_DWIDTH_CONTROL) 
   port map( 
      i_CLK            => i_CLK ,
      i_RST_n          => i_RST_n,
      i_START          => i_START,
      i_VALID_MUL      => w_VALID_MUL_RESULT,
      i_VALID_ADD_SUB  => w_VALID_ADD_SUB_RESULT,
      i_READY_MUL      => w_READY_MUL_OPERAND,
      i_READY_ADD_SUB  => w_READY_ADD_SUB_OPERAND,
      o_MUX_ADD_SUB    => w_MUX_ADD_SUB,
      o_VALID_MUL      => w_VALID_MUL_OPERAND,
      o_VALID_ADD_SUB  => w_VALID_ADD_SUB_OPERAND,
      o_READY_MUL      => w_READY_MUL,
      o_READY_ADD_SUB  => w_READY_ADD_SUB,
      o_OPERATION      => w_OPERATION,
      o_REGTERM_ENA    => w_REGTERM_ENA_INT,
      o_DONE           => o_DONE
   
   );
 

   datapath: reg_term_datapath
   generic map(
      p_DWIDTH_DATA => p_DWIDTH_DATA,
      p_DWIDTH_CONTROL => p_DWIDTH_CONTROL)
   port map(
      i_CLK                        => i_CLK,
      i_RST_n                      => i_RST_n,
      i_MUX_ADD_SUB                => w_MUX_ADD_SUB,
      i_REGTERM_ENA_INT_CTRL       => w_REGTERM_ENA_INT,
      i_REGTERM_ENA_EXT_CTRL       => i_REGTERM_ENA_EXT_CTRL,
      i_U_0                        => i_U_0,
      i_U_1                        => i_U_1,
      i_WEIGHT                     => i_WEIGHT,
      i_REGTERM                    => i_REGTERM,
      i_VALID_MUL                  => w_VALID_MUL_OPERAND,
      i_VALID_ADD_SUB              => w_VALID_ADD_SUB_OPERAND,
      i_READY_MUL                  => w_READY_MUL,
      i_READY_ADD_SUB              => w_READY_ADD_SUB,
      i_OPERATION                  => w_OPERATION,
      o_READY_MUL                  => w_READY_MUL_OPERAND,      
      o_READY_ADD_SUB              => w_READY_ADD_SUB_OPERAND,  
      o_VALID_MUL                  => w_VALID_MUL_RESULT,
      o_VALID_ADD_SUB              => w_VALID_ADD_SUB_RESULT,
      o_REGTERM                    => o_REGTERM
   );

      
end arch_1;