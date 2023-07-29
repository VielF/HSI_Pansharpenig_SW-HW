// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Jan 14 23:00:21 2019
// Host        : felipe-NOT running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/felipe/Downloads/pansharpening_spp_bakup_linux_moffet/pansharpening_spp.srcs/sources_1/ip/blk_mem_gen_6/blk_mem_gen_6_stub.v
// Design      : blk_mem_gen_6
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *)
module blk_mem_gen_6(clka, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[9:0],dina[11:0],douta[11:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [9:0]addra;
  input [11:0]dina;
  output [11:0]douta;
endmodule
