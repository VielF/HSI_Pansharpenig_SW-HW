----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.01.2019 22:19:34
-- Design Name: 
-- Module Name: tb_core - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use STD.textio.all;
use work.pack.all;
use ieee.std_logic_textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_core is
--  Port ( );
end tb_core;

architecture Behavioral of tb_core is
  component pan_shar_axis_interface_read
    generic (
        p_DWIDTH_ADDRS : natural := 16;
        C_M00_AXIS_TDATA_WIDTH    : integer    := 32;
        C_M00_AXIS_COUNT    : integer    := 64
    );
    port (
        i_START         : in std_logic;
        
        -- Ports of Axi Master Bus Interface M00_AXIS
        m00_axis_aclk    : in std_logic;
        m00_axis_aresetn    : in std_logic;
        m00_axis_tvalid    : out std_logic;
        
        m00_axis_tlast    : out std_logic;
        m00_axis_tready    : in std_logic;
        
        o_DONE_SEND     : out std_logic;
        o_ADDRS_EXT_READ : out std_logic_vector(p_DWIDTH_ADDRS-1 downto 0)
    );
    end component;
    
    component pan_sharp_system
    generic(
       p_DWIDTH_DATA : natural := CHANNEL_DATA_LENGTH;
       p_DWIDTH_ADDRS : natural := CHANNEL_ADDR_LENGTH;
       p_DWIDTH_CONTROL : natural := 2);
    port(
       i_CLK                 : in  std_logic;      
       i_RST_n               : in  std_logic;      
       i_START                     : in  std_logic;
       i_ADDRS_UPD_EXTERNAL_READ : in std_logic_vector(p_DWIDTH_ADDRS-1 downto 0);
       o_UPD :  out std_logic_vector(p_DWIDTH_DATA-1 downto 0);
       o_DONE                      : out std_logic
    );
    end component;
    
    signal w_ADDRS_EXT_READ : std_logic_vector(CHANNEL_ADDR_LENGTH-1 downto 0);
    signal w_UPD : std_logic_vector(CHANNEL_DATA_LENGTH-1 downto 0);
    signal w_DONE_SEND : std_logic;
    signal w_DONE : std_logic;
        
    signal m00_axis_tvalid : std_logic;
    signal m00_axis_tlast : std_logic;
    
    signal clk : std_logic := '0';
    signal rst : std_logic := '1';
    signal start : std_logic := '1';
    signal data_real   : real;
    signal count       : integer := 0;
     -----------------------------------------------------------------------------
  -- Testbench Internal Signals
  -----------------------------------------------------------------------------
  file file_RESULTS : text;
 
  constant c_WIDTH : natural := 4;
 
  signal r_ADD_TERM1 : std_logic_vector(c_WIDTH-1 downto 0) := (others => '0');
  signal r_ADD_TERM2 : std_logic_vector(c_WIDTH-1 downto 0) := (others => '0');
  signal w_SUM       : std_logic_vector(c_WIDTH downto 0);
begin
  clk <= not clk after 5 ns;
  
  reset: process
  begin
     rst <= '0';
     wait for 10 ns;
     rst <= '1';
     wait;
  end process reset;

  start_spp: process
  begin
     wait for 30 ns;
     start <= '1';
     wait for 10 ns;
     start <= '0';
     wait;
  end process start_spp;

  write_image : pan_shar_axis_interface_read
   generic map(
       p_DWIDTH_ADDRS => CHANNEL_ADDR_LENGTH,
       C_M00_AXIS_TDATA_WIDTH => CHANNEL_DATA_LENGTH,
       C_M00_AXIS_COUNT => (IMG_WIDTH*IMG_HEIGHT)
   )
   port map(
       i_START          => w_DONE,
       m00_axis_aclk    => clk,
       m00_axis_aresetn => rst,
       m00_axis_tvalid  => m00_axis_tvalid,
       m00_axis_tlast   => m00_axis_tlast,
       m00_axis_tready  => '1',
       o_DONE_SEND      => w_DONE_SEND,
       o_ADDRS_EXT_READ =>  w_ADDRS_EXT_READ
   );
   
   spp : pan_sharp_system
   generic map(
      p_DWIDTH_DATA => CHANNEL_DATA_LENGTH,
      p_DWIDTH_ADDRS => CHANNEL_ADDR_LENGTH,
      p_DWIDTH_CONTROL => 2)
   port map(
      i_CLK                 => clk,
      i_RST_n               => rst,
      i_START               => start,
      i_ADDRS_UPD_EXTERNAL_READ => w_ADDRS_EXT_READ,
      o_UPD                 => w_UPD,
      o_DONE                => w_DONE
   );

  ---------------------------------------------------------------------------
  -- This procedure reads the file input_vectors.txt which is located in the
  -- simulation project area.
  -- It will read the data in and send it to the ripple-adder component
  -- to perform the operations.  The result is written to the
  -- output_results.txt file, located in the same directory.
  ---------------------------------------------------------------------------
  write_process : process(w_DONE, w_DONE_SEND, m00_axis_tvalid)
    variable v_OLINE     : line;
  begin
    
      --file_open(file_RESULTS, "/home/felipe/Downloads/pansharpening_spp_bakup_linux/output_results.txt", write_mode);
      --write(v_OLINE, w_UPD, right, c_WIDTH);
      if(m00_axis_tvalid = '1' or m00_axis_tlast = '1') then
--           if(m00_axis_tvalid = '1') then
--              data_real <= real(to_integer(signed(w_UPD)));
--              write(v_OLINE, data_real);
--              writeline(file_RESULTS, v_OLINE);
--              count <= count + 1;
--           end if;
           --write(v_OLINE, w_UPD);
           --writeline(file_RESULTS, v_OLINE);
           report integer'image(to_integer(unsigned(w_ADDRS_EXT_READ))) & ":" & to_hstring(w_UPD);
      end if;
      --if(w_DONE_SEND = '1') then
         --file_close(file_RESULTS);
      --end if;
    --wait;
  end process;
  

end Behavioral;
