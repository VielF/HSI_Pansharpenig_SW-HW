// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Jan 14 23:02:34 2019
// Host        : felipe-NOT running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/felipe/Downloads/pansharpening_spp_bakup_linux_moffet/pansharpening_spp.srcs/sources_1/ip/blk_mem_gen_4/blk_mem_gen_4_sim_netlist.v
// Design      : blk_mem_gen_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_4,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module blk_mem_gen_4
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
  (* C_INIT_FILE = "blk_mem_gen_4.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_4.mif" *) 
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
  blk_mem_gen_4_blk_mem_gen_v8_4_1 U0
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
module blk_mem_gen_4_bindec
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
module blk_mem_gen_4_blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [11:0]addra;
  input [31:0]dina;
  input [0:0]wea;

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

  blk_mem_gen_4_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[11:9]),
        .ena(ena),
        .ena_array(ena_array));
  blk_mem_gen_4_blk_mem_gen_mux \has_mux_a.A 
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
  blk_mem_gen_4_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra[10:0]),
        .clka(clka),
        .dina(dina[8:0]),
        .ena(ena),
        .ena_0(ram_ena_n_0),
        .ram_douta(ram_douta),
        .wea(wea));
  blk_mem_gen_4_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .DOBDO({\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 ,\ramloop[1].ram.r_n_18 ,\ramloop[1].ram.r_n_19 ,\ramloop[1].ram.r_n_20 ,\ramloop[1].ram.r_n_21 ,\ramloop[1].ram.r_n_22 ,\ramloop[1].ram.r_n_23 ,\ramloop[1].ram.r_n_24 ,\ramloop[1].ram.r_n_25 ,\ramloop[1].ram.r_n_26 ,\ramloop[1].ram.r_n_27 ,\ramloop[1].ram.r_n_28 ,\ramloop[1].ram.r_n_29 ,\ramloop[1].ram.r_n_30 ,\ramloop[1].ram.r_n_31 }),
        .addra(addra[8:0]),
        .clka(clka),
        .dina(dina),
        .ena(ena),
        .ena_array(ena_array),
        .wea(wea));
  blk_mem_gen_4_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.DOPADOP(\ramloop[2].ram.r_n_8 ),
        .addra(addra[10:0]),
        .clka(clka),
        .dina(dina[17:9]),
        .\douta[16] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .ena(ena),
        .ena_0(ram_ena_n_0),
        .wea(wea));
  blk_mem_gen_4_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra[10:0]),
        .clka(clka),
        .dina(dina[26:18]),
        .\douta[25] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\douta[26] (\ramloop[3].ram.r_n_8 ),
        .ena(ena),
        .ena_0(ram_ena_n_0),
        .wea(wea));
  blk_mem_gen_4_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[10:0]),
        .clka(clka),
        .dina(dina[31:27]),
        .\douta[31] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 }),
        .ena(ena),
        .ena_0(ram_ena_n_0),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module blk_mem_gen_4_blk_mem_gen_mux
   (douta,
    ena,
    addra,
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
  input ena;
  input [2:0]addra;
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
  wire [8:0]ram_douta;
  wire [2:0]sel_pipe;
  wire [2:0]sel_pipe_d1;

  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[0]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[0]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[0]),
        .O(douta[0]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[10]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[10]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [1]),
        .O(douta[10]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[11]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[11]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [2]),
        .O(douta[11]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[12]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[12]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [3]),
        .O(douta[12]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[13]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[13]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [4]),
        .O(douta[13]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[14]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[14]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [5]),
        .O(douta[14]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[15]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[15]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [6]),
        .O(douta[15]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[16]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[0]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [7]),
        .O(douta[16]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[17]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[1]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(DOPADOP),
        .O(douta[17]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[18]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[2]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [0]),
        .O(douta[18]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[19]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [1]),
        .O(douta[19]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[1]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[1]),
        .O(douta[1]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[20]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[4]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [2]),
        .O(douta[20]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[21]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[5]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [3]),
        .O(douta[21]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[22]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[6]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [4]),
        .O(douta[22]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[23]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[7]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [5]),
        .O(douta[23]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[24]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[8]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [6]),
        .O(douta[24]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[25]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[9]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [7]),
        .O(douta[25]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[26]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[10]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ),
        .O(douta[26]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[27]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[11]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 [0]),
        .O(douta[27]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[28]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[12]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 [1]),
        .O(douta[28]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[29]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[13]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 [2]),
        .O(douta[29]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[2]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[2]),
        .O(douta[2]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[30]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[14]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 [3]),
        .O(douta[30]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[31]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOBDO[15]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_2 [4]),
        .O(douta[31]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[3]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[3]),
        .O(douta[3]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[4]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[4]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[4]),
        .O(douta[4]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[5]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[5]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[5]),
        .O(douta[5]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[6]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[6]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[6]),
        .O(douta[6]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[7]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[7]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[7]),
        .O(douta[7]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[8]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[8]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(ram_douta[8]),
        .O(douta[8]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[9]_INST_0 
       (.I0(sel_pipe_d1[0]),
        .I1(DOADO[9]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[2]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [0]),
        .O(douta[9]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(ena),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(ena),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(ena),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(ena),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_4_blk_mem_gen_prim_width
   (ram_douta,
    clka,
    ena_0,
    ena,
    addra,
    dina,
    wea);
  output [8:0]ram_douta;
  input clka;
  input ena_0;
  input ena;
  input [10:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire clka;
  wire [8:0]dina;
  wire ena;
  wire ena_0;
  wire [8:0]ram_douta;
  wire [0:0]wea;

  blk_mem_gen_4_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena(ena),
        .ena_0(ena_0),
        .ram_douta(ram_douta),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_4_blk_mem_gen_prim_width__parameterized0
   (DOADO,
    DOBDO,
    clka,
    ena_array,
    ena,
    addra,
    dina,
    wea);
  output [15:0]DOADO;
  output [15:0]DOBDO;
  input clka;
  input [0:0]ena_array;
  input ena;
  input [8:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [15:0]DOADO;
  wire [15:0]DOBDO;
  wire [8:0]addra;
  wire clka;
  wire [31:0]dina;
  wire ena;
  wire [0:0]ena_array;
  wire [0:0]wea;

  blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.DOADO(DOADO),
        .DOBDO(DOBDO),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena(ena),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_4_blk_mem_gen_prim_width__parameterized1
   (\douta[16] ,
    DOPADOP,
    clka,
    ena_0,
    ena,
    addra,
    dina,
    wea);
  output [7:0]\douta[16] ;
  output [0:0]DOPADOP;
  input clka;
  input ena_0;
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
  wire ena_0;
  wire [0:0]wea;

  blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .\douta[16] (\douta[16] ),
        .ena(ena),
        .ena_0(ena_0),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_4_blk_mem_gen_prim_width__parameterized2
   (\douta[25] ,
    \douta[26] ,
    clka,
    ena_0,
    ena,
    addra,
    dina,
    wea);
  output [7:0]\douta[25] ;
  output [0:0]\douta[26] ;
  input clka;
  input ena_0;
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
  wire ena_0;
  wire [0:0]wea;

  blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .\douta[25] (\douta[25] ),
        .\douta[26] (\douta[26] ),
        .ena(ena),
        .ena_0(ena_0),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_4_blk_mem_gen_prim_width__parameterized3
   (\douta[31] ,
    clka,
    ena_0,
    ena,
    addra,
    dina,
    wea);
  output [4:0]\douta[31] ;
  input clka;
  input ena_0;
  input ena;
  input [10:0]addra;
  input [4:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire clka;
  wire [4:0]dina;
  wire [4:0]\douta[31] ;
  wire ena;
  wire ena_0;
  wire [0:0]wea;

  blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .\douta[31] (\douta[31] ),
        .ena(ena),
        .ena_0(ena_0),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_4_blk_mem_gen_prim_wrapper_init
   (ram_douta,
    clka,
    ena_0,
    ena,
    addra,
    dina,
    wea);
  output [8:0]ram_douta;
  input clka;
  input ena_0;
  input ena;
  input [10:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire clka;
  wire [8:0]dina;
  wire ena;
  wire ena_0;
  wire [8:0]ram_douta;
  wire [0:0]wea;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
        .ENARDEN(ena_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOADO,
    DOBDO,
    clka,
    ena_array,
    ena,
    addra,
    dina,
    wea);
  output [15:0]DOADO;
  output [15:0]DOBDO;
  input clka;
  input [0:0]ena_array;
  input ena;
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
  wire ena;
  wire [0:0]ena_array;
  wire [0:0]wea;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h43C780004467C000446700004434400044314000445A000044DFA0004510A000),
    .INIT_01(256'h4437800043A200004380000043810000443F80004462C0004412800043FA8000),
    .INIT_02(256'h44C1E000449DC000448DE00044A1200044BD400044B1200044A5800044ABC000),
    .INIT_03(256'h450A900044EF000044FBA0004506A000450210004503C00044A30000447F0000),
    .INIT_04(256'h450D1000453400004513B00044DAA00044EE600044C9800044AD400044D9E000),
    .INIT_05(256'h4508F00044970000442580004414C000449B80004517100044EB600044FE4000),
    .INIT_06(256'h43C180004466C000447140004430800044370000444FC00044D000004517A000),
    .INIT_07(256'h4446800043C400004382000043780000441A0000446600004409800043C58000),
    .INIT_08(256'h449DC0004490C000449280004495600044B0000044C5A00044B6C00044BDA000),
    .INIT_09(256'h4503400044DBE00044F8A00045081000450C400044CCA000445A400044B5C000),
    .INIT_0A(256'h45244000451B300044F7C00044C7600044AE800044AE60004487A00044BAA000),
    .INIT_0B(256'h4518100044CFA000443900004412400044AAC0004516F00044EBE0004506A000),
    .INIT_0C(256'h43F0000044774000447140004438C0004436C000444C400044C9A00045190000),
    .INIT_0D(256'h4439C00043AD800043810000436B0000442200004457400043F3800043C48000),
    .INIT_0E(256'h44926000448FC000449E000044A1000044AB000044BC000044AF000044B56000),
    .INIT_0F(256'h4502F00044D320004500500045161000450320004487000044A0000044AB6000),
    .INIT_10(256'h450A600044D4200044DF200044D9E00044A7E00044AD400044A0A00044C2E000),
    .INIT_11(256'h4513500044F960004484E000442B400044B30000451AA0004510600045279000),
    .INIT_12(256'h440F80004472C00044720000443D4000443840004450C00044CDC000450FB000),
    .INIT_13(256'h443D400043A900004382000043740000441C0000446880004425400044044000),
    .INIT_14(256'h4493E000449E2000449D4000449FA00044A2800044AB400044B2A00044C08000),
    .INIT_15(256'h4501F00044D320004502D0004511D00044C900004462000044B22000449B6000),
    .INIT_16(256'h44D1A00044CE800044E7400044D5E0004499200044B0C00044AF000044CA6000),
    .INIT_17(256'h4501B000450C900044EA200044C8600044D3E000450A80004533100045127000),
    .INIT_18(256'h44134000446E00004466C00044304000443080004451C00044BC400044FC2000),
    .INIT_19(256'h4439000043BD000043770000436E0000441DC00044694000441EC0004417C000),
    .INIT_1A(256'h4496600044A380004496A00044880000448920004499000044A4600044788000),
    .INIT_1B(256'h4502A00044D7C00044FE40004507B000449060004499A00044A7A0004494A000),
    .INIT_1C(256'h44CE000044D9A00044DBE00044A7E0004496A00044AEA00044B5000044E46000),
    .INIT_1D(256'h44F3800045093000450FD0004518800045150000450A00004508200044D72000),
    .INIT_1E(256'h4420000044884000445DC000442EC000443100004454000044BEA00044F10000),
    .INIT_1F(256'h4435800043AB0000437500004388800044380000445D00004418400044130000),
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
        .REGCEAREGCE(ena),
        .REGCEB(ena),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,wea,wea}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[16] ,
    DOPADOP,
    clka,
    ena_0,
    ena,
    addra,
    dina,
    wea);
  output [7:0]\douta[16] ;
  output [0:0]DOPADOP;
  input clka;
  input ena_0;
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
  wire ena_0;
  wire [0:0]wea;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h28CE0E4006D6D60FCCF86832FC7D658069979C60A6D41C04589B55183B39FBA1),
    .INITP_01(256'hACDE5C227D303821C2592E0168B9DFD860417A3C6210F766DBE355340418F774),
    .INITP_02(256'h6D3D75717B87930FF3C73EB7A522BBEFC004E3C5F0D7CEF0F1BB7B1F089F2121),
    .INITP_03(256'hF783CEA387C2D4A7475A6D8D8C7E16AA6B75281B7DA8B65A30B058BB5FFF6B95),
    .INITP_04(256'h2C3C63B036E7B4224E202CBB5A535178D268F045CD42D0D847112CB9497D8ADD),
    .INITP_05(256'hB9F1F17F505D3CB6421B7DC5A3F617935645140FE0E9E09C30096EC33FAA334B),
    .INITP_06(256'h7631AB01771E43039D68DFE7B7429711E881DF39500833D37DCDD1F170D89D09),
    .INITP_07(256'h252AB1792373929E0708343EA86952A9062F0154365B6FB251C3DDDA036E25E1),
    .INIT_00(256'h38603860C89888C8C048B8A810305020D010E02060E080E0705040C020E0B050),
    .INIT_01(256'hA89020F858E82858E0E08020309010D060C0B0807030D860B880400860204810),
    .INIT_02(256'h1018C8B0D86860B0C898E038F8F0D0C058601050006840080038D898B0D08070),
    .INIT_03(256'h7018A860F898281060F0D0E0C03090C018B078F0306058D850D858F0706878F0),
    .INIT_04(256'h90E8F820A0C898F010085020F0B0500028F0D060B89060F088C8C04840D020F0),
    .INIT_05(256'h302870D890A8D8A838101860E800F838B890E02858D08068280038704060D020),
    .INIT_06(256'h48A0D0E06018C0E0C08050E080302080C8784058C08058F02860E85810F03030),
    .INIT_07(256'hC00050C09800C8380820988050F0B04080D09090B0B81808B8F8F0B820805818),
    .INIT_08(256'h509040808040C040F82020F050B0E030C028E0B850288028082878E8206040A0),
    .INIT_09(256'h70703018C8802060B850E84890A0A040E00020C088E8C0407088A80830A0B040),
    .INIT_0A(256'h5080A078A88020509010A04070005810C0C02030605030C0E0701840B8C8A078),
    .INIT_0B(256'h00402060A0F0A0107000A0F05050C8F840E8488050188890783820B03070D0F0),
    .INIT_0C(256'h30C89098A0002008F8F8A0F090C0C06020C0F02050A06010408030402028D050),
    .INIT_0D(256'h7010A008901070D0B0283000D0F0609000E08090E07070307050204060B0E8E0),
    .INIT_0E(256'h206080A0A000B000A088D040E0E0A0609038F810003010C01060F030A0C06010),
    .INIT_0F(256'hB07060E010F090C06020C0C0C0A04080D0C03010400008087088184010608000),
    .INIT_10(256'hE030D0E040F03080C0303040E8F8C8409090109040006060609028B0F0B090C0),
    .INIT_11(256'h20A090F0B840B080408030301878A0684070E060A020E07030E02008281880B0),
    .INIT_12(256'h4000C06090B880B8E0D0C058608020D020E0A018E00040203000A858A8E00070),
    .INIT_13(256'hD01090A89040503860F0402008E048F09000E03070F8B030C0A080A060804060),
    .INIT_14(256'hD830D0A080E0A830E8B0C060408080402060003030E8E8C8E0D8D808A850D8C0),
    .INIT_15(256'h709020A000600050C8C898D870A888A0A8C0F0A0507028C0D0689088585010F0),
    .INIT_16(256'h683040E8E03810E8A81830D8D0F83050C83020F06060505020B080800080C010),
    .INIT_17(256'h2028E86820208040E0808060D0206040D040C0408080C0E010900838E8308840),
    .INIT_18(256'h000000C0804080C0C03810C0F888B098109070C0D8B87820C898008808F03868),
    .INIT_19(256'h98306060B8A05070D0C008D88868A05808106870A810904060B040E07050A0C0),
    .INIT_1A(256'hA080580060405060F0D0105000C04000606080206040C080E040B0A8F8581878),
    .INIT_1B(256'h8050808020C04080A0B080F8F058209820F0F050C0B0B8902830B8B8584848A0),
    .INIT_1C(256'h38A010D0A0E0A850A850E0289088B880B070089848C0204050F020E0404020E0),
    .INIT_1D(256'h6820C8A098304830F080C040C070E080604070E010C0000080C08028A048F8F8),
    .INIT_1E(256'h8040B078F060C00000E0B8D810F8B8D080707070F050D84878D8E8387880F880),
    .INIT_1F(256'hA0E070E050204848C898A8B8D068387868686898F070B860C00080404080C000),
    .INIT_20(256'h88F0C050488838D000C0800080404040C0202090406040400060F0E078686840),
    .INIT_21(256'h6050E020605040408060480860703860B0207050E02078F8C0E838881868E848),
    .INIT_22(256'h58A0D050F0D050C0D05018A880A8C8904830E88850D850C06080C00000804000),
    .INIT_23(256'h9000C810C8B8D8E000C0C0C0C000A0802020A000A060306000C00830E8B09088),
    .INIT_24(256'h20C08000C04030600050C070C0D0F82800B01050E050C06020F0A0B0C0981038),
    .INIT_25(256'hE0A04060E020B0A0B0D0E0A080286090684010F848E8B050800080C040400020),
    .INIT_26(256'h401030F0D0A81868B00060608000C0C04040008000C040C00030300090E03898),
    .INIT_27(256'h2000A09040D060A0C0C8906040F0D010A09090B0F0A02070B0B0A0A0E02080E0),
    .INIT_28(256'hB8D0505010A800F800683010B03020D000E0A090D85018500060803840805040),
    .INIT_29(256'hF030680028103808E0E0B0D878E04880F0102010C0907070701080B0107868F0),
    .INIT_2A(256'hC050C030E05030D02070C890405C18D8506020D8F030D870A0B8908838803030),
    .INIT_2B(256'hE80090B0E8D87008C810C0707838708080008860006090900070003060307080),
    .INIT_2C(256'h50301060201080C0208090300090A820A040C0108050E08030D83070A0D424F8),
    .INIT_2D(256'hA0404000E038A01090385810D070A07080C0F0B058507060007820C0F0D070B0),
    .INIT_2E(256'h589040C0400830A0B0681818409048B0A080C000A06000C0C0E0E0A000A030E8),
    .INIT_2F(256'h60C0000020208080C080A00040E020F03040A0C0703830B8A8C84020E00040F0),
    .INIT_30(256'h708080E09070703020B82860E02C008038905008F8188068C040C0A078B84040),
    .INIT_31(256'h80F85060B028D060E078A030284060E020C000C0C06000C080802080E0207090),
    .INIT_32(256'h8000C000A0C040404020402020E0C030B0000040B008B08880B89858C8086088),
    .INIT_33(256'h2080006050B8F860F0A818B01060B81800D88018A89840D830B08870780080F0),
    .INIT_34(256'hD04020C8D0E820902078505840601050A0C00000C0E0C00000E0E02040E00010),
    .INIT_35(256'h0080408040E00040804080C0608070506000008020B02808A88058A848204040),
    .INIT_36(256'hC0400000F0D05030B8D870A060C00050B07010E818A8C8A0F83080F070804010),
    .INIT_37(256'hD0A040A8C080A088D860D8F0609010C8C00000C0008000C0C0A02040E0C0F0C0),
    .INIT_38(256'h40C080402000C000C0604020E0404070A040800010F8D828885000C0A02050D0),
    .INIT_39(256'h80C04040205830C8508898C0183838300080B040C07838A050007080A0B04050),
    .INIT_3A(256'hD0808028703020B84860A060404070D06000C0008060A0C00020A0C0000030C8),
    .INIT_3B(256'h60008080604000C000C0A040202060C080C0C08090083088F85080C0886888C0),
    .INIT_3C(256'h204020E01078A0585840C0F0D888A8C0D01068C8500860F05040205000D0D070),
    .INIT_3D(256'hE890D048A07838E000E030B080909090004080C0202080E04060A08080E0C0F8),
    .INIT_3E(256'h8040C0C0E0C0A0C04040E0208000D0A050E0E0C0205858F0D0B89878B02050F0),
    .INIT_3F(256'h6080C0E07008C0D060C85088B05848A80040409898C040B0103040D08050B020),
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
        .ENARDEN(ena_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized2
   (\douta[25] ,
    \douta[26] ,
    clka,
    ena_0,
    ena,
    addra,
    dina,
    wea);
  output [7:0]\douta[25] ;
  output [0:0]\douta[26] ;
  input clka;
  input ena_0;
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
  wire ena_0;
  wire [0:0]wea;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFC1FFFFFFFFF3FFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFF83FC7FFFFFFFC7FC7FFFFFFFF7FCFFFFFFFFFFFCFFFFFFFFFF00FFFFFF),
    .INITP_04(256'hFFFFFFFFFFFC407FFFFFFF81877FFFFFFF83EF7FFFFFFF83FE7FFFFFFF01FC7F),
    .INITP_05(256'h8C77FFFFFFFFCC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFF8C7F8FFFFFFF8C7F9FFFFFFF8C7F9FFFFFFF8C7F9FFFFFFF8C7FFFFFFFFF),
    .INITP_07(256'hFFFFFFFF8F7FFFFFFFFF8F7FFFFFFFFF8C7F8FFFFFFF8E7F8FFFFFFF8C7F8FFF),
    .INIT_00(256'h4C4B4A4948494948474643433B2436363F403F3F3B38322F2C292A2926272A2E),
    .INIT_01(256'h4243464A4A4946433D3938342F2B29293A3C40363539424746454546484A4B4C),
    .INIT_02(256'h4243443D4246424B4D4C4A4846444546484949484848494A4A4A48473C263738),
    .INIT_03(256'h4544434445494846454545454026323A424B4B4B4D5354534C4542414340403E),
    .INIT_04(256'h4246484A494D5452494342454742403A4947433D41423E4A4D4E4E4E4D4B4946),
    .INIT_05(256'h4546464541474B4D4D4D4D4D4D4E4D4C4A47454443464847464544443B25323A),
    .INIT_06(256'h4B4B4A4947464544424446453B2635384043454749494A4743404041403D3A39),
    .INIT_07(256'h3E4140414142424343424242403D3B3B3B403F3B3E4044494C4C4D4D4D4D4D4C),
    .INIT_08(256'h3A36241A1A1A202F41484B4C4C4C4C4C4B4B4A4A4A4B4945424246463C273636),
    .INIT_09(256'h4B4B4B4A4A4C4B46424041443D293B393D3B3C3F42434245454040413C40453E),
    .INIT_0A(256'h3F3D3D4043434042423D3A3F3D424745201122302E292111132C41484B4C4C4C),
    .INIT_0B(256'h0A1A32393B3D3E372916183244494B4B4C4B4B4A4A4B4A48454341443F26393E),
    .INIT_0C(256'h4A4A4B4C4C4C4B4A46444242351D323D3C3D3E3F403D3E3D3F3F383A3F434342),
    .INIT_0D(256'h3C3F3E403D3C3D3C3B403938424743362D1E162226323C3F3D3526131C354448),
    .INIT_0E(256'h3E372A180209253640413D332416233D42424346474745423D34413C25192030),
    .INIT_0F(256'h272A2725272724180E092A3B231E14132B3E403F3A3C41403E41403E42484238),
    .INIT_10(256'h1F353F3F3D3F3F403E3D41464442413E323E403A2C130410293840413E33262D),
    .INIT_11(256'h0A25384040382A1B040B293B414141423221151A171C242B2E36424B4342402F),
    .INIT_12(256'h2B262D363F43484A4A48464F4A4848442F293D423D3B3B3E3F4040454B453E40),
    .INIT_13(256'h39243A403C3C4040413E3F444644403F271B152C3D414036230A06122A323031),
    .INIT_14(256'h4036220F172F404340362805EFEDE61634373E3F3E4041454C49464844494A49),
    .INIT_15(256'h3A332A201D1E2330414A494544494B4B4124373F3B3D414444413E43443F3D3A),
    .INIT_16(256'h4527324042444442424342485249443E41413C2C150724393C362705EAF60B2E),
    .INIT_17(256'h414242423823080709020212263237312208FAF4F5F4F7092D45484544494B4B),
    .INIT_18(256'hF1E8EBEBEEEAECF01E40444545474A4B49322A414648474340454C4B50504E44),
    .INIT_19(256'h4A3D31414546494648525A5858514D4F41424242423E2D1B19273336342F2108),
    .INIT_1A(256'h4144414141403A3637352E2414030B03051919131200F1EE1139434747474A4B),
    .INIT_1B(256'h20283A453D16F3EC08324447464345474843313441474A4848535C584D515953),
    .INIT_1C(256'h413C2F243C42444A4B50584E4E56585741444241424140362E272005F01C240D),
    .INIT_1D(256'h434445454547422E200CFBECF1201A0A141135454017F5EBEE25454742424241),
    .INIT_1E(256'h1B1935463C10F4EAEA1F4445424242433D37352632414448494C4D4849535753),
    .INIT_1F(256'h3C3C3728263E424243484746454A5257454547464144422A0FF3EAE6E8F90809),
    .INIT_20(256'h4647494542454423FFF2EEEEEFEDFE151B1015342407FDECEA1E43454141433F),
    .INIT_21(256'h27200806202309F0ED1B43454241423F3736332D213241414042434546484C4E),
    .INIT_22(256'h4534332E2521373B3F43434346444648454646444140442A00FDF6E9E7F51E29),
    .INIT_23(256'h404446484845453404F4EEE7E8F116271A1E0DFB0C24200CF6154345413F4855),
    .INIT_24(256'h03EFECEBED14260FF22044423C394754433536342E22233135373E4344474948),
    .INIT_25(256'h3A3536362E2E24212B3437393D424446404144484844463E0FF4EBEAE9EDF40C),
    .INIT_26(256'h403F404445444744281A0C040806FAF7FE03FBEDE9F6FBEEF43044402E304047),
    .INIT_27(256'h3A352E29242012092342443A2E38403F3636373A3E3F3E3526201E20242D3840),
    .INIT_28(256'h443C36414646474645433E3328202132413D3F41444845454746444343423E3C),
    .INIT_29(256'h424445424144454444403B404142424341403D3A3A3A3A3D4145453F3B4C4D48),
    .INIT_2A(256'h272422212D352D303941443B4462615A4E3F3A42494645464647484847422E22),
    .INIT_2B(256'h4D403E4249454546454546484B4A42263E4245413E383A3E3E3F3D3C3E3C3D33),
    .INIT_2C(256'h3631303138332C2B2E37302C2E32403715011222373B2F394643433545616059),
    .INIT_2D(256'h240A1B2135403B454541423A445F5E574F413D414947474645444444484A4427),
    .INIT_2E(256'h4E4039404847474646464645484940201E03F6FC1A16FAF1F71D1600030E3240),
    .INIT_2F(256'h12F2E8E60D10F1E8E8141501FA07343F2101111D354746484440433A45605E56),
    .INIT_30(256'h2600071A394F514F4640443B426161584E403741484444434343434448453320),
    .INIT_31(256'h434138434543444342424347473B252613F0E4E10A11F0E5E810180501113340),
    .INIT_32(256'h12EFE2E20B12F0E8E810140A0E14364021FAFD113C4A4B4F4C424340484E4844),
    .INIT_33(256'h22F4F50C3641454F4E4442444A46444245463B424442424242424449422C202F),
    .INIT_34(256'h45443B434645464647474A473518293010F0E2E50C10F1E9E90D130B0F113241),
    .INIT_35(256'h15F8E7E80F15F4E8E50D14010A10334120F3FC0D2D33444B4D44424347464445),
    .INIT_36(256'h1FF4F2FA243642494F44413D3E3F3D4036313A43454544444448493E20212F39),
    .INIT_37(256'h302E384042424243454A42291A30344013F7E6E50C15F4E5E40F1802060F3240),
    .INIT_38(256'h10EFE3E20D13F9EBEB1115020311383E15F2F2FA3343474C4B42413F393C3D3D),
    .INIT_39(256'h1EF3F5FD344D4F4D494344474340403F3B3A3D4142424344484534192C303940),
    .INIT_3A(256'h42403F423D40424443351C2631353A3D10EDE2E20F1300F3EB13190B08133640),
    .INIT_3B(256'h0FEDE1E11015FFF2F41B1A0E0C15383F1CF0EFFD394C4D4C4A45434343424342),
    .INIT_3C(256'h2201090C3C48444247444041414245444139404341434342331D24332E3B373E),
    .INIT_3D(256'h413C3D40424343361F1E2E2E2C37373A0EEADFE110160304FC1D180E0D163940),
    .INIT_3E(256'h0FECE0E20E160604FA18190F0E1536422F1115113647403F4145454A4B474444),
    .INIT_3F(256'h3614090734453D3D3F4444454641404345423D4141433B20222F262B2C2F3736),
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
        .ENARDEN(ena_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_4_blk_mem_gen_prim_wrapper_init__parameterized3
   (\douta[31] ,
    clka,
    ena_0,
    ena,
    addra,
    dina,
    wea);
  output [4:0]\douta[31] ;
  input clka;
  input ena_0;
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
  wire ena_0;
  wire [0:0]wea;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
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
        .ENARDEN(ena_0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_4_blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [11:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_4_blk_mem_gen_generic_cstr \valid.cstr 
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
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_4.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_4.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
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
module blk_mem_gen_4_blk_mem_gen_v8_4_1
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
  blk_mem_gen_4_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module blk_mem_gen_4_blk_mem_gen_v8_4_1_synth
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [11:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_4_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
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
