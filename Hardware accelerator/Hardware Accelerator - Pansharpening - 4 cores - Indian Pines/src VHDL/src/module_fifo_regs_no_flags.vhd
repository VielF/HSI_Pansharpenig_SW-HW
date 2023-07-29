library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity module_fifo_regs_no_flags is
generic (
   p_WIDTH : natural := 32;
   p_DEPTH : integer := 8;
   p_SHIFT : integer := 5);
port (
   i_RST_n : in std_logic;
   i_CLK    : in std_logic;

  -- FIFO Write Interface
   i_WR_EN   : in  std_logic;
   i_WR_DATA : in  std_logic_vector(p_WIDTH-1 downto 0);
   o_FULL    : out std_logic;

  -- FIFO Read Interface
   i_ADD_START_INDEX : in std_logic;
   i_RD_EN   : in  std_logic;
   i_RD_EN_BP_1   : in  std_logic;
   o_RD_DATA_BP_0 : out std_logic_vector(p_WIDTH-1 downto 0);
   o_RD_DATA_BP_1 : out std_logic_vector(p_WIDTH-1 downto 0);
   o_EMPTY   : out std_logic
);
end module_fifo_regs_no_flags;
 
architecture rtl of module_fifo_regs_no_flags is
 
  type t_FIFO_DATA is array (0 to p_DEPTH-1) of std_logic_vector(p_WIDTH-1 downto 0);
  signal r_FIFO_DATA : t_FIFO_DATA := (others => std_logic_vector(to_unsigned(0, p_WIDTH)));
 
  --signal r_WR_INDEX   : integer range 0 to p_DEPTH-1 := 0;
  signal r_WR_INDEX   : integer := 0;
  --signal r_RD_INDEX   : integer range 0 to p_DEPTH-1 := 0;
  signal r_RD_INDEX   : integer := 0;
  --signal r_INIT_START : integer range 0 to p_DEPTH-1 := 0;
  signal r_INIT_START : integer := 0;
 
  -- # Words in FIFO, has extra range to allow for assert conditions
  signal r_FIFO_COUNT : integer range -1 to p_DEPTH+1 := 0;
 
  signal w_FULL  : std_logic;
  signal w_EMPTY : std_logic;
   
begin
  
  control_wr_index : process (i_CLK) is
  begin
  if(rising_edge(i_CLK)) then
    if i_RST_n = '0' then
        r_FIFO_COUNT   <= 0;
    else
        if (i_WR_EN = '1' and i_RD_EN = '0' ) then
            r_FIFO_COUNT <= r_FIFO_COUNT + 1;
        elsif (i_wr_en = '0' and i_rd_en = '1') then
            r_FIFO_COUNT <= r_FIFO_COUNT - 1;
        end if;
    end if;
  end if;
  end process;
  
  control_wr_full : process (i_CLK) is
  begin
  if(rising_edge(i_CLK)) then
    if i_RST_n = '0' then 
        r_WR_INDEX <= 0;
    else
    -- Keeps track of the write index (and controls roll-over)
        if (i_WR_EN = '1' and w_FULL = '0') then
            if r_WR_INDEX = p_DEPTH-1 then
                r_WR_INDEX <= 0;
            else
                r_WR_INDEX <= r_WR_INDEX + 1;
            end if;
        end if;
    end if;
  end if;
  end process;
  
  control_rd_index : process (i_CLK,i_RST_n, i_ADD_START_INDEX) is
  begin  
  if(rising_edge(i_CLK)) then
     if i_RST_n = '0' then 
        r_RD_INDEX   <= 0;
     else
        if ( i_ADD_START_INDEX = '1') then
            r_RD_INDEX <= r_INIT_START+1;
     -- Keeps track of the read index (and controls roll-over)        
        --elsif (i_RD_EN = '1' and w_EMPTY = '0') then
        elsif (i_RD_EN = '1') then
            if r_RD_INDEX = p_DEPTH-1 then
                r_RD_INDEX <= 0;
            else
                r_RD_INDEX <= r_RD_INDEX + 1;
            end if;
        end if;
     end if;
   end if;
   end process;
   
   control_rd_empty : process (i_CLK,i_RST_n, i_ADD_START_INDEX) is
   begin  
   if(rising_edge(i_CLK)) then
      if i_RST_n = '0' then
        r_INIT_START <= 0;
      else
        --if (i_RD_EN = '1' and w_EMPTY = '0' ) then
            if i_ADD_START_INDEX = '1' then
                r_INIT_START <= r_INIT_START+1;
            else
                r_INIT_START <= r_INIT_START;
            end if;
       -- end if;   
      end if;
   end if;                           
   end process;
  
  r_FIFO_DATA(r_WR_INDEX) <= i_wr_data when i_WR_EN = '1' and rising_edge(i_CLK);
   
  o_RD_DATA_BP_0 <= r_FIFO_DATA(r_RD_INDEX);
  o_RD_DATA_BP_1 <= r_FIFO_DATA(r_RD_INDEX+p_SHIFT) when i_RD_EN_BP_1 = '0' else (others => '0');
 
  w_FULL  <= '1' when r_FIFO_COUNT = p_DEPTH else '0';
  w_EMPTY <= '1' when r_FIFO_COUNT = 0       else '0';
 
  o_full  <= w_FULL;
  o_empty <= w_EMPTY;
end rtl;