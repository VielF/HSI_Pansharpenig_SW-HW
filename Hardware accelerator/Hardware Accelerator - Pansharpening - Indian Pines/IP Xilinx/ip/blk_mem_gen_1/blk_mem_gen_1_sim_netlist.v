// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sat Feb  9 15:04:07 2019
// Host        : felipe-NOT running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/felipe/Downloads/pansharpening_spp_bakup_linux/pansharpening_spp.srcs/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [11:0]addra;
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
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "5" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.156183 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2304" *) 
  (* C_READ_DEPTH_B = "2304" *) 
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
  (* C_WRITE_DEPTH_A = "2304" *) 
  (* C_WRITE_DEPTH_B = "2304" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
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

(* ORIG_REF_NAME = "bindec" *) 
module blk_mem_gen_1_bindec
   (ena_array,
    addra,
    ena);
  output [0:0]ena_array;
  input [2:0]addra;
  input ena;

  wire [2:0]addra;
  wire ena;
  wire [0:0]ena_array;

  LUT4 #(
    .INIT(16'h1000)) 
    ENOUT
       (.I0(addra[1]),
        .I1(addra[0]),
        .I2(addra[2]),
        .I3(ena),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_1_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra,
    dina,
    wea,
    ena);
  output [31:0]douta;
  input clka;
  input [11:0]addra;
  input [31:0]dina;
  input [0:0]wea;
  input ena;

  wire [11:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [4:4]ena_array;
  wire [8:0]ram_douta;
  wire ram_ena_n_0;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_10 ;
  wire \ramloop[1].ram.r_n_11 ;
  wire \ramloop[1].ram.r_n_12 ;
  wire \ramloop[1].ram.r_n_13 ;
  wire \ramloop[1].ram.r_n_14 ;
  wire \ramloop[1].ram.r_n_15 ;
  wire \ramloop[1].ram.r_n_16 ;
  wire \ramloop[1].ram.r_n_17 ;
  wire \ramloop[1].ram.r_n_18 ;
  wire \ramloop[1].ram.r_n_19 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_20 ;
  wire \ramloop[1].ram.r_n_21 ;
  wire \ramloop[1].ram.r_n_22 ;
  wire \ramloop[1].ram.r_n_23 ;
  wire \ramloop[1].ram.r_n_24 ;
  wire \ramloop[1].ram.r_n_25 ;
  wire \ramloop[1].ram.r_n_26 ;
  wire \ramloop[1].ram.r_n_27 ;
  wire \ramloop[1].ram.r_n_28 ;
  wire \ramloop[1].ram.r_n_29 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_30 ;
  wire \ramloop[1].ram.r_n_31 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_9 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire [0:0]wea;

  blk_mem_gen_1_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[11:9]),
        .ena(ena),
        .ena_array(ena_array));
  blk_mem_gen_1_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 (\ramloop[3].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 }),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .DOBDO({\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 ,\ramloop[1].ram.r_n_18 ,\ramloop[1].ram.r_n_19 ,\ramloop[1].ram.r_n_20 ,\ramloop[1].ram.r_n_21 ,\ramloop[1].ram.r_n_22 ,\ramloop[1].ram.r_n_23 ,\ramloop[1].ram.r_n_24 ,\ramloop[1].ram.r_n_25 ,\ramloop[1].ram.r_n_26 ,\ramloop[1].ram.r_n_27 ,\ramloop[1].ram.r_n_28 ,\ramloop[1].ram.r_n_29 ,\ramloop[1].ram.r_n_30 ,\ramloop[1].ram.r_n_31 }),
        .DOPADOP(\ramloop[2].ram.r_n_8 ),
        .addra(addra[11:9]),
        .clka(clka),
        .douta(douta),
        .ena(ena),
        .ram_douta(ram_douta));
  LUT2 #(
    .INIT(4'h4)) 
    ram_ena
       (.I0(addra[11]),
        .I1(ena),
        .O(ram_ena_n_0));
  blk_mem_gen_1_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra[10:0]),
        .clka(clka),
        .dina(dina[8:0]),
        .ena(ram_ena_n_0),
        .ram_douta(ram_douta),
        .wea(wea));
  blk_mem_gen_1_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .DOBDO({\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 ,\ramloop[1].ram.r_n_18 ,\ramloop[1].ram.r_n_19 ,\ramloop[1].ram.r_n_20 ,\ramloop[1].ram.r_n_21 ,\ramloop[1].ram.r_n_22 ,\ramloop[1].ram.r_n_23 ,\ramloop[1].ram.r_n_24 ,\ramloop[1].ram.r_n_25 ,\ramloop[1].ram.r_n_26 ,\ramloop[1].ram.r_n_27 ,\ramloop[1].ram.r_n_28 ,\ramloop[1].ram.r_n_29 ,\ramloop[1].ram.r_n_30 ,\ramloop[1].ram.r_n_31 }),
        .addra(addra[8:0]),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
  blk_mem_gen_1_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.DOPADOP(\ramloop[2].ram.r_n_8 ),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[17:9]),
        .\douta[16] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .ena(ram_ena_n_0),
        .wea(wea));
  blk_mem_gen_1_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra[10:0]),
        .clka(clka),
        .dina(dina[26:18]),
        .\douta[25] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\douta[26] (\ramloop[3].ram.r_n_8 ),
        .ena(ram_ena_n_0),
        .wea(wea));
  blk_mem_gen_1_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[10:0]),
        .clka(clka),
        .dina(dina[31:27]),
        .\douta[31] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 }),
        .ena(ram_ena_n_0),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module blk_mem_gen_1_blk_mem_gen_mux
   (douta,
    addra,
    ena,
    clka,
    DOADO,
    ram_douta,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    DOBDO,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 );
  output [31:0]douta;
  input [2:0]addra;
  input ena;
  input clka;
  input [15:0]DOADO;
  input [8:0]ram_douta;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input [15:0]DOBDO;
  input [0:0]DOPADOP;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  input [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 ;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  wire [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 ;
  wire [15:0]DOADO;
  wire [15:0]DOBDO;
  wire [0:0]DOPADOP;
  wire [2:0]addra;
  wire clka;
  wire [31:0]douta;
  wire ena;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[2]_i_1_n_0 ;
  wire [8:0]ram_douta;
  wire [2:0]sel_pipe;

  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[0]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[0]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(ram_douta[0]),
        .O(douta[0]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[10]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[10]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [1]),
        .O(douta[10]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[11]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[11]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [2]),
        .O(douta[11]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[12]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[12]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [3]),
        .O(douta[12]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[13]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[13]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [4]),
        .O(douta[13]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[14]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[14]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [5]),
        .O(douta[14]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[15]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[15]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [6]),
        .O(douta[15]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[16]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[0]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [7]),
        .O(douta[16]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[17]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[1]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(DOPADOP),
        .O(douta[17]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[18]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[2]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [0]),
        .O(douta[18]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[19]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[3]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [1]),
        .O(douta[19]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[1]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(ram_douta[1]),
        .O(douta[1]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[20]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[4]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [2]),
        .O(douta[20]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[21]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[5]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [3]),
        .O(douta[21]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[22]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[6]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [4]),
        .O(douta[22]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[23]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[7]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [5]),
        .O(douta[23]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[24]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[8]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [6]),
        .O(douta[24]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[25]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[9]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [7]),
        .O(douta[25]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[26]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[10]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ),
        .O(douta[26]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[27]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[11]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 [0]),
        .O(douta[27]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[28]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[12]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 [1]),
        .O(douta[28]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[29]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[13]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 [2]),
        .O(douta[29]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[2]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(ram_douta[2]),
        .O(douta[2]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[30]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[14]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 [3]),
        .O(douta[30]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[31]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOBDO[15]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 [4]),
        .O(douta[31]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[3]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[3]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(ram_douta[3]),
        .O(douta[3]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[4]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[4]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(ram_douta[4]),
        .O(douta[4]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[5]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[5]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(ram_douta[5]),
        .O(douta[5]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[6]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[6]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(ram_douta[6]),
        .O(douta[6]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[7]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[7]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(ram_douta[7]),
        .O(douta[7]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[8]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[8]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(ram_douta[8]),
        .O(douta[8]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[9]_INST_0 
       (.I0(sel_pipe[0]),
        .I1(DOADO[9]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [0]),
        .O(douta[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1 
       (.I0(addra[0]),
        .I1(ena),
        .I2(sel_pipe[0]),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1 
       (.I0(addra[1]),
        .I1(ena),
        .I2(sel_pipe[1]),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[2]_i_1 
       (.I0(addra[2]),
        .I1(ena),
        .I2(sel_pipe[2]),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[2]_i_1_n_0 ),
        .Q(sel_pipe[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_1_blk_mem_gen_prim_width
   (ram_douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [8:0]ram_douta;
  input clka;
  input ena;
  input [10:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire clka;
  wire [8:0]dina;
  wire ena;
  wire [8:0]ram_douta;
  wire [0:0]wea;

  blk_mem_gen_1_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena(ena),
        .ram_douta(ram_douta),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_1_blk_mem_gen_prim_width__parameterized0
   (DOADO,
    DOBDO,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [15:0]DOADO;
  output [15:0]DOBDO;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [15:0]DOADO;
  wire [15:0]DOBDO;
  wire [8:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_1_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.DOADO(DOADO),
        .DOBDO(DOBDO),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_1_blk_mem_gen_prim_width__parameterized1
   (\douta[16] ,
    DOPADOP,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [7:0]\douta[16] ;
  output [0:0]DOPADOP;
  input clka;
  input ena;
  input [10:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [0:0]DOPADOP;
  wire [10:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [7:0]\douta[16] ;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_1_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .\douta[16] (\douta[16] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_1_blk_mem_gen_prim_width__parameterized2
   (\douta[25] ,
    \douta[26] ,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [7:0]\douta[25] ;
  output [0:0]\douta[26] ;
  input clka;
  input ena;
  input [10:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [7:0]\douta[25] ;
  wire [0:0]\douta[26] ;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_1_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .\douta[25] (\douta[25] ),
        .\douta[26] (\douta[26] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_1_blk_mem_gen_prim_width__parameterized3
   (\douta[31] ,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [4:0]\douta[31] ;
  input clka;
  input ena;
  input [10:0]addra;
  input [4:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire clka;
  wire [4:0]dina;
  wire [4:0]\douta[31] ;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_1_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .\douta[31] (\douta[31] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_1_blk_mem_gen_prim_wrapper_init
   (ram_douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [8:0]ram_douta;
  input clka;
  input ena;
  input [10:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire clka;
  wire [8:0]dina;
  wire ena;
  wire [8:0]ram_douta;
  wire [0:0]wea;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'hCC0000FC030CCC00F3FCF0FF3FC0F3FCF0FF3FC00C0CFF3FCF0F0C0CFF3FCF0F),
    .INITP_01(256'hCF0CF0FFCF3030CF0FC0CF3030CF0FC03F3C3CCF0CF33F3C3CCF0CF300FC030C),
    .INITP_02(256'h3C30FC30C3F33C30FC30C3F3C03CC0003F00C03CC0003F000CFFCF0CF0FF0CFF),
    .INITP_03(256'h3303F3FF03F33303CFC3FCC030C3CFC3FCC030C3FC0C33C3F3CFFC0C33C3F3CF),
    .INITP_04(256'hCCF03F30CCC3FC00CCF3CCC3FC00CCF3003F3F0C330C003F3F0C330CF3FF03F3),
    .INITP_05(256'hF3FFF3CCF3CFF3FFF3CCF3CFF33000F3C0FFF33000F3C0FF0CFFCCF03F300CFF),
    .INITP_06(256'hCC0F0FC3C030CC0F3CC3FFC333FF3CC3FFC333FF3F3FCFFC00C03F3FCFFC00C0),
    .INITP_07(256'h0C00CF00FCC0030300C3FCC0030300C3F03CFCFF0000F03CFCFF00000FC3C030),
    .INIT_00(256'hB2B2CDCD54545D5D68681C1CF5F53030BFBF4B4BE3E340404D4D6E6E75757777),
    .INIT_01(256'hBFBF4B4BE3E340404D4D6E6E7575777727272828F6F678787E7EE7E7F0F01C1C),
    .INIT_02(256'h27272828F6F678787E7EE7E7F0F01C1CB2B2CDCD54545D5D68681C1CF5F53030),
    .INIT_03(256'hA1A14E4EDADAAFAFB2B2ABABCFCFD7D75656D2D2AFAF7E7E1B1B6D6D1A1A4949),
    .INIT_04(256'h5656D2D2AFAF7E7E1B1B6D6D1A1A49491515E9E9A7A72626F5F5D5D5CFCFA2A2),
    .INIT_05(256'h1515E9E9A7A72626F5F5D5D5CFCFA2A2A1A14E4EDADAAFAFB2B2ABABCFCFD7D7),
    .INIT_06(256'h2A2ADFDF8A8ABCBC4B4B737336360B0BA2A25D5D71715A5A6E6E3B3B1010ACAC),
    .INIT_07(256'hA2A25D5D71715A5A6E6E3B3B1010ACACCDCD373788889B9BDBDB424293934949),
    .INIT_08(256'hCDCD373788889B9BDBDB4242939349492A2ADFDF8A8ABCBC4B4B737336360B0B),
    .INIT_09(256'hE6E6FDFDBEBE4F4F262606061313D0D0FBFB282866668A8A7F7FC7C742425959),
    .INIT_0A(256'hFBFB282866668A8A7F7FC7C742425959FFFF9F9FEEEE3F3FAFAF7A7A7B7B7676),
    .INIT_0B(256'hFFFF9F9FEEEE3F3FAFAF7A7A7B7B7676E6E6FDFDBEBE4F4F262606061313D0D0),
    .INIT_0C(256'h7373B8B8D7D74949F6F68989D6D61414BCBCA3A3BDBDB1B14D4DE3E3E4E44747),
    .INIT_0D(256'hBCBCA3A3BDBDB1B14D4DE3E3E4E447478080535349493F3F9E9EBBBB6A6A7878),
    .INIT_0E(256'h8080535349493F3F9E9EBBBB6A6A78787373B8B8D7D74949F6F68989D6D61414),
    .INIT_0F(256'h212191911C1CE6E659598D8DDADA9C9C4E4E30300101D4D4060628288989ABAB),
    .INIT_10(256'h4E4E30300101D4D4060628288989ABABBEBE46460A0A87878E8ECDCDF4F40C0C),
    .INIT_11(256'hBEBE46460A0A87878E8ECDCDF4F40C0C212191911C1CE6E659598D8DDADA9C9C),
    .INIT_12(256'h2A2A8A8A44440D0DF8F83F3F3B3B323212122525EEEE1A1A9999A9A9B8B89A9A),
    .INIT_13(256'h12122525EEEE1A1A9999A9A9B8B89A9A5F5FE5E5CFCFDADA8F8F5E5E2D2DF2F2),
    .INIT_14(256'h5F5FE5E5CFCFDADA8F8F5E5E2D2DF2F22A2A8A8A44440D0DF8F83F3F3B3B3232),
    .INIT_15(256'hC4C477775656F0F0D7D7A7A7E9E938389A9AB2B2F3F341412E2E727221218484),
    .INIT_16(256'h9A9AB2B2F3F341412E2E72722121848496968888565660606D6D5050F5F5BEBE),
    .INIT_17(256'h96968888565660606D6D5050F5F5BEBEC4C477775656F0F0D7D7A7A7E9E93838),
    .INIT_18(256'h83832A2A5E5E8A8A0404F6F6C0C072721414ECECBFBFD0D0CACA0B0B3030D0D0),
    .INIT_19(256'h1414ECECBFBFD0D0CACA0B0B3030D0D0B4B4C2C2E2E2DADAD2D20303D9D95C5C),
    .INIT_1A(256'hB4B4C2C2E2E2DADAD2D20303D9D95C5C83832A2A5E5E8A8A0404F6F6C0C07272),
    .INIT_1B(256'hB6B63838ACAC2C2C2C2C1515E8E88282FBFB151527278A8A34343A3A8F8FADAD),
    .INIT_1C(256'hFBFB151527278A8A34343A3A8F8FADAD969601015F5FFAFA4C4C8989B9B96B6B),
    .INIT_1D(256'h969601015F5FFAFA4C4C8989B9B96B6BB6B63838ACAC2C2C2C2C1515E8E88282),
    .INIT_1E(256'h373705058A8ABABA2D2D39396C6C7D7DECEC9C9C3535919135356767D4D46F6F),
    .INIT_1F(256'hECEC9C9C3535919135356767D4D46F6F1D1D7E7E383898986060BEBE4444CECE),
    .INIT_20(256'h1D1D7E7E383898986060BEBE4444CECE373705058A8ABABA2D2D39396C6C7D7D),
    .INIT_21(256'hF3F3444442422A2A535355555B5B6565484895957979C3C33B3B02021414DDDD),
    .INIT_22(256'h484895957979C3C33B3B02021414DDDD010106062828E9E96464C3C35A5AF1F1),
    .INIT_23(256'h010106062828E9E96464C3C35A5AF1F1F3F3444442422A2A535355555B5B6565),
    .INIT_24(256'hEFEF6666F6F63C3CA6A60707D7D79C9CAAAA8585A7A7BDBD0101E4E48F8FFCFC),
    .INIT_25(256'hAAAA8585A7A7BDBD0101E4E48F8FFCFCCCCCE2E21414232389893B3BEBEBACAC),
    .INIT_26(256'hCCCCE2E21414232389893B3BEBEBACACEFEF6666F6F63C3CA6A60707D7D79C9C),
    .INIT_27(256'h15158C8CEAEAC7C72C2C71717C7C4444F9F9F4F4BEBE5C5CB2B2C5C59090E0E0),
    .INIT_28(256'hF9F9F4F4BEBE5C5CB2B2C5C59090E0E0D1D1CACA0404050524241A1A5252C9C9),
    .INIT_29(256'hD1D1CACA0404050524241A1A5252C9C915158C8CEAEAC7C72C2C71717C7C4444),
    .INIT_2A(256'h1B1B22224A4AE7E787874141C4C487873535EBEB4E4E1616151520206767E7E7),
    .INIT_2B(256'h3535EBEB4E4E1616151520206767E7E7ABAB8E8EDADA1C1C4F4FA2A283837171),
    .INIT_2C(256'hABAB8E8EDADA1C1C4F4FA2A2838371711B1B22224A4AE7E787874141C4C48787),
    .INIT_2D(256'h7272E2E206069F9F5656ADAD72726B6B7070ABAB0B0B3D3DC5C5EBEBC7C7D8D8),
    .INIT_2E(256'h7070ABAB0B0B3D3DC5C5EBEBC7C7D8D895953D3DBEBE3A3A5959EFEFB8B81C1C),
    .INIT_2F(256'h95953D3DBEBE3A3A5959EFEFB8B81C1C7272E2E206069F9F5656ADAD72726B6B),
    .INIT_30(256'hFCFCA8A8C4C4FCFC8A8AB1B17C7C29295A5A08088A8A7A7AA6A6454519195050),
    .INIT_31(256'h5A5A08088A8A7A7AA6A6454519195050F0F0DEDEB4B43E3E3C3C585832326161),
    .INIT_32(256'hF0F0DEDEB4B43E3E3C3C585832326161FCFCA8A8C4C4FCFC8A8AB1B17C7C2929),
    .INIT_33(256'h2F2F4343EAEA0C0C06066E6EB0B086860000ADAD5050A5A5F0F0070753532F2F),
    .INIT_34(256'h0000ADAD5050A5A5F0F0070753532F2F3D3D5F5FF9F930300909E9E9C9C96A6A),
    .INIT_35(256'h3D3D5F5FF9F930300909E9E9C9C96A6A2F2F4343EAEA0C0C06066E6EB0B08686),
    .INIT_36(256'hB8B8FEFE404058589A9A8C8C27271B1BEAEA6666A6A61D1DD2D21B1B4C4C9D9D),
    .INIT_37(256'hEAEA6666A6A61D1DD2D21B1B4C4C9D9D6C6C9A9AC7C773733E3EFFFFC1C14949),
    .INIT_38(256'h6C6C9A9AC7C773733E3EFFFFC1C14949B8B8FEFE404058589A9A8C8C27271B1B),
    .INIT_39(256'h35354C4CB3B30303E0E035357A7A262675756363B8B853536E6EAAAA5C5CB8B8),
    .INIT_3A(256'h75756363B8B853536E6EAAAA5C5CB8B82626474727276969BBBB5151B3B36363),
    .INIT_3B(256'h2626474727276969BBBB5151B3B3636335354C4CB3B30303E0E035357A7A2626),
    .INIT_3C(256'hB0B0DDDDA6A67878A4A4EFEF9595717130302A2AAAAAADADFBFBCCCC2222FFFF),
    .INIT_3D(256'h30302A2AAAAAADADFBFBCCCC2222FFFF11118D8D151583839B9B5F5F3C3C7A7A),
    .INIT_3E(256'h11118D8D151583839B9B5F5F3C3C7A7AB0B0DDDDA6A67878A4A4EFEF95957171),
    .INIT_3F(256'hFFFF45451919A9A959594F4FFFFF32329E9E6D6D3B3BB8B88E8EA3A3E9E96161),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],ram_douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],ram_douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_1_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOADO,
    DOBDO,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [15:0]DOADO;
  output [15:0]DOBDO;
  input clka;
  input [0:0]ena_array;
  input [8:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 ;
  wire [15:0]DOADO;
  wire [15:0]DOBDO;
  wire [8:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h4583E0254583E025457BBB07457BBB07458140B2458140B24585DA004585DA00),
    .INIT_01(256'h458994584589945845895844458958444588F96D4588F96D4586F0044586F004),
    .INIT_02(256'h4599A28E4599A28E459B60A3459B60A345961CE945961CE94596C6614596C661),
    .INIT_03(256'h458FF19E458FF19E45917C6D45917C6D4597653B4597653B45979BB845979BB8),
    .INIT_04(256'h45921A5945921A594593A84F4593A84F459670FF459670FF45923E3245923E32),
    .INIT_05(256'h45882EFF45882EFF458A8445458A8445458E4919458E4919458FE0A9458FE0A9),
    .INIT_06(256'h4583E0254583E025457BBB07457BBB07458140B2458140B24585DA004585DA00),
    .INIT_07(256'h458994584589945845895844458958444588F96D4588F96D4586F0044586F004),
    .INIT_08(256'h459C5098459C5098459A9AA5459A9AA54595C48F4595C48F45981B4E45981B4E),
    .INIT_09(256'h45953837459538374594724C4594724C459A838C459A838C459C314A459C314A),
    .INIT_0A(256'h4592F6C54592F6C545937171459371714597AFD14597AFD14597BBC84597BBC8),
    .INIT_0B(256'h458BE630458BE630458FB2BD458FB2BD4591E1A04591E1A045921C2345921C23),
    .INIT_0C(256'h4582AAAA4582AAAA4579F4914579F4914582141E4582141E4587A5F54587A5F5),
    .INIT_0D(256'h45878FEF45878FEF4587B8704587B87045875F8945875F894585E2F44585E2F4),
    .INIT_0E(256'h459C5098459C5098459A9AA5459A9AA54595C48F4595C48F45981B4E45981B4E),
    .INIT_0F(256'h45953837459538374594724C4594724C459A838C459A838C459C314A459C314A),
    .INIT_10(256'h4592F6C54592F6C545937171459371714597AFD14597AFD14597BBC84597BBC8),
    .INIT_11(256'h458BE630458BE630458FB2BD458FB2BD4591E1A04591E1A045921C2345921C23),
    .INIT_12(256'h4582AAAA4582AAAA4579F4914579F4914582141E4582141E4587A5F54587A5F5),
    .INIT_13(256'h45878FEF45878FEF4587B8704587B87045875F8945875F894585E2F44585E2F4),
    .INIT_14(256'h459B7E67459B7E6745983242459832424596294945962949459A4140459A4140),
    .INIT_15(256'h459832C7459832C74598FF3D4598FF3D459FE689459FE689459D0D6D459D0D6D),
    .INIT_16(256'h4596948F4596948F4594DFBB4594DFBB4597533D4597533D4599385245993852),
    .INIT_17(256'h458EF01F458EF01F45935E3145935E314597398E4597398E4595FFEE4595FFEE),
    .INIT_18(256'h458304C1458304C1457875D8457875D84582DFB94582DFB94589D5764589D576),
    .INIT_19(256'h45878045458780454587502E4587502E4586AFAA4586AFAA4586671145866711),
    .INIT_1A(256'h459B7E67459B7E6745983242459832424596294945962949459A4140459A4140),
    .INIT_1B(256'h459832C7459832C74598FF3D4598FF3D459FE689459FE689459D0D6D459D0D6D),
    .INIT_1C(256'h4596948F4596948F4594DFBB4594DFBB4597533D4597533D4599385245993852),
    .INIT_1D(256'h458EF01F458EF01F45935E3145935E314597398E4597398E4595FFEE4595FFEE),
    .INIT_1E(256'h458304C1458304C1457875D8457875D84582DFB94582DFB94589D5764589D576),
    .INIT_1F(256'h45878045458780454587502E4587502E4586AFAA4586AFAA4586671145866711),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addra,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI(dina[15:0]),
        .DIBDI(dina[31:16]),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(DOBDO),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35 }),
        .ENARDEN(ena_array),
        .ENBWREN(ena_array),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,wea,wea}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_1_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[16] ,
    DOPADOP,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [7:0]\douta[16] ;
  output [0:0]DOPADOP;
  input clka;
  input ena;
  input [10:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [0:0]DOPADOP;
  wire [10:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [7:0]\douta[16] ;
  wire ena;
  wire [0:0]wea;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0F03FFCF0FF30F030F03C00CF0CF0F03C00CF0CF0000C0C3CF3F0000C0C3CF3F),
    .INITP_01(256'hF0C3FF3F3F33F30FC00C3F33F30FC00C303F3C030C00303F3C030C00FFCF0FF3),
    .INITP_02(256'h0CC33C00F0FC0CC33C00F0FCCFF00C000030CFF00C000030FC00F0C3FF3FFC00),
    .INITP_03(256'hC30F3000CCF3C30FC33FCF333FCFC33FCF333FCF333CCCFFCCF0333CCCFFCCF0),
    .INITP_04(256'hFFF0C0FFFCF30FFC000FFCF30FFC000FF0F0FF3F3300F0F0FF3F33003000CCF3),
    .INITP_05(256'h3CF3FC3333303CF3FC333330CCF0FC03F3FFCCF0FC03F3FF3303FFF0C0FF3303),
    .INITP_06(256'h3CCC00F03CFF3CCCFCCF3F030CFCFCCF3F030CFCF0CCFFF00F03F0CCFFF00F03),
    .INITP_07(256'h3FFFCF3FC3CCCF30300CC3CCCF30300C033303C300F0033303C300F000F03CFF),
    .INIT_00(256'h9B9B85855B5B6767BEBE2E2EECEC89890303BCBC5D5D7B7B6969FAFAB5B52B2B),
    .INIT_01(256'h0303BCBC5D5D7B7B6969FAFAB5B52B2B20201D1D8585262619192D2D0D0D5050),
    .INIT_02(256'h20201D1D8585262619192D2D0D0D50509B9B85855B5B6767BEBE2E2EECEC8989),
    .INIT_03(256'h0D0DE4E4C4C4252553534D4DF5F51313E5E5BABAEEEE262640408C8C0E0E4343),
    .INIT_04(256'hE5E5BABAEEEE262640408C8C0E0E4343B9B9676757576767A4A4CFCF0E0ED6D6),
    .INIT_05(256'hB9B9676757576767A4A4CFCF0E0ED6D60D0DE4E4C4C4252553534D4DF5F51313),
    .INIT_06(256'hF5F54A4A8B8BC7C73939737312124D4D3333DBDB111101012424DDDD22228080),
    .INIT_07(256'h3333DBDB111101012424DDDD222280801B1BE2E29696DDDD49491E1EA9A92020),
    .INIT_08(256'h1B1BE2E29696DDDD49491E1EA9A92020F5F54A4A8B8BC7C73939737312124D4D),
    .INIT_09(256'hBDBDD7D7B4B43B3BB9B924242F2F62628C8C2828DCDC7E7E2929F8F87F7F3F3F),
    .INIT_0A(256'h8C8C2828DCDC7E7E2929F8F87F7F3F3F5252E7E79191B1B177775C5CB9B99999),
    .INIT_0B(256'h5252E7E79191B1B177775C5CB9B99999BDBDD7D7B4B43B3BB9B924242F2F6262),
    .INIT_0C(256'hA4A4F4F473731D1D4C4C4646E4E464645454C5C59D9D4F4F8E8EC6C680808989),
    .INIT_0D(256'h5454C5C59D9D4F4F8E8EC6C680808989D4D469696767A0A0E0E0AEAEE0E0CACA),
    .INIT_0E(256'hD4D469696767A0A0E0E0AEAEE0E0CACAA4A4F4F473731D1D4C4C4646E4E46464),
    .INIT_0F(256'h6666C8C83D3DE0E0DFDFA7A76060BEBE4242B4B44A4AF3F378782020D1D11C1C),
    .INIT_10(256'h4242B4B44A4AF3F378782020D1D11C1CE8E863638787BFBFF3F3717162625C5C),
    .INIT_11(256'hE8E863638787BFBFF3F3717162625C5C6666C8C83D3DE0E0DFDFA7A76060BEBE),
    .INIT_12(256'h020260603333CACAFBFB9A9AC5C582829D9D797961616D6DF6F67878A8A8AFAF),
    .INIT_13(256'h9D9D797961616D6DF6F67878A8A8AFAFE9E9E6E66666BABAB4B41717D2D27D7D),
    .INIT_14(256'hE9E9E6E66666BABAB4B41717D2D27D7D020260603333CACAFBFB9A9AC5C58282),
    .INIT_15(256'h76768A8ADEDE8383A0A0FBFBE7E75E5E42421414E5E5A7A78C8C5959ACAC0D0D),
    .INIT_16(256'h42421414E5E5A7A78C8C5959ACAC0D0DF3F396960909E9E970707979FBFB1818),
    .INIT_17(256'hF3F396960909E9E970707979FBFB181876768A8ADEDE8383A0A0FBFBE7E75E5E),
    .INIT_18(256'h7D7D79791212CCCC98989D9D131365657E7ECDCD5656333308080000CACAF7F7),
    .INIT_19(256'h7E7ECDCD5656333308080000CACAF7F72E2E6161D9D9AFAFB3B3A4A420201F1F),
    .INIT_1A(256'h2E2E6161D9D9AFAFB3B3A4A420201F1F7D7D79791212CCCC98989D9D13136565),
    .INIT_1B(256'h0A0A0000F4F4E7E77F7FA1A135355B5B6161B0B01919323258584242B4B47171),
    .INIT_1C(256'h6161B0B01919323258584242B4B47171ABAB9D9DEFEF98985D5D999940405353),
    .INIT_1D(256'hABAB9D9DEFEF98985D5D9999404053530A0A0000F4F4E7E77F7FA1A135355B5B),
    .INIT_1E(256'hB7B7B4B44A4A77771A1AECECCECE8A8A1717F1F1DFDF01014A4A1616D1D13E3E),
    .INIT_1F(256'h1717F1F1DFDF01014A4A1616D1D13E3E64640E0E8D8D6868434393931D1D8484),
    .INIT_20(256'h64640E0E8D8D6868434393931D1D8484B7B7B4B44A4A77771A1AECECCECE8A8A),
    .INIT_21(256'h2525404015154B4B5B5B1717AAAA28283D3D5151D7D75A5AB5B53A3A7171DBDB),
    .INIT_22(256'h3D3D5151D7D75A5AB5B53A3A7171DBDB03038E8E4848C9C94A4AB6B67A7AC4C4),
    .INIT_23(256'h03038E8E4848C9C94A4AB6B67A7AC4C42525404015154B4B5B5B1717AAAA2828),
    .INIT_24(256'hAFAFD0D041411414C9C930300808A9A9989839394C4CD0D0D7D75C5C3A3A1818),
    .INIT_25(256'h989839394C4CD0D0D7D75C5C3A3A181816167676B3B31A1A4E4EFBFB4F4F8989),
    .INIT_26(256'h16167676B3B31A1A4E4EFBFB4F4F8989AFAFD0D041411414C9C930300808A9A9),
    .INIT_27(256'hD6D66C6CAEAECDCD8D8D7D7D191964640808ABAB3C3CAAAADFDFEEEE19199393),
    .INIT_28(256'h0808ABAB3C3CAAAADFDFEEEE191993932E2EFEFE878750509F9FC1C1F1F10000),
    .INIT_29(256'h2E2EFEFE878750509F9FC1C1F1F10000D6D66C6CAEAECDCD8D8D7D7D19196464),
    .INIT_2A(256'h6C6C0A0A7F7FE2E2DEDE2828090910109898CFCF222298983434F6F6F6F6AAAA),
    .INIT_2B(256'h9898CFCF222298983434F6F6F6F6AAAAF5F52C2C43437878C5C5D5D5D5D5CBCB),
    .INIT_2C(256'hF5F52C2C43437878C5C5D5D5D5D5CBCB6C6C0A0A7F7FE2E2DEDE282809091010),
    .INIT_2D(256'h3E3E2E2EEAEAFFFFD7D709094B4BB2B2A9A91D1D9393E1E1AFAF8484C2C24040),
    .INIT_2E(256'hA9A91D1D9393E1E1AFAF8484C2C24040B0B0878799998383E5E5D6D6D4D4D6D6),
    .INIT_2F(256'hB0B0878799998383E5E5D6D6D4D4D6D63E3E2E2EEAEAFFFFD7D709094B4BB2B2),
    .INIT_30(256'hC9C98181E1E18B8BB5B52C2C474710109191B7B792920202CFCFDFDF87874040),
    .INIT_31(256'h9191B7B792920202CFCFDFDF87874040A5A5DCDCA6A6F5F5848414143B3B9999),
    .INIT_32(256'hA5A5DCDCA6A6F5F5848414143B3B9999C9C98181E1E18B8BB5B52C2C47471010),
    .INIT_33(256'h1C1C3737AEAE2D2D68688787F4F4A8A85F5FD3D3D5D589894242EDEDB7B76969),
    .INIT_34(256'h5F5FD3D3D5D589894242EDEDB7B769694D4D02028383CDCD6D6DC0C07474B4B4),
    .INIT_35(256'h4D4D02028383CDCD6D6DC0C07474B4B41C1C3737AEAE2D2D68688787F4F4A8A8),
    .INIT_36(256'h6969CACACACA33330A0ABBBB4545DCDC9F9F16164E4EA2A2A0A0666665652727),
    .INIT_37(256'h9F9F16164E4EA2A2A0A0666665652727747429294B4B88883232C6C6F9F9EDED),
    .INIT_38(256'h747429294B4B88883232C6C6F9F9EDED6969CACACACA33330A0ABBBB4545DCDC),
    .INIT_39(256'h09099B9BD5D5C6C6A2A26C6C29290505E0E08383C9C97E7E2D2D8C8C56560101),
    .INIT_3A(256'hE0E08383C9C97E7E2D2D8C8C565601016B6B4545777766666D6D8D8DBCBC3434),
    .INIT_3B(256'h6B6B4545777766666D6D8D8DBCBC343409099B9BD5D5C6C6A2A26C6C29290505),
    .INIT_3C(256'h8B8B5F5FA0A071717E7EAFAF1313BBBB05058B8BEFEFA8A8E4E4484841416C6C),
    .INIT_3D(256'h05058B8BEFEFA8A8E4E4484841416C6C6060D4D469695C5C0000F4F4A5A59090),
    .INIT_3E(256'h6060D4D469695C5C0000F4F4A5A590908B8B5F5FA0A071717E7EAFAF1313BBBB),
    .INIT_3F(256'h171742422424F0F00D0DD4D438381F1FF8F8BEBEB2B2CDCDD1D1B0B00E0E6363),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],\douta[16] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_1_blk_mem_gen_prim_wrapper_init__parameterized2
   (\douta[25] ,
    \douta[26] ,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [7:0]\douta[25] ;
  output [0:0]\douta[26] ;
  input clka;
  input ena;
  input [10:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [7:0]\douta[25] ;
  wire [0:0]\douta[26] ;
  wire ena;
  wire [0:0]wea;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'h5F5F62626565666667676B6B6B6B676764645C5C565656565959585858585A5A),
    .INIT_01(256'h64645C5C565656565959585858585A5A66666565636362626363636360605E5E),
    .INIT_02(256'h66666565636362626363636360605E5E5F5F62626565666667676B6B6B6B6767),
    .INIT_03(256'h5E5E6161646466666A6A6E6E6D6D6A6A65655C5C565657575959595959595A5A),
    .INIT_04(256'h65655C5C565657575959595959595A5A64646464626260606262636361615E5E),
    .INIT_05(256'h64646464626260606262636361615E5E5E5E6161646466666A6A6E6E6D6D6A6A),
    .INIT_06(256'h606062626464656569696D6D6F6F6C6C67675D5D56565757595959595A5A5959),
    .INIT_07(256'h67675D5D56565757595959595A5A595963636464636360606262656564646262),
    .INIT_08(256'h63636464636360606262656564646262606062626464656569696D6D6F6F6C6C),
    .INIT_09(256'h636364646565656566666A6A6D6D6C6C67675E5E565658585A5A5A5A5B5B5B5B),
    .INIT_0A(256'h67675E5E565658585A5A5A5A5B5B5B5B62626262626260606161646467676565),
    .INIT_0B(256'h62626262626260606161646467676565636364646565656566666A6A6D6D6C6C),
    .INIT_0C(256'h6262636364646363646467676969696965655E5E575758585A5A5B5B5C5C5C5C),
    .INIT_0D(256'h65655E5E575758585A5A5B5B5C5C5C5C5C5C5B5B5B5B5B5B5D5D626267676464),
    .INIT_0E(256'h5C5C5B5B5B5B5B5B5D5D62626767646462626363646463636464676769696969),
    .INIT_0F(256'h6060606062626363656567676767666664645D5D575757575B5B5C5C5C5C5C5C),
    .INIT_10(256'h64645D5D575757575B5B5C5C5C5C5C5C58585858595959595A5A626267676464),
    .INIT_11(256'h58585858595959595A5A62626767646460606060626263636565676767676666),
    .INIT_12(256'h61616060626266666A6A6B6B6969686867676060595959595C5C5E5E60606161),
    .INIT_13(256'h67676060595959595C5C5E5E6060616159595959585857575959626267676565),
    .INIT_14(256'h5959595958585757595962626767656561616060626266666A6A6B6B69696868),
    .INIT_15(256'h62626060626266666A6A6B6B6A6A6B6B696962625F5F60606161626262626363),
    .INIT_16(256'h696962625F5F606061616262626263635B5B5A5A585857575959626266666565),
    .INIT_17(256'h5B5B5A5A58585757595962626666656562626060626266666A6A6B6B6A6A6B6B),
    .INIT_18(256'h6060606061616363666667676666676766666464636363636262616160605F5F),
    .INIT_19(256'h66666464636363636262616160605F5F5D5D5959585857575A5A616164646363),
    .INIT_1A(256'h5D5D5959585857575A5A61616464636360606060616163636666676766666767),
    .INIT_1B(256'h6060616161616262646464646464636363636262626261615E5E5B5B58585757),
    .INIT_1C(256'h63636262626261615E5E5B5B585857575A5A585858585A5A6060636363636161),
    .INIT_1D(256'h5A5A585858585A5A606063636363616160606161616162626464646464646363),
    .INIT_1E(256'h6262636363636363626261616161606060606060616161615B5B575756565757),
    .INIT_1F(256'h60606060616161615B5B575756565757595959595E5E63636767686865656363),
    .INIT_20(256'h595959595E5E6363676768686565636362626363636363636262616161616060),
    .INIT_21(256'h63636262616160606060606060605F5F5F5F5F5F616162625C5C575758585A5A),
    .INIT_22(256'h5F5F5F5F616162625C5C575758585A5A5C5C5F5F646467676868686866666464),
    .INIT_23(256'h5C5C5F5F64646767686868686666646463636262616160606060606060605F5F),
    .INIT_24(256'h61615F5F5C5C5D5D60606262626260605E5E6060626263635D5D585859595D5D),
    .INIT_25(256'h5E5E6060626263635D5D585859595D5D63636464656565656464646463636161),
    .INIT_26(256'h6363646465656565646464646363616161615F5F5C5C5D5D6060626262626060),
    .INIT_27(256'h5D5D5A5A58585A5A5F5F606060605E5E5E5E6161636363635F5F5C5C5D5D6060),
    .INIT_28(256'h5E5E6161636363635F5F5C5C5D5D60606A6A686866666161606060605F5F5E5E),
    .INIT_29(256'h6A6A686866666161606060605F5F5E5E5D5D5A5A58585A5A5F5F606060605E5E),
    .INIT_2A(256'h575757575757585859595A5A5A5A5A5A5B5B5F5F616161616262626261616161),
    .INIT_2B(256'h5B5B5F5F6161616162626262616161616E6E6B6B656560605C5C5A5A59595858),
    .INIT_2C(256'h6E6E6B6B656560605C5C5A5A59595858575757575757585859595A5A5A5A5A5A),
    .INIT_2D(256'h565656565656575757575858595959595A5A5D5D616163636565646463636464),
    .INIT_2E(256'h5A5A5D5D6161636365656464636364646666636360605B5B5858575757575656),
    .INIT_2F(256'h6666636360605B5B585857575757565656565656565657575757585859595959),
    .INIT_30(256'h5656565656565656565658585A5A5B5B5B5B5E5E626265656565646464646666),
    .INIT_31(256'h5B5B5E5E6262656565656464646466666262626261615B5B5858585857575757),
    .INIT_32(256'h6262626261615B5B58585858575757575656565656565656565658585A5A5B5B),
    .INIT_33(256'h5757565656565656575759595B5B5B5B5B5B5E5E626265656565646464646767),
    .INIT_34(256'h5B5B5E5E62626565656564646464676763636363626260605B5B585857575757),
    .INIT_35(256'h63636363626260605B5B5858575757575757565656565656575759595B5B5B5B),
    .INIT_36(256'h5757565656565757575758585A5A5A5A5A5A5E5E626264646464646464646767),
    .INIT_37(256'h5A5A5E5E62626464646464646464676764646464646463635F5F585857575757),
    .INIT_38(256'h64646464646463635F5F5858575757575757565656565757575758585A5A5A5A),
    .INIT_39(256'h5B5B5B5B5B5B5A5A5A5A5C5C5D5D5A5A5A5A6060636364646464636364646666),
    .INIT_3A(256'h5A5A6060636364646464636364646666646464646464636361615B5B5A5A5A5A),
    .INIT_3B(256'h646464646464636361615B5B5A5A5A5A5B5B5B5B5B5B5A5A5A5A5C5C5D5D5A5A),
    .INIT_3C(256'h6060616161616161626262626363606060606262656565656565656564646565),
    .INIT_3D(256'h60606262656565656565656564646565636363636363626261615E5E5E5E6060),
    .INIT_3E(256'h636363636363626261615E5E5E5E606060606161616161616262626263636060),
    .INIT_3F(256'h6262626263636363646464646565646463636464656565656666666665656565),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],\douta[25] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],\douta[26] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_1_blk_mem_gen_prim_wrapper_init__parameterized3
   (\douta[31] ,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [4:0]\douta[31] ;
  input clka;
  input ena;
  input [10:0]addra;
  input [4:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_10 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_8 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_9 ;
  wire [10:0]addra;
  wire clka;
  wire [4:0]dina;
  wire [4:0]\douta[31] ;
  wire ena;
  wire [0:0]wea;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_01(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_02(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_03(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_04(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_05(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_06(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_07(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_08(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_09(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_0A(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_0B(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_0C(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_0D(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_0E(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_0F(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_10(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_11(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_12(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_13(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_14(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_15(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_16(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_17(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_18(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_19(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_1A(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_1B(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_1C(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_1D(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_1E(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_1F(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_20(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_21(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_22(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_23(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_24(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_25(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_26(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_27(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_28(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_29(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_2A(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_2B(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_2C(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_2D(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_2E(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_2F(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_30(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_31(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_32(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_33(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_34(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_35(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_36(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_37(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_38(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_39(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_3A(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_3B(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_3C(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_3D(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_3E(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_3F(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_8 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_9 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_10 ,\douta[31] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_1_blk_mem_gen_top
   (douta,
    clka,
    addra,
    dina,
    wea,
    ena);
  output [31:0]douta;
  input clka;
  input [11:0]addra;
  input [31:0]dina;
  input [0:0]wea;
  input ena;

  wire [11:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_1_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "12" *) (* C_ADDRB_WIDTH = "12" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "5" *) 
(* C_COUNT_36K_BRAM = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.156183 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "2304" *) (* C_READ_DEPTH_B = "2304" *) (* C_READ_WIDTH_A = "32" *) 
(* C_READ_WIDTH_B = "32" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "2304" *) (* C_WRITE_DEPTH_B = "2304" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_1_blk_mem_gen_v8_4_1
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
  input [11:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [11:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [11:0]rdaddrecc;
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
  output [11:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [11:0]addra;
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
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
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
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
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
  blk_mem_gen_1_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module blk_mem_gen_1_blk_mem_gen_v8_4_1_synth
   (douta,
    clka,
    addra,
    dina,
    wea,
    ena);
  output [31:0]douta;
  input clka;
  input [11:0]addra;
  input [31:0]dina;
  input [0:0]wea;
  input ena;

  wire [11:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_1_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
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
