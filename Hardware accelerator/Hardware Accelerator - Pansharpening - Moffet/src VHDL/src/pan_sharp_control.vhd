
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pan_sharp_control is
generic(
   p_DWIDTH_CONTROL : natural := 2); 
port( 
   i_CLK                 : in  std_logic;              
   i_RST_n               : in  std_logic;              
--input control signals  
   -- set to start the processing
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
   o_ENA_WR_UPD                : out std_logic;
                                 

   
   o_VALID_REGTERM_DATA        : out std_logic;
   
   o_MUX_EXT_RD_ADDR_FUSION_MEM: out std_logic_vector(1 downto 0);
   o_MUX_UPDATE_RD_ADDR_FUSION_MEM   : out std_logic;
   
   o_DONE                      : out std_logic;
   
   --control inputs
   i_READY_ADD_SUB_REGTERM       : in std_logic;
   
   i_DONE_REGTERM_0            : in std_logic;
   i_DONE_REGTERM_1            : in std_logic;
   i_DONE_CONV                 : in std_logic;
   i_DONE_FUSION               : in std_logic;
   i_DONE_COUNT_PIXEL          : in std_logic;
   i_DONE_COUNT_PIXEL_UPDATE   : in std_logic;
   i_DONE_COUNT_ITERATIONS     : in std_logic;
                               
   i_VALID_ADD_REGTERM         : in std_logic;
   
   
   i_DOUT_COMPARE_REGTERM_0    : in std_logic;                           
   i_DOUT_COMPARE_REGTERM_1    : in std_logic;                           
   i_REP_DONE_REGTERM_0        : in std_logic;
   i_REP_DONE_REGTERM_1        : in std_logic);
end pan_sharp_control;

architecture arch_1 of pan_sharp_control is
   --type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s9,s10,s11,s12,s13);  --, delay_hor_0, delay_hor_1,  delay_hor_2
   type state_type is (s0,
                       s_verify_ite,
                       s_start_covol,
                       s_rec_rep_regterm,
                       s_sync_rec_rep_regterm,
                       s_rec_pos_regterm,
                       s_sync_rec_pos_regterm_0,
                       s_sync_rec_pos_regterm_1,
                       s_sync_rec_pos_regterm_01,
                       s_start_regterm_01,
                       s_start_regterm_0,
                       s_start_regterm_1,
                       s_wait_regterm_01, 
                       s_wait_regterm_0,
                       s_wait_regterm_1,
                       s_sum_regterm,
                       s_sum_wait,
                       s_update_upd_wait,
                       s_update_upd_wait_sync,
                       s_wait_conv,
                       s_sync_mem_conv,
                       s_sync_mem_conv_1,
                       s_sync_mem_conv_2,
                       s_start_fusion,
                       s_start_fusion_wait,
                       s_sync,
                       s_done);  
   signal r_state_reg : state_type;  
   signal r_next_state : state_type;
    
   signal w_DONE_COUNT_1 : std_logic;
   signal w_DONE_COUNT_2 : std_logic;
   signal w_DONE_COUNT_3 : std_logic;
   
begin  
   p_state_reg : process (i_CLK, i_RST_n)  
   begin  
      if (i_RST_n = '0') then  
         r_state_reg <= s0; -- idle 
      elsif (i_CLK='1' and i_CLK'event) then  
         r_state_reg <= r_next_state;
      end if;
   end process;

   p_next_state : process (r_state_reg, 
                           i_START,
                           i_DONE_REGTERM_0,       
                           i_DONE_REGTERM_1,       
                           i_DONE_CONV,            
                           i_DONE_FUSION,          
                           i_DONE_COUNT_PIXEL,     
                           i_DONE_COUNT_ITERATIONS,                        
                           i_VALID_ADD_REGTERM,                           
                           i_REP_DONE_REGTERM_0,   
                           i_REP_DONE_REGTERM_1,
                           i_DOUT_COMPARE_REGTERM_0,
                           i_DOUT_COMPARE_REGTERM_1,
                           i_DONE_COUNT_PIXEL_UPDATE)
   begin
      case (r_state_reg) is
         when s0 => 
            if(i_START = '1') then
               r_next_state <= s_start_covol;
            else
               r_next_state <= s0;
            end if;
         
         when s_verify_ite =>
            if (i_DONE_COUNT_ITERATIONS = '1') then
               r_next_state <= s_done;
            else
               r_next_state <= s_start_covol;
            end if;
         -- widht      
         when s_start_covol => r_next_state <= s_update_upd_wait;
         
         when s_update_upd_wait => 
             if(i_DONE_COUNT_PIXEL_UPDATE = '1') then
                r_next_state <= s_rec_rep_regterm;
             else
                r_next_state <= s_update_upd_wait_sync;
             end if;
         
         when s_update_upd_wait_sync => r_next_state <= s_update_upd_wait;
         
         when s_rec_rep_regterm => r_next_state <= s_sync_rec_rep_regterm;
         
         when s_sync_rec_rep_regterm => r_next_state <= s_rec_pos_regterm;
         
          when s_rec_pos_regterm => 
             if ((i_DOUT_COMPARE_REGTERM_0 = '1' and  i_DOUT_COMPARE_REGTERM_1 = '1' ) or ( i_REP_DONE_REGTERM_1 = '1' and i_REP_DONE_REGTERM_0 = '1')) then
                if( i_DONE_CONV = '1') then
                   r_next_state <= s_sync_mem_conv_2;
                else
                    r_next_state <= s_wait_conv;
                end if;
             elsif(i_DOUT_COMPARE_REGTERM_1 = '1' or  i_REP_DONE_REGTERM_1 = '1') then
                r_next_state <= s_sync_rec_pos_regterm_0;
             elsif(i_DOUT_COMPARE_REGTERM_0 = '1' or  i_REP_DONE_REGTERM_0 = '1') then
                r_next_state <= s_sync_rec_pos_regterm_1;
             else
                r_next_state <= s_sync_rec_pos_regterm_01;
             end if;
        
         when s_sync_rec_pos_regterm_01 => r_next_state <= s_start_regterm_01;
         
         when s_start_regterm_01 => r_next_state <= s_wait_regterm_01;
         
         when s_sync_rec_pos_regterm_0 => r_next_state <= s_start_regterm_0;
         
         when s_start_regterm_0 => r_next_state <= s_wait_regterm_0;
         
         when s_sync_rec_pos_regterm_1 => r_next_state <= s_start_regterm_1;
         
         when s_start_regterm_1 => r_next_state <= s_wait_regterm_1;
                     
         when s_wait_regterm_01 =>
            if(i_DONE_REGTERM_0 = '1' and i_DONE_REGTERM_1 = '1') then
                if (i_REP_DONE_REGTERM_0 = '1' and i_REP_DONE_REGTERM_1 = '1') then
                    r_next_state <= s_sum_regterm;
                else 
                    r_next_state <= s_rec_pos_regterm;
                end if;
            else
                r_next_state <= s_wait_regterm_01;
            end if; 
         
         when s_wait_regterm_0 =>
            if(i_DONE_REGTERM_0 = '1') then
                if (i_REP_DONE_REGTERM_0 = '1') then
                    r_next_state <= s_sum_regterm;
                else 
                    r_next_state <= s_rec_pos_regterm;
                end if;
            else
                r_next_state <= s_wait_regterm_0;
            end if; 
            
         when s_wait_regterm_1 =>
            if(i_DONE_REGTERM_1 = '1') then
                if (i_REP_DONE_REGTERM_1 = '1') then
                    r_next_state <= s_sum_regterm;
                else 
                    r_next_state <= s_rec_pos_regterm;
                end if;
            else
                r_next_state <= s_wait_regterm_1;
            end if; 
         
         when s_sum_regterm => 
            if(i_READY_ADD_SUB_REGTERM = '1') then
               r_next_state <= s_sum_wait;
            else
               r_next_state <= s_sum_regterm;
            end if;
            
         when s_sum_wait => 
            if(i_VALID_ADD_REGTERM = '1') then
               if( i_DONE_CONV = '1') then 
                  r_next_state <= s_sync_mem_conv_2;
               else
                  r_next_state <= s_wait_conv;
               end if;
            else
               r_next_state <= s_sum_wait;    
            end if;
         
         when s_wait_conv => 
            if(i_DONE_CONV = '1') then 
                r_next_state <= s_sync_mem_conv_2;
            else
                r_next_state <= s_wait_conv;
            end if;
         
         when s_sync_mem_conv_2=> r_next_state <= s_sync_mem_conv_1;
         when s_sync_mem_conv_1=> r_next_state <= s_sync_mem_conv;
         
         when s_sync_mem_conv=> r_next_state <= s_start_fusion;
         
         when s_start_fusion => r_next_state <= s_start_fusion_wait;
         -- calculate addrs 1     
         when s_start_fusion_wait =>
            if(i_DONE_FUSION = '1') then 
               r_next_state <= s_sync;
            else
               r_next_state <= s_start_fusion_wait;
            end if;
         
         when s_sync => 
             if (i_DONE_COUNT_PIXEL = '1') then
                 r_next_state <= s_verify_ite;
             else
                 r_next_state <= s_rec_rep_regterm;
             end if;
           
         
         when s_done => r_next_state <= s_done; 
                        
         when others => r_next_state <= s0;
      end case;
   end process;

   o_START_CONV                 <= '1' when r_state_reg = s_start_covol else '0';
   
   o_START_REGTERM_0            <= '1' when r_state_reg = s_start_regterm_01 else
                                   '1' when r_state_reg = s_start_regterm_0 else 
                                   '0';
   
   --o_START_REGTERM_1            <= '1' when r_state_reg = s_start_regterm_01 and i_DOUT_COMPARE_REGTERM_0 = '0' else '0';
   o_START_REGTERM_1            <= '1' when r_state_reg = s_start_regterm_01 else
                                   '1' when r_state_reg = s_start_regterm_1 else 
                                   '0';
   
   o_START_FUSION               <= '1' when r_state_reg = s_start_fusion else '0';
                                
   o_ENA_REGTERM_0              <= '1' when r_state_reg = s_rec_rep_regterm else '0';
   o_ENA_REGTERM_1              <= '1' when r_state_reg = s_rec_rep_regterm else '0';
                                
   o_ENA_U0_REG_REGTERM_0       <= '1' when r_state_reg = s_rec_rep_regterm else
                                   '1' when r_state_reg = s_sync_rec_rep_regterm else
                                   '1' when r_state_reg = s_rec_pos_regterm else '0';
   --o_ENA_U1_REG_REGTERM_0       <= '1' when r_state_reg = s_rec_pos_regterm and i_VALID_DMA_REGTERM_SIZES = '1' else '0';
   o_ENA_U1_REG_REGTERM_0       <= '1' when r_state_reg = s_rec_rep_regterm else
                                   '1' when r_state_reg = s_sync_rec_rep_regterm else
                                   '1' when r_state_reg = s_rec_pos_regterm else '0';
   --o_ENA_WEIGHT_REG_REGTERM_0   <= '1' when r_state_reg = s_rec_pos_regterm and i_VALID_DMA_REGTERM_DATA_0 = '1' else '0';
   o_ENA_WEIGHT_REG_REGTERM_0   <= '1' when r_state_reg = s_rec_rep_regterm else
                                   '1' when r_state_reg = s_sync_rec_rep_regterm else
                                   '1' when r_state_reg = s_rec_pos_regterm else '0';
                                
   o_ENA_U0_REG_REGTERM_1       <= '1' when r_state_reg = s_rec_rep_regterm else
                                   '1' when r_state_reg = s_sync_rec_rep_regterm else
                                   '1' when r_state_reg = s_rec_pos_regterm else '0';
   --o_ENA_U1_REG_REGTERM_1       <= '1' when r_state_reg = s_rec_pos_regterm and i_VALID_DMA_REGTERM_SIZES = '1' else '0';
   o_ENA_U1_REG_REGTERM_1       <= '1' when r_state_reg = s_rec_rep_regterm else
                                   '1' when r_state_reg = s_sync_rec_rep_regterm else
                                   '1' when r_state_reg = s_rec_pos_regterm else '0';
   --o_ENA_WEIGHT_REG_REGTERM_1   <= '1' when r_state_reg = s_rec_pos_regterm and i_VALID_DMA_REGTERM_DATA_1 = '1'else '0';
   o_ENA_WEIGHT_REG_REGTERM_1   <= '1' when r_state_reg = s_rec_rep_regterm else
                                   '1' when r_state_reg = s_sync_rec_rep_regterm else
                                   '1' when r_state_reg = s_rec_pos_regterm else '0';
                                
   
   o_ENA_REG_PIXEL_U            <= '1' when r_state_reg = s_sync_rec_rep_regterm else
                                   '1' when r_state_reg = s_sync_mem_conv else 
                                   '0';
                               
   o_RST_COUT_PIXEL_U           <= '0' when r_state_reg = s_verify_ite else '1';
   o_RST_COUT_ITERATIONS        <= '0' when r_state_reg = s_done else '1';
                                
   o_RST_REGTERM                <= '0' when r_state_reg = s_sync else '1';
   o_RST_CONV                   <= '0' when r_state_reg = s_verify_ite else '1';
   o_RST_FUSION                 <= '0' when r_state_reg = s_sum_regterm else '1';
   
                                
   o_PST_REGTERM_0              <= '1' when r_state_reg = s_sync_rec_rep_regterm else '0';
   o_PST_REGTERM_1              <= '1' when r_state_reg = s_sync_rec_rep_regterm else '0';
                                
   o_VALID_ADD_REGTERM          <= '1' when r_state_reg = s_sum_regterm else '0';
                                
   o_MUX_ADDR_CONV_MEM          <= '1' when r_state_reg = s_sync_mem_conv_2 else 
                                   '1' when r_state_reg = s_sync_mem_conv else
                                   '1' when r_state_reg = s_sync_mem_conv_1 else
                                   '1' when r_state_reg = s_start_fusion else
                                   '1' when r_state_reg = s_start_fusion_wait else
                                   '1' when r_state_reg = s_verify_ite else
                                   '0';
                                   
   o_MUX_ADDR_FUSION_MEM        <= '0' when r_state_reg = s_sync_mem_conv_2 else 
                                   '0' when r_state_reg = s_sync_mem_conv else 
                                   '0' when r_state_reg = s_sync_mem_conv_1 else
                                   '0' when r_state_reg = s_start_fusion else
                                   '0' when r_state_reg = s_start_fusion_wait else
                                   '0' when r_state_reg = s_verify_ite else
                                   '0' when r_state_reg = s_sync else
                                   '1';
                                   
   o_MUX_EXT_RD_ADDR_FUSION_MEM <= "00" when r_state_reg = s0 else 
                                   "00" when r_state_reg = s_done else
                                   "10" when r_state_reg = s_update_upd_wait else
                                   "10" when r_state_reg = s_update_upd_wait_sync else
                                   "01";
                                   
   o_MUX_UPDATE_RD_ADDR_FUSION_MEM <= '0' when r_state_reg = s_update_upd_wait else
                                      '0' when r_state_reg = s_update_upd_wait_sync else
                                      '1';
                               

    
   o_VALID_REGTERM_DATA         <= '1' when r_state_reg = s_sync_rec_rep_regterm else '0'; 
   
   o_ENA_WR_UPD <= '1' when r_state_reg = s_update_upd_wait and i_DONE_COUNT_PIXEL_UPDATE = '0' else '0'; 
   
   o_ENA_COUT_PIXEL_U <= '1' when r_state_reg = s_update_upd_wait else '0';
   
   
   o_DONE <= '1' when r_state_reg = s_done else '0';
   
   
end arch_1;
