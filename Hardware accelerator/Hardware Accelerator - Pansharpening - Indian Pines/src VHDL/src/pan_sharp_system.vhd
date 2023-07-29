library ieee;
use ieee.std_logic_1164.all;
use work.pack.all;
library UNISIM;
use UNISIM.VComponents.all;

entity pan_sharp_system is
generic(
   p_DWIDTH_DATA : natural := CHANNEL_DATA_LENGTH;
   p_DWIDTH_ADDRS : natural := CHANNEL_ADDR_LENGTH;
   p_DWIDTH_CONTROL : natural := 2);
port(
   i_CLK                 : in  std_logic;      
   i_RST_n               : in  std_logic;      
   i_START                     : in  std_logic;
--   i_EXTENDED_VALUE      : in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
--   i_EXTERNAL_ADDRS_INIT : in std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
--   i_ENA_WR_INIT_VALUES        : in std_logic;
   
   i_ADDRS_UPD_EXTERNAL_READ : in std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
   
   --i_PANTERM :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   o_UPD :  out std_logic_vector(p_DWIDTH_DATA-1 downto 0);
   o_DONE                      : out std_logic
);
end pan_sharp_system;

architecture arch_1 of pan_sharp_system is
    component pan_sharp_spp
    generic(
       p_DWIDTH_DATA : natural := CHANNEL_DATA_LENGTH;
       p_DWIDTH_ADDRS : natural := CHANNEL_ADDR_LENGTH;
       p_DWIDTH_CONTROL : natural := 2);
    port(
       i_CLK                 : in  std_logic;      
       i_RST_n               : in  std_logic;      
       i_START                     : in  std_logic;
       i_PANTERM :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0); 
       i_WEIGHT_0 :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
       i_WEIGHT_1 :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
       i_REP_REGTERM : in std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);  ---31 to 16 = rep regterm 0 -- 15 to 0 = rep regterm 1;
       i_ADDRS_REGTERM           : in std_logic_vector(p_DWIDTH_DATA-1 downto 0);---31 to 16 = rep regterm 0 -- 15 to 0 = rep regterm 1; 
       i_ADDRS_UPD_EXTERNAL_READ : in std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
       i_EXTENDED_VALUE  :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
       i_EXTERNAL_ADDRS_INIT :  in std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
       i_ENA_WR_INIT_VALUES        : in std_logic;
       o_U_ADDRS_PAN : out std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
       o_ADDRS_POS_WEIGHT_0 : out std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
       o_ADDRS_POS_WEIGHT_1 : out std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
       o_DONE                      : out std_logic;
       o_UPD :  out std_logic_vector(p_DWIDTH_DATA-1 downto 0)
    );
    end component;
    
    component blk_mem_gen_3
    port (
       clka : IN STD_LOGIC;
       ena : IN STD_LOGIC;
       wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
       addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
       dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
       douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
    end component;
    
    component blk_mem_gen_4
    port (
       clka : IN STD_LOGIC;
       ena : IN STD_LOGIC;
       wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
       addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
       dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
       douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
    end component;
    
    component blk_mem_gen_5
    port (
       clka : IN STD_LOGIC;
       ena : IN STD_LOGIC;
       wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
       addra : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
       dina : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
       douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
    );
    end component;
    
    component blk_mem_gen_6
    port (
       clka : IN STD_LOGIC;
       ena : IN STD_LOGIC;
       wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
       addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
       dina : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
       douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
    );
    end component;
    
    component blk_mem_gen_7
    port (
       clka : IN STD_LOGIC;
       ena : IN STD_LOGIC;
       wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
       addra : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
       dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
       douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
    end component;
    
    component blk_mem_gen_8
    port (
       clka : IN STD_LOGIC;
       ena : IN STD_LOGIC;
       wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
       addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
       dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
       douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
    end component;
    
    component dma_weight_v1_0_M00_AXIS
    generic (
        C_M_AXIS_TDATA_WIDTH    : integer    := 32;
        C_M_START_COUNT    : integer    := 32
    );
    port (
        M_AXIS_ACLK    : in std_logic;
        M_AXIS_ARESETN    : in std_logic;
        M_AXIS_TVALID    : out std_logic;
        M_AXIS_TDATA    : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
        M_AXIS_TSTRB    : out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
        M_AXIS_TLAST    : out std_logic;
        M_AXIS_TREADY    : in std_logic
    );
    end component;
    
    component dma_position_and_repetition_v1_0_M00_AXIS
    generic (
        C_M_AXIS_TDATA_WIDTH    : integer    := 32;
        C_M_START_COUNT    : integer    := 32
    );
    port (
        M_AXIS_ACLK    : in std_logic;
        M_AXIS_ARESETN    : in std_logic;
        M_AXIS_TVALID    : out std_logic;
        M_AXIS_TDATA    : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
        M_AXIS_TSTRB    : out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
        M_AXIS_TLAST    : out std_logic;
        M_AXIS_TREADY    : in std_logic
    );
    end component;
    
--    component ila_0
--    PORT (
--    clk : IN STD_LOGIC;
    
    
--    probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
--    );
--    end component;
    
    component clk_wiz_0
    port(
         clk_in1 : in std_logic;
         clk_out1 : out std_logic);
    end component;
    
    signal w_CLK : std_logic;
    --signal w_RST_n : std_logic;
    signal w_DONE : std_logic;
    signal w_PANTERM : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
    signal w_WEIGHT_0 : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
    signal w_WEIGHT_1 : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
    signal w_REP_REGTERM : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
    signal w_POS_REGTERM : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
    signal w_ADDRS_UPD_EXTERNAL_READ : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0) := x"0000";
    signal w_EXTENDED_VALUE : std_logic_vector(p_DWIDTH_DATA-1 downto 0) := x"00000000";
    signal w_EXTERNAL_ADDRS_INIT : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0) := x"0000";
    signal w_U_ADDRS_PAN : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
    signal w_UPD : std_logic_vector(p_DWIDTH_DATA-1 downto 0);
    
    
    signal w_PANTERM_INIT : std_logic_vector(p_DWIDTH_DATA-1 downto 0) := x"00000000";
    
    signal w_REP_WEIGHTS_INIT : std_logic_vector(15 downto 0) := x"0000";
    signal w_REP_WEIGHTS : std_logic_vector(7 downto 0);

    
    signal w_ADDRS_POS_WEIGHTS_0 : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
    signal w_ADDRS_POS_WEIGHTS_1 : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
    
--    signal w_POS_WEIGHTS_0 : std_logic_vector((p_DWIDTH_ADDRS/2)-1 downto 0) := x"00";
--    signal w_POS_WEIGHTS_1 : std_logic_vector((p_DWIDTH_ADDRS/2)-1 downto 0) := x"00";
--    signal w_POS_WEIGHTS_0_INIT : std_logic_vector((p_DWIDTH_ADDRS/2)-1 downto 0) := x"00";
--    signal w_POS_WEIGHTS_1_INIT : std_logic_vector((p_DWIDTH_ADDRS/2)-1 downto 0) := x"00";
    
    signal w_POS_WEIGHTS_0 : std_logic_vector(11 downto 0) := x"000";
    signal w_POS_WEIGHTS_1 : std_logic_vector(11 downto 0) := x"000";
    signal w_POS_WEIGHTS_0_INIT : std_logic_vector(11 downto 0) := x"000";
    signal w_POS_WEIGHTS_1_INIT : std_logic_vector(11 downto 0) := x"000";
    
    signal w_WEIGHTS_0_INIT : std_logic_vector(p_DWIDTH_DATA-1 downto 0) := x"00000000";
    signal w_WEIGHTS_1_INIT : std_logic_vector(p_DWIDTH_DATA-1 downto 0) := x"00000000";

begin

--   clk : clk_wiz_0
--   port map(
--        clk_in1 => i_CLK,
--        clk_out1 => w_CLK
--   );
   w_CLK <= i_CLK;

   --w_RST_n <= i_RST_n; 
   w_EXTENDED_VALUE <= x"00000000";

   pan_sharp : pan_sharp_spp
   generic map(
      p_DWIDTH_DATA => p_DWIDTH_DATA,
      p_DWIDTH_ADDRS => p_DWIDTH_ADDRS,
      p_DWIDTH_CONTROL => p_DWIDTH_CONTROL)
   port map(
      i_CLK                       => w_CLK,
      i_RST_n                     => i_RST_n,
      i_START                     => i_START,
      i_PANTERM                   => w_PANTERM,
      i_WEIGHT_0                  => w_WEIGHT_0,
      i_WEIGHT_1                  => w_WEIGHT_1,
      i_REP_REGTERM               => w_REP_REGTERM,
      i_ADDRS_REGTERM             => w_POS_REGTERM,
      i_ADDRS_UPD_EXTERNAL_READ   => i_ADDRS_UPD_EXTERNAL_READ,
      i_EXTENDED_VALUE            => w_EXTENDED_VALUE,
      --i_EXTERNAL_ADDRS_INIT       => i_EXTERNAL_ADDRS_INIT,
      i_EXTERNAL_ADDRS_INIT       => x"0000",
      i_ENA_WR_INIT_VALUES        => '0',
      o_U_ADDRS_PAN               => w_U_ADDRS_PAN,
      o_ADDRS_POS_WEIGHT_0        => w_ADDRS_POS_WEIGHTS_0,
      o_ADDRS_POS_WEIGHT_1        => w_ADDRS_POS_WEIGHTS_1,
      o_DONE                      => w_DONE,
      o_UPD                       => w_UPD
   );
   
   o_DONE <= w_DONE;
   o_UPD  <= w_UPD;
   
--   debug : ila_0
--   port map (
--      clk => w_CLK, 
--      probe0(0) => w_DONE,
--      probe1 => w_UPD
--   );
   
   
   pan : blk_mem_gen_4
   port map(
      clka => w_CLK,
      ena => '1',
      wea(0) => '0',
      addra => w_U_ADDRS_PAN(11 downto 0),
      dina  => w_PANTERM_INIT,
      douta => w_PANTERM
   );
   
   rep_weights : blk_mem_gen_3
   port map(
         clka => w_CLK,
         ena => '1',
         wea(0) => '0',
         addra => w_U_ADDRS_PAN(11 downto 0),
         dina  => w_REP_WEIGHTS_INIT,
         douta => w_REP_REGTERM --w_REP_WEIGHTS
   );
   --w_REP_REGTERM <= x"0" & w_REP_WEIGHTS(7 downto 4) & x"0" & w_REP_WEIGHTS(3 downto 0);
   --w_REP_REGTERM <= w_REP_WEIGHTS;
   
   pos_weights_0 : blk_mem_gen_5
   port map(
         clka => w_CLK,
         ena => '1',
         wea(0) => '0',
         addra => w_ADDRS_POS_WEIGHTS_0(12 downto 0),
         dina  => w_POS_WEIGHTS_0_INIT,
         douta => w_POS_WEIGHTS_0
   );
   
   pos_weights_1 : blk_mem_gen_6
   port map(
         clka => w_CLK,
         ena => '1',
         wea(0) => '0',
         addra => w_ADDRS_POS_WEIGHTS_1(11 downto 0),
         dina  => w_POS_WEIGHTS_1_INIT,
         douta => w_POS_WEIGHTS_1
   );
   
   --w_POS_REGTERM <= x"00" & w_POS_WEIGHTS_0 & x"00" & w_POS_WEIGHTS_1;
   w_POS_REGTERM <= "0000" & w_POS_WEIGHTS_0 & "0000" & w_POS_WEIGHTS_1;
   
   
   weights_0 : blk_mem_gen_7
   port map(
         clka => w_CLK,
         ena => '1',
         wea(0) => '0',
         addra => w_ADDRS_POS_WEIGHTS_0(12 downto 0),
         dina  => w_WEIGHTS_0_INIT,
         douta => w_WEIGHT_0
   );
   
   weights_1 : blk_mem_gen_8
   port map(
         clka => w_CLK,
         ena => '1',
         wea(0) => '0',
         addra => w_ADDRS_POS_WEIGHTS_1(11 downto 0),
         dina  => w_WEIGHTS_1_INIT,
         douta => w_WEIGHT_1
   );
   

   

end arch_1;
