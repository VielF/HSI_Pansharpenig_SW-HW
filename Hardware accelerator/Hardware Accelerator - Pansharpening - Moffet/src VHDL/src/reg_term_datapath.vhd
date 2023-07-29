-----------------------------------------------------------------
-- Project: REG_TERM_DATAPATH
-- Author:  Felipe Viel
-- Date:    10/10/2018 
-- File:    reg_term_datapath.vhd
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity reg_term_datapath is
generic(
   p_DWIDTH_DATA : natural := 32;
   p_DWIDTH_CONTROL : natural := 2);
port(
   --clock and reset signals
   i_CLK :  in std_logic;
   i_RST_n :  in std_logic;

   --control imputs
   i_MUX_ADD_SUB         : in std_logic;

   i_REGTERM_ENA_INT_CTRL : in std_logic;
   i_REGTERM_ENA_EXT_CTRL : in std_logic;
   --control outputs
   --o_READY_MUL           : out std_logic_vector(p_DWIDTH_CONTROL-1 downto 0);
   --o_READY_ADD_SUB       : out std_logic_vector(p_DWIDTH_CONTROL-1 downto 0);  -- data and operatio type

   --data inputs
   i_U_0   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_U_1   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_WEIGHT  :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_REGTERM   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   
   i_VALID_MUL           : in std_logic;
   i_VALID_ADD_SUB       : in std_logic;  
   i_READY_MUL           : in std_logic; 
   i_READY_ADD_SUB       : in std_logic; 
   i_OPERATION           : in std_logic_vector(7 downto 0);--data outputs
   
   o_READY_MUL           : out std_logic;
   o_READY_ADD_SUB       : out std_logic;  
   
   o_VALID_MUL           : out std_logic;
   o_VALID_ADD_SUB       : out std_logic;  
   
   o_REGTERM :  out std_logic_vector(p_DWIDTH_DATA-1 downto 0)


);

end reg_term_datapath;

architecture arch_1 of reg_term_datapath is

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

   signal w_DOUT_MUX_0_FPU_ADD_SUB  : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_DOUT_MUX_1_FPU_ADD_SUB  : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_DOUT_REG_ADD_SUB  : std_logic_vector(p_DWIDTH_DATA-1 downto 0);

   signal w_DOUT_REG_MUL  : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   
   signal w_VALID_MUL_RESULT : std_logic;
   signal w_VALID_ADD_SUB_RESULT : std_logic;
   
   signal w_DOUT_ADD_SUB_RESULT : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_DOUT_MUL_RESULT : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   
   signal w_READY_0_MUL  : std_logic;
   signal w_READY_1_MUL  : std_logic;
    
   signal w_READY_0_ADD  : std_logic;
   signal w_READY_1_ADD  : std_logic;
   signal w_READY_OP_ADD  : std_logic;
begin
------------------------------------------------------------------------
---------------------REGTERM REGISTER OPERATION-------------------------
   w_REGTERM_ENA <= i_REGTERM_ENA_INT_CTRL or i_REGTERM_ENA_EXT_CTRL;

   mux_regterm: mux2
   generic map(
      p_WIDTH => p_DWIDTH_DATA
   )
   port map(
      i_SEL  => i_REGTERM_ENA_EXT_CTRL,
      i_DIN0 => w_DOUT_REG_ADD_SUB,
      i_DIN1 => i_REGTERM,
      o_DOUT => w_DOUT_MUX_REGTERM
   );
   
   reg_regterm: reg_pp
   generic map (
      p_WIDTH => p_DWIDTH_DATA) -- data width
   port map(
      i_CLK => i_CLK,
      i_RST_n => i_RST_n,
      i_ENA => w_REGTERM_ENA,
      i_DIN => w_DOUT_MUX_REGTERM,
      o_DOUT => w_DOUT_REG_REGTERM);-- output data


   o_REGTERM <= w_DOUT_REG_REGTERM;
------------------------------------------------------------------------
-----------------------------ADD_SUB OPERATION-------------------------
   mux_0_fpu_add_sub: mux2
   generic map(
      p_WIDTH => p_DWIDTH_DATA
   )
   port map(
      i_SEL  => i_MUX_ADD_SUB,
      i_DIN0 => i_U_0,
      i_DIN1 => w_DOUT_REG_REGTERM,
      o_DOUT => w_DOUT_MUX_0_FPU_ADD_SUB
   );

   mux_1_fpu_add_sub: mux2
   generic map(
      p_WIDTH => p_DWIDTH_DATA
   )
   port map(
      i_SEL  => i_MUX_ADD_SUB,
      i_DIN0 => i_U_1,
      i_DIN1 => w_DOUT_REG_MUL,
      o_DOUT => w_DOUT_MUX_1_FPU_ADD_SUB
   );

   fpu_add_sub: floating_point_1
   port map(
      aclk => i_CLK,
      
      s_axis_a_tvalid => i_VALID_ADD_SUB,
      s_axis_a_tready => w_READY_0_ADD,
      s_axis_a_tdata  => w_DOUT_MUX_0_FPU_ADD_SUB,
      
      s_axis_b_tvalid => i_VALID_ADD_SUB,
      s_axis_b_tready => w_READY_1_ADD,
      s_axis_b_tdata  =>  w_DOUT_MUX_1_FPU_ADD_SUB,
      
      s_axis_operation_tvalid => i_VALID_ADD_SUB,
      s_axis_operation_tready => w_READY_OP_ADD,
      s_axis_operation_tdata  => i_OPERATION ,
      
      m_axis_result_tvalid => w_VALID_ADD_SUB_RESULT,
      m_axis_result_tready => i_READY_ADD_SUB,
      m_axis_result_tdata  => w_DOUT_ADD_SUB_RESULT
   );
   o_READY_ADD_SUB <= w_READY_0_ADD and w_READY_1_ADD and w_READY_OP_ADD;
   o_VALID_ADD_SUB <= w_VALID_ADD_SUB_RESULT;

   reg_fpu_add_sub: reg_pp
   generic map (
      p_WIDTH => p_DWIDTH_DATA) -- data width
   port map(
      i_CLK => i_CLK,
      i_RST_n => i_RST_n,
      i_ENA => w_VALID_ADD_SUB_RESULT,
      i_DIN => w_DOUT_ADD_SUB_RESULT,
      o_DOUT => w_DOUT_REG_ADD_SUB);-- output data

------------------------------------------------------------------------
-----------------------------MUL OPERATION--------------------------
   
   fpu_mul_0: floating_point_0
   port map(
      aclk => i_CLK,
  
      s_axis_a_tvalid => i_VALID_MUL,
      s_axis_a_tready => w_READY_0_MUL,
      s_axis_a_tdata  => i_WEIGHT,
      
      s_axis_b_tvalid => i_VALID_MUL,
      s_axis_b_tready => w_READY_1_MUL,
      s_axis_b_tdata  => w_DOUT_REG_ADD_SUB,
      
      m_axis_result_tvalid => w_VALID_MUL_RESULT,
      m_axis_result_tready => i_READY_MUL,
      m_axis_result_tdata  => w_DOUT_MUL_RESULT
   );
   o_READY_MUL <= w_READY_0_MUL and w_READY_1_MUL;
   o_VALID_MUL <= w_VALID_MUL_RESULT;

   reg_fpu_mul: reg_pp
   generic map (
      p_WIDTH => p_DWIDTH_DATA) -- data width
   port map(
      i_CLK => i_CLK,
      i_RST_n => i_RST_n,
      i_ENA => w_VALID_MUL_RESULT,
      i_DIN => w_DOUT_MUL_RESULT,
      o_DOUT => w_DOUT_REG_MUL);-- output data

end arch_1;