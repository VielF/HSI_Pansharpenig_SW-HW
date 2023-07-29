vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xbip_utils_v3_0_8
vlib questa_lib/msim/axi_utils_v2_0_4
vlib questa_lib/msim/xbip_pipe_v3_0_4
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib questa_lib/msim/xbip_dsp48_addsub_v3_0_4
vlib questa_lib/msim/xbip_dsp48_multadd_v3_0_4
vlib questa_lib/msim/xbip_bram18k_v3_0_4
vlib questa_lib/msim/mult_gen_v12_0_13
vlib questa_lib/msim/floating_point_v7_1_5

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap xbip_utils_v3_0_8 questa_lib/msim/xbip_utils_v3_0_8
vmap axi_utils_v2_0_4 questa_lib/msim/axi_utils_v2_0_4
vmap xbip_pipe_v3_0_4 questa_lib/msim/xbip_pipe_v3_0_4
vmap xbip_dsp48_wrapper_v3_0_4 questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_4 questa_lib/msim/xbip_dsp48_addsub_v3_0_4
vmap xbip_dsp48_multadd_v3_0_4 questa_lib/msim/xbip_dsp48_multadd_v3_0_4
vmap xbip_bram18k_v3_0_4 questa_lib/msim/xbip_bram18k_v3_0_4
vmap mult_gen_v12_0_13 questa_lib/msim/mult_gen_v12_0_13
vmap floating_point_v7_1_5 questa_lib/msim/floating_point_v7_1_5

vlog -work xil_defaultlib -64 -sv \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_8 -64 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_4 -64 -93 \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_4 -64 -93 \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_4 -64 -93 \
"../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_4 -64 -93 \
"../../../ipstatic/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_4 -64 -93 \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_13 -64 -93 \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_5 -64 -93 \
"../../../ipstatic/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../pansharpening_spp.srcs/sources_1/ip/floating_point_1/sim/floating_point_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

