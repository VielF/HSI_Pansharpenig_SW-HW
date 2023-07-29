-----------------------------------------------------------------
-- Project: conv_calc_datapath
-- Author:  Felipe Viel
-- Date:    18/11/2018 
-- File:    reg_term_datapath.vhd
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity conv_calc_datapath is
generic(
   p_DWIDTH_DATA : natural := 32;
   p_DWIDTH_CONTROL : natural := 2);
port(
   --clock and reset signals
   i_CLK :  in std_logic;
   i_RST_n :  in std_logic;
   
   i_RST_REG_DONE   : in std_logic;
   --control imputs
   i_MUX_ADD_SUB_1         : in std_logic;

   i_COUNT_CTRL_0 : in std_logic;
   i_COUNT_CTRL_1 : in std_logic;
   i_COUNT_CONV_ENA_n    : in std_logic;
   --i_REGTERM_ENA_EXT_CTRL : in std_logic;
   --control outputs
   o_READY_MUL_0           : out std_logic;
   o_READY_ADD_SUB_0       : out std_logic;
   o_READY_MUL_1           : out std_logic;
   o_READY_ADD_SUB_1       : out std_logic;
    
   --data inputs
   i_BP_0   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_KP_0   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_BP_1   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_KP_1   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   
   i_VALID_MUL          : in std_logic;
   i_VALID_ADD_SUB      : in std_logic; 
   i_READY_MUL          : in std_logic;
   i_READY_ADD_SUB      : in std_logic;
   
   o_VALID_MUL_0        : out std_logic;
   o_VALID_ADD_SUB_0    : out std_logic;
   o_VALID_MUL_1        : out std_logic;
   o_VALID_ADD_SUB_1    : out std_logic;
   
   i_OPERATION          : in std_logic_vector(7 downto 0);
   
   --data outputs
   o_CONV   :  out std_logic_vector(p_DWIDTH_DATA-1 downto 0)

);

end conv_calc_datapath;

architecture arch_1 of conv_calc_datapath is

   component mux2
   generic (
      p_WIDTH : natural := p_DWIDTH_DATA); -- data width
   port (
      i_SEL : in std_logic; -- selector
      i_DIN0 : in std_logic_vector(p_DWIDTH_DATA-1 downto 0); -- data input
      i_DIN1 : in std_logic_vector(p_DWIDTH_DATA-1 downto 0); -- data input
      o_DOUT : out std_logic_vector(p_DWIDTH_DATA-1 downto 0)); -- data output
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
   
   component floating_point_0
   port(
       aclk : IN STD_LOGIC;
       s_axis_a_tvalid : IN STD_LOGIC;
       s_axis_a_tready : OUT STD_LOGIC;
       s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
       s_axis_b_tvalid : IN STD_LOGIC;
       s_axis_b_tready : OUT STD_LOGIC;
       s_axis_b_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
       m_axis_result_tvalid : OUT STD_LOGIC;
       m_axis_result_tready : IN STD_LOGIC;
       m_axis_result_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
   end component;
  
   component floating_point_1
   port(
       aclk : IN STD_LOGIC;
       s_axis_a_tvalid : IN STD_LOGIC;
       s_axis_a_tready : OUT STD_LOGIC;
       s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
       s_axis_b_tvalid : IN STD_LOGIC;
       s_axis_b_tready : OUT STD_LOGIC;
       s_axis_b_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
       s_axis_operation_tvalid : IN STD_LOGIC;
       s_axis_operation_tready : OUT STD_LOGIC;
       s_axis_operation_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
       m_axis_result_tvalid : OUT STD_LOGIC;
       m_axis_result_tready : IN STD_LOGIC;
       m_axis_result_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
   end component;

   signal w_REGTERM_ENA : std_logic;
   signal w_DOUT_MUX_REGTERM : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_DOUT_REG_REGTERM : std_logic_vector(p_DWIDTH_DATA-1 downto 0);

   signal w_DOUT_MUX_0_FPU_ADD_SUB_1  : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_DOUT_REG_ADD_SUB_0  : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_DOUT_REG_ADD_SUB_1  : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   
   signal w_DOUT_REG_MUL_0  : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_DOUT_REG_MUL_1  : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   
   signal w_DOUT_MUL_RESULT_0  : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_DOUT_MUL_RESULT_1  : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   
   signal w_DOUT_ADD_SUB_RESULT_0  : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_DOUT_ADD_SUB_RESULT_1  : std_logic_vector(p_DWIDTH_DATA-1 downto 0);

   signal w_ENA_REG_MUL_O : std_logic;
   signal w_ENA_REG_MUL_1 : std_logic;

   signal w_ENA_REG_ADD_SUB_O : std_logic;
   signal w_ENA_REG_ADD_SUB_1 : std_logic;
   
   signal w_RST_REG_DONE : std_logic;
   
   signal w_VALID_MUL_RESULT_0 : std_logic;
   signal w_VALID_ADD_SUB_RESULT_0 : std_logic;
   
   signal w_VALID_MUL_RESULT_1 : std_logic;
   signal w_VALID_ADD_SUB_RESULT_1 : std_logic;
   
   signal w_READY_0_MUL_0  : std_logic;
   signal w_READY_1_MUL_0 : std_logic;
   
   signal w_READY_0_MUL_1  : std_logic;
   signal w_READY_1_MUL_1 : std_logic;
    
   signal w_READY_0_ADD_0  : std_logic;
   signal w_READY_1_ADD_0  : std_logic;
   signal w_READY_OP_ADD_0  : std_logic;
   
   signal w_READY_0_ADD_1  : std_logic;
   signal w_READY_1_ADD_1  : std_logic;
   signal w_READY_OP_ADD_1  : std_logic;
   

begin

   w_ENA_REG_MUL_O <= not(i_COUNT_CTRL_0) and w_VALID_MUL_RESULT_0;
   w_ENA_REG_ADD_SUB_O <= not(i_COUNT_CTRL_0) and w_VALID_ADD_SUB_RESULT_0;

   w_ENA_REG_MUL_1 <= not(i_COUNT_CTRL_1) and w_VALID_MUL_RESULT_1;
   w_ENA_REG_ADD_SUB_1 <= (not(i_COUNT_CTRL_1) and w_VALID_ADD_SUB_RESULT_1) or (not(i_COUNT_CONV_ENA_n) and w_VALID_ADD_SUB_RESULT_1);

   o_CONV <= w_DOUT_REG_ADD_SUB_1;

------------------------------------------------------------------------
-----------------------------MUL OPERATION 0--------------------------
   
   fpu_mul_0: floating_point_0
   port map(
      aclk => i_CLK,
   
      s_axis_a_tvalid => i_VALID_MUL,
      s_axis_a_tready => w_READY_0_MUL_0,
      s_axis_a_tdata  => i_BP_0,
      
      s_axis_b_tvalid => i_VALID_MUL,
      s_axis_b_tready => w_READY_1_MUL_0,
      s_axis_b_tdata  => i_KP_0,
      
      m_axis_result_tvalid => w_VALID_MUL_RESULT_0,
      m_axis_result_tready => i_READY_MUL,
      m_axis_result_tdata  => w_DOUT_MUL_RESULT_0
   );
   
   o_READY_MUL_0 <= w_READY_0_MUL_0 and w_READY_0_MUL_0;
   o_VALID_MUL_0 <= w_VALID_MUL_RESULT_0;
   
   reg_fpu_mul_0: reg_pp
   generic map (
      p_WIDTH => p_DWIDTH_DATA) -- data width
   port map(
      i_CLK => i_CLK,
      i_RST_n => w_RST_REG_DONE,
      i_ENA => w_ENA_REG_MUL_O,
      i_DIN => w_DOUT_MUL_RESULT_0,
      o_DOUT => w_DOUT_REG_MUL_0);-- output data
   

------------------------------------------------------------------------
-----------------------------ADD_SUB OPERATION 0-------------------------

   fpu_add_sub_0: floating_point_1
   port map(
      aclk => i_CLK,
      
      s_axis_a_tvalid => i_VALID_ADD_SUB,
      s_axis_a_tready => w_READY_0_ADD_0,
      s_axis_a_tdata  => w_DOUT_REG_MUL_0,
      
      s_axis_b_tvalid => i_VALID_ADD_SUB,
      s_axis_b_tready => w_READY_1_ADD_0,
      s_axis_b_tdata  =>  w_DOUT_REG_ADD_SUB_0,
      
      s_axis_operation_tvalid => i_VALID_ADD_SUB,
      s_axis_operation_tready => w_READY_OP_ADD_0,
      s_axis_operation_tdata  => i_OPERATION ,
      
      m_axis_result_tvalid => w_VALID_ADD_SUB_RESULT_0,
      m_axis_result_tready => i_READY_ADD_SUB,
      m_axis_result_tdata  => w_DOUT_ADD_SUB_RESULT_0
   );

   o_READY_ADD_SUB_0 <= w_READY_0_ADD_0 and w_READY_1_ADD_0 and w_READY_OP_ADD_0;
   o_VALID_ADD_SUB_0 <= w_VALID_ADD_SUB_RESULT_0;

   reg_fpu_add_sub_0: reg_pp
   generic map (
      p_WIDTH => p_DWIDTH_DATA) -- data width
   port map(
      i_CLK => i_CLK,
      i_RST_n => w_RST_REG_DONE,
      i_ENA => w_ENA_REG_ADD_SUB_O,
      i_DIN => w_DOUT_ADD_SUB_RESULT_0,
      o_DOUT => w_DOUT_REG_ADD_SUB_0);-- output data

   

------------------------------------------------------------------------
-----------------------------MUL OPERATION 1--------------------------
   
   fpu_mul_1: floating_point_0
   port map(
      aclk => i_CLK,
  
      s_axis_a_tvalid => i_VALID_MUL,
      s_axis_a_tready => w_READY_0_MUL_1,
      s_axis_a_tdata  => i_BP_1,
      
      s_axis_b_tvalid => i_VALID_MUL,
      s_axis_b_tready => w_READY_1_MUL_1,
      s_axis_b_tdata  => i_KP_1,
      
      m_axis_result_tvalid => w_VALID_MUL_RESULT_1,
      m_axis_result_tready => i_READY_MUL,
      m_axis_result_tdata  => w_DOUT_MUL_RESULT_1
   );
   o_READY_MUL_1 <= w_READY_0_MUL_1 and w_READY_1_MUL_1;
   o_VALID_MUL_1 <= w_VALID_MUL_RESULT_1;

   reg_fpu_mul: reg_pp
   generic map (
      p_WIDTH => p_DWIDTH_DATA) -- data width
   port map(
      i_CLK => i_CLK,
      i_RST_n => w_RST_REG_DONE,
      i_ENA => w_ENA_REG_MUL_1,
      i_DIN => w_DOUT_MUL_RESULT_1,
      o_DOUT => w_DOUT_REG_MUL_1);-- output data

   

------------------------------------------------------------------------
-----------------------------ADD_SUB OPERATION-------------------------
   mux_fpu_add_sub_1: mux2
   generic map(
      p_WIDTH => p_DWIDTH_DATA
   )
   port map(
      i_SEL  => i_MUX_ADD_SUB_1,
      i_DIN0 => w_DOUT_REG_MUL_1,
      i_DIN1 => w_DOUT_REG_ADD_SUB_0,
      o_DOUT => w_DOUT_MUX_0_FPU_ADD_SUB_1
   );
   
   
   fpu_add_sub_1: floating_point_1
   port map(
      aclk => i_CLK,
      
      s_axis_a_tvalid => i_VALID_ADD_SUB,
      s_axis_a_tready => w_READY_0_ADD_1,
      s_axis_a_tdata  => w_DOUT_MUX_0_FPU_ADD_SUB_1,
      
      s_axis_b_tvalid => i_VALID_ADD_SUB,
      s_axis_b_tready => w_READY_1_ADD_1,
      s_axis_b_tdata  =>  w_DOUT_REG_ADD_SUB_1,
      
      s_axis_operation_tvalid => i_VALID_ADD_SUB,
      s_axis_operation_tready => w_READY_OP_ADD_1,
      s_axis_operation_tdata  => i_OPERATION ,
      
      m_axis_result_tvalid => w_VALID_ADD_SUB_RESULT_1,
      m_axis_result_tready => i_READY_ADD_SUB,
      m_axis_result_tdata  => w_DOUT_ADD_SUB_RESULT_1
   );
   o_READY_ADD_SUB_1 <= w_READY_0_ADD_1 and w_READY_1_ADD_1 and w_READY_OP_ADD_1;
   o_VALID_ADD_SUB_1 <= w_VALID_ADD_SUB_RESULT_1;

   reg_fpu_add_sub: reg_pp
   generic map (
      p_WIDTH => p_DWIDTH_DATA) -- data width
   port map(
      i_CLK => i_CLK,
      i_RST_n => w_RST_REG_DONE,
      i_ENA => w_ENA_REG_ADD_SUB_1,
      i_DIN => w_DOUT_ADD_SUB_RESULT_1,
      o_DOUT => w_DOUT_REG_ADD_SUB_1);-- output data
      
      
   w_RST_REG_DONE <= i_RST_REG_DONE and i_RST_n;

end arch_1;