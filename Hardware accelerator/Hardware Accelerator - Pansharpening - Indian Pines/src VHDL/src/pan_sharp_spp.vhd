
library ieee;
use ieee.std_logic_1164.all;
use work.pack.all;


entity pan_sharp_spp is
generic(
   p_DWIDTH_DATA : natural := CHANNEL_DATA_LENGTH;
   p_DWIDTH_ADDRS : natural := CHANNEL_ADDR_LENGTH;
   p_DWIDTH_CONTROL : natural := 2);
port(
   i_CLK                 : in  std_logic;      
   i_RST_n               : in  std_logic;      
   i_START                     : in  std_logic;
   
--   i_VALID_DMA_REGTERM_SIZES   : in std_logic;
--   i_VALID_DMA_REGTERM_DATA_0  : in std_logic;
--   i_VALID_DMA_REGTERM_DATA_1  : in std_logic;
--   i_VALID_DMA_EXTENDED        : in std_logic;
--   i_VALID_DMA_PAN             : in std_logic;
   
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
end pan_sharp_spp;

architecture arch_1 of pan_sharp_spp is

   component pan_sharp_control
   generic(
      p_DWIDTH_CONTROL : natural := 2); 
   port( 
      i_CLK                 : in  std_logic;              
      i_RST_n               : in  std_logic;              
      i_START                     : in  std_logic;     
      o_START_CONV                : out std_logic;
      o_START_REGTERM_0           : out std_logic;
      o_START_REGTERM_1           : out std_logic;
      o_START_FUSION              : out std_logic;                             
      o_ENA_REGTERM_0             : out std_logic;
      o_ENA_REGTERM_1             : out std_logic;                            
      o_ENA_U0_REG_REGTERM_0      : out std_logic;
      o_ENA_U1_REG_REGTERM_0      : out std_logic;
      o_ENA_WEIGHT_REG_REGTERM_0  : out std_logic;                              
      o_ENA_U0_REG_REGTERM_1      : out std_logic;
      o_ENA_U1_REG_REGTERM_1      : out std_logic;
      o_ENA_WEIGHT_REG_REGTERM_1  : out std_logic;                              
      o_ENA_COUT_PIXEL_U          : out std_logic;
      o_ENA_REG_PIXEL_U           : out std_logic;                               
      o_RST_COUT_PIXEL_U          : out std_logic;
      o_RST_COUT_ITERATIONS       : out std_logic;                              
      o_RST_REGTERM               : out std_logic; 
      o_RST_CONV                  : out std_logic;
      o_RST_FUSION                : out std_logic;                            
      o_PST_REGTERM_0             : out std_logic;
      o_PST_REGTERM_1             : out std_logic;                               
      o_VALID_ADD_REGTERM         : out std_logic;                              
      o_MUX_ADDR_CONV_MEM         : out std_logic;
      o_MUX_ADDR_FUSION_MEM       : out std_logic;
      o_MUX_EXT_RD_ADDR_FUSION_MEM: out std_logic_vector(1 downto 0);
      o_MUX_UPDATE_RD_ADDR_FUSION_MEM   : out std_logic;                              
--      o_ENA_WR_INIT_VALUES        : out std_logic;
--      o_ENA_WR_INIT_PAN           : out std_logic;
      o_ENA_WR_UPD                : out std_logic;
--      o_READY_DMA_REGTERM_DATA_O  : out std_logic;  
--      o_READY_DMA_REGTERM_DATA_1  : out std_logic;  
--      o_READY_DMA_REGTERM_SIZES   : out std_logic;
      o_VALID_REGTERM_DATA        : out std_logic;
      o_DONE                      : out std_logic;
      i_DONE_REGTERM_0            : in std_logic;
      i_DONE_REGTERM_1            : in std_logic;
      i_DONE_CONV                 : in std_logic;
      i_DONE_FUSION               : in std_logic;
      i_DONE_COUNT_PIXEL          : in std_logic;
      i_DONE_COUNT_PIXEL_UPDATE   : in std_logic;
      i_DONE_COUNT_ITERATIONS     : in std_logic;                           
      i_VALID_ADD_REGTERM         : in std_logic;
      i_READY_ADD_SUB_REGTERM       : in std_logic;
--      i_VALID_DMA_REGTERM_SIZES   : in std_logic;
--      i_VALID_DMA_REGTERM_DATA_0  : in std_logic;
--      i_VALID_DMA_REGTERM_DATA_1  : in std_logic;
--      i_VALID_DMA_EXTENDED        : in std_logic;
--      i_VALID_DMA_PAN             : in std_logic;
      i_DOUT_COMPARE_REGTERM_0    : in std_logic;                           
      i_DOUT_COMPARE_REGTERM_1    : in std_logic;                           
      i_REP_DONE_REGTERM_0        : in std_logic;
      i_REP_DONE_REGTERM_1        : in std_logic);
   end component;
   
   component pan_sharp_datapath
   generic(
      p_DWIDTH_DATA : natural := CHANNEL_DATA_LENGTH;
      p_DWIDTH_ADDRS : natural := CHANNEL_ADDR_LENGTH;
      p_DWIDTH_CONTROL : natural := 2);
   port(
      i_CLK :  in std_logic;
      i_RST_n :  in std_logic;
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
      i_ENA_WR_UPD         : in std_logic;
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
      o_READY_ADD_SUB_REGTERM       : out std_logic;      
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
      i_EXTENDED_VALUE  :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_EXTERNAL_ADDRS_INIT :  in std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
      i_PANTERM :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);      
      i_WEIGHT_0 :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_WEIGHT_1 :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_REP_REGTERM : in std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);  ---31 to 16 = rep regterm 0 -- 15 to 0 = rep regterm 1;
      i_ADDRS_REGTERM           : in std_logic_vector(p_DWIDTH_DATA-1 downto 0);---31 to 16 = rep regterm 0 -- 15 to 0 = rep regterm 1;   
      i_ADDRS_UPD_EXTERNAL_READ : in std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);  
      o_U_ADDRS_PAN : out std_logic_vector(p_DWIDTH_ADDRS-1 downto 0); 
      o_ADDRS_POS_WEIGHT_0 : out std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
      o_ADDRS_POS_WEIGHT_1 : out std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
      o_UPD :  out std_logic_vector(p_DWIDTH_DATA-1 downto 0));
   end component;
   
   signal w_START_CONV : std_logic;
   signal w_START_REGTERM_0 : std_logic;
   signal w_START_REGTERM_1 : std_logic;
   signal w_START_FUSION : std_logic;
   signal w_ENA_REGTERM_0 : std_logic;
   signal w_ENA_REGTERM_1 : std_logic;
   signal w_ENA_U0_REG_REGTERM_0 : std_logic;
   signal w_ENA_U1_REG_REGTERM_0 : std_logic;
   signal w_ENA_WEIGHT_REG_REGTERM_0 : std_logic;
   signal w_ENA_U0_REG_REGTERM_1 : std_logic;
   signal w_ENA_U1_REG_REGTERM_1 : std_logic;
   signal w_ENA_WEIGHT_REG_REGTERM_1 : std_logic;
   signal w_ENA_COUT_PIXEL_U : std_logic;
   signal w_ENA_REG_PIXEL_U : std_logic;
   signal w_RST_COUT_PIXEL_U : std_logic;
   signal w_RST_COUT_ITERATIONS : std_logic;
   signal w_RST_REGTERM : std_logic;
   signal w_PST_REGTERM_0 : std_logic;
   signal w_PST_REGTERM_1 : std_logic;
   signal w_VALID_ADD_REGTERM : std_logic;
   signal w_VALID_ADD_REGTERM_OPERAND : std_logic;
   signal w_MUX_ADDR_CONV_MEM : std_logic;
   signal w_MUX_ADDR_FUSION_MEM : std_logic;
   signal w_MUX_EXT_RD_ADDR_FUSION_MEM : std_logic_vector(1 downto 0);
   signal w_ENA_WR_INIT_VALUES : std_logic;
   signal w_ENA_WR_UPD : std_logic;
   signal w_MUX_UPDATE_RD_ADDR_FUSION_MEM : std_logic;
   
   
   signal w_DONE_REGTERM_0 : std_logic;
   signal w_DONE_REGTERM_1 : std_logic;
   signal w_DONE_CONV : std_logic;
   signal w_DONE_FUSION : std_logic;
   signal w_DONE_COUNT_PIXEL : std_logic;
   signal w_DONE_COUNT_PIXEL_UPDATE : std_logic;
   signal w_DONE_COUNT_ITERATIONS : std_logic;
   signal w_DOUT_COMPARE_REGTERM_0 : std_logic;
   signal w_DOUT_COMPARE_REGTERM_1 : std_logic;
   signal w_REP_DONE_REGTERM_0 : std_logic;
   signal w_REP_DONE_REGTERM_1 : std_logic;
   signal w_VALID_REGTERM_DATA : std_logic;
   signal w_RST_CONV : std_logic;
   signal w_RST_FUSION : std_logic;
   signal w_READY_ADD_SUB_OPERAND_REGTERM : std_logic;

   
begin

   control : pan_sharp_control
   generic map(
      p_DWIDTH_CONTROL => p_DWIDTH_CONTROL) 
   port map( 
      i_CLK                        => i_CLK,              
      i_RST_n                      => i_RST_n,              
      i_START                      => i_START,     
      o_START_CONV                 => w_START_CONV,
      o_START_REGTERM_0            => w_START_REGTERM_0,
      o_START_REGTERM_1            => w_START_REGTERM_1,
      o_START_FUSION               => w_START_FUSION,                             
      o_ENA_REGTERM_0              => w_ENA_REGTERM_0,
      o_ENA_REGTERM_1              => w_ENA_REGTERM_1,                            
      o_ENA_U0_REG_REGTERM_0       => w_ENA_U0_REG_REGTERM_0,
      o_ENA_U1_REG_REGTERM_0       => w_ENA_U1_REG_REGTERM_0,
      o_ENA_WEIGHT_REG_REGTERM_0   => w_ENA_WEIGHT_REG_REGTERM_0,                              
      o_ENA_U0_REG_REGTERM_1       => w_ENA_U0_REG_REGTERM_1,
      o_ENA_U1_REG_REGTERM_1       => w_ENA_U1_REG_REGTERM_1,
      o_ENA_WEIGHT_REG_REGTERM_1   => w_ENA_WEIGHT_REG_REGTERM_1,                              
      o_ENA_COUT_PIXEL_U           => w_ENA_COUT_PIXEL_U,
      o_ENA_REG_PIXEL_U            => w_ENA_REG_PIXEL_U,                               
      o_RST_COUT_PIXEL_U           => w_RST_COUT_PIXEL_U,
      o_RST_COUT_ITERATIONS        => w_RST_COUT_ITERATIONS,                              
      o_RST_REGTERM                => w_RST_REGTERM,
      o_RST_CONV                   => w_RST_CONV,                           
      o_RST_FUSION                 => w_RST_FUSION,
      o_PST_REGTERM_0              => w_PST_REGTERM_0,
      o_PST_REGTERM_1              => w_PST_REGTERM_1,                               
      o_VALID_ADD_REGTERM          => w_VALID_ADD_REGTERM_OPERAND,                              
      o_MUX_ADDR_CONV_MEM          => w_MUX_ADDR_CONV_MEM,
      o_MUX_ADDR_FUSION_MEM        => w_MUX_ADDR_FUSION_MEM,
      o_MUX_EXT_RD_ADDR_FUSION_MEM => w_MUX_EXT_RD_ADDR_FUSION_MEM,                              
--      o_ENA_WR_INIT_VALUES         => w_ENA_WR_INIT_VALUES,
--      o_ENA_WR_INIT_PAN            => o_ENA_WR_INIT_PAN, ----
--      o_READY_DMA_REGTERM_DATA_O   => o_READY_DMA_REGTERM_DATA_O, --- 
--      o_READY_DMA_REGTERM_DATA_1   => o_READY_DMA_REGTERM_DATA_1, ---  
--      o_READY_DMA_REGTERM_SIZES    => o_READY_DMA_REGTERM_SIZES,  --- 
      o_VALID_REGTERM_DATA         => w_VALID_REGTERM_DATA,
      o_ENA_WR_UPD                 => w_ENA_WR_UPD,
      o_MUX_UPDATE_RD_ADDR_FUSION_MEM => w_MUX_UPDATE_RD_ADDR_FUSION_MEM,
      o_DONE                      => o_DONE,
      i_DONE_REGTERM_0             => w_DONE_REGTERM_0,
      i_DONE_REGTERM_1             => w_DONE_REGTERM_1,
      i_DONE_CONV                  => w_DONE_CONV,
      i_DONE_FUSION                => w_DONE_FUSION,
      i_DONE_COUNT_PIXEL           => w_DONE_COUNT_PIXEL,
      i_DONE_COUNT_PIXEL_UPDATE    => w_DONE_COUNT_PIXEL_UPDATE,
      i_DONE_COUNT_ITERATIONS      => w_DONE_COUNT_ITERATIONS,                          
      i_VALID_ADD_REGTERM          => w_VALID_ADD_REGTERM,
      i_READY_ADD_SUB_REGTERM      => w_READY_ADD_SUB_OPERAND_REGTERM,
--      i_VALID_DMA_REGTERM_SIZES    => i_VALID_DMA_REGTERM_SIZES,
--      i_VALID_DMA_REGTERM_DATA_0   => i_VALID_DMA_REGTERM_DATA_0,
--      i_VALID_DMA_REGTERM_DATA_1   => i_VALID_DMA_REGTERM_DATA_1,
--      i_VALID_DMA_EXTENDED         => i_VALID_DMA_EXTENDED,
--      i_VALID_DMA_PAN              => i_VALID_DMA_PAN,
      i_DOUT_COMPARE_REGTERM_0     => w_DOUT_COMPARE_REGTERM_0,                          
      i_DOUT_COMPARE_REGTERM_1     => w_DOUT_COMPARE_REGTERM_1,                          
      i_REP_DONE_REGTERM_0         => w_REP_DONE_REGTERM_0,
      i_REP_DONE_REGTERM_1         => w_REP_DONE_REGTERM_1
   );

   
   datapath : pan_sharp_datapath
   generic map(
      p_DWIDTH_DATA => p_DWIDTH_DATA,
      p_DWIDTH_ADDRS => p_DWIDTH_ADDRS,
      p_DWIDTH_CONTROL => p_DWIDTH_CONTROL)
   port map(
      i_CLK                        => i_CLK,
      i_RST_n                      => i_RST_n,
      i_START_CONV                 => w_START_CONV,
      i_START_REGTERM_0            => w_START_REGTERM_0,
      i_START_REGTERM_1            => w_START_REGTERM_1,
      i_START_FUSION               => w_START_FUSION,
      i_ENA_REGTERM_0              => w_ENA_REGTERM_0,
      i_ENA_REGTERM_1              => w_ENA_REGTERM_1,
      i_ENA_U0_REG_REGTERM_0       => w_ENA_U0_REG_REGTERM_0,
      i_ENA_U1_REG_REGTERM_0       => w_ENA_U1_REG_REGTERM_0,
      i_ENA_WEIGHT_REG_REGTERM_0   => w_ENA_WEIGHT_REG_REGTERM_0,
      i_ENA_U0_REG_REGTERM_1       => w_ENA_U0_REG_REGTERM_1,
      i_ENA_U1_REG_REGTERM_1       => w_ENA_U1_REG_REGTERM_1,
      i_ENA_WEIGHT_REG_REGTERM_1   => w_ENA_WEIGHT_REG_REGTERM_1,
      i_ENA_COUT_PIXEL_U           => w_ENA_COUT_PIXEL_U,
      i_ENA_REG_PIXEL_U            => w_ENA_REG_PIXEL_U,
      i_RST_COUT_PIXEL_U           => w_RST_COUT_PIXEL_U,
      i_RST_COUT_ITERATIONS        => w_RST_COUT_ITERATIONS,
      i_RST_CONV                   => w_RST_CONV,
      i_RST_REGTERM                => w_RST_REGTERM,
      i_RST_FUSION                 => w_RST_FUSION,
      i_PST_REGTERM_0              => w_PST_REGTERM_0,
      i_PST_REGTERM_1              => w_PST_REGTERM_1,
      i_VALID_ADD_REGTERM          => w_VALID_ADD_REGTERM_OPERAND,
      i_MUX_ADDR_CONV_MEM          => w_MUX_ADDR_CONV_MEM,
      i_MUX_ADDR_FUSION_MEM        => w_MUX_ADDR_FUSION_MEM,
      i_MUX_EXT_RD_ADDR_FUSION_MEM => w_MUX_EXT_RD_ADDR_FUSION_MEM,
      i_ENA_WR_INIT_VALUES         => i_ENA_WR_INIT_VALUES,
      i_VALID_REGTERM_DATA         => w_VALID_REGTERM_DATA,
      i_ENA_WR_UPD                 => w_ENA_WR_UPD,
      i_MUX_UPDATE_RD_ADDR_FUSION_MEM => w_MUX_UPDATE_RD_ADDR_FUSION_MEM,
      o_READY_ADD_SUB_REGTERM      => w_READY_ADD_SUB_OPERAND_REGTERM,
      o_DONE_REGTERM_0             => w_DONE_REGTERM_0,
      o_DONE_REGTERM_1             => w_DONE_REGTERM_1,
      o_DONE_CONV                  => w_DONE_CONV,
      o_DONE_FUSION                => w_DONE_FUSION,
      o_DONE_COUNT_PIXEL           => w_DONE_COUNT_PIXEL,
      o_DONE_COUNT_PIXEL_UPDATE           => w_DONE_COUNT_PIXEL_UPDATE,
      o_DONE_COUNT_ITERATIONS      => w_DONE_COUNT_ITERATIONS,
      o_VALID_ADD_REGTERM          => w_VALID_ADD_REGTERM,
      o_REP_DONE_REGTERM_0         => w_REP_DONE_REGTERM_0,
      o_REP_DONE_REGTERM_1         => w_REP_DONE_REGTERM_1,
      o_DOUT_COMPARE_REGTERM_0     => w_DOUT_COMPARE_REGTERM_0,
      o_DOUT_COMPARE_REGTERM_1     => w_DOUT_COMPARE_REGTERM_1,
      i_EXTENDED_VALUE             => i_EXTENDED_VALUE,
      i_EXTERNAL_ADDRS_INIT        => i_EXTERNAL_ADDRS_INIT,
      i_PANTERM                    => i_PANTERM,
      i_WEIGHT_0                   => i_WEIGHT_0,
      i_WEIGHT_1                   => i_WEIGHT_1,
      i_REP_REGTERM                => i_REP_REGTERM,
      i_ADDRS_REGTERM              => i_ADDRS_REGTERM, 
      i_ADDRS_UPD_EXTERNAL_READ    => i_ADDRS_UPD_EXTERNAL_READ,
      o_U_ADDRS_PAN                => o_U_ADDRS_PAN,
      o_ADDRS_POS_WEIGHT_0         => o_ADDRS_POS_WEIGHT_0,
      o_ADDRS_POS_WEIGHT_1         => o_ADDRS_POS_WEIGHT_1,
      o_UPD                        => o_UPD
   );

end arch_1;
