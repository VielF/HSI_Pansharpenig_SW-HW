library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity pan_shar_axis_interface_read is
	generic (
	    p_DWIDTH_ADDRS : natural := 16;
	            
		-- Parameters of Axi Master Bus Interface M00_AXIS
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M00_AXIS_COUNT	: integer	:= 64
	);
	port (
        i_START         : in std_logic;
        
		-- Ports of Axi Master Bus Interface M00_AXIS
		m00_axis_aclk	: in std_logic;
		m00_axis_aresetn	: in std_logic;
		m00_axis_tvalid	: out std_logic;
		
		m00_axis_tlast	: out std_logic;
		m00_axis_tready	: in std_logic;
		
		o_DONE_SEND     : out std_logic;
		o_ADDRS_EXT_READ : out std_logic_vector(p_DWIDTH_ADDRS-1 downto 0)
	);
end pan_shar_axis_interface_read;

architecture arch_imp of pan_shar_axis_interface_read is
    constant w_SYNC_CYCLES : integer := 5;
    
    type state_type is (s_START, s_IDLE_SEND, s_SEND,s_SEND_SYNC, s_END);  
    signal r_state_reg : state_type;  
    signal r_next_state : state_type;
    
    signal r_INDEX_SEND  : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0) := (others => '0');
    
    signal w_SYNC_SEND : std_logic_vector(5 downto 0);
    
    signal w_SYNC : std_logic;
    
begin
   
   p_state_reg : process(m00_axis_aclk, m00_axis_aresetn)  
   begin  
      if (m00_axis_aresetn = '0') then  
         r_state_reg <= s_START; -- idle 
      elsif (m00_axis_aclk='1' and m00_axis_aclk'event) then  
         r_state_reg <= r_next_state;
      end if;
   end process;
   
   
   p_next_state : process(r_state_reg, m00_axis_tready,i_START,w_SYNC)
      begin
         case (r_state_reg) is
            when s_START =>
               if(i_START = '1') then 
                  r_next_state <= s_IDLE_SEND;
               else
                  r_next_state <= s_START;
               end if;
               
            when s_IDLE_SEND => 
               if(m00_axis_tready = '1' and w_SYNC = '1') then
                  r_next_state <= s_SEND;
               else
                  r_next_state <= s_IDLE_SEND;
               end if;
            
            when s_SEND => 
               if(m00_axis_tready = '1') then 
                  r_next_state <= s_SEND_SYNC;
               else
                  r_next_state <= s_SEND;
               end if;
   
            when s_SEND_SYNC => 
               if(C_M00_AXIS_COUNT-1 = to_integer(unsigned(r_INDEX_SEND))) then
                  r_next_state <= s_END;
               else
                  r_next_state <= s_SEND;
               end if;
            
            when s_END  => r_next_state <= s_START;
              
            when others => r_next_state <= s_START;
         end case;
      end process;
          
      p_index_read : process(m00_axis_aclk,m00_axis_aresetn,r_state_reg)
      begin
         if(m00_axis_aclk='1' and m00_axis_aclk'event) then
             if(m00_axis_aresetn = '0' or C_M00_AXIS_COUNT-1 = to_integer(unsigned(r_INDEX_SEND))) then 
                r_INDEX_SEND <= (others => '0');
             elsif(r_state_reg = s_SEND and m00_axis_tready = '1') then
                r_INDEX_SEND <= r_INDEX_SEND + 1;
             else
                r_INDEX_SEND <= r_INDEX_SEND;
             end if;
         end if;
      end process;
      
      p_count_sync : process(m00_axis_aclk,m00_axis_aresetn,r_state_reg)
      begin
         if(m00_axis_aclk='1' and m00_axis_aclk'event) then
             if(m00_axis_aresetn = '0' or r_state_reg = s_END) then 
                w_SYNC_SEND <= (others => '0');
             elsif(r_state_reg = s_IDLE_SEND and m00_axis_tready = '1') then
                w_SYNC_SEND <= w_SYNC_SEND + 1;
             else
                w_SYNC_SEND <= w_SYNC_SEND;
             end if;
         end if;
         
      end process;
      
      w_SYNC <= '1' when (w_SYNC_CYCLES-1) = to_integer(unsigned(w_SYNC_SEND)) else '0';
      
      o_DONE_SEND <= '1' when (r_state_reg = s_END) else '0';
           
      m00_axis_tlast <= '1' when (r_state_reg = s_END) else '0';
      
      m00_axis_tvalid <= '1' when (r_state_reg = s_SEND or r_state_reg = s_END) else '0';
      
      o_ADDRS_EXT_READ <=  r_INDEX_SEND;

end arch_imp;
