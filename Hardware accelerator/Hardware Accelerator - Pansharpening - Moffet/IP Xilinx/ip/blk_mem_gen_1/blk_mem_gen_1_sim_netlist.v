// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Jan 14 23:02:55 2019
// Host        : felipe-NOT running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/felipe/Downloads/pansharpening_spp_bakup_linux_moffet/pansharpening_spp.srcs/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
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
    .INITP_00(256'h00303F33C3300030CC3C30FC3333CC3C30FC333333303CCF3CCF33303CCF3CCF),
    .INITP_01(256'hF0000CCF0003F330300F0003F330300F0000FFFFC0330000FFFFC0333F33C330),
    .INITP_02(256'hCCFC03FC0CF0CCFC03FC0CF0C3FC30330C3FC3FC30330C3F3CCCF0000CCF3CCC),
    .INITP_03(256'h33FC33FCCC0333FCCF00303C0F33CF00303C0F33CC0F0C3FCCFFCC0F0C3FCCFF),
    .INITP_04(256'hF3C333030CF3CC033F030CF3CC033F03FF03F3F3CF00FF03F3F3CF0033FCCC03),
    .INITP_05(256'hC0FFF00F300FC0FFF00F300FF333CFCCFF3FF333CFCCFF3FC30CF3C33303C30C),
    .INITP_06(256'h0C3CC03F33CC0C3C03C03C3C3CC003C03C3C3CC0CF30F3C0F3CFCF30F3C0F3CF),
    .INITP_07(256'hFCCF0FFFFF3C00CF3FC0FF3C00CF3FC0FCCC33CF3300FCCC33CF3300C03F33CC),
    .INIT_00(256'hC5C53C3C4A4A6F6F2E2E9E9E60603F3F6060FDFD3535BCBC4A4AB0B0C9C9B9B9),
    .INIT_01(256'h6060FDFD3535BCBC4A4AB0B0C9C9B9B912126D6D080898984343727234349D9D),
    .INIT_02(256'h12126D6D080898984343727234349D9DC5C53C3C4A4A6F6F2E2E9E9E60603F3F),
    .INIT_03(256'h89896B6B4141B0B07171A1A12626C0C015151A1A13132F2FD6D6F0F050508585),
    .INIT_04(256'h15151A1A13132F2FD6D6F0F0505085857E7E6060DCDCAAAAFAFA14144D4DC5C5),
    .INIT_05(256'h7E7E6060DCDCAAAAFAFA14144D4DC5C589896B6B4141B0B07171A1A12626C0C0),
    .INIT_06(256'h3737A5A596962020F8F82E2E3C3C8E8EF2F25F5FA8A8D5D5DDDDA5A54C4C3939),
    .INIT_07(256'hF2F25F5FA8A8D5D5DDDDA5A54C4C39390E0E8F8FD6D64C4C7E7E585854547272),
    .INIT_08(256'h0E0E8F8FD6D64C4C7E7E5858545472723737A5A596962020F8F82E2E3C3C8E8E),
    .INIT_09(256'h82827E7E3131EAEAE7E7C9C9D3D35D5D13134F4FB8B89B9BD3D31D1D2F2F3131),
    .INIT_0A(256'h13134F4FB8B89B9BD3D31D1D2F2F31311616AAAABFBF2C2C1919ADADE0E02222),
    .INIT_0B(256'h1616AAAABFBF2C2C1919ADADE0E0222282827E7E3131EAEAE7E7C9C9D3D35D5D),
    .INIT_0C(256'hBABA53530303D9D97B7B3333BBBBC9C9E4E4E1E1FBFB8484DBDB1414E8E81111),
    .INIT_0D(256'hE4E4E1E1FBFB8484DBDB1414E8E81111575721216E6EF8F83B3BDBDB65652B2B),
    .INIT_0E(256'h575721216E6EF8F83B3BDBDB65652B2BBABA53530303D9D97B7B3333BBBBC9C9),
    .INIT_0F(256'h8181AEAEF7F735352525E1E17171B5B51B1B3A3A7272ECECACACC7C7C0C0BCBC),
    .INIT_10(256'h1B1B3A3A7272ECECACACC7C7C0C0BCBC1B1B616114142B2B39396060CCCCC3C3),
    .INIT_11(256'h1B1B616114142B2B39396060CCCCC3C38181AEAEF7F735352525E1E17171B5B5),
    .INIT_12(256'h1A1A242497973D3DDADA07077070BDBDE2E2E9E98686CACA24242C2CA3A34F4F),
    .INIT_13(256'hE2E2E9E98686CACA24242C2CA3A34F4F6565929270709E9E7676030343438383),
    .INIT_14(256'h6565929270709E9E76760303434383831A1A242497973D3DDADA07077070BDBD),
    .INIT_15(256'hAFAFD9D9B2B293930707F5F59E9E5F5F96963B3B3F3FA8A8A3A3E9E96F6F7474),
    .INIT_16(256'h96963B3B3F3FA8A8A3A3E9E96F6F74741818D7D7CBCB4848C1C15C5C8484C3C3),
    .INIT_17(256'h1818D7D7CBCB4848C1C15C5C8484C3C3AFAFD9D9B2B293930707F5F59E9E5F5F),
    .INIT_18(256'hCDCD8D8D7A7A65651616BCBC0303A0A091918C8C4D4D66666D6DA6A68E8E9D9D),
    .INIT_19(256'h91918C8C4D4D66666D6DA6A68E8E9D9D565617173A3A38383333B6B63333B0B0),
    .INIT_1A(256'h565617173A3A38383333B6B63333B0B0CDCD8D8D7A7A65651616BCBC0303A0A0),
    .INIT_1B(256'h040472729797686808087C7C8484C0C0B0B0F4F420203E3E050583830707BDBD),
    .INIT_1C(256'hB0B0F4F420203E3E050583830707BDBDD3D3717158586464B9B95F5F43430303),
    .INIT_1D(256'hD3D3717158586464B9B95F5F43430303040472729797686808087C7C8484C0C0),
    .INIT_1E(256'hF5F5494952529D9D5C5C5656ABAB3232A7A7E1E1D2D2F8F841417272A3A31010),
    .INIT_1F(256'hA7A7E1E1D2D2F8F841417272A3A31010656564647D7D10104A4A91918A8AAFAF),
    .INIT_20(256'h656564647D7D10104A4A91918A8AAFAFF5F5494952529D9D5C5C5656ABAB3232),
    .INIT_21(256'h5F5F73731313ADAD1A1A81811A1ADEDE1414CACA1D1D8585D1D15A5AF9F90F0F),
    .INIT_22(256'h1414CACA1D1D8585D1D15A5AF9F90F0FB5B58F8F9595B7B738380D0DDADA7A7A),
    .INIT_23(256'hB5B58F8F9595B7B738380D0DDADA7A7A5F5F73731313ADAD1A1A81811A1ADEDE),
    .INIT_24(256'h90904A4ADBDB3030C7C7E8E88686FFFFEDEDB0B0FDFD6F6FC0C0BEBE34341B1B),
    .INIT_25(256'hEDEDB0B0FDFD6F6FC0C0BEBE34341B1B0D0D676737378282A8A87D7D91919696),
    .INIT_26(256'h0D0D676737378282A8A87D7D9191969690904A4ADBDB3030C7C7E8E88686FFFF),
    .INIT_27(256'h6A6ABFBF9797FEFE6767F1F12A2AD2D28E8E515192920F0F11110000BFBFB9B9),
    .INIT_28(256'h8E8E515192920F0F11110000BFBFB9B9EFEF19195858B0B05B5B0303BFBF8D8D),
    .INIT_29(256'hEFEF19195858B0B05B5B0303BFBF8D8D6A6ABFBF9797FEFE6767F1F12A2AD2D2),
    .INIT_2A(256'h6464808006062A2A1313DEDE9A9A4F4FFFFF01013F3F7777BEBE8D8D8D8D7B7B),
    .INIT_2B(256'hFFFF01013F3F7777BEBE8D8D8D8D7B7B5C5C1B1B15151212191915157676CECE),
    .INIT_2C(256'h5C5C1B1B15151212191915157676CECE6464808006062A2A1313DEDE9A9A4F4F),
    .INIT_2D(256'h8D8D9797CECED7D7D0D0000049498080AFAF8D8D1A1A33334242F8F8DEDE0303),
    .INIT_2E(256'hAFAF8D8D1A1A33334242F8F8DEDE0303B4B4DCDCD4D41F1F4242606056568D8D),
    .INIT_2F(256'hB4B4DCDCD4D41F1F4242606056568D8D8D8D9797CECED7D7D0D0000049498080),
    .INIT_30(256'h6D6DA4A4A8A86E6E7777A6A6CECE75752626595990908686383800009797ADAD),
    .INIT_31(256'h2626595990908686383800009797ADADEDED9B9BD6D6FCFC4949646469690505),
    .INIT_32(256'hEDED9B9BD6D6FCFC49496464696905056D6DA4A4A8A86E6E7777A6A6CECE7575),
    .INIT_33(256'h0B0B6262CFCF7272E5E5CECE0F0F3535C1C1CACA47471B1B88885A5A2D2DF0F0),
    .INIT_34(256'hC1C1CACA47471B1B88885A5A2D2DF0F047471E1E7B7BEEEEB3B3E3E30101BABA),
    .INIT_35(256'h47471E1E7B7BEEEEB3B3E3E30101BABA0B0B6262CFCF7272E5E5CECE0F0F3535),
    .INIT_36(256'hDCDCE9E9828298986E6E8787A5A5A1A13C3C515107079999F0F07E7ED4D43232),
    .INIT_37(256'h3C3C515107079999F0F07E7ED4D43232A2A28B8B7E7E9595585893936D6DB0B0),
    .INIT_38(256'hA2A28B8B7E7E9595585893936D6DB0B0DCDCE9E9828298986E6E8787A5A5A1A1),
    .INIT_39(256'hB8B8F4F4BABA8989131303034A4AF4F49E9E4D4D535349493A3AF8F8DADAF4F4),
    .INIT_3A(256'h9E9E4D4D535349493A3AF8F8DADAF4F4A6A60E0E595958585E5EFFFF89897F7F),
    .INIT_3B(256'hA6A60E0E595958585E5EFFFF89897F7FB8B8F4F4BABA8989131303034A4AF4F4),
    .INIT_3C(256'h3535B4B4565685851313C9C983837A7A5757AAAA8F8F77778F8F59594E4E9B9B),
    .INIT_3D(256'h5757AAAA8F8F77778F8F59594E4E9B9BA9A9AEAE86862E2E0A0A7979A1A10404),
    .INIT_3E(256'hA9A9AEAE86862E2E0A0A7979A1A104043535B4B4565685851313C9C983837A7A),
    .INIT_3F(256'hF4F46060AAAAA9A92020DDDDFFFF4E4EA7A7C4C4A2A2DEDE41417A7A18182323),
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
    .INIT_00(256'h440FFB6B440FFB6B4415987144159871442FAAD5442FAAD54452471144524711),
    .INIT_01(256'h43EB994243EB994243F4CA6743F4CA674411133F4411133F4408029744080297),
    .INIT_02(256'h440EC341440EC3414410B77A4410B77A442D1518442D15184436612344366123),
    .INIT_03(256'h44853EA744853EA7443982C4443982C4441CF1A2441CF1A2442171DE442171DE),
    .INIT_04(256'h449889204498892044A172DD44A172DD4498A7FF4498A7FF448FC74E448FC74E),
    .INIT_05(256'h442FABF4442FABF4443C5B60443C5B6044843DAA44843DAA448482A9448482A9),
    .INIT_06(256'h440FFB6B440FFB6B4415987144159871442FAAD5442FAAD54452471144524711),
    .INIT_07(256'h43EB994243EB994243F4CA6743F4CA674411133F4411133F4408029744080297),
    .INIT_08(256'h43F0CCA643F0CCA643F3C30043F3C300441133FA441133FA441D2A5C441D2A5C),
    .INIT_09(256'h448257A4448257A44462ED1F4462ED1F4432CEE64432CEE644140B3444140B34),
    .INIT_0A(256'h448CE339448CE339447B3CCE447B3CCE446E6D1F446E6D1F446F68DF446F68DF),
    .INIT_0B(256'h444C43F0444C43F044421399444213994485E61C4485E61C448CBAEA448CBAEA),
    .INIT_0C(256'h44136393441363934416677544166775443402D2443402D244687BA644687BA6),
    .INIT_0D(256'h43E9217143E9217143EE420743EE4207440F39F6440F39F64409AF0D4409AF0D),
    .INIT_0E(256'h43F0CCA643F0CCA643F3C30043F3C300441133FA441133FA441D2A5C441D2A5C),
    .INIT_0F(256'h448257A4448257A44462ED1F4462ED1F4432CEE64432CEE644140B3444140B34),
    .INIT_10(256'h448CE339448CE339447B3CCE447B3CCE446E6D1F446E6D1F446F68DF446F68DF),
    .INIT_11(256'h444C43F0444C43F044421399444213994485E61C4485E61C448CBAEA448CBAEA),
    .INIT_12(256'h44136393441363934416677544166775443402D2443402D244687BA644687BA6),
    .INIT_13(256'h43E9217143E9217143EE420743EE4207440F39F6440F39F64409AF0D4409AF0D),
    .INIT_14(256'h43E14D9343E14D9343E40A0543E40A0544024B3C44024B3C441499C7441499C7),
    .INIT_15(256'h4481D1F44481D1F4447B60EB447B60EB4434027A4434027A440251F2440251F2),
    .INIT_16(256'h445B01E8445B01E84446E4C74446E4C7444A6DE2444A6DE2445D99DA445D99DA),
    .INIT_17(256'h446AD048446AD0484463A6334463A633448FD49C448FD49C448B4CCD448B4CCD),
    .INIT_18(256'h44189FB344189FB34417FBDC4417FBDC44394DB744394DB74479970F4479970F),
    .INIT_19(256'h43E877E443E877E443F0F61143F0F6114414FAEA4414FAEA4414299D4414299D),
    .INIT_1A(256'h43E14D9343E14D9343E40A0543E40A0544024B3C44024B3C441499C7441499C7),
    .INIT_1B(256'h4481D1F44481D1F4447B60EB447B60EB4434027A4434027A440251F2440251F2),
    .INIT_1C(256'h445B01E8445B01E84446E4C74446E4C7444A6DE2444A6DE2445D99DA445D99DA),
    .INIT_1D(256'h446AD048446AD0484463A6334463A633448FD49C448FD49C448B4CCD448B4CCD),
    .INIT_1E(256'h44189FB344189FB34417FBDC4417FBDC44394DB744394DB74479970F4479970F),
    .INIT_1F(256'h43E877E443E877E443F0F61143F0F6114414FAEA4414FAEA4414299D4414299D),
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
    .INITP_00(256'h3CF330F3C3C03CF3C003003CFC3CC003003CFC3C3F03C0333C333F03C0333C33),
    .INITP_01(256'hF3C3C3CFCF0C3CCCCC03CF0C3CCCCC033F0F0F33330F3F0F0F33330F30F3C3C0),
    .INITP_02(256'h0330C030FFCF0330C030FFCF033C0C30C0C3033C0C30C0C3CF3CF3C3C3CFCF3C),
    .INITP_03(256'h03F3FFCC3CC003F3CCCFCF3CCFFFCCCFCF3CCFFFF033C003F3C0F033C003F3C0),
    .INITP_04(256'hF33CF3333F0FC0FCCCCC3F0FC0FCCCCCC0C0F3C0FFFFC0C0F3C0FFFFFFCC3CC0),
    .INITP_05(256'h33030C00F30F33030C00F30F3C30FF3FCCC03C30FF3FCCC000CCF33CF33300CC),
    .INITP_06(256'h3C33FF03C0C03C33CFCF3F0333CFCFCF3F0333CFC3003FF3C3FFC3003FF3C3FF),
    .INITP_07(256'hC00300C3F3CCF00FCCF3F3CCF00FCCF330FF0F00C00F30FF0F00C00FFF03C0C0),
    .INIT_00(256'h1212BCBC343414149191FBFBA8A83B3B94940A0A0C0C9999E0E00202F6F68C8C),
    .INIT_01(256'h94940A0A0C0C9999E0E00202F6F68C8C00001919C1C17A7A6F6F646488884343),
    .INIT_02(256'h00001919C1C17A7A6F6F6464888843431212BCBC343414149191FBFBA8A83B3B),
    .INIT_03(256'hE9E949493F3FFCFC14142424FBFBFEFE6C6C4040F7F75151AEAECCCC63636262),
    .INIT_04(256'h6C6C4040F7F75151AEAECCCC636362629E9E7878EEEE8B8B2E2E19194141BDBD),
    .INIT_05(256'h9E9E7878EEEE8B8B2E2E19194141BDBDE9E949493F3FFCFC14142424FBFBFEFE),
    .INIT_06(256'h0C0C56562D2D727292927676F0F07A7AFDFD18183F3F26265C5C0F0FF9F9D0D0),
    .INIT_07(256'hFDFD18183F3F26265C5C0F0FF9F9D0D08181C8C88A8A7E7E2B2B8989F9F99191),
    .INIT_08(256'h8181C8C88A8A7E7E2B2B8989F9F991910C0C56562D2D727292927676F0F07A7A),
    .INIT_09(256'h343424249B9B7676D7D753530E0E1F1F363603033B3B98987F7F1C1CCFCF0606),
    .INIT_0A(256'h363603033B3B98987F7F1C1CCFCF06069F9FE4E4ECEC5656D7D71A1A33335252),
    .INIT_0B(256'h9F9FE4E4ECEC5656D7D71A1A33335252343424249B9B7676D7D753530E0E1F1F),
    .INIT_0C(256'h27277575F7F79797CFCFBFBF37373F3F2E2EE2E24B4BA5A53939474771718484),
    .INIT_0D(256'h2E2EE2E24B4BA5A53939474771718484CBCBF7F7F2F2A3A33737EDED5E5E3030),
    .INIT_0E(256'hCBCBF7F7F2F2A3A33737EDED5E5E303027277575F7F79797CFCFBFBF37373F3F),
    .INIT_0F(256'h040408087D7DAAAA54546D6D4040E4E4999927270909959538386C6C08087E7E),
    .INIT_10(256'h999927270909959538386C6C08087E7E3F3F2828A7A7B5B5BFBF7272F2F28787),
    .INIT_11(256'h3F3F2828A7A7B5B5BFBF7272F2F28787040408087D7DAAAA54546D6D4040E4E4),
    .INIT_12(256'h9898C4C4A9A9F3F390902E2E7B7BAFAF7A7A35353636A2A261613D3DD4D40404),
    .INIT_13(256'h7A7A35353636A2A261613D3DD4D4040481815050CFCFFEFE6E6E5C5CF6F69292),
    .INIT_14(256'h81815050CFCFFEFE6E6E5C5CF6F692929898C4C4A9A9F3F390902E2E7B7BAFAF),
    .INIT_15(256'h9F9F2C2C040418187171ABABFBFB67670707828284843F3F949433333535E7E7),
    .INIT_16(256'h0707828284843F3F949433333535E7E72020B4B40909D1D19C9CD7D7C9C95E5E),
    .INIT_17(256'h2020B4B40909D1D19C9CD7D7C9C95E5E9F9F2C2C040418187171ABABFBFB6767),
    .INIT_18(256'hE0E025255454E1E11313CECE2F2F72727777A3A3B8B801013434545417175D5D),
    .INIT_19(256'h7777A3A3B8B801013434545417175D5DF3F3B2B2AFAF313191915A5A1A1A3B3B),
    .INIT_1A(256'hF3F3B2B2AFAF313191915A5A1A1A3B3BE0E025255454E1E11313CECE2F2F7272),
    .INIT_1B(256'hF7F77E7E7E7E48482020F5F5EFEF95952A2ABCBC16164444AFAF91911C1C6565),
    .INIT_1C(256'h2A2ABCBC16164444AFAF91911C1C656590900505DDDDC8C80202DADA9F9FAAAA),
    .INIT_1D(256'h90900505DDDDC8C80202DADA9F9FAAAAF7F77E7E7E7E48482020F5F5EFEF9595),
    .INIT_1E(256'hE9E96C6C6666BCBC44448A8AE9E9696902022F2F2C2CF1F1CBCBC9C9B1B1D0D0),
    .INIT_1F(256'h02022F2F2C2CF1F1CBCBC9C9B1B1D0D07B7BF8F82828626299992A2A0B0B8F8F),
    .INIT_20(256'h7B7BF8F82828626299992A2A0B0B8F8FE9E96C6C6666BCBC44448A8AE9E96969),
    .INIT_21(256'h96969696DDDDA0A0DFDF56562424F1F1B8B8C6C6A0A06F6F23239191A8A85555),
    .INIT_22(256'hB8B8C6C6A0A06F6F23239191A8A85555D7D7E4E4858560605959ADAD55555858),
    .INIT_23(256'hD7D7E4E4858560605959ADAD5555585896969696DDDDA0A0DFDF56562424F1F1),
    .INIT_24(256'h2323C6C641417575B9B9CDCD5454F6F68989C1C1D2D27C7C80806363FAFA8383),
    .INIT_25(256'h8989C1C1D2D27C7C80806363FAFA83830202EEEEFEFED3D3F3F35454E0E09595),
    .INIT_26(256'h0202EEEEFEFED3D3F3F35454E0E095952323C6C641417575B9B9CDCD5454F6F6),
    .INIT_27(256'h0404EDED21212C2C80804949F4F4DFDF1111A5A5FDFDD8D81111B9B97979B2B2),
    .INIT_28(256'h1111A5A5FDFDD8D81111B9B97979B2B2B4B4D0D0F7F7BEBE59596F6FE6E6F1F1),
    .INIT_29(256'hB4B4D0D0F7F7BEBE59596F6FE6E6F1F10404EDED21212C2C80804949F4F4DFDF),
    .INIT_2A(256'h9F9F50509393A1A1727235358B8B40401D1D3F3F08084D4D3C3CAAAA1F1F3D3D),
    .INIT_2B(256'h1D1D3F3F08084D4D3C3CAAAA1F1F3D3D79794C4C2A2A9595797922225858C9C9),
    .INIT_2C(256'h79794C4C2A2A9595797922225858C9C99F9F50509393A1A1727235358B8B4040),
    .INIT_2D(256'h4242797944446A6AE5E52020E6E6AFAF4242CECE5A5A18180606B3B353539898),
    .INIT_2E(256'h4242CECE5A5A18180606B3B3535398984F4F0303A4A47C7C51518C8CC0C09696),
    .INIT_2F(256'h4F4F0303A4A47C7C51518C8CC0C096964242797944446A6AE5E52020E6E6AFAF),
    .INIT_30(256'hC7C75252979706066464505017173434E4E452521818B1B19F9F95954D4DFEFE),
    .INIT_31(256'hE4E452521818B1B19F9F95954D4DFEFE9696E9E9CDCDB2B29494A2A2B0B0A4A4),
    .INIT_32(256'h9696E9E9CDCDB2B29494A2A2B0B0A4A4C7C75252979706066464505017173434),
    .INIT_33(256'hE8E829298E8E2C2C3030CFCF4D4DB2B2B0B06565AFAF5C5CBCBC38380C0CABAB),
    .INIT_34(256'hB0B06565AFAF5C5CBCBC38380C0CABAB141487875757BBBBE3E320209D9DB2B2),
    .INIT_35(256'h141487875757BBBBE3E320209D9DB2B2E8E829298E8E2C2C3030CFCF4D4DB2B2),
    .INIT_36(256'hFCFCC9C9CBCBB8B852527575CECE8585DFDF090934345C5CC3C32E2E48489898),
    .INIT_37(256'hDFDF090934345C5CC3C32E2E4848989826262525D2D26161D5D50B0B6363D6D6),
    .INIT_38(256'h26262525D2D26161D5D50B0B6363D6D6FCFCC9C9CBCBB8B852527575CECE8585),
    .INIT_39(256'h4040A5A581815A5A1919525248488787A9A9292918182B2BEBEB72729999FAFA),
    .INIT_3A(256'hA9A9292918182B2BEBEB72729999FAFAD4D4C0C0E5E57D7DD9D9202069695D5D),
    .INIT_3B(256'hD4D4C0C0E5E57D7DD9D9202069695D5D4040A5A581815A5A1919525248488787),
    .INIT_3C(256'hEAEA43431919E1E1A5A5B0B05E5EB9B9A0A0C6C69B9B0808DBDBB9B95555C9C9),
    .INIT_3D(256'hA0A0C6C69B9B0808DBDBB9B95555C9C90D0D3333FAFADEDEC4C4B0B021212929),
    .INIT_3E(256'h0D0D3333FAFADEDEC4C4B0B021212929EAEA43431919E1E1A5A5B0B05E5EB9B9),
    .INIT_3F(256'hD5D52D2D1E1E41414444B9B95353E3E39F9FC1C17878B8B861615B5B8A8A3030),
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
    .INITP_06(256'hFFFF0CFFFFFFFFFF0CFFFFFFFFFF0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFF0FFFFFFFFFFF0FFFFFFFFFFF0FFFFFFFF3FF0FFFFFFFF3FF0CFFFFFF),
    .INIT_00(256'h2D2D2C2C2C2C2C2C2A2A242419191F1F26262A2A2C2C2A2A252521211D1D1E1E),
    .INIT_01(256'h26262A2A2C2C2A2A252521211D1D1E1E23232121222229292D2D2D2D2D2D2D2D),
    .INIT_02(256'h23232121222229292D2D2D2D2D2D2D2D2D2D2C2C2C2C2C2C2A2A242419191F1F),
    .INIT_03(256'h2C2C2B2B2C2C2C2C2C2C27271B1B21212A2A303039393A3A2D2D252520201F1F),
    .INIT_04(256'h2A2A303039393A3A2D2D252520201F1F2424232324242B2B303030302F2F2D2D),
    .INIT_05(256'h2424232324242B2B303030302F2F2D2D2C2C2B2B2C2C2C2C2C2C27271B1B2121),
    .INIT_06(256'h2E2E2D2D2D2D2B2B2A2A27271D1D222227272C2C353537372C2C262621211C1C),
    .INIT_07(256'h27272C2C353537372C2C262621211C1C171716161C1C25252C2C2F2F30302F2F),
    .INIT_08(256'h171716161C1C25252C2C2F2F30302F2F2E2E2D2D2D2D2B2B2A2A27271D1D2222),
    .INIT_09(256'h2F2F2F2F2E2E2B2B2929252520202424252526262A2A2A2A252520201F1F2121),
    .INIT_0A(256'h252526262A2A2A2A252520201F1F2121060608080A0A10101E1E27272C2C2E2E),
    .INIT_0B(256'h060608080A0A10101E1E27272C2C2E2E2F2F2F2F2E2E2B2B2929252520202424),
    .INIT_0C(256'h2A2A2B2B2B2B2929282826261A1A212120201E1E1F1F1E1E1A1A171720202222),
    .INIT_0D(256'h20201E1E1F1F1E1E1A1A171720202222070708080A0A0D0D0F0F141420202727),
    .INIT_0E(256'h070708080A0A0D0D0F0F1414202027272A2A2B2B2B2B2929282826261A1A2121),
    .INIT_0F(256'h1A1A1B1B1E1E1E1E24242B2B1F1F1C1C1F1F1C1C1919151517171C1C20201A1A),
    .INIT_10(256'h1F1F1C1C1919151517171C1C20201A1A0A0A0B0B09090A0A0D0D0E0E11111A1A),
    .INIT_11(256'h0A0A0B0B09090A0A0D0D0E0E11111A1A1A1A1B1B1E1E1E1E24242B2B1F1F1C1C),
    .INIT_12(256'h111115151F1F25252C2C33332C2C252520201F1F171714141818222221211616),
    .INIT_13(256'h20201F1F171714141818222221211616070709090C0C0C0C090908080D0D1313),
    .INIT_14(256'h070709090C0C0C0C090908080D0D1313111115151F1F25252C2C33332C2C2525),
    .INIT_15(256'h12121212171722222B2B2D2D2C2C2929212120201A1A17171C1C262625251919),
    .INIT_16(256'h212120201A1A17171C1C2626252519190D0D090909090B0B090906060B0B1212),
    .INIT_17(256'h0D0D090909090B0B090906060B0B121212121212171722222B2B2D2D2C2C2929),
    .INIT_18(256'h0B0B0A0A08080F0F232328282A2A292923232424252524242E2E3A3A37372D2D),
    .INIT_19(256'h23232424252524242E2E3A3A37372D2D121210100D0D0B0B0D0D0F0F11110E0E),
    .INIT_1A(256'h121210100D0D0B0B0D0D0F0F11110E0E0B0B0A0A08080F0F232328282A2A2929),
    .INIT_1B(256'h111114140B0B09091D1D2424252528282525232327272E2E3F3F434341414040),
    .INIT_1C(256'h2525232327272E2E3F3F434341414040181818181919161610100C0C0E0E0E0E),
    .INIT_1D(256'h181818181919161610100C0C0E0E0E0E111114140B0B09091D1D242425252828),
    .INIT_1E(256'h111114140C0C0707171721211F1F232323231B1B21212B2B373739393F3F4242),
    .INIT_1F(256'h23231B1B21212B2B373739393F3F424220201C1C1C1C16160A0A07070A0A0E0E),
    .INIT_20(256'h20201C1C1C1C16160A0A07070A0A0E0E111114140C0C0707171721211F1F2323),
    .INIT_21(256'h0E0E0D0D0D0D08081414202021212828252518181414202027272B2B31313A3A),
    .INIT_22(256'h252518181414202027272B2B31313A3A191918181A1A18180A0A060609091010),
    .INIT_23(256'h191918181A1A18180A0A0606090910100E0E0D0D0D0D08081414202021212828),
    .INIT_24(256'h0C0C0A0A0D0D0C0C1717212127273131292920200F0F12121B1B232327272C2C),
    .INIT_25(256'h292920200F0F12121B1B232327272C2C101015151C1C1E1E10100B0B0B0B0E0E),
    .INIT_26(256'h101015151C1C1E1E10100B0B0B0B0E0E0C0C0A0A0D0D0C0C1717212127273131),
    .INIT_27(256'h1818141413131414222228282E2E31312929222212120D0D1111131318181E1E),
    .INIT_28(256'h2929222212120D0D1111131318181E1E1414131318181F1F1B1B19191A1A1B1B),
    .INIT_29(256'h1414131318181F1F1B1B19191A1A1B1B1818141413131414222228282E2E3131),
    .INIT_2A(256'h161618181D1D202027272E2E3A3A38382B2B1D1D0A0A07070A0A101014141010),
    .INIT_2B(256'h2B2B1D1D0A0A07070A0A1010141410101D1D151510101313171718181D1D1D1D),
    .INIT_2C(256'h1D1D151510101313171718181D1D1D1D161618181D1D202027272E2E3A3A3838),
    .INIT_2D(256'h0A0A15152525292928282E2E3D3D3B3B2C2C1818060602020303080813131010),
    .INIT_2E(256'h2C2C18180606020203030808131310100C0C0909090907070B0B0B0B10101212),
    .INIT_2F(256'h0C0C0909090907070B0B0B0B101012120A0A15152525292928282E2E3D3D3B3B),
    .INIT_30(256'h060615152E2E33332A2A2B2B3636333327271414040400000000060610100D0D),
    .INIT_31(256'h27271414040400000000060610100D0D0000000003030000040405050B0B1010),
    .INIT_32(256'h0000000003030000040405050B0B1010060615152E2E33332A2A2B2B36363333),
    .INIT_33(256'h040410102A2A34342D2D28282727232320200E0E0202000002020C0C0E0E0C0C),
    .INIT_34(256'h20200E0E0202000002020C0C0E0E0C0CFFFFFFFF0202FEFE020205050A0A0F0F),
    .INIT_35(256'hFFFFFFFF0202FEFE020205050A0A0F0F040410102A2A34342D2D282827272323),
    .INIT_36(256'h03030C0C262631312C2C28282424202019190B0B0101020209090F0F0D0D0F0F),
    .INIT_37(256'h19190B0B0101020209090F0F0D0D0F0FFFFFFFFF0202FEFE020204040A0A0F0F),
    .INIT_38(256'hFFFFFFFF0202FEFE020204040A0A0F0F03030C0C262631312C2C282824242020),
    .INIT_39(256'h04040F0F29292F2F2A2A2828262624241D1D0909FDFD04040D0D0D0D0D0D1010),
    .INIT_3A(256'h1D1D0909FDFD04040D0D0D0D0D0D1010FDFDFEFE03030000020204040A0A0F0F),
    .INIT_3B(256'hFDFDFEFE03030000020204040A0A0F0F04040F0F29292F2F2A2A282826262424),
    .INIT_3C(256'h060610102626272726262727272726262020090900000808090909090E0E0F0F),
    .INIT_3D(256'h2020090900000808090909090E0E0F0FFBFBFEFE04040101030305050B0B1111),
    .INIT_3E(256'hFBFBFEFE04040101030305050B0B111106061010262627272626272727272626),
    .INIT_3F(256'h0B0B0F0F21212121262628282626232321210E0E07070808030304040B0B0D0D),
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
