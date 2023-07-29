----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2018 05:00:55 PM
-- Design Name: 
-- Module Name: convolution_datapath - Behavioral
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

entity convolution_datapath is
   generic(
      p_WIDTH_PROCESSING : natural := CHANNEL_DATA_LENGTH;
      p_WIDTH_ADDRS : natural := CHANNEL_ADDR_LENGTH;
      p_DWIDTH_CONTROL : natural := 2); 
   port( 
      i_CLK                 : in  std_logic;              
      i_RST_n               : in  std_logic; 
      
      
      i_INIT_ADDRS_HOR      : in  std_logic;
      i_INIT_ADDRS_VER      : in  std_logic;
      i_INIT_CAL            : in  std_logic;
        
      
      i_WAIT_CALC           : in  std_logic;
      
      i_SEL_MUX_ADDRS       : in std_logic;
      
      i_SEL_MUX_OUT_CONV    : in std_logic;
      
      i_EXTENDED_DIRAC : in std_logic_vector(p_WIDTH_PROCESSING-1 downto 0);    
      
      i_ADDRS_VER_CHANGE    : in std_logic;    
      
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
      
      o_WR_DATA            : out std_logic;
      
      o_DONE_CALC           : out std_logic;
      
      o_DONE_ITERATIONS     : out std_logic;
      
      o_DONE_COUNT_BUFFER_HOR   : out std_logic;
      o_DONE_COUNT_BUFFER_VER   : out std_logic);
end convolution_datapath;

architecture arch_1 of convolution_datapath is

   component conv_calc
   generic(
      p_DWIDTH_DATA : natural := p_WIDTH_PROCESSING;
      p_DWIDTH_CONTROL : natural := p_DWIDTH_CONTROL);
   port(
      i_CLK                            :  in std_logic;
      i_RST_n                          :  in std_logic;
      i_START                          :  in std_logic;
      i_COUNT_0                        :  in std_logic;
      i_COUNT_1                        :  in std_logic;
      o_WR_DATA                        : out std_logic;
      o_DONE                           :  out std_logic;
      i_BP_0                           :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_KP_0                           :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_BP_1                           :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      i_KP_1                           :  in std_logic_vector(p_DWIDTH_DATA-1 downto 0);
      o_VALID_MUL_0                    : out std_logic;
      o_VALID_ADD_SUB_0                : out std_logic;
      o_VALID_MUL_1                    : out std_logic;
      o_VALID_ADD_SUB_1                : out std_logic;
      o_CONV                           :  out std_logic_vector(p_DWIDTH_DATA-1 downto 0)
      );
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

   component reg_pp
   generic (
      p_WIDTH : natural := p_WIDTH_ADDRS); -- data width
   port(
      i_CLK : in std_logic; -- clock
      i_RST_n : in std_logic; -- reset
      i_ENA : in std_logic; -- enable
      i_DIN : in std_logic_vector(p_WIDTH-1 downto 0); -- input data
      o_DOUT : out std_logic_vector(p_WIDTH-1 downto 0));-- output data
   end component;

   component addrConvHor
   generic(
      p_WIDTH : natural := p_WIDTH_ADDRS;
      p_DWIDTH_CONTROL : natural := 2); 
   port( 
      i_CLK                 : in  std_logic;              
      i_RST_n               : in  std_logic; 
      i_START               : in  std_logic;
      i_WAIT_CALC           : in std_logic;
      o_CYCLES_1            : out std_logic_vector(HALFSIZE-1 downto 0);
      o_CYCLES_2            : out std_logic_vector(p_WIDTH-1 downto 0);
      o_CYCLES_3            : out std_logic_vector(HALFSIZE-1 downto 0);
      o_CYCLES_IMG          : out std_logic_vector(p_WIDTH-1 downto 0);
      o_ADDR                : out std_logic_vector(p_WIDTH-1 downto 0);
      o_END_LINE            : out std_logic;  
      o_VALID               : out std_logic;
      o_DONE                : out std_logic);
   end component;

   component module_fifo_regs_no_flags
   generic (
      p_WIDTH : natural := 32;
      p_DEPTH : integer := 8;
      p_SHIFT : integer := 5);
   port (
      i_RST_n : in std_logic;
      i_CLK    : in std_logic;
      i_WR_EN   : in  std_logic;
      i_WR_DATA : in  std_logic_vector(p_WIDTH-1 downto 0);
      i_ADD_START_INDEX : in std_logic;
      o_FULL    : out std_logic;
      i_RD_EN   : in  std_logic;
      i_RD_EN_BP_1   : in  std_logic;
      o_RD_DATA_BP_0 : out std_logic_vector(p_WIDTH-1 downto 0);
      o_RD_DATA_BP_1 : out std_logic_vector(p_WIDTH-1 downto 0);
      o_EMPTY   : out std_logic
   );
   end component;


   component mux3
   generic (
      p_WIDTH : natural := p_WIDTH_PROCESSING); -- data width
   port (
      i_SEL  : in std_logic_vector(1 downto 0); -- selector
      i_DIN0 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
      i_DIN1 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
      i_DIN2 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
      o_DOUT : out std_logic_vector(p_WIDTH-1 downto 0)); -- data output
   end component;

   component addrConvVer
   generic(
     p_WIDTH : natural := p_WIDTH_ADDRS;
     p_DWIDTH_CONTROL : natural := 2); 
   port( 
     i_CLK                 : in  std_logic;              
     i_RST_n               : in  std_logic;    
     i_START               : in  std_logic;     
     i_WAIT_CALC           : in std_logic;     
     o_CYCLES_1 : out std_logic_vector(HALFSIZE-1 downto 0);
     o_CYCLES_2 : out std_logic_vector(p_WIDTH-1 downto 0);
     o_CYCLES_3 : out std_logic_vector(HALFSIZE-1 downto 0);
     o_CYCLES_IMG : out std_logic_vector(p_WIDTH-1 downto 0);      
     o_ADDR                : out std_logic_vector(p_WIDTH-1 downto 0);   
     o_END_LINE            : out std_logic;     
     o_VALID               : out std_logic; 
     o_DONE                : out std_logic);
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
      o_CYCLES : out std_logic_vector(p_WIDTH -1 downto 0)
   );
   end component;
   
   component mux2
   generic (
      p_WIDTH : natural := p_WIDTH_ADDRS); -- data width
   port (
      i_SEL  : in std_logic; -- selector
      i_DIN0 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
      i_DIN1 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
      o_DOUT : out std_logic_vector(p_WIDTH-1 downto 0)); -- data output
   end component;
   
   component adder_addr
   generic (
      p_WIDTH : natural := p_WIDTH_ADDRS); -- data width
      port (
      i_DIN0 : in std_logic_vector(p_WIDTH-1 downto 0);  -- data input
      i_DIN1 : in std_logic_vector(p_WIDTH-1 downto 0);  -- data input
      o_DOUT : out std_logic_vector(p_WIDTH-1 downto 0); -- data output
      o_COUT : out std_logic);                           -- carry output
   end component;
   
   component counter_cycles_dirac_mask
   generic(
       p_CYCLES: integer := IMG_WIDTH - 1;
       p_WIDTH : natural := 3);
   port(
       i_CLK : in std_logic;
       i_RST : in std_logic;
       i_ENA : in std_logic;
       o_DONE : out std_logic
   );
   end component;
   
   signal w_VALID_MUL_0        : std_logic;
   signal w_VALID_ADD_SUB_0    : std_logic;
   signal w_VALID_MUL_1        : std_logic;
   signal w_VALID_ADD_SUB_1    : std_logic;  
   
   signal w_RESET_COUNTER : std_logic;
   signal w_CYCLES_SHIFT_0 : std_logic_vector(HALFSIZE-1 downto 0);
   signal w_CYCLES_SHIFT_1 : std_logic_vector(HALFSIZE-1 downto 0);
   signal w_INDEX_0 : integer := 0;
   signal w_INDEX_0_ENA : integer := 0;
   signal w_INDEX_1 : integer := 0;
   signal w_INDEX_1_ENA : integer := 0;
   
   signal w_VALID_ADDR_HOR : std_logic;
   signal w_VALID_ADDR_VER : std_logic;
   signal w_ADDR_HOR : std_logic_vector(p_WIDTH_ADDRS-1 downto 0);
   signal w_ADDR_VER : std_logic_vector(p_WIDTH_ADDRS-1 downto 0);
   signal w_ADDR : std_logic_vector(p_WIDTH_ADDRS-1 downto 0);
   
   
   signal w_RD_DATA_BP_0 : std_logic_vector(p_WIDTH_PROCESSING-1 downto 0);
   signal w_RD_DATA_BP_1 : std_logic_vector(p_WIDTH_PROCESSING-1 downto 0);
   
   signal w_CONV : std_logic_vector(p_WIDTH_PROCESSING-1 downto 0);
   signal w_DONE_CAL_CONV : std_logic;
   
   signal w_DOUT_ADD_SUB_RESULT_DIRAC : std_logic_vector(p_WIDTH_PROCESSING-1 downto 0);
   
   
   signal w_DONE_COUNT_0 : std_logic;
   signal w_DONE_COUNT_1 : std_logic;
   
   signal w_DONE_CALC : std_logic;
   signal w_DONE_CALC_IP : std_logic;
   
   signal w_ENA_DIRAC_DATA : std_logic;
   signal w_ENA_DIRAC_DATA_1 : std_logic;
   
   signal w_SEL_CONV_DATA : std_logic_vector(1 downto 0);
   
   signal w_DONE_COUNT_DIRAC : std_logic;
   signal w_DONE_COUNT_DIRAC_1 : std_logic;
   
   signal w_DONE_ADDR_VER    : std_logic;
   signal w_DONE_ADDR_HOR    : std_logic;
   
   signal w_ENA_COUNT_BUFFER_VER : std_logic;
   signal w_VALID_DIRAC_RESULT : std_logic;
   
   signal w_END_LINE_HOR : std_logic;
   signal w_END_LINE_VER : std_logic;
   
   signal w_RST_COUNTER_HOR : std_logic;
   signal w_RST_COUNTER_VER : std_logic;
   
   signal w_RST_COUNTER_IMG : std_logic;
   
   signal w_ENA_WR_FIFO : std_logic;
   
   signal w_ENA_COUNT_0 : std_logic;
   signal w_ENA_COUNT_0_INDEX : std_logic := '1';
   signal w_ENA_COUNT_1 : std_logic := '1';
   signal w_ENA_COUNT_1_INDEX : std_logic := '1';
   
   signal w_DONE_COUNT_BUFFER_HOR : std_logic;
   signal w_DONE_COUNT_BUFFER_VER : std_logic;
   
   signal w_RST_COUNT : std_logic;
   
   signal w_RST_BUFFER : std_logic;
   
   signal w_WR_DATA_CALC : std_logic;
   
   signal w_VALID_OP_DIRAC : std_logic; 
   
   signal w_ENA_COUNT_IMAGE : std_logic;
   
   signal w_RST_DIRAC : std_logic;
   
   signal w_ADDRS_WRITE_HOR : std_logic_vector(p_WIDTH_ADDRS-1 downto 0);
   signal w_ADDRS_WRITE_VER : std_logic_vector(p_WIDTH_ADDRS-1 downto 0);
   
   signal w_ADDER_OUT_ADDRS_VER : std_logic_vector(p_WIDTH_ADDRS-1 downto 0);
   signal w_ADDER_OUT_MUX_VER : std_logic_vector(p_WIDTH_ADDRS-1 downto 0);
   signal w_ADDER_OUT_RST_VER : std_logic;
   signal w_ENA_REG_ADDR_WR_VER : std_logic;
   
   signal w_MUX_START_ADDRS_VER : std_logic;
   signal w_COUNT_ADDRS_VER_REG : std_logic;
   
   signal w_DONE_ITERATIONS     : std_logic;
   
   signal w_K0 : std_logic_vector(p_WIDTH_PROCESSING-1 downto 0);
   signal w_K1 : std_logic_vector(p_WIDTH_PROCESSING-1 downto 0);
   
   signal w_READY_0_ADD_DIRAC  : std_logic;
   signal w_READY_1_ADD_DIRAC  : std_logic;
   signal w_READY_OP_ADD_DIRAC  : std_logic;

begin

   
   idex_kernel_b0_k0 : process(i_CLK, i_RST_n, i_INIT_CAL)--, w_VALID_MUL_RESULT_0)
   begin
      if(i_RST_n = '0' or i_INIT_CAL = '1') then
         w_INDEX_0  <= 0;
      elsif(rising_edge(i_CLK)) then
        if( w_VALID_MUL_0 = '1') then
            if( w_INDEX_0 < COUNT_0-1) then
                w_INDEX_0  <= w_INDEX_0 + 1;
            else
                w_INDEX_0  <= 0;
            end if;
        end if;
      end if;
   end process;
   
   idex_kernel_cout_0 : process(i_CLK, i_RST_n, i_INIT_CAL)--, w_VALID_MUL_RESULT_0)
   begin
      if(i_RST_n = '0' or i_INIT_CAL = '1') then
         w_INDEX_0_ENA <= 0;
         w_ENA_COUNT_0_INDEX <= '1';
      elsif(rising_edge(i_CLK)) then
         if(w_VALID_MUL_0 = '1') then
            if( w_INDEX_0_ENA < COUNT_0) then
               w_INDEX_0_ENA <= w_INDEX_0_ENA + 1;
               w_ENA_COUNT_0_INDEX <= '1';
            else
               w_INDEX_0_ENA <= 0;
               w_ENA_COUNT_0_INDEX <= '0';
            end if;
         end if;
      end if;
   end process;

   idex_kernel_b1_k1 : process(i_CLK, i_RST_n, i_INIT_CAL)--, w_VALID_MUL_RESULT_1)
   begin
      if(i_RST_n = '0' or i_INIT_CAL = '1') then
         w_INDEX_1  <= 0;
      elsif(rising_edge(i_CLK)) then
         if(w_VALID_MUL_1 = '1') then
            if( w_INDEX_1 < COUNT_1-1) then
               w_INDEX_1  <= w_INDEX_1 + 1;
            else
               w_INDEX_1  <= 0;
            end if;
         end if;
      end if;
   end process;   
   
   idex_kernel_count_1 : process(i_CLK, i_RST_n, i_INIT_CAL) --, w_VALID_MUL_RESULT_1)
   begin
      if(i_RST_n = '0' or i_INIT_CAL = '1') then
         w_INDEX_1_ENA <= 0;
         w_ENA_COUNT_1_INDEX <= '1';
      elsif(rising_edge(i_CLK)) then
         if(w_VALID_MUL_1 = '1') then
            if( w_INDEX_1_ENA < COUNT_1) then
               w_INDEX_1_ENA <= w_INDEX_1_ENA + 1;
               w_ENA_COUNT_1_INDEX <= '1';
            else
               w_INDEX_1_ENA <= 0;
               w_ENA_COUNT_1_INDEX <= '0';
            end if;
         end if;
      end if;
   end process;
   
   addrHor:  addrConvHor
   generic map(
      p_WIDTH => p_WIDTH_ADDRS,
      p_DWIDTH_CONTROL => 2) 
   port map( 
      i_CLK                 => i_CLK,
      i_RST_n               => i_RST_n, 
      i_START               => i_INIT_ADDRS_HOR,
      i_WAIT_CALC           => i_WAIT_CALC,
      --o_CYCLES_1            => w_CYCLES_ADDR_HOR_1,
      --o_CYCLES_2            => w_CYCLES_ADDR_HOR_2,
      --o_CYCLES_3            => w_CYCLES_ADDR_HOR_3,
      --o_CYCLES_IMG          => w_CYCLES_ADDR_HOR_IMG,
      o_ADDR                => w_ADDR_HOR,
      o_END_LINE            => w_END_LINE_HOR,
      o_VALID               => w_VALID_ADDR_HOR,
      o_DONE                => w_DONE_ADDR_HOR
   );

   addrVer:  addrConvVer
   generic map(
      p_WIDTH => p_WIDTH_ADDRS,
      p_DWIDTH_CONTROL => 2) 
   port map( 
      i_CLK                 => i_CLK,
      i_RST_n               => i_RST_n, 
      i_START               => i_INIT_ADDRS_VER,
      i_WAIT_CALC           => i_WAIT_CALC,
      --o_CYCLES_1            => w_CYCLES_ADDR_HOR_1,
      --o_CYCLES_2            => w_CYCLES_ADDR_HOR_2,
      --o_CYCLES_3            => w_CYCLES_ADDR_HOR_3,
      --o_CYCLES_IMG          => w_CYCLES_ADDR_HOR_IMG,
      o_ADDR                => w_ADDR_VER,
      o_END_LINE            => w_END_LINE_VER,
      o_VALID               => w_VALID_ADDR_VER,
      o_DONE                => w_DONE_ADDR_VER
   );
   
   mux_add_0 : mux2
   generic map ( p_WIDTH => p_WIDTH_ADDRS) -- data width
   port map(
      i_SEL  => i_SEL_MUX_ADDRS,
      i_DIN0 => w_ADDR_HOR,
      i_DIN1 => w_ADDR_VER,
      o_DOUT => o_ADDRS_READ
   );

   fifo : module_fifo_regs_no_flags
   generic map(
      p_WIDTH => p_WIDTH_PROCESSING,
      p_DEPTH => IMG_WIDTH+IMG_HEIGHT+KSIZE,
      p_SHIFT => SHIFT_CONV)
   port map(
      i_CLK          => i_CLK,
      i_RST_n        => w_RST_BUFFER,
      i_WR_EN        => w_ENA_WR_FIFO,
      i_WR_DATA      => i_WR_DATA_FIFO,
      i_ADD_START_INDEX =>  w_DONE_CALC,
      --o_FULL         => o_FULL_FIFO,
      i_RD_EN        => w_VALID_MUL_0,
      i_RD_EN_BP_1   => w_VALID_MUL_1,
      o_RD_DATA_BP_0 => w_RD_DATA_BP_0,
      o_RD_DATA_BP_1 => w_RD_DATA_BP_1
      --o_EMPTY        => o_EMPTY_FIFO
   );
   
   w_RST_BUFFER  <= i_RST_n and not((w_DONE_CALC and (w_DONE_COUNT_BUFFER_HOR or w_DONE_COUNT_BUFFER_VER)));
   w_ENA_WR_FIFO <= i_WR_EN_FIFO and (w_VALID_ADDR_VER or w_VALID_ADDR_HOR);
   
      conv : conv_calc
   generic map(
      p_DWIDTH_DATA => p_WIDTH_PROCESSING,
      p_DWIDTH_CONTROL => p_DWIDTH_CONTROL)
   port map(
      i_CLK                            => i_CLK,
      i_RST_n                          => i_RST_n,
      i_START                          => i_INIT_CAL,
      i_COUNT_0                        => w_DONE_COUNT_0,
      i_COUNT_1                        => w_DONE_COUNT_1,
      o_WR_DATA                        => w_WR_DATA_CALC,
      o_DONE                           => w_DONE_CALC_IP,
      i_BP_0                           => w_RD_DATA_BP_0,
      i_KP_0                           => w_K0,
      i_BP_1                           => w_RD_DATA_BP_1,
      i_KP_1                           => w_K1,
      o_VALID_MUL_0                    => w_VALID_MUL_0,
      o_VALID_ADD_SUB_0                => w_VALID_ADD_SUB_0,
      o_VALID_MUL_1                    => w_VALID_MUL_1,
      o_VALID_ADD_SUB_1                => w_VALID_ADD_SUB_1,
      o_CONV                           => w_CONV
   );
   
   w_K0 <= KERNEL_9_UP(w_INDEX_0);
   w_K1 <= KERNEL_9_DOWN(w_INDEX_1);
   
   w_DONE_CALC <= w_DONE_CALC_IP when (i_SEL_MUX_OUT_CONV = '0' or (i_SEL_MUX_OUT_CONV = '1' and (w_DONE_COUNT_DIRAC = '0' or w_DONE_COUNT_DIRAC_1 = '0'))) else
                  w_VALID_DIRAC_RESULT;
                  
   
   o_DONE_CALC <= w_DONE_CALC;
   o_WR_DATA <= (w_WR_DATA_CALC and (not(i_SEL_MUX_OUT_CONV)))  or w_VALID_DIRAC_RESULT;
   
   mux_conv_value : mux3
   generic map(
      p_WIDTH => p_WIDTH_PROCESSING) -- data width
   port map(
      i_SEL  => w_SEL_CONV_DATA,
      i_DIN0 => w_CONV,
      i_DIN1 => w_DOUT_ADD_SUB_RESULT_DIRAC,
      i_DIN2 => x"00000000",
      o_DOUT => o_WR_DATA_CONV
   ); -- data output
   
   w_SEL_CONV_DATA(1) <= (w_DONE_COUNT_DIRAC or w_DONE_COUNT_DIRAC_1) and i_SEL_MUX_OUT_CONV;
   w_SEL_CONV_DATA(0) <= i_SEL_MUX_OUT_CONV;
   
      
   w_VALID_OP_DIRAC <=  w_WR_DATA_CALC and i_SEL_MUX_OUT_CONV and w_READY_0_ADD_DIRAC and w_READY_1_ADD_DIRAC and w_READY_OP_ADD_DIRAC;
   
   fpu_add_sub_dirac: floating_point_1
   port map(
      aclk => i_CLK,
        
      s_axis_a_tvalid => w_VALID_OP_DIRAC,
      s_axis_a_tready => w_READY_0_ADD_DIRAC,
      s_axis_a_tdata  => w_CONV,
      
      s_axis_b_tvalid => w_VALID_OP_DIRAC,
      s_axis_b_tready => w_READY_1_ADD_DIRAC,
      s_axis_b_tdata  =>  i_EXTENDED_DIRAC,
       
      s_axis_operation_tvalid => w_VALID_OP_DIRAC,
      s_axis_operation_tready => w_READY_OP_ADD_DIRAC,
      s_axis_operation_tdata  => x"01" ,
      
      m_axis_result_tvalid => w_VALID_DIRAC_RESULT,
      m_axis_result_tready => '1',
      m_axis_result_tdata  => w_DOUT_ADD_SUB_RESULT_DIRAC
   );
   
   
   count_count_0 : counter_cycles_up
   generic map(
      p_CYCLES => COUNT_0,
      p_WIDTH => 4)
   port map(
      i_CLK => i_CLK,
      i_RST => w_RST_COUNT,
      i_ENA => w_ENA_COUNT_0,
      o_DONE => w_DONE_COUNT_0
      --o_CYCLES => o_ADDRS_WRITE 
   );
   
   w_ENA_COUNT_0 <= w_ENA_COUNT_0_INDEX and w_VALID_ADD_SUB_0;
   
   count_count_1 : counter_cycles_up
   generic map(
      p_CYCLES => COUNT_1,
      p_WIDTH => 4)
   port map(
      i_CLK => i_CLK,
      i_RST => w_RST_COUNT,
      i_ENA => w_ENA_COUNT_1,
      o_DONE => w_DONE_COUNT_1
      --o_CYCLES => o_ADDRS_WRITE 
   );
   
   w_RST_COUNT <= i_RST_n and not(w_DONE_CALC);
   w_ENA_COUNT_1 <= w_ENA_COUNT_1_INDEX and w_VALID_ADD_SUB_1;
   
   count_dirac_0: counter_cycles_dirac_mask
   generic map(
      p_CYCLES => DIRAC_COUNT,
      p_WIDTH => DIRAC_WIDTH)
   port map(
      i_CLK => i_CLK,
      i_RST => i_RST_n,
      i_ENA => w_ENA_DIRAC_DATA,
      o_DONE => w_DONE_COUNT_DIRAC
   );
   
   count_dirac_1: counter_cycles_dirac_mask
   generic map(
      p_CYCLES => DIRAC_COUNT,
      p_WIDTH => DIRAC_WIDTH)
   port map(
      i_CLK => i_CLK,
      i_RST => i_RST_n,
      i_ENA => w_ENA_DIRAC_DATA_1,
      o_DONE => w_DONE_COUNT_DIRAC_1
   );

   --w_ENA_DIRAC_DATA <= (w_WR_DATA_CALC and i_SEL_MUX_OUT_CONV and not(w_DONE_COUNT_DIRAC)) or (w_VALID_DIRAC_RESULT and i_SEL_MUX_OUT_CONV and w_DONE_COUNT_DIRAC);
   w_ENA_DIRAC_DATA <= w_VALID_DIRAC_RESULT and i_SEL_MUX_OUT_CONV;
   w_ENA_DIRAC_DATA_1 <= w_DONE_COUNT_BUFFER_VER and i_SEL_MUX_OUT_CONV;
--------------------------------------------------------------------------------------
--                       PIXEL ADDRS WRITE                                          --
--------------------------------------------------------------------------------------   
   count_image : counter_cycles_up
   generic map(
      p_CYCLES => IMG_HEIGHT*IMG_WIDTH,
      p_WIDTH => p_WIDTH_ADDRS)
   port map(
      i_CLK => i_CLK,
      i_RST => w_RST_COUNTER_IMG,
      i_ENA => w_ENA_COUNT_IMAGE,
      --o_DONE => o_DONE_COUNT_IMG,
      o_CYCLES => w_ADDRS_WRITE_HOR 
   );
   
   mux_adder_wr_ver : mux2
   generic map ( p_WIDTH => p_WIDTH_ADDRS) -- data width
   port map(
      i_SEL  => i_ADDRS_VER_CHANGE,--w_MUX_START_ADDRS_VER, --i_ADDRS_VER_CHANGE,
      i_DIN0 => w_ADDER_OUT_ADDRS_VER,
      i_DIN1 => w_ADDRS_WRITE_HOR,
      o_DOUT => w_ADDER_OUT_MUX_VER
   );
   w_MUX_START_ADDRS_VER <= w_DONE_COUNT_0 and w_VALID_OP_DIRAC;
   
   adder_width : adder_addr
   generic map ( p_WIDTH => p_WIDTH_ADDRS) -- data width
      port map(
      i_DIN0 => IMG_WIDTH_VALUE,  -- data input
      i_DIN1 => w_ADDRS_WRITE_VER,  -- data input
      o_DOUT => w_ADDER_OUT_ADDRS_VER -- data output
      -- o_COUT =>                            -- carry output
   );
   
   addr_wr_ver: reg_pp
   generic map(
      p_WIDTH => p_WIDTH_ADDRS) -- data width
   port map(
      i_CLK => i_CLK,-- clock
      i_RST_n => w_ADDER_OUT_RST_VER,
      i_ENA => w_ENA_REG_ADDR_WR_VER,
      i_DIN => w_ADDER_OUT_MUX_VER,
      o_DOUT => w_ADDRS_WRITE_VER
   );-- output data
   w_ENA_REG_ADDR_WR_VER <= (w_VALID_DIRAC_RESULT and i_SEL_MUX_OUT_CONV) or (w_WR_DATA_CALC and not(i_SEL_MUX_OUT_CONV)) or i_ADDRS_VER_CHANGE;
   w_ADDER_OUT_RST_VER <= not(w_COUNT_ADDRS_VER_REG) and i_RST_n;
   
   mux_add_wr : mux2
   generic map ( p_WIDTH => p_WIDTH_ADDRS) -- data width
   port map(
      i_SEL  => i_SEL_MUX_ADDRS,
      i_DIN0 => w_ADDRS_WRITE_HOR,
      i_DIN1 => w_ADDRS_WRITE_VER,
      o_DOUT => o_ADDRS_WRITE
   );
   
   w_ENA_COUNT_IMAGE <= (w_DONE_CALC and not(i_SEL_MUX_ADDRS)) or (i_SEL_MUX_ADDRS and w_ENA_COUNT_BUFFER_VER and w_DONE_COUNT_BUFFER_VER);
--------------------------------------------------------------------------------------      
   count_iteractions : counter_cycles_up
   generic map(
      p_CYCLES => 1,
      p_WIDTH => 2)
   port map(
      i_CLK => i_CLK,
      i_RST => i_RST_n,
      i_ENA => i_ENA_ITERATIONS,
      o_DONE => w_DONE_ITERATIONS
--    o_CYCLES => o_ADDRS_WRITE 
   );   
   
   o_DONE_ITERATIONS <= w_DONE_ITERATIONS;
   
   count_buffer_hor : counter_cycles_up
   generic map(
      p_CYCLES => IMG_WIDTH-1,
      p_WIDTH => p_WIDTH_ADDRS)
   port map(
      i_CLK => i_CLK,
      i_RST => w_RST_COUNTER_HOR,
      i_ENA => w_DONE_CALC,
      o_DONE => w_DONE_COUNT_BUFFER_HOR
--    o_CYCLES => o_ADDRS_WRITE 
   );
   o_DONE_COUNT_BUFFER_HOR <= w_DONE_COUNT_BUFFER_HOR;
   
   count_buffer_ver : counter_cycles_up
   generic map(
      p_CYCLES => IMG_HEIGHT-1,
      p_WIDTH => p_WIDTH_ADDRS)
   port map(
      i_CLK => i_CLK,
      i_RST => w_RST_COUNTER_VER,
      i_ENA => w_ENA_COUNT_BUFFER_VER,
      o_DONE => w_DONE_COUNT_BUFFER_VER
--    o_CYCLES => o_ADDRS_WRITE 
   );
   
   count_addr_ver : counter_cycles_up
   generic map(
      p_CYCLES => IMG_HEIGHT+1,
      p_WIDTH => p_WIDTH_ADDRS)
   port map(
      i_CLK => i_CLK,
      i_RST => w_RST_COUNTER_VER,
      i_ENA => w_ENA_COUNT_BUFFER_VER,
      o_DONE => w_COUNT_ADDRS_VER_REG
--    o_CYCLES => o_ADDRS_WRITE 
   );
   
   o_DONE_COUNT_BUFFER_VER <= w_DONE_COUNT_BUFFER_VER;
   
   w_RST_COUNTER_HOR <= not(w_END_LINE_HOR) and i_RST_n;
   o_END_LINE_HOR <= w_END_LINE_HOR;
   
   w_RST_COUNTER_VER <= not(w_END_LINE_VER) and i_RST_n;
   o_END_LINE_VER <= w_END_LINE_VER;
   
   
   w_RST_COUNTER_IMG <= not(i_INIT_ADDRS_HOR or i_INIT_ADDRS_VER) and i_RST_n;
   
   --w_ENA_COUNT_BUFFER_VER <=  w_DONE_CALC when (w_DONE_COUNT_DIRAC = '1') else w_VALID_DIRAC_RESULT; 
   w_ENA_COUNT_BUFFER_VER <=  w_DONE_CALC when (w_DONE_COUNT_DIRAC = '1' and i_SEL_MUX_OUT_CONV = '1') else 
                              w_VALID_DIRAC_RESULT when (w_DONE_COUNT_DIRAC = '0' and i_SEL_MUX_OUT_CONV = '1') else  
                              w_DONE_CALC; 
   
   o_DONE_ADDR_VER <= w_DONE_ADDR_VER;
   o_DONE_ADDR_HOR <= w_DONE_ADDR_HOR;

end arch_1 ; -- arch