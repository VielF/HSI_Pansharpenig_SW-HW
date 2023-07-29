// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Jan  6 23:31:41 2019
// Host        : DESKTOP-UUQ2CPQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/felip/Desktop/pansharpening_spp/pansharpening_spp.srcs/sources_1/ip/blk_mem_gen_8/blk_mem_gen_8_sim_netlist.v
// Design      : blk_mem_gen_8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_8,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module blk_mem_gen_8
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_8.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_8.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1016" *) 
  (* C_READ_DEPTH_B = "1016" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1016" *) 
  (* C_WRITE_DEPTH_B = "1016" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_8_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_8_blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [9:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_8_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_8_blk_mem_gen_prim_width
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [9:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_8_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_8_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [9:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_85 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_86 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_87 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 ;
  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h3EEE84163EFFFFFE3F0000003EFFF0DF3F0000003EEE84163F0000003F000000),
    .INIT_01(256'h3F0000003EAAAAAB3F0000003F0000003F0000003F0000003F0000003F000000),
    .INIT_02(256'h3F0000003EFFF0DF3EAAAAAB3AC686613EEE84163EFF3CC43EFFF0DF3EAAAAAB),
    .INIT_03(256'h3F0000003F0000003F0000003F0000003F0000003F0000003F000000397226ED),
    .INIT_04(256'h35B945893EFE8EB83F0000003BB8A3F83286628C3EFFFFE83F0000003F000000),
    .INIT_05(256'h3F0000003F0000003EAAAAAB3F0000003F0000003F0000003F0000003F000000),
    .INIT_06(256'h3F0000003543628B3EAAAAAB3F0000003EAA063B3F0000003EAAAAAB3F000000),
    .INIT_07(256'h3F0000003EFFFED43EFFFED43EAAAAAB3795C9B63795C9B63EAAAAAB3D186DAC),
    .INIT_08(256'h3F0000003F0000003EAAAAAB3ACE2F9F3EFFFFFE3F0000003F0000003F000000),
    .INIT_09(256'h3D1832923EEE84163EFF3CC435B945893F0000003F0000003F0000003F000000),
    .INIT_0A(256'h3BB8A3F83EFFFDC93EFFFDC93F0000003F0000003F0000003EF679253EF67925),
    .INIT_0B(256'h3EFFFFE83F0000003F0000003F0000003F0000003F0000003F0000003EFF3CC4),
    .INIT_0C(256'h3F0000003F0000003D8BDF573F0000003F0000003F0000003EFE8EB83F000000),
    .INIT_0D(256'h3EF5F93C3371498B3EFFFFDC3EAAAAAB3F0000003F0000003EAAAAAB3F000000),
    .INIT_0E(256'h3EF679253F0000003EFF32223CA06C363EFF98E83543628B3286628C3370E887),
    .INIT_0F(256'h3EFFF0DF3371AADC3371AADC3EAAAAAB3F0000003F0000003F0000003F000000),
    .INIT_10(256'h397226ED3EFFF0DF3D8BDF5735B945893F0000003EFFF0DF3EFFFFE83F000000),
    .INIT_11(256'h3D8BDF573B433D263EFFFFE83F0000003EFFFFFE3F0000003EFFF0DF3F000000),
    .INIT_12(256'h3EFFFDC93F0000003F0000003EF679253EF679253F0000003F0000003EF61994),
    .INIT_13(256'h3F0000003EFF3CC43EFE8EB83EFFFDC93B433D263EFE8EB8380E08603F000000),
    .INIT_14(256'h3F0000003EEE84163F0000003286628C3F0000003F0000003F0000003F000000),
    .INIT_15(256'h3EFFFDC93EAAAAAB3F0000003F0000003F0000003F0000003F0000003F000000),
    .INIT_16(256'h3ACDDCC93EF5F93C3232816C3ACE2FB13EFFFFDC3ACDDCC93EAA063B3F000000),
    .INIT_17(256'h3EAAAAAB3F0000003EFF32223CA06C363EAA063B3EFF98E83543628B3286628C),
    .INIT_18(256'h3EFF32243EFF98D23EFF32243EFF98D233E528A83F0000003EFFFED43EFFFED4),
    .INIT_19(256'h3F0000003EAAAAAB3F0000003EAAAAAB35B8FAEE3EFFFFFE3371AADC3371AADC),
    .INIT_1A(256'h3F0000003F00000033E528A83EAAAAAB3EFF98EA3EFF98EA3EFFFFE8397226ED),
    .INIT_1B(256'h3EF679253B76A68F380E08603D186DAC3D186DAC3F0000003EFAE2F03F000000),
    .INIT_1C(256'h3EFFFFFE3ACDDCCB3EAAAAAB3286628B3EFFFFFE3EFFFFFE3ACDDCCB3EAAAAAB),
    .INIT_1D(256'h3543629C3ACE2FB23EFAE2F03EFFF0DF3F000000397226ED3286628B3EFFFFFE),
    .INIT_1E(256'h3F0000003F0000003F000000380E08603EF619943EFFFFE83F0000003F000000),
    .INIT_1F(256'h3F0000003EFFFFFF3F0000003F0000003EFFFDC93F0000003EEE84163F000000),
    .INIT_20(256'h3ACE2FB23EAAAAAB3EFF98EA3EFF98EA3F0000003F0000003F0000003F000000),
    .INIT_21(256'h353F7B8B3F0000003EFF98EA3CA3A07B3F0000003EFFFFE83EAAAAAB3ACE2FB2),
    .INIT_22(256'h35B945893F0000003EFFFFFF3F0000003F0000003F0000003F0000003EFFFFF3),
    .INIT_23(256'h3EFF98E93F0000003EFFFFE83EFFFFF33BB8A3213F0000003F0000003EFF98EA),
    .INIT_24(256'h3F0000003F0000003F0000003F0000003F0000003EFF98E93F0000003F000000),
    .INIT_25(256'h3F0000003EFE8D8F3F0000003F0000003ACE2FB23B433D263D8BDF573EFAE2FB),
    .INIT_26(256'h3EEE84163CA3A0823EFF3CC43EEE84163EFAE2FB3BB8A3F83EFE8EB83F000000),
    .INIT_27(256'h3BB8A3F83EFE8EB83794F1A53F0000003F0000003EFE8D8F3F0000003EFF3CC4),
    .INIT_28(256'h3F0000003F0000003EFFFED53795C9B73F0000003EFE8EB83EFE8EB83BB8A3F8),
    .INIT_29(256'h3F0000003EFFFED53F0000003F0000003F0000003F0000003EFE8EB83EFE8EB8),
    .INIT_2A(256'h3EFFFFE83F0000003F0000003F0000003F0000003EFFFFE83F0000003F000000),
    .INIT_2B(256'h3F00000035B945893F0000003F0000003F0000003F0000003F0000003286628C),
    .INIT_2C(256'h3F0000003EFFFED53F0000003F0000003F0000003F0000003F0000003EFFFED5),
    .INIT_2D(256'h3F0000003E9106363F0000003E18F0BE3E9106363EA860F639E592013EFFFFFE),
    .INIT_2E(256'h3E9106363F0000003795C9B73F0000003F0000003F0000003EFFE34E3EFFFFFE),
    .INIT_2F(256'h350082BE3F0000003EFE8C683D8B7BED3EA860F63F0000003EFFE34E33E528A8),
    .INIT_30(256'h3EA860F63286628C3F0000003F0000003F0000003F0000003A69FA423B35F10E),
    .INIT_31(256'h3C5BA1AC3F0000003F0000003F0000003F0000003F0000003794F0F93EEDDA91),
    .INIT_32(256'h3F0000003F0000003F0000003F0000003F0000003F0000003EFE8C6833D4EA4C),
    .INIT_33(256'h3F0000003F0000003794F0F93BB8A24B3EEDDA913EFFFDC93EEE841632859F7B),
    .INIT_34(256'h3F0000003F0000003F0000003EFFFDC93EEE84163F0000003D8BDF57399911B9),
    .INIT_35(256'h3F0000003EAA9DE93F0000003EAA9DE93F000000380E08603F0000003F000000),
    .INIT_36(256'h3EFFFDC93EFF3CC4380E08603B433D263EAA9DE93F0000003F0000003F000000),
    .INIT_37(256'h3EAAAAAB3F0000003F0000003F0000003F0000003F0000003EFFFDC93EFF3CC4),
    .INIT_38(256'h3F0000003B433D263F0000003F0000003371AADE3EAAAAAB3371AADE3F000000),
    .INIT_39(256'h3EAAAAAB3F0000003F0000003F0000003286628C3F0000003EAAAAAB3F000000),
    .INIT_3A(256'h3F0000003F0000003F0000003EFFFED53F000000337148713F0000003EFFE1BD),
    .INIT_3B(256'h3EEE8412328661EF3EFF3CC43EFFFDC93ACE2FB23EFFFFFE3F0000003EFF3CC4),
    .INIT_3C(256'h3EFFFED53F00000037958D6537958D643EFFE1BD3D8BDF553EFFFED53B433D26),
    .INIT_3D(256'h3EFF98E933E528A83F0000003EAAAAAB3F0000003F0000003795C9B73F000000),
    .INIT_3E(256'h3F0000003F0000003F0000003F0000003EEE841633D582083EFFFED5380E0860),
    .INIT_3F(256'h3EFFFFFE3F0000003EFF3CC43EAAAAAB3EFF97BF3EFF97BD3972189D3F000000),
    .INIT_40(256'h3F000000328661EF3CA3A0823EEE84123795C9B73EFF3CC43EFFFDC93EFF98E9),
    .INIT_41(256'h3EAAAAAB3EAAAAAB3EFF97BF3EFF97BD3972189D3F0000003F0000003F000000),
    .INIT_42(256'h3ACE2EBF397226ED3EAAAAAB3D8BDF573EEE84163F0000003F0000003F000000),
    .INIT_43(256'h3EFAE2FB3F0000003F0000003F0000003EFFF0DF3EAAAAAB3EAAAAAB3ACE2EC1),
    .INIT_44(256'h3EAAAAAB3EAAAAAB3EFFFFE83368AC8E3BB8A3F83F0000003EFFFFE83EFAE2FB),
    .INIT_45(256'h3F0000003F0000003EFAD4733EEE84163EF679253F00000035B945893EFFF0DF),
    .INIT_46(256'h3F0000003F0000003F0000003F0000003F0000003D186DAC396D50FF3F000000),
    .INIT_47(256'h3EFAD4733D8BDF573C9D576E3EFF98E83EFF98EA3285A0B23C9D576E3EFE8EB8),
    .INIT_48(256'h3F0000003EAAAAAB3F0000003EAAAAAB3EF679253F0000003CA397083EEE8416),
    .INIT_49(256'h3ACE2FB13ACE2FB23EFE8EB83543629C3C9D576E3EFF98E83EFF98EA3285A0B2),
    .INIT_4A(256'h3F0000003EFFE1BD3F0000003E55A4C13E55A4C13D3E79B03EFFFFF33EF13FCE),
    .INIT_4B(256'h3EFFFDC93F0000003285A0B23F0000003F0000003F0000003F0000003F000000),
    .INIT_4C(256'h376D12CF3F0000003972189D3ECA95E23ECA95E23972189D3ECA95E23ECA95E2),
    .INIT_4D(256'h3EAAAAAB3EFFFFF33EF13FCE3371498B3F0000003F0000003EFFE1BD376D12CF),
    .INIT_4E(256'h3F0000003F0000003285A0B23F0000003EAAAAAB3F000000333F3F02333F3F02),
    .INIT_4F(256'h3371A9C33EA2B61E372746413CA06C303D8296093306F0093B2A55CC380CC557),
    .INIT_50(256'h3D3ED6463CA06C303EF5F932380398833B34ECF83E9B308A3E76F1E13EA2672D),
    .INIT_51(256'h3F0000003F0000003D8B16D53B34ECF83391A6C13EF5F9323CA06C3033D44FFB),
    .INIT_52(256'h3EAAAAAB3EAAAAAB3ECA969E3ECA969E3EAAAAAB3EFF98E93EFFFDC93F000000),
    .INIT_53(256'h3EFE8EB83EFFC6A23EFF3CC43972189B3795C9B63EFFFED43F0000003ECA969E),
    .INIT_54(256'h3EFFFED43F0000003F00000033E528A8380E08603BB8A3F83EEDD6BC3E4F4E39),
    .INIT_55(256'h3EF619943C5B99193EFFFDC9336852573B4213703795C9083EFFFDA93795C9B6),
    .INIT_56(256'h3EAA05B733C755373D8BDF563EAAA9AE3EAA05B73EA85A6337F719FB3B421370),
    .INIT_57(256'h3E8EF11A3391A6C13E8EF0BC380E0725380E0725323280E23D8296093EFFFB90),
    .INIT_58(256'h3306F0613EA2B61E3306F009353BBB9A3EF5F9323E9B77D13E2C67303E2C6730),
    .INIT_59(256'h3E9B77D13E2C67303E2C67303E8EF11A3391A6C13E8EF0BC37AC84963EFF3CC0),
    .INIT_5A(256'h3F0000003F0000003EAAAAAB3ECA969E3ECA969E3EAAAAAB3F0000003F000000),
    .INIT_5B(256'h3F0000003E55A5883EAAAAAB3F0000003ACE2FB23F0000003F0000003F000000),
    .INIT_5C(256'h3ACDDCCB3EAAAAAB3ACDDCCB3EAAAAAB3EFF32243EAAAAAB3EFF32243F000000),
    .INIT_5D(256'h3EFFE1BC397226ED3EAAAAAB3972189B3EFFF0DF3F0000003EAAAAAB32332E10),
    .INIT_5E(256'h3F0000003EFE8EB839E578483EFFC6A23EAAAAAB3F0000003EAAAAAB39E57848),
    .INIT_5F(256'h3EFF320E3F0000003EFF320E3F0000003F0000003F0000003EAAAAAB3EAAAAAB),
    .INIT_60(256'h3D8B79AE3ECA969E3EC493553F0000003F0000003EAAAAAB3371AADE333F3F02),
    .INIT_61(256'h3F0000003F0000003EFFFFFE3EFFFDC93F0000003F0000003F0000003F000000),
    .INIT_62(256'h3B4213703EF619943EFFE34E3EFFFDA939E592013F0000003EFFFED43EFFFFF3),
    .INIT_63(256'h3EFDB79035007DBA3EDEAE373EFDB7903AC68661391F48753EFFFDC93EA85A63),
    .INIT_64(256'h3D3603DA3E76F1E13EA2672D3EFF2FCE380E072533E528A53EFFFED43EDEAE37),
    .INIT_65(256'h3B356D303D8AB4893E9B308A3D10D0BB3EA2672D3EAA52D33EFF3CC438033B82),
    .INIT_66(256'h379550943EED2E2D3EEC868E3D3603DA3789036F3CA06C303AF8743F3EAA52D3),
    .INIT_67(256'h3ACDDAE83EED2E2D3EEC868E3AED6B273EF5F932353BBB9A37B436A63B024922),
    .INIT_68(256'h3F0000003F0000003D3657723EA37AC53EA37AC53E16BE873E16BE2537BD00AA),
    .INIT_69(256'h3F0000003F0000003EAAAAAB3E55A5883E55A5883EFF98E93F000000380E0860),
    .INIT_6A(256'h3EFFFED43EAAAAAB3EFF32243EAAAAAB3EFF32243F0000003ECA969E3EAAAAAB),
    .INIT_6B(256'h3371AADE3F0000003BB8A3F83F0000003EFF3CC43EAAAAAB3EFFE1BC3EFFF0DF),
    .INIT_6C(256'h3EAAA3F03EAAA3F1397226ED3EAAA3F0392172773EFFF0DF3EAAAAAB3EAAAAAB),
    .INIT_6D(256'h35B8B08E3F0000003E55A5883ECA969E3ACDDCB93F0000003EAAAAAB3EFFF0DF),
    .INIT_6E(256'h3EFF3CC43CA3A0823D8BDF573B433D263EFAE2FB3ECA969E3E55A5883EC49355),
    .INIT_6F(256'h3EFE8EB83B35EE203795C9B63795C9B63EFE8EB83EEDD6BC3CF323B83EEE8416),
    .INIT_70(256'h3F0000003543629C3F0000003EFFFFF33F0000003F0000003EFFFFFE3EFFFDC9),
    .INIT_71(256'h33E31D82380E08603D1832923B433D263EFF98EA3F0000003EFF98EA3F000000),
    .INIT_72(256'h3EEE84143EAAA9AE3B76A5CF33D5820937BD610C3EAA05B733E528A53EA85A63),
    .INIT_73(256'h3EA37AC53EA37AC53E16BE873E16BE253EFFFB903EEE84143EAAA9AE3746F77F),
    .INIT_74(256'h3E16BE8737B48E3F3E16BE253ACDDAE8338B2AE03EFF3CC03EA2B61E3D365772),
    .INIT_75(256'h3F0000003F0000003F0000003F0000003E9B77D133E479E33CCA34373CCA3437),
    .INIT_76(256'h3F0000003EAAAAAB3EAAAAAB3ACDDCCB32332E103ACDDCCB3F0000003F000000),
    .INIT_77(256'h392172763EAAA3F1397226ED3EAAA3F03EAAA3F13EFFF0DF3F0000003B433D26),
    .INIT_78(256'h3F0000003EAAAAAB3F0000003EAAAAAB3F0000003ECA969E3ACDDCB93EFFF0DF),
    .INIT_79(256'h3803F6093F0000003F0000003F0000003F0000003EEE84163EFF3CC43EFAE2FB),
    .INIT_7A(256'h3EFFE34E3795C9083286628C3EFFFED43EFFFED43803F6093EFFFED43EFFFED4),
    .INIT_7B(256'h3371A9C33EFF3CC43ACE2FB23E76F1E13F0000003F0000003F0000003F000000),
    .INIT_7C(256'h379550943EFFFB903EFFFFFA3795C9B63370E6543EFFFB903EFFFFFA35007DBA),
    .INIT_7D(256'h3E76F1E13EFF2FCE380E072533E528A53B433D233B356D3038033B823EFFFED4),
    .INIT_7E(256'h3F0000003F0000003F0000003F0000003EAA52D3380398833B34ECF83E9B308A),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI(dina),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(douta),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_85 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_86 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_87 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_8_blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [9:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_8_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "10" *) (* C_ADDRB_WIDTH = "10" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "1" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_8.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_8.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "1016" *) (* C_READ_DEPTH_B = "1016" *) (* C_READ_WIDTH_A = "32" *) 
(* C_READ_WIDTH_B = "32" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "1016" *) (* C_WRITE_DEPTH_B = "1016" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_8_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [9:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [9:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_gen_8_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module blk_mem_gen_8_blk_mem_gen_v8_4_1_synth
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [9:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_8_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
