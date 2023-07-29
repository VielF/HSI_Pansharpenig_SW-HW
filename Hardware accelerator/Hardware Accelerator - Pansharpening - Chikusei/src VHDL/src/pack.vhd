library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

package pack is
   
   ------------------------------------------------------------------------------
   --                               GLOBAIS                                    --
   ------------------------------------------------------------------------------
   -----------------SIZES--------------------------------------
   constant CHANNEL_ADDR_LENGTH : natural := 16;
   constant CHANNEL_DATA_LENGTH : natural := 32;
   constant IMG_WIDTH    : natural := 48; 
   constant IMG_HEIGHT   : natural := 48; 
   constant IMG_SIZE   : natural := IMG_WIDTH*IMG_HEIGHT; 
   constant KSIZE        : natural := 9; 
   constant HALFSIZE     : natural := (KSIZE/2);
   constant BUFFER_SIZE  : natural := IMG_WIDTH+KSIZE;
   constant SHIFT_CONV   : natural := 5;   
   constant COUNT_0 : natural := 5;   
   constant COUNT_1 : natural := 4;
   constant DIRAC_COUNT : natural := 1;
   constant DIRAC_WIDTH : natural := 1;
   constant INIT_VALUE_CONV_VER : natural := (HALFSIZE-1)*IMG_WIDTH; -- Virtual Channel
   constant INITERATIONS : natural := 10; -- Virtual Channel

   -----------------VALUES-----------------------------
   constant ONE_CONSTANT          : std_logic_vector(CHANNEL_ADDR_LENGTH-1 downto 0) := x"0001";
   constant KSIZE_VALUE         : std_logic_vector(CHANNEL_ADDR_LENGTH-1 downto 0) := std_logic_vector(to_unsigned(KSIZE, CHANNEL_ADDR_LENGTH)); -- Virtual Channel
   constant HALFSIZE_VALUE         : std_logic_vector(CHANNEL_ADDR_LENGTH-1 downto 0) := std_logic_vector(to_unsigned(HALFSIZE, CHANNEL_ADDR_LENGTH));
   constant IMG_WIDTH_VALUE      : std_logic_vector(CHANNEL_ADDR_LENGTH-1 downto 0) := std_logic_vector(to_unsigned(IMG_WIDTH, CHANNEL_ADDR_LENGTH)); -- Virtual Channel
   constant IMG_HEIGHT_VALUE       : std_logic_vector(CHANNEL_ADDR_LENGTH-1 downto 0) := std_logic_vector(to_unsigned(IMG_HEIGHT, CHANNEL_ADDR_LENGTH)); -- Virtual Channel
   constant LMB       : std_logic_vector(CHANNEL_DATA_LENGTH-1 downto 0) := x"42c80000";  -- 100
   constant MU       : std_logic_vector(CHANNEL_DATA_LENGTH-1 downto 0) := x"43c80000";   -- 400  = 43c80000 ; 100 = 42c80000
   constant ALPHA       : std_logic_vector(CHANNEL_DATA_LENGTH-1 downto 0) := x"3c000000"; -- 0.00454545 = 1/(n° channels) = 1/220
   constant DT          : std_logic_vector(CHANNEL_DATA_LENGTH-1 downto 0) := x"3c23d70a";
   
   --kernel[9] = {0.001285,0.014609,0.082907,0.234954,0.332490, 0.234954, 0.082907, 0.014609, 0.001285};
   type KERNEL_SIZE_9_UP is array (0 to 4) of std_logic_vector(31 downto 0);
   constant KERNEL_9_UP : KERNEL_SIZE_9_UP := ("00111010101010000110110101110010", --0.001285
                                         "00111100011011110101101010010110", --0.014609
                                         "00111101101010011100101100100101", --0.082907
                                         "00111110011100001001011111001000", --0.234954
                                         "00111110101010100011110000100001"); --0.332490
   type KERNEL_SIZE_9_DOWN is array (0 to 3) of std_logic_vector(31 downto 0);
   constant KERNEL_9_DOWN : KERNEL_SIZE_9_DOWN := ("00111110011100001001011111001000", --0.234954
                                              "00111101101010011100101100100101", --0.082907
                                              "00111100011011110101101010010110", --0.014609
                                              "00111010101010000110110101110010" --0.001285
                                              );
   --kernel[13] = {0.004412,0.013744,0.034826, 0.071772,0.120304,0.164012, 0.181862, 0.164012, 0.120304, 0.071772, 0.034826, 0.013744, 0.004412};
   type KERNEL_SIZE_13 is array (0 to 12) of std_logic_vector(31 downto 0);
   constant KERNEL_13 : KERNEL_SIZE_13 := ("00111011100100001001001010001010", --0.004412
                                           "00111100011000010010111010000100", --0.013744
                                           "00111101000011101010010110110101", --0.034826
                                           "00111101100100101111110100110011", --0.071772
                                           "00111101111101100110000111110010", --0.120304
                                           "00111110001001111111001011000011", --0.164012
                                           "00111110001110100011101000001000", --0.181862
                                           "00111110001001111111001011000011", --0.164012
                                           "00111101111101100110000111110010", --0.120304
                                           "00111101100100101111110100110011", --0.071772
                                           "00111101000011101010010110110101", --0.034826
                                           "00111100011000010010111010000100", --0.013744
                                           "00111011100100001001001010001010" --0.004412
                                           );



end package pack; 