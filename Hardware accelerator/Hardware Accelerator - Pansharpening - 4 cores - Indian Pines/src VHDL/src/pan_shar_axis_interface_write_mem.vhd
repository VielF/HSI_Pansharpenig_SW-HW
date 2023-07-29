library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity pan_shar_axis_interface_write_mem is
generic (
        p_DWIDTH_ADDRS : natural := 16;
		-- Parameters of Axi Slave Bus Interface S00_AXIS
		C_S00_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_S00_AXIS_COUNT	: integer	:= 64
	);
	port (
	    i_RESTART       : in std_logic;
        s00_axis_aclk	: in std_logic;
        s00_axis_aresetn    : in std_logic;
		s00_axis_tready	: out std_logic;

		s00_axis_tlast	: in std_logic;
		s00_axis_tvalid	: in std_logic;
		
		o_DONE_WR : out std_logic;
		o_WR_ENA        : out std_logic;
		o_ADDRS_WR      : out std_logic_vector(p_DWIDTH_ADDRS-1 downto 0)

	);
end pan_shar_axis_interface_write_mem;

architecture Behavioral of pan_shar_axis_interface_write_mem is

type state_type is (s_IDLE_RECEIVE,s_RECEIVE,s_SYNC_RECEIVE, s_DONE, s_WAIT_RESTART);  
    signal r_state_reg : state_type;  
    signal r_next_state : state_type;
    
    signal r_INDEX_RECEIVE  : std_logic_vector(p_DWIDTH_ADDRS-1 downto 0) := (others => '0');
    
begin
   
   p_state_reg : process(s00_axis_aclk, s00_axis_aresetn)  
   begin  
      if (s00_axis_aresetn = '0') then  
         r_state_reg <= s_IDLE_RECEIVE; -- idle 
      elsif (s00_axis_aclk='1' and s00_axis_aclk'event) then  
         r_state_reg <= r_next_state;
      end if;
   end process;
   
   
   p_next_state : process(r_state_reg, s00_axis_tvalid,s00_axis_tlast,i_RESTART)
      begin
         case (r_state_reg) is
            when s_IDLE_RECEIVE => 
               if(s00_axis_tvalid = '1') then
                  r_next_state <= s_SYNC_RECEIVE;
               else
                  r_next_state <= s_IDLE_RECEIVE;
               end if;
                 
            when s_RECEIVE => 
               if(s00_axis_tvalid = '1') then                 
                  r_next_state <= s_SYNC_RECEIVE;         
               else                                          
                  r_next_state <= s_RECEIVE;       
               end if;                                                                                 
                                                             
            when s_SYNC_RECEIVE => 
               if(s00_axis_tlast = '1') then                 
                  r_next_state <= s_DONE;               
               else                                          
                  r_next_state <= s_RECEIVE;       
               end if;            
            
            when s_DONE => r_next_state <= s_WAIT_RESTART;
            
            when s_WAIT_RESTART =>
               if(i_RESTART = '1') then                 
                  r_next_state <= s_IDLE_RECEIVE;               
               else                                          
                  r_next_state <= s_WAIT_RESTART;          
               end if; 
               
            when others => r_next_state <= s_IDLE_RECEIVE;
         end case;
      end process;
        
      p_index_write : process(s00_axis_aclk,s00_axis_aresetn,r_state_reg)
      begin
         if(s00_axis_aclk='1' and s00_axis_aclk'event) then
             if(s00_axis_aresetn = '0' or i_RESTART = '1') then 
                r_INDEX_RECEIVE <= (others => '0');
             elsif(r_state_reg = s_RECEIVE and s00_axis_tvalid = '1') then
                r_INDEX_RECEIVE <= r_INDEX_RECEIVE + 1;
             else
                r_INDEX_RECEIVE <= r_INDEX_RECEIVE;
             end if;
         end if;
      end process;
      
      o_DONE_WR <= '1' when (r_state_reg = s_DONE) else '0';
      
      o_ADDRS_WR <= r_INDEX_RECEIVE;
      
      o_WR_ENA <= '1' when (r_state_reg = s_SYNC_RECEIVE) else '0';
      
      s00_axis_tready <= '1' when (r_state_reg = s_RECEIVE) else '0';


end Behavioral;
