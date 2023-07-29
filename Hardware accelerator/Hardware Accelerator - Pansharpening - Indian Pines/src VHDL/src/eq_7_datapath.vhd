-----------------------------------------------------------------
-- Project: EQ_7_DATAPATH
-- Author:  Felipe Viel
-- Date:    06/10/2018 
-- File:    eq_7_datapath.vhd
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity eq_7_datapath is
generic(
   p_DWIDTH_DATA : natural := 32;
   p_DWIDTH_CONTROL : natural := 2);
port(
   --clock and reset signals
   i_CLK :  in std_logic;
   i_RST_n :  in std_logic;

   --control imputs
   i_READY_MUL           : in std_logic;
   i_READY_ADD_SUB       : in std_logic;

   i_VALID_MUL           : in std_logic_vector(p_DWIDTH_CONTROL-1 downto 0);
   i_VALID_ADD_SUB       : in std_logic;

   i_OPERATION           : in std_logic_vector(7 downto 0);

   i_MUX_MUL             : in std_logic_vector(p_DWIDTH_CONTROL-1 downto 0);
   i_MUX_ADD_SUB         : in std_logic_vector(1 downto 0);

   --control outputs
   o_READY_MUL_0           : out std_logic;
   o_READY_MUL_1           : out std_logic;
   o_READY_ADD_SUB       : out std_logic;  -- data and operatio type

   o_VALID_MUL           : out std_logic_vector(p_DWIDTH_CONTROL-1 downto 0);
   o_VALID_ADD_SUB       : out std_logic;


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
end eq_7_datapath;

architecture arch_1 of eq_7_datapath is

   -- mux signal of FPU_MUL_0
   signal w_DOUT_MUX_0_FPU_MUL_0 : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_DOUT_MUX_1_FPU_MUL_0 : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   
   -- mux signal of FPU_MUL_1
   signal w_DOUT_MUX_0_FPU_MUL_1 : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_DOUT_MUX_1_FPU_MUL_1 : std_logic_vector(p_DWIDTH_DATA-1 downto 0);

   -- mux signal of FPU_ADD_SUB
   signal w_DOUT_MUX_0_ADD_SUB : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_DOUT_MUX_1_ADD_SUB : std_logic_vector(p_DWIDTH_DATA-1 downto 0);

   -- output FPU 
   signal w_DOUT_FPU_MUL_0     : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_DOUT_FPU_MUL_1     : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_DOUT_FPU_ADD_SUB   : std_logic_vector(p_DWIDTH_DATA-1 downto 0);

   signal w_VALID_FPU_MUL_0    : std_logic;
   signal w_VALID_FPU_MUL_1    : std_logic;
   signal w_VALID_FPU_ADD_SUB  : std_logic;

   -- output REG
   signal w_DOUT_REG_MUL_0     : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_DOUT_REG_MUL_1     : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   signal w_DOUT_REG_ADD_SUB   : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   
   signal w_READY_0_MUL_0  : std_logic;
   signal w_READY_1_MUL_0  : std_logic;
   
   signal w_READY_0_MUL_1  : std_logic;
   signal w_READY_1_MUL_1  : std_logic;
   
   signal w_READY_0_ADD  : std_logic;
   signal w_READY_1_ADD  : std_logic;
   signal w_READY_OP_ADD  : std_logic;
   
   

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

   component mux2
   generic (
      p_WIDTH : natural := p_DWIDTH_DATA); -- data width
   port (
      i_SEL : in std_logic; -- selector
      i_DIN0 : in std_logic_vector(p_DWIDTH_DATA-1 downto 0); -- data input
      i_DIN1 : in std_logic_vector(p_DWIDTH_DATA-1 downto 0); -- data input
      o_DOUT : out std_logic_vector(p_DWIDTH_DATA-1 downto 0)); -- data output
   end component;

   component mux3
   generic (
      p_WIDTH : natural := p_DWIDTH_DATA); -- data width
   port (
      i_SEL  : in std_logic_vector(1 downto 0); -- selector
      i_DIN0 : in std_logic_vector(p_DWIDTH_DATA-1 downto 0); -- data input
      i_DIN1 : in std_logic_vector(p_DWIDTH_DATA-1 downto 0); -- data input
      i_DIN2 : in std_logic_vector(p_DWIDTH_DATA-1 downto 0); -- data input
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

begin

   mux_0_fpu_mul_0: mux2
   generic map(
      p_WIDTH => p_DWIDTH_DATA
   )
   port map(
      i_SEL  => i_MUX_MUL(0),
      i_DIN0 => i_LMB,
      i_DIN1 => w_DOUT_REG_MUL_0,
      o_DOUT => w_DOUT_MUX_0_FPU_MUL_0
   );

   mux_1_fpu_mul_0: mux2
   generic map(
      p_WIDTH => p_DWIDTH_DATA
   )
   port map(
      i_SEL  => i_MUX_MUL(0),
      i_DIN0 => i_ALPHA,
      i_DIN1 => i_PANTERM,
      o_DOUT => w_DOUT_MUX_1_FPU_MUL_0
   );

   fpu_mul_0: floating_point_0
   port map(
      aclk => i_CLK,

      s_axis_a_tvalid => i_VALID_MUL(0),
      s_axis_a_tready => w_READY_0_MUL_0,
      s_axis_a_tdata  => w_DOUT_MUX_0_FPU_MUL_0,
      
      s_axis_b_tvalid => i_VALID_MUL(0),
      s_axis_b_tready => w_READY_1_MUL_0,
      s_axis_b_tdata  => w_DOUT_MUX_1_FPU_MUL_0,
      
      m_axis_result_tvalid => w_VALID_FPU_MUL_0,
      m_axis_result_tready => i_READY_MUL,
      m_axis_result_tdata  => w_DOUT_FPU_MUL_0
   );
   
   o_READY_MUL_0 <= w_READY_0_MUL_0 and w_READY_1_MUL_0;
   
   reg_fpu_mul_0: reg_pp
   generic map (
      p_WIDTH => p_DWIDTH_DATA) -- data width
   port map(
      i_CLK => i_CLK,
      i_RST_n => i_RST_n,
      i_ENA => w_VALID_FPU_MUL_0,
      i_DIN => w_DOUT_FPU_MUL_0,
      o_DOUT => w_DOUT_REG_MUL_0);-- output data

   mux_0_fpu_mul_1: mux2
   generic map(
      p_WIDTH => p_DWIDTH_DATA
   )
   port map(
      i_SEL  => i_MUX_MUL(1),
      i_DIN0 => i_MU,
      i_DIN1 => i_DT,
      o_DOUT => w_DOUT_MUX_0_FPU_MUL_1
   );

   mux_1_fpu_mul_1: mux2
   generic map(
      p_WIDTH => p_DWIDTH_DATA
   )
   port map(
      i_SEL  => i_MUX_MUL(1),
      i_DIN0 => i_CONVOL,
      i_DIN1 => w_DOUT_REG_ADD_SUB,
      o_DOUT =>w_DOUT_MUX_1_FPU_MUL_1
   );
   
   fpu_mul_1: floating_point_0
   port map(
      aclk => i_CLK,

      s_axis_a_tvalid => i_VALID_MUL(1),
      s_axis_a_tready => w_READY_0_MUL_1,
      s_axis_a_tdata  => w_DOUT_MUX_0_FPU_MUL_1,
      
      s_axis_b_tvalid => i_VALID_MUL(1),
      s_axis_b_tready => w_READY_1_MUL_1,
      s_axis_b_tdata  => w_DOUT_MUX_1_FPU_MUL_1,

      m_axis_result_tvalid => w_VALID_FPU_MUL_1,
      m_axis_result_tready => i_READY_MUL,
      m_axis_result_tdata  => w_DOUT_FPU_MUL_1
   );
   
   o_READY_MUL_1 <= w_READY_0_MUL_1 and w_READY_1_MUL_1;

   reg_fpu_mul_1: reg_pp
   generic map (
      p_WIDTH => p_DWIDTH_DATA) -- data width
   port map(
      i_CLK => i_CLK,
      i_RST_n => i_RST_n,
      i_ENA => w_VALID_FPU_MUL_1,
      i_DIN => w_DOUT_FPU_MUL_1,
      o_DOUT => w_DOUT_REG_MUL_1);-- output data
   
   mux_0_fpu_add_sub: mux3
   generic map(
      p_WIDTH => p_DWIDTH_DATA
   )
   port map(
      i_SEL  => i_MUX_ADD_SUB,
      i_DIN0 => i_REGTERM,
      i_DIN1 => w_DOUT_REG_MUL_0,
      i_DIN2 => i_U, 
      o_DOUT => w_DOUT_MUX_0_ADD_SUB
   );

   mux_1_fpu_add_sub: mux2
   generic map(
      p_WIDTH => p_DWIDTH_DATA
   )
   port map(
      i_SEL  => i_MUX_ADD_SUB(0),
      i_DIN0 => w_DOUT_REG_MUL_1,
      i_DIN1 => w_DOUT_REG_ADD_SUB,
      o_DOUT => w_DOUT_MUX_1_ADD_SUB
   );

   fpu_add_sub: floating_point_1
   port map(
      aclk => i_CLK,
      
      s_axis_a_tvalid => i_VALID_ADD_SUB,
      s_axis_a_tready => w_READY_0_ADD,
      s_axis_a_tdata  => w_DOUT_MUX_0_ADD_SUB,
      
      s_axis_b_tvalid => i_VALID_ADD_SUB,
      s_axis_b_tready => w_READY_1_ADD,
      s_axis_b_tdata  => w_DOUT_MUX_1_ADD_SUB,
      
      s_axis_operation_tvalid => i_VALID_ADD_SUB,
      s_axis_operation_tready => w_READY_OP_ADD,
      s_axis_operation_tdata  => i_OPERATION ,
      
      m_axis_result_tvalid => w_VALID_FPU_ADD_SUB,
      m_axis_result_tready => i_READY_ADD_SUB,
      m_axis_result_tdata  => w_DOUT_FPU_ADD_SUB
   );
   
   o_READY_ADD_SUB <= w_READY_0_ADD and w_READY_1_ADD and w_READY_OP_ADD;
   
   reg_fpu_add_sub: reg_pp
   generic map (
      p_WIDTH => p_DWIDTH_DATA) -- data width
   port map(
      i_CLK => i_CLK,
      i_RST_n => i_RST_n,
      i_ENA => w_VALID_FPU_ADD_SUB,
      i_DIN => w_DOUT_FPU_ADD_SUB,
      o_DOUT => w_DOUT_REG_ADD_SUB);-- output data

   o_UPD <= w_DOUT_REG_ADD_SUB;

   o_VALID_MUL(1) <= w_VALID_FPU_MUL_1;
   o_VALID_MUL(0) <= w_VALID_FPU_MUL_0;
   o_VALID_ADD_SUB <= w_VALID_FPU_ADD_SUB;

end arch_1;