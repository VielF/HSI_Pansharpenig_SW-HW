-----------------------------------------------------------------
-- Project: PAN_SHARP
-- Author:  Felipe Viel
-- Date:    06/10/2018 
-- File:    eq_7_datapath.vhd
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.pack.all;

entity pan_sharp_datapath is
generic(
   p_DWIDTH_DATA : natural := CHANNEL_DATA_LENGTH;
   p_DWIDTH_ADDRS : natural := CHANNEL_ADDR_LENGTH;
   p_DWIDTH_CONTROL : natural := 2);
port(
   --clock and reset signals
   i_CLK :  in std_logic;
   i_RST_n :  in std_logic;

   --control imputs
   i_START_CONV          : in std_logic;
   i_START_REGTERM_0     : in std_logic;
   i_START_REGTERM_1     : in std_logic;
   i_START_FUSION        : in std_logic;
   
   i_ENA_REGTERM_0       : in std_logic;
   i_ENA_REGTERM_1       : in std_logic;
   
   i_ENA_U0_REG_REGTERM_0      : in std_logic;
   i_ENA_U1_REG_REGTERM_0      : in std_logic;
   i_ENA_WEIGHT_REG_REGTERM_0  : in std_logic;
   
   i_ENA_U0_REG_REGTERM_1      : in std_logic;
   i_ENA_U1_REG_REGTERM_1      : in std_logic;
   i_ENA_WEIGHT_REG_REGTERM_1  : in std_logic;
   
   i_ENA_COUT_PIXEL_U      : in std_logic;
   i_ENA_REG_PIXEL_U      : in std_logic;
   
   i_RST_COUT_PIXEL_U      : in std_logic;
   i_RST_COUT_ITERATIONS  : in std_logic;
   
   i_RST_CONV  : in std_logic;
   i_RST_REGTERM  : in std_logic;
   i_RST_FUSION  : in std_logic;
   
   i_PST_REGTERM_0  : in std_logic;
   i_PST_REGTERM_1  : in std_logic;
   
   i_VALID_ADD_REGTERM   : in std_logic;
   
   i_MUX_ADDR_CONV_MEM   : in std_logic;
   i_MUX_ADDR_FUSION_MEM          : in std_logic;
   i_MUX_EXT_RD_ADDR_FUSION_MEM   : in std_logic_vector(1 downto 0);
   i_MUX_UPDATE_RD_ADDR_FUSION_MEM   : in std_logic;
   
   i_ENA_WR_INIT_VALUES         : in std_logic;
   
   i_VALID_REGTERM_DATA         : in std_logic;
   
   i_ENA_WR_UPD         : in std_logic;
   
   o_READY_ADD_SUB_REGTERM       : out std_logic;
   --control outputs
   o_DONE_REGTERM_0      : out std_logic;
   o_DONE_REGTERM_1      : out std_logic;
   o_DONE_CONV           : out std_logic;
   o_DONE_FUSION         : out std_logic;
   o_DONE_COUNT_PIXEL    : out std_logic;
   o_DONE_COUNT_PIXEL_UPDATE    : out std_logic;
   o_DONE_COUNT_ITERATIONS    : out std_logic;
     
   o_VALID_ADD_REGTERM       : out std_logic;
     
   o_REP_DONE_REGTERM_0    : out std_logic;
   o_REP_DONE_REGTERM_1    : out std_logic;
   o_DOUT_COMPARE_REGTERM_0 : out std_logic;
   o_DOUT_COMPARE_REGTERM_1 : out std_logic;
   
   --data inputs
   i_EXTENDED_VALUE  :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_EXTERNAL_ADDRS_INIT :  in std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
   
   i_PANTERM :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
    
   i_WEIGHT_0 :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_WEIGHT_1 :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   i_REP_REGTERM : in std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);  ---31 to 16 = rep regterm 0 -- 15 to 0 = rep regterm 1;
   i_ADDRS_REGTERM           : in std_logic_vector(p_DWIDTH_DATA-1 downto 0);---31 to 16 = rep regterm 0 -- 15 to 0 = rep regterm 1;
   
   i_ADDRS_UPD_EXTERNAL_READ : in std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
   
   --data outputs
   o_U_ADDRS_PAN : out std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
   
   o_ADDRS_POS_WEIGHT_0 : out std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
   o_ADDRS_POS_WEIGHT_1 : out std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
   
   o_UPD :  out std_logic_vector(p_DWIDTH_DATA-1 downto 0));
end pan_sharp_datapath;

architecture arch_1 of pan_sharp_datapath is
    

   component eq_7
   generic(
      p_DWIDTH_DATA : natural := CHANNEL_DATA_LENGTH;
      p_DWIDTH_CONTROL : natural := 2);
   port(
      i_CLK :  in std_logic;
      i_RST_n :  in std_logic;
      i_START           : in std_logic;
      o_DONE       : out std_logic;
      i_U   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_DT  :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_REGTERM   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_LMB :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_ALPHA  :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_PANTERM   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_MU  :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_CONVOL :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      o_UPD :  out std_logic_vector(p_DWIDTH_DATA-1 downto 0));
   end component;


   component reg_term_top
   generic(
      p_DWIDTH_DATA : natural := CHANNEL_DATA_LENGTH;
      p_DWIDTH_CONTROL : natural := 2);
   port(
      i_CLK :  in std_logic;
      i_RST_n :  in std_logic;
      i_START           : in std_logic;
      i_ENA_U0_REG_REGTERM      : in std_logic;
      i_ENA_U1_REG_REGTERM      : in std_logic;
      i_ENA_WEIGHT_REG_REGTERM  : in std_logic;
      --i_ENA_REGS        : in std_logic;
      i_REGTERM_ENA_EXT_CTRL : in std_logic;
      o_DONE       : out std_logic;
      i_U_0   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_U_1   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_REGTERM   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_WEIGHT   :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      o_REGTERM :  out std_logic_vector(p_DWIDTH_DATA-1 downto 0));
   end component;

   component convolution
   generic(
      p_WIDTH_PROCESSING : natural := CHANNEL_DATA_LENGTH;
      p_WIDTH_ADDRS : natural := CHANNEL_ADDR_LENGTH;
      p_DWIDTH_CONTROL : natural := 2); 
   port( 
      i_CLK                 : in  std_logic;              
      i_RST_n               : in  std_logic;
      i_START               : in  std_logic;
      i_EXTENDED_DIRAC      : in std_logic_vector(p_WIDTH_PROCESSING-1 downto 0);
      i_WR_DATA_FIFO        : in std_logic_vector(p_WIDTH_PROCESSING-1 downto 0);
      o_WR_EN_MEM           : out std_logic;
      o_ADDRS_READ          : out std_logic_vector(p_WIDTH_ADDRS-1 downto 0);
      o_ADDRS_WRITE         : out std_logic_vector(p_WIDTH_ADDRS-1 downto 0);
      o_WR_DATA_CONV        : out std_logic_vector(p_WIDTH_PROCESSING-1 downto 0);
      o_DONE                : out std_logic);
   end component;
   
   component blk_mem_gen_0
   port (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      clkb : IN STD_LOGIC;
      enb : IN STD_LOGIC;
      web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      addrb : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      dinb : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      doutb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
   end component;
   
   component blk_mem_gen_1
   port (
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
   );
   end component;
   
   component blk_mem_gen_2
   port (
     clka : IN STD_LOGIC;
     ena : IN STD_LOGIC;
     wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
     addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
     dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
     clkb : IN STD_LOGIC;
     enb : IN STD_LOGIC;
     addrb : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
     doutb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
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
      p_WIDTH : natural := CHANNEL_ADDR_LENGTH); -- data width
   port (
      i_SEL : in std_logic; -- selector
      i_DIN0 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
      i_DIN1 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
      o_DOUT : out std_logic_vector(p_WIDTH-1 downto 0)); -- data output
   end component;

   component mux3
   generic (
      p_WIDTH : natural := CHANNEL_ADDR_LENGTH); -- data width
   port (
      i_SEL  : in std_logic_vector(1 downto 0); -- selector
      i_DIN0 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
      i_DIN1 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
      i_DIN2 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
      o_DOUT : out std_logic_vector(p_WIDTH-1 downto 0)); -- data output
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
  
  component counter_cycles_up
  generic(
     p_CYCLES: integer := IMG_WIDTH - 1;
     p_WIDTH : natural := 3);
  port(
     i_CLK : in std_logic;
     i_RST : in std_logic;
     i_ENA : in std_logic;
     o_DONE : out std_logic;
     o_CYCLES : out std_logic_vector(p_WIDTH -1 downto 0));
  end component;
  
  component reg_init_pp
  generic (
      p_WIDTH : natural := CHANNEL_DATA_LENGTH); -- data width
  port (
      i_CLK : in std_logic; -- clock
      i_RST_n : in std_logic; -- reset
      i_PST : in std_logic; -- enable
      i_ENA : in std_logic; -- enable
      i_DIN : in std_logic_vector(p_WIDTH-1 downto 0); -- input data
      o_DONE  : out std_logic);-- output data
  end component;
  
  component compare_value
  generic (
      p_VALUE_COMPARE : integer := 0;
      p_WIDTH : natural := 1); -- data width
  port (
      i_CLK : in std_logic; -- clock
      i_RST_n : in std_logic; -- reset
      i_ENA : in std_logic; -- enable
      i_DIN : in std_logic_vector(p_WIDTH-1 downto 0); -- input data
      o_DOUT  : out std_logic);-- output data
  end component;
  
  component blk_mem_gen_9
  port(
      clka : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
  end component;
  
     -- mux signal of FPU_MUL_0
  signal w_WR_DATA_CONV_SPEC_CONV : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
  signal w_ADDRS_WRITE_SPEC_CONV : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
  signal w_WR_EN_MEM_SPEC_CONV : std_logic;
  signal w_ENA_WR_CONV : std_logic;
  signal w_ENA_WR_SPEC_CONV : std_logic;
  signal w_ADDRS_READ_SPEC_CONV : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
  signal w_EXTENDED_DIRAC : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
  
  
  signal w_DATA_WR_CONV : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
  signal w_DATA_RD_CONV : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
  signal w_ADDRS_WR_CONV : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
  signal w_ADDRS_RD_CONV : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
  
  
  
  -- mux signal of FPU_MUL_1
  signal w_DOUT_REG_REGTERM : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
  signal w_PANTERM : std_logic_vector(p_DWIDTH_DATA-1 downto 0);

  signal w_REGTERM_0          : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
  signal w_REGTERM_1          : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
  
  signal w_U_1_REGTERM_0          : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
  signal w_U_1_REGTERM_1          : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
  signal w_OUT_REGTERM_0          : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
  signal w_OUT_REGTERM_1          : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
  signal w_OUT_VALID_FPU_ADD_REGTERM          : std_logic;
  signal w_OUT_RESULT_FPU_ADD_REGTERM          : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
  signal w_DONE_REGTERM_0 : std_logic;
  signal w_DONE_REGTERM_1 : std_logic;
  
  signal w_U_ADDRS      : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
  signal w_U_ADDRS_UPDATE      : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
  signal w_DOUT_REG_U   : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
  signal w_UPD   : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
  signal w_UPD_TEMP   : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
  
  signal w_RST_COUNT_ITERATIONS : std_logic;
  signal w_RST_COUNT_PIXEL : std_logic;
  
  signal w_RESET_REGTERM : std_logic;
  signal w_RESET_FUSION : std_logic;
  signal w_RESET_CONV : std_logic;
  
  signal w_DONE_CONV : std_logic;
  
  signal w_RST_REG_DONE_CONV : std_logic;
  signal w_DONE_COUNT_PIXEL : std_logic;
  signal w_DONE_FUSION : std_logic;
  
  signal w_ADDRS_WR_EXTENDED : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
  
     
  signal w_OUT_MEM_FUSION_DATA_0 : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
  signal w_OUT_MEM_FUSION_DATA_1 : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
  signal w_ADDRS_MEM_FUSION : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
  signal w_ADDRS_RD_DATA_DONE : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
  signal w_ADDRS_RD_DATA_DONE_UPDATE : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
  
  signal w_ACTIVE_PORT_RD_MEM_FUSION : std_logic;
  signal w_ACTIVE_PORT_RD_MEM_CONV : std_logic;

  signal w_READY_0_ADD_REGTERM  : std_logic;
  signal w_READY_1_ADD_REGTERM  : std_logic;
  signal w_READY_OP_ADD_REGTERM  : std_logic;
  
begin
   
-------------------------------------------------------------------------------------
--                          SPECTRAL CONSTRAINTS - CONVOLUTION                    ---   
   conv_ip : convolution
   generic map (
      p_WIDTH_PROCESSING => p_DWIDTH_DATA,
      p_WIDTH_ADDRS => p_DWIDTH_ADDRS,
      p_DWIDTH_CONTROL => p_DWIDTH_CONTROL) 
   port map( 
      i_CLK                 => i_CLK,              
      i_RST_n               => w_RESET_CONV,
      i_START               => i_START_CONV,
      i_EXTENDED_DIRAC      => w_EXTENDED_DIRAC,
      i_WR_DATA_FIFO        => w_DATA_RD_CONV,
      o_WR_EN_MEM           => w_ENA_WR_SPEC_CONV,
      o_ADDRS_READ          => w_ADDRS_READ_SPEC_CONV,
      o_ADDRS_WRITE         => w_ADDRS_WRITE_SPEC_CONV,
      o_WR_DATA_CONV        => w_WR_DATA_CONV_SPEC_CONV,
      o_DONE                => w_DONE_CONV
   );
   w_RESET_CONV <= i_RST_CONV and i_RST_n;
   
   mux_wr_data_conv: mux2
   generic map(
      p_WIDTH => p_DWIDTH_DATA) -- data width
   port map(
      i_SEL  => i_MUX_ADDR_CONV_MEM, -- selector
      i_DIN0 => w_WR_DATA_CONV_SPEC_CONV,
      i_DIN1 => w_UPD,
      o_DOUT => w_DATA_WR_CONV
   );
   
   mux_wr_addrs_conv: mux2
   generic map(
      p_WIDTH => p_DWIDTH_ADDRS) -- data width
   port map(
      i_SEL  => i_MUX_ADDR_CONV_MEM, -- selector
      i_DIN0 => w_ADDRS_WRITE_SPEC_CONV,
      i_DIN1 => w_U_ADDRS,
      o_DOUT => w_ADDRS_WR_CONV
   ); 
   
   mux_rd_addrs_conv: mux2
   generic map(
      p_WIDTH => p_DWIDTH_ADDRS) -- data width
   port map(
      i_SEL  => i_MUX_ADDR_CONV_MEM, -- selector
      i_DIN0 => w_ADDRS_READ_SPEC_CONV,
      i_DIN1 => w_U_ADDRS,
      o_DOUT => w_ADDRS_RD_CONV
   ); 
   
   mux_wr_ena_mem_conv: mux2
   generic map(
      p_WIDTH => 1) -- data width
   port map(
      i_SEL  => i_MUX_ADDR_CONV_MEM, -- selector
      i_DIN0(0) => w_ENA_WR_SPEC_CONV,
      i_DIN1(0) => w_DONE_FUSION,
      o_DOUT(0) => w_ENA_WR_CONV
   ); 
   
    
     
   conv_mem : blk_mem_gen_2
   port map(
      clka => i_CLK,
      ena => w_ENA_WR_CONV,
      wea(0) => w_ENA_WR_CONV,
      addra => w_ADDRS_WR_CONV(11 downto 0),
      dina => w_DATA_WR_CONV,
      clkb => i_CLK,
      enb => w_ACTIVE_PORT_RD_MEM_CONV,
      addrb => w_ADDRS_RD_CONV(11 downto 0),
      doutb => w_DATA_RD_CONV
   );
   
   w_ACTIVE_PORT_RD_MEM_CONV <= not(w_ENA_WR_CONV);
   
   mux_wr_init_extended: mux2
   generic map(
      p_WIDTH => p_DWIDTH_ADDRS) -- data width
   port map(
      i_SEL  => i_ENA_WR_INIT_VALUES, -- selector
      i_DIN0 => w_ADDRS_WRITE_SPEC_CONV,
      i_DIN1 => i_EXTERNAL_ADDRS_INIT,
      o_DOUT => w_ADDRS_WR_EXTENDED
   ); 
     
   extended : blk_mem_gen_1
   port map(
      clka => i_CLK,
      ena => '1',
      wea(0) => i_ENA_WR_INIT_VALUES,
      addra => w_ADDRS_WR_EXTENDED(11 downto 0),
      dina  => i_EXTENDED_VALUE,
      douta => w_EXTENDED_DIRAC
   );

-------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------   
--                                 CALC REGTERM                                    --
   
       
   regterm_0 : reg_term_top
   generic map(
      p_DWIDTH_DATA => 32,
      p_DWIDTH_CONTROL => 2)
   port map(
      i_CLK => i_CLK,
      i_RST_n => w_RESET_REGTERM,
      i_START  => i_START_REGTERM_0,
      i_ENA_U0_REG_REGTERM      => i_ENA_U0_REG_REGTERM_0,
      i_ENA_U1_REG_REGTERM      => i_ENA_U1_REG_REGTERM_0,
      i_ENA_WEIGHT_REG_REGTERM  => i_ENA_WEIGHT_REG_REGTERM_0,
      --i_ENA_REGS  => ,
      i_REGTERM_ENA_EXT_CTRL => i_ENA_REGTERM_0,
      o_DONE   => w_DONE_REGTERM_0,
      i_U_0   => w_DOUT_REG_U,
      i_U_1   => w_OUT_MEM_FUSION_DATA_0,
      i_REGTERM   => x"00000000",
      i_WEIGHT   => i_WEIGHT_0,
      o_REGTERM => w_OUT_REGTERM_0
   );
   o_DONE_REGTERM_0 <= w_DONE_REGTERM_0;
     
   regterm_1 : reg_term_top
   generic map(
      p_DWIDTH_DATA => 32,
      p_DWIDTH_CONTROL => 2)
   port map(
      i_CLK => i_CLK,
      i_RST_n => w_RESET_REGTERM,
      i_START  => i_START_REGTERM_1,
      i_ENA_U0_REG_REGTERM      => i_ENA_U0_REG_REGTERM_1,
      i_ENA_U1_REG_REGTERM      => i_ENA_U1_REG_REGTERM_1,
      i_ENA_WEIGHT_REG_REGTERM  => i_ENA_WEIGHT_REG_REGTERM_1,
      --i_ENA_REGS  => ,
      i_REGTERM_ENA_EXT_CTRL => i_ENA_REGTERM_1,
      o_DONE   => w_DONE_REGTERM_1,
      i_U_0   => w_DOUT_REG_U,
      i_U_1   => w_OUT_MEM_FUSION_DATA_1,
      i_REGTERM   => x"00000000",
      i_WEIGHT   => i_WEIGHT_1,
      o_REGTERM => w_OUT_REGTERM_1
   );
   o_DONE_REGTERM_1 <= w_DONE_REGTERM_1;
   w_RESET_REGTERM <= i_RST_REGTERM and i_RST_n;
   
   fpu_add_sub_regterm: floating_point_1
   port map(
      aclk => i_CLK,
         
      s_axis_a_tvalid => i_VALID_ADD_REGTERM,
      s_axis_a_tready => w_READY_0_ADD_REGTERM,
      s_axis_a_tdata  => w_OUT_REGTERM_0,
         
      s_axis_b_tvalid => i_VALID_ADD_REGTERM,
      s_axis_b_tready => w_READY_1_ADD_REGTERM,
      s_axis_b_tdata  => w_OUT_REGTERM_1,
         
      s_axis_operation_tvalid => i_VALID_ADD_REGTERM,
      s_axis_operation_tready => w_READY_OP_ADD_REGTERM,
      s_axis_operation_tdata  => x"00" ,
         
      m_axis_result_tvalid => w_OUT_VALID_FPU_ADD_REGTERM,
      m_axis_result_tready => '1',
      m_axis_result_tdata  => w_OUT_RESULT_FPU_ADD_REGTERM
   );
   o_READY_ADD_SUB_REGTERM <= w_READY_0_ADD_REGTERM and w_READY_1_ADD_REGTERM and w_READY_OP_ADD_REGTERM;
   o_VALID_ADD_REGTERM <= w_OUT_VALID_FPU_ADD_REGTERM;
   
   reg_regterm: reg_pp
   generic map (
      p_WIDTH => p_DWIDTH_DATA) -- data width
   port map(
      i_CLK => i_CLK,
      i_RST_n => w_RESET_REGTERM,
      i_ENA => w_OUT_VALID_FPU_ADD_REGTERM,
      i_DIN => w_OUT_RESULT_FPU_ADD_REGTERM,
      o_DOUT => w_DOUT_REG_REGTERM);-- output data
-------------------------------------------------------------------------------------   
   
   
-------------------------------------------------------------------------------------   
--                                 FUSION                                          --   
   mux_addres_0_fusion: mux2
   generic map(
      p_WIDTH => p_DWIDTH_ADDRS) -- data width
   port map(
      i_SEL  => i_MUX_ADDR_FUSION_MEM, -- selector
      i_DIN0 => w_U_ADDRS,
      i_DIN1 => i_ADDRS_REGTERM(31 downto p_DWIDTH_ADDRS),
      o_DOUT => w_ADDRS_MEM_FUSION
   ); 
   
   
   
   mux_addres_1_fusion: mux2
   generic map(
      p_WIDTH => p_DWIDTH_ADDRS) -- data width
   port map(
      i_SEL  => i_MUX_UPDATE_RD_ADDR_FUSION_MEM, -- selector
      i_DIN0 => w_U_ADDRS_UPDATE(p_DWIDTH_ADDRS-1 downto 0),
      i_DIN1 => i_ADDRS_REGTERM(p_DWIDTH_ADDRS-1 downto 0),
      o_DOUT => w_ADDRS_RD_DATA_DONE
   ); 
   
   
   mux_addres_mem_upd_temp: mux3
   generic map(
      p_WIDTH => p_DWIDTH_ADDRS) -- data width
   port map(
      i_SEL  => i_MUX_EXT_RD_ADDR_FUSION_MEM, -- selector
      i_DIN0 => i_ADDRS_UPD_EXTERNAL_READ,
      i_DIN1 => w_U_ADDRS(p_DWIDTH_ADDRS-1 downto 0),
      i_DIN2 => w_U_ADDRS_UPDATE(p_DWIDTH_ADDRS-1 downto 0),
      o_DOUT => w_ADDRS_RD_DATA_DONE_UPDATE
   ); 
   
   pan_shar_temp: blk_mem_gen_9
   port map(
      clka => i_CLK,
      ena => '1',
      wea(0) => w_DONE_FUSION,
      addra => w_ADDRS_RD_DATA_DONE_UPDATE(11 downto 0),
      dina => w_UPD,
      douta => w_UPD_TEMP
   );
     
   o_UPD <= w_UPD_TEMP;
   
   pan_sharpening_mem : blk_mem_gen_0
   port map(
      clka => i_CLK,
      ena => w_ACTIVE_PORT_RD_MEM_FUSION,
      wea(0) => '0',
      addra => w_ADDRS_MEM_FUSION(11 downto 0),
      dina => x"00000000",
      douta => w_OUT_MEM_FUSION_DATA_0,
      clkb => i_CLK,
      enb => '1',
      web(0) => i_ENA_WR_UPD,
      addrb => w_ADDRS_RD_DATA_DONE(11 downto 0),
      dinb => w_UPD_TEMP,
      doutb => w_OUT_MEM_FUSION_DATA_1      
   );   
   
   w_ACTIVE_PORT_RD_MEM_FUSION <= not(i_ENA_WR_UPD);
   
   reg_u_actual: reg_pp
   generic map (
      p_WIDTH => p_DWIDTH_DATA) -- data width
   port map(
      i_CLK => i_CLK,
      i_RST_n => i_RST_n,
      i_ENA => i_ENA_REG_PIXEL_U,
      i_DIN => w_OUT_MEM_FUSION_DATA_0,
      o_DOUT => w_DOUT_REG_U);-- output data
   
   
   fusion : eq_7
   generic map(
      p_DWIDTH_DATA => p_DWIDTH_DATA,
      p_DWIDTH_CONTROL => p_DWIDTH_CONTROL)
   port map(
      i_CLK      => i_CLK,
      i_RST_n    => i_RST_n,
      i_START    => i_START_FUSION,
      o_DONE     => w_DONE_FUSION,
      i_U        => w_DOUT_REG_U,
      i_DT       => DT,
      i_REGTERM  => w_DOUT_REG_REGTERM,
      i_LMB      => LMB,
      i_ALPHA    => ALPHA,
      i_PANTERM  => w_PANTERM,
      i_MU       => MU,
      i_CONVOL   => w_DATA_RD_CONV,
      o_UPD      => w_UPD
   );
   o_DONE_FUSION <= w_DONE_FUSION;
   w_RESET_FUSION <= i_RST_FUSION and i_RST_n;
   --o_UPD <= w_UPD;
   w_PANTERM(p_DWIDTH_DATA-1) <= '1';
   w_PANTERM(p_DWIDTH_DATA-2 downto 0) <= i_PANTERM(p_DWIDTH_DATA-2 downto 0);
------------------------------------------------------------------------------------- 

-------------------------------------------------------------------------------------   
--                                 COUNTERS                                        --
   
   count_pixel_addrs : counter_cycles_up
   generic map(
      p_CYCLES => IMG_SIZE,
      p_WIDTH => 16)
   port map(
      i_CLK => i_CLK,
      i_RST => w_RST_COUNT_PIXEL,
      i_ENA => w_DONE_FUSION, --i_ENA_COUT_PIXEL_U,
      o_DONE => w_DONE_COUNT_PIXEL,
      o_CYCLES => w_U_ADDRS 
   );
   o_DONE_COUNT_PIXEL<= w_DONE_COUNT_PIXEL;
   o_U_ADDRS_PAN <= w_U_ADDRS;
   w_RST_COUNT_PIXEL <= i_RST_COUT_PIXEL_U and i_RST_n;
   
   count_pixel_addrs_update_upd : counter_cycles_up
   generic map(
      p_CYCLES => IMG_SIZE+1,
      p_WIDTH => 16)
   port map(
      i_CLK => i_CLK,
      i_RST => w_RESET_CONV,
      i_ENA => i_ENA_COUT_PIXEL_U,
      o_DONE => o_DONE_COUNT_PIXEL_UPDATE,
      o_CYCLES => w_U_ADDRS_UPDATE 
   );
   
   count_iterations : counter_cycles_up
   generic map(
      p_CYCLES => INITERATIONS,
      p_WIDTH => 7)
   port map(
      i_CLK => i_CLK,
      i_RST => w_RST_COUNT_ITERATIONS,
      i_ENA => w_DONE_COUNT_PIXEL,
      o_DONE => o_DONE_COUNT_ITERATIONS
--    o_CYCLES => o_ADDRS_WRITE 
   );
   
   w_RST_COUNT_ITERATIONS <= i_RST_COUT_ITERATIONS and i_RST_n;
   
   rept_regterm_0 : reg_init_pp
   generic map(
       p_WIDTH => p_DWIDTH_ADDRS/2) -- data width
   port map (
       i_CLK => i_CLK,
       i_RST_n => i_RST_n,
       i_PST => i_PST_REGTERM_0,
       i_ENA => i_START_REGTERM_0,
       i_DIN => i_REP_REGTERM(p_DWIDTH_ADDRS-1 downto p_DWIDTH_ADDRS/2), -- input data
       o_DONE => o_REP_DONE_REGTERM_0
   );
   
   rept_regterm_1 : reg_init_pp
   generic map(
       p_WIDTH => p_DWIDTH_ADDRS/2) -- data width
   port map (
       i_CLK => i_CLK,
       i_RST_n => i_RST_n,
       i_PST => i_PST_REGTERM_1,
       i_ENA => i_START_REGTERM_1,
       i_DIN => i_REP_REGTERM(((p_DWIDTH_ADDRS/2)-1) downto 0), -- input data
       o_DONE => o_REP_DONE_REGTERM_1
   );
   
   reg_done_conv: reg_pp
   generic map (
      p_WIDTH => 1) -- data width
   port map(
      i_CLK => i_CLK,
      i_RST_n => w_RST_REG_DONE_CONV,
      i_ENA => w_DONE_CONV,
      i_DIN(0) => '1',
      o_DOUT(0) => o_DONE_CONV);-- output data
      
   w_RST_REG_DONE_CONV <= i_RST_n and not(w_DONE_COUNT_PIXEL);
   
   
   count_pixel_pos_weights_0 : counter_cycles_up
   generic map(
      p_CYCLES => IMG_SIZE-1,
      p_WIDTH => p_DWIDTH_ADDRS)
   port map(
      i_CLK => i_CLK,
      i_RST => w_RST_COUNT_PIXEL,
      i_ENA => i_START_REGTERM_0,--w_DONE_REGTERM_0,
      --o_DONE => w_DONE_REGTERM_0,
      o_CYCLES => o_ADDRS_POS_WEIGHT_0 
   );
   
   count_pixel_pos_weights_1 : counter_cycles_up
   generic map(
      p_CYCLES => IMG_SIZE-1,
      p_WIDTH => p_DWIDTH_ADDRS)
   port map(
      i_CLK => i_CLK,
      i_RST => w_RST_COUNT_PIXEL,
      i_ENA => i_START_REGTERM_1, --w_DONE_REGTERM_1,
      --o_DONE => w_DONE_REGTERM_1,
      o_CYCLES => o_ADDRS_POS_WEIGHT_1 
   );

------------------------------------------------------------------------------------- 

-------------------------------------------------------------------------------------   
--                                 COMPARE                                        --


   compare_rep_weights_0: compare_value
   generic map(
       p_VALUE_COMPARE => 0,
       p_WIDTH => p_DWIDTH_ADDRS/2) -- data width
   port map(
       i_CLK   => i_CLK,
       i_RST_n => i_RST_n,
       i_ENA   => i_VALID_REGTERM_DATA,
       i_DIN   => i_REP_REGTERM(p_DWIDTH_ADDRS-1 downto p_DWIDTH_ADDRS/2),
       o_DOUT  => o_DOUT_COMPARE_REGTERM_0
   );
   
   compare_rep_weights_1: compare_value
   generic map(
       p_VALUE_COMPARE => 0,
       p_WIDTH => p_DWIDTH_ADDRS/2) -- data width
   port map(
       i_CLK   => i_CLK,
       i_RST_n => i_RST_n,
       i_ENA   => i_VALID_REGTERM_DATA,
       i_DIN   => i_REP_REGTERM(((p_DWIDTH_ADDRS/2)-1) downto 0),
       o_DOUT  => o_DOUT_COMPARE_REGTERM_1
   );
   

end arch_1;