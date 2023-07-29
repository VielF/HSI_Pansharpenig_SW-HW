// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Jan  6 23:31:13 2019
// Host        : DESKTOP-UUQ2CPQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/felip/Desktop/pansharpening_spp/pansharpening_spp.srcs/sources_1/ip/blk_mem_gen_7/blk_mem_gen_7_sim_netlist.v
// Design      : blk_mem_gen_7
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_7,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module blk_mem_gen_7
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [10:0]addra;
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
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "3" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.077098 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_7.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_7.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1115" *) 
  (* C_READ_DEPTH_B = "1115" *) 
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
  (* C_WRITE_DEPTH_A = "1115" *) 
  (* C_WRITE_DEPTH_B = "1115" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_7_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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
module blk_mem_gen_7_bindec
   (ena_array,
    addra,
    ena);
  output [0:0]ena_array;
  input [1:0]addra;
  input ena;

  wire [1:0]addra;
  wire ena;
  wire [0:0]ena_array;

  LUT3 #(
    .INIT(8'h40)) 
    \/i_ 
       (.I0(addra[0]),
        .I1(ena),
        .I2(addra[1]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_7_blk_mem_gen_generic_cstr
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [10:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [2:2]ena_array;
  wire [17:0]ram_douta;
  wire \ramloop[0].ram.r_n_18 ;
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
  wire \ramloop[2].ram.r_n_10 ;
  wire \ramloop[2].ram.r_n_11 ;
  wire \ramloop[2].ram.r_n_12 ;
  wire \ramloop[2].ram.r_n_13 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_9 ;
  wire [0:0]wea;

  blk_mem_gen_7_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[10:9]),
        .ena(ena),
        .ena_array(ena_array));
  blk_mem_gen_7_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 }),
        .DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .DOBDO({\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 ,\ramloop[1].ram.r_n_18 ,\ramloop[1].ram.r_n_19 ,\ramloop[1].ram.r_n_20 ,\ramloop[1].ram.r_n_21 ,\ramloop[1].ram.r_n_22 ,\ramloop[1].ram.r_n_23 ,\ramloop[1].ram.r_n_24 ,\ramloop[1].ram.r_n_25 ,\ramloop[1].ram.r_n_26 ,\ramloop[1].ram.r_n_27 ,\ramloop[1].ram.r_n_28 ,\ramloop[1].ram.r_n_29 ,\ramloop[1].ram.r_n_30 ,\ramloop[1].ram.r_n_31 }),
        .addra(addra[10:9]),
        .clka(clka),
        .douta(douta),
        .ena(ena),
        .ram_douta(ram_douta));
  blk_mem_gen_7_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram (\ramloop[0].ram.r_n_18 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[17:0]),
        .ena(ena),
        .ram_douta(ram_douta),
        .wea(wea));
  blk_mem_gen_7_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DOADO({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 ,\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .DOBDO({\ramloop[1].ram.r_n_16 ,\ramloop[1].ram.r_n_17 ,\ramloop[1].ram.r_n_18 ,\ramloop[1].ram.r_n_19 ,\ramloop[1].ram.r_n_20 ,\ramloop[1].ram.r_n_21 ,\ramloop[1].ram.r_n_22 ,\ramloop[1].ram.r_n_23 ,\ramloop[1].ram.r_n_24 ,\ramloop[1].ram.r_n_25 ,\ramloop[1].ram.r_n_26 ,\ramloop[1].ram.r_n_27 ,\ramloop[1].ram.r_n_28 ,\ramloop[1].ram.r_n_29 ,\ramloop[1].ram.r_n_30 ,\ramloop[1].ram.r_n_31 }),
        .addra(addra[8:0]),
        .clka(clka),
        .dina(dina),
        .ena(ena),
        .ena_array(ena_array),
        .wea(wea));
  blk_mem_gen_7_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[9:0]),
        .clka(clka),
        .dina(dina[31:18]),
        .\douta[31] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 ,\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 }),
        .ena(ena),
        .ena_0(\ramloop[0].ram.r_n_18 ),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module blk_mem_gen_7_blk_mem_gen_mux
   (douta,
    ena,
    addra,
    clka,
    DOADO,
    ram_douta,
    DOBDO,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram );
  output [31:0]douta;
  input ena;
  input [1:0]addra;
  input clka;
  input [15:0]DOADO;
  input [17:0]ram_douta;
  input [15:0]DOBDO;
  input [13:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;

  wire [13:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [15:0]DOADO;
  wire [15:0]DOBDO;
  wire [1:0]addra;
  wire clka;
  wire [31:0]douta;
  wire ena;
  wire [17:0]ram_douta;
  wire [1:0]sel_pipe;
  wire [1:0]sel_pipe_d1;

  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[0]_INST_0 
       (.I0(DOADO[0]),
        .I1(ram_douta[0]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[0]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[10]_INST_0 
       (.I0(DOADO[10]),
        .I1(ram_douta[10]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[10]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[11]_INST_0 
       (.I0(DOADO[11]),
        .I1(ram_douta[11]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[11]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[12]_INST_0 
       (.I0(DOADO[12]),
        .I1(ram_douta[12]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[12]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[13]_INST_0 
       (.I0(DOADO[13]),
        .I1(ram_douta[13]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[13]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[14]_INST_0 
       (.I0(DOADO[14]),
        .I1(ram_douta[14]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[14]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[15]_INST_0 
       (.I0(DOADO[15]),
        .I1(ram_douta[15]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[15]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[16]_INST_0 
       (.I0(DOBDO[0]),
        .I1(ram_douta[16]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[16]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[17]_INST_0 
       (.I0(DOBDO[1]),
        .I1(ram_douta[17]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[17]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[18]_INST_0 
       (.I0(DOBDO[2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [0]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[18]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[19]_INST_0 
       (.I0(DOBDO[3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [1]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[19]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[1]_INST_0 
       (.I0(DOADO[1]),
        .I1(ram_douta[1]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[1]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[20]_INST_0 
       (.I0(DOBDO[4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [2]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[20]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[21]_INST_0 
       (.I0(DOBDO[5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[21]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[22]_INST_0 
       (.I0(DOBDO[6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [4]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[22]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[23]_INST_0 
       (.I0(DOBDO[7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [5]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[23]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[24]_INST_0 
       (.I0(DOBDO[8]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [6]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[24]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[25]_INST_0 
       (.I0(DOBDO[9]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [7]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[25]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[26]_INST_0 
       (.I0(DOBDO[10]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [8]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[26]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[27]_INST_0 
       (.I0(DOBDO[11]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [9]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[27]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[28]_INST_0 
       (.I0(DOBDO[12]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [10]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[28]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[29]_INST_0 
       (.I0(DOBDO[13]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [11]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[29]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[2]_INST_0 
       (.I0(DOADO[2]),
        .I1(ram_douta[2]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[2]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[30]_INST_0 
       (.I0(DOBDO[14]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [12]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[30]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[31]_INST_0 
       (.I0(DOBDO[15]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [13]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[31]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[3]_INST_0 
       (.I0(DOADO[3]),
        .I1(ram_douta[3]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[3]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[4]_INST_0 
       (.I0(DOADO[4]),
        .I1(ram_douta[4]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[4]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[5]_INST_0 
       (.I0(DOADO[5]),
        .I1(ram_douta[5]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[5]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[6]_INST_0 
       (.I0(DOADO[6]),
        .I1(ram_douta[6]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[6]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[7]_INST_0 
       (.I0(DOADO[7]),
        .I1(ram_douta[7]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[7]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[8]_INST_0 
       (.I0(DOADO[8]),
        .I1(ram_douta[8]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
        .O(douta[8]));
  LUT4 #(
    .INIT(16'h0CAC)) 
    \douta[9]_INST_0 
       (.I0(DOADO[9]),
        .I1(ram_douta[9]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[0]),
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
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_7_blk_mem_gen_prim_width
   (ram_douta,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [17:0]ram_douta;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input clka;
  input ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ena;
  wire [17:0]ram_douta;
  wire [0:0]wea;

  blk_mem_gen_7_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena(ena),
        .ram_douta(ram_douta),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_7_blk_mem_gen_prim_width__parameterized0
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

  blk_mem_gen_7_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
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
module blk_mem_gen_7_blk_mem_gen_prim_width__parameterized1
   (\douta[31] ,
    clka,
    ena_0,
    ena,
    addra,
    dina,
    wea);
  output [13:0]\douta[31] ;
  input clka;
  input ena_0;
  input ena;
  input [9:0]addra;
  input [13:0]dina;
  input [0:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [13:0]dina;
  wire [13:0]\douta[31] ;
  wire ena;
  wire ena_0;
  wire [0:0]wea;

  blk_mem_gen_7_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .\douta[31] (\douta[31] ),
        .ena(ena),
        .ena_0(ena_0),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_7_blk_mem_gen_prim_wrapper_init
   (ram_douta,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [17:0]ram_douta;
  output \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input ena;
  input [10:0]addra;
  input [17:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [10:0]addra;
  wire clka;
  wire [17:0]dina;
  wire ena;
  wire [17:0]ram_douta;
  wire [0:0]wea;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'hDAD3BA2000029000F80375B94003C00A6A0A888000020F408000AAEA800002E0),
    .INITP_01(256'h02EDC29A0A2C290821406AEFAA000AE00050BA90EC370F4BDCC2AE22A95A8017),
    .INITP_02(256'h000803700012900A402900AEB9B742A000B80014003EAFDAAE00FA0BAAB70DC0),
    .INITP_03(256'hAC020000002A00017EAC003F403B51002BA5008120001E003003C00020330126),
    .INITP_04(256'h59E02AAC72CAE2204002B11A837AA00AAAB803B4023BB0ED0026EBA82DBAE8FC),
    .INITP_05(256'hAAA202A00009B0EEAE2F02AAAAA9BF9C14C1C430FBAAABB83AF3CCF044000295),
    .INITP_06(256'hC660CB1287CBF4E946ABEE77FDE5F271D722600F801DAAA0200AA616080FEAAA),
    .INITP_07(256'h8AA677FA3CDFFBC760EE00EC3CA4A32BAA6E9C3F2EAA0BAA26820982AB82A649),
    .INIT_00(256'h55AB00000000000000000000000000000000000000004216EF57421600000000),
    .INIT_01(256'h318C0000000000000000000000000000F8DF13EDF8DF9EC49E269EC455AB55AB),
    .INIT_02(256'h0000000000000000000000000000318C00000000FFE8FFE8A289000000000000),
    .INIT_03(256'hE4B655AB55AB55AB0000000055AB55AB55AB0000318C0000318C000000000000),
    .INIT_04(256'h67FB000000000000000000000000FFFEFFFE94A80000000000000000FFD4FFD4),
    .INIT_05(256'hFEC9FEC9046000000000000000003C2536AC3C2567FB67FB4216EF57421667FB),
    .INIT_06(256'h000000000000000000000000000047B847B851F8000000000000000000000000),
    .INIT_07(256'h3C2536ACCCE8CCE817B1A48B3CABFFDCB18BFFDCB18BB18B0000A55400000000),
    .INIT_08(256'hF8DF13EDF8DF67FB67FB67FB55AB55AB55AB000000000000000067FB67FB3C25),
    .INIT_09(256'hFFE8A289FFFE94A8FFFE00000000A554F8DF13ED9FF8F8DF0000A5540000A554),
    .INIT_0A(256'hFEC90460FEC9000000003C2536AC3C25000000000C940C94368519924361FFE8),
    .INIT_0B(256'h0000000000000000CB1ECB1E000000009EC49E269EC447B847B851F800000000),
    .INIT_0C(256'h046055AB55AB55AB00000000000000000000000042164216EF57C69100000000),
    .INIT_0D(256'hEEC99922748710A0FC3C363636CB3636FC3C033B538F033B406C033BFEC9FEC9),
    .INIT_0E(256'hEECBEECB9924CCD27DEECCD2179F00000000FFD4FFD4E4B6000000009922EEC9),
    .INIT_0F(256'h000000000000CCEA17B2CCEAFFE8A289FFE80000000055AB55AB876A55AB9924),
    .INIT_10(256'hD07B71F0F8DFF8DF13EDFFFE67F9FFFED5DCD5DCFFFE67F9FFFED5DCD5DC0000),
    .INIT_11(256'h55ABCCEA17B2CCEA0000000000000000FFFFFFFF318B318B0000000071F0BD8B),
    .INIT_12(256'h00000000000000000000FFF3FFF3B19CCCEACCEA17B2FFE8FFE8A28955AB55AB),
    .INIT_13(256'h0000000000000000CCE917B2CCE900000000000000000000000067FB67FB0000),
    .INIT_14(256'h4216EF5747B851F847B8468F78A5468F51210000000071FBD08271FB00000000),
    .INIT_15(256'h51F8000000000000000047B847B851F800000000000000009EC49EC49E264216),
    .INIT_16(256'h00000000000000000000CB1E0000FFD5FFD5E4B7000000000000000047B847B8),
    .INIT_17(256'h000000000000000000000000318C0000000000000000FFE8A289FFE800000000),
    .INIT_18(256'h0000318C000000000000FFFE94A8FFFE000000000000CB1E0000FFD5E4B7FFD5),
    .INIT_19(256'h30F6D0AC30F641BE30F600000000F14EF14EC9018336D320FD42833678BE8336),
    .INIT_1A(256'h78F946680000000000000000ED91ED91754CF80EBDED826E0000000000000000),
    .INIT_1B(256'h000042164216EF57C691C69167FB67FB0000000000000000466878F9514BCF7B),
    .INIT_1C(256'h88B90000000000000000FEC90460FEC967FB67FB0000CB1E0000000000000000),
    .INIT_1D(256'h67FBFEC9FEC904609EC49EC49E260000000000000000000000004EE94EE94EE9),
    .INIT_1E(256'h0000000000000000000055AB55AB55AB00000000D5DE000000000000000067FB),
    .INIT_1F(256'h9EC49EC49E260000000000000000318C0000000000000000000000000000D5DE),
    .INIT_20(256'h0000FFD530EFE4B7FFD5F0BD0C9D0C9DF0BD9EC49EC47D549E26FFFEFFFE94A8),
    .INIT_21(256'hA4710000000000000000FFD5E4B7FFD530EFCCE9CCE917B255AB55AB55AB0000),
    .INIT_22(256'h0000000000004212C108EF554212FEC90460FEC900000000CBBD17BFCBBDC664),
    .INIT_23(256'h55AB55AB55AB55AB4216EF5742160000000000000000CBBF17C1CBBFC6650000),
    .INIT_24(256'h13ED00000000FFE8A289FFE871FBE50271FBD082000000000000000055AB55AB),
    .INIT_25(256'h51F800000000000000000000000042164216EF57000067FB000067FBF8DFF8DF),
    .INIT_26(256'h36AC3C25568E6A73CB08A8FF6A73CCEA17B2CCEA3CAC47B8D0B247B8D0B2D0B2),
    .INIT_27(256'hAB6EAB6ECCE8A48B17B1CCE83CAB00000000A554A55455AB55AB55AB3C255F74),
    .INIT_28(256'hCB1E0000CB1E00000000000000000000000000000000A554A5549FCE9FCEAB6E),
    .INIT_29(256'h0000F0BD0C9D0C9DF0BD4AE289CF4AE2C90CD2C14AE289CF4AE2C90CD2C10000),
    .INIT_2A(256'h332D332D367D3CB0735B735B735B735B55AB55AB55ABFFF3A54BFFF3B19C0000),
    .INIT_2B(256'h0000FC32FC323630DD9A363036C4FC32DD9A36C4FC3236303630332D1BA63A3F),
    .INIT_2C(256'h5F255F2578BC7809A34178094B9ED2884B9E9F02C9ABFEC90460CA57FEC90000),
    .INIT_2D(256'h5F877861781A5B1E473F5B1E55E355E3D3C1D3C1D3C16B465B1E78BC5F250F7F),
    .INIT_2E(256'h0000000000000000000000004B9ED2884B9E9F0200000000781A5F870F1D5F87),
    .INIT_2F(256'h55AB55AB971055AB55AB9924EECB9924EECB0000000055AB55AB55AB00000000),
    .INIT_30(256'hBC48BC48E3A20000D5DE0000F0BCF0BC9A9B0C9B0C9BF8DFF8DF13ED55AB55AB),
    .INIT_31(256'hEEB9990E000000000000000055AB55AB55AB47B851F847B8D0B267FB67FBE3A2),
    .INIT_32(256'h04600000000000000000495591B84955A7393E0355AB55AB55AB990EEEB9588E),
    .INIT_33(256'hFEA9E408E408FEA90000318C0000FFD4E4B6FFD40000000000000000FEC9FEC9),
    .INIT_34(256'hE0C4097009706257FEC90460CA57CA57FEC90C941992436136850C9429573685),
    .INIT_35(256'hD4C367FDD4C357376AF557374B09AA378CFB4B092ACC6AF5DB908E82DB900970),
    .INIT_36(256'h988AA1F6B52701DA01DAA1F6988A78E178E178E1816F68BB78E1FFD4FFD4E4B6),
    .INIT_37(256'h3CFC972DB6308BD527FBCC83438E76F89D82438E5A899D8276F8F95F76F8988A),
    .INIT_38(256'h55AB55ABCCE917B2CCE900000000BDC51A37BDC533303A673330972DCC83B630),
    .INIT_39(256'hDC70FFD4E4B6FFD49924EECBEECB9924000000004B9ED2884B9E0000000055AB),
    .INIT_3A(256'hB977F8DF9FF8F8DF13ED55AB55AB55AB000000009EC49E269EC455AB55AB55AB),
    .INIT_3B(256'h71FB71FBD0824B9ED2884B9EC9AB4B9E4B9ED2889F020000000051F151F151F1),
    .INIT_3C(256'h0000FFFEFFFE94A847B847B851F8EBBCFB09FB09F720BCAEEBBC9EC49EC49E26),
    .INIT_3D(256'h3EBAA4752D632D63CC19CCEA17B2CCEA0000000000000000FFF3B19CFFF30000),
    .INIT_3E(256'hC109EF5654AE879F54AEB00C54AE02B77B7F52CF40E202B702B72D633EBA4657),
    .INIT_3F(256'h9EC07D51BDC53A671A37BDC533303A673330FD90C98E03250325FD9042144214),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[9:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({dina[16:9],dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({dina[17],dina[8]}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({ram_douta[16:9],ram_douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({ram_douta[17],ram_douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(ena),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1 
       (.I0(addra[10]),
        .I1(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_7_blk_mem_gen_prim_wrapper_init__parameterized0
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
    .INIT_00(256'h3E9B77D137AC84963E9B77D13EFF3CC03B433D2333E479E32ECCFA512ECCFA51),
    .INIT_01(256'h3F0000003F0000003F0000003F0000003E9B77D1338B2AE03D3657723D365772),
    .INIT_02(256'h3F0000003F0000003EAAAAAB3EAAAAAB32332E103EAAAAAB3F0000003F000000),
    .INIT_03(256'h3EFFF0DF302F3FF83EAAA3F0392172763EAAA3F03EAAA3F03F0000003F000000),
    .INIT_04(256'h3F0000003F0000003F0000003F0000003F0000003371AADE3EFFF0DF397226ED),
    .INIT_05(256'h3F0000003F0000003F0000003F0000003EEE84163EEE84163D8BDF573F000000),
    .INIT_06(256'h3EFFE34E39E592013EFFFED43EFFFED43795C9B63EFFFED43EFFFED43795C9B6),
    .INIT_07(256'h3EFF3CC43B433D263EFF3CC43F0000003F0000003F0000003F0000003EFFE34E),
    .INIT_08(256'h3EFFFB902ECD938E380E07253EFFFFFA33E528A53EFFFFFA33E528A533E528A5),
    .INIT_09(256'h3370E6543ACDDAE83ACDDAE8379550942E581FA83EFF2FCE3EFFFB90380E0725),
    .INIT_0A(256'h3F0000003EAA52D337BD00AA3B0249223EAA52D33EAA52D33EFF2FCE37955094),
    .INIT_0B(256'h00000000000000000000000000000000000000003F0000003F0000003F000000),
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
module blk_mem_gen_7_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[31] ,
    clka,
    ena_0,
    ena,
    addra,
    dina,
    wea);
  output [13:0]\douta[31] ;
  input clka;
  input ena_0;
  input ena;
  input [9:0]addra;
  input [13:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_8 ;
  wire [9:0]addra;
  wire clka;
  wire [13:0]dina;
  wire [13:0]\douta[31] ;
  wire ena;
  wire ena_0;
  wire [0:0]wea;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
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
    .INIT_00(256'h1F2A1F401F401F401F401F401F401F401F401F401F401F3B1E621F3B1F401F40),
    .INIT_01(256'h19211F401F401F401F401F401F401F401F3F1C5C1F3F1F3F1D501F3F1F2A1F2A),
    .INIT_02(256'h1F401F401F401F401F401F401F4019211F401F401F3F1F3F1A6E1F401F401F40),
    .INIT_03(256'h1B651F2A1F2A1F2A1F401F401F2A1F2A1F2A1F4019211F4019211F401F401F40),
    .INIT_04(256'h17361F401F401F401F401F401F401F3F1F3F19791F401F401F401F401F3F1F3F),
    .INIT_05(256'h1F3F1F3F1C031F401F401F401F401F3D1E461F3D173617361F3B1E621F3B1736),
    .INIT_06(256'h1F401F401F401F401F401F401F401F3F1F3F1D6E1F401F401F401F401F401F40),
    .INIT_07(256'h1F3D1E461F3F1F3F1D33195C17161F3F1A501F3F1A501A501F40180B1F401F40),
    .INIT_08(256'h1F3F1C5C1F3F1736173617361F2A1F2A1F2A1F401F401F401F40173617361F3D),
    .INIT_09(256'h1F3F1A6E1F3F19791F3F1F401F40180B1F3F1C5C180B1F3F1F40180B1F40180B),
    .INIT_0A(256'h1F3F1C031F3F1F401F401F3D1E461F3D1F401F401F3D1F3D17141E461D311F3F),
    .INIT_0B(256'h1F401F401F401F40173317331F401F401F3F1D501F3F1F3F1F3F1D6E1F401F40),
    .INIT_0C(256'h1C031F2A1F2A1F2A1F401F401F401F401F401F401F3B1F3B1E62172F1F401F40),
    .INIT_0D(256'h1D331F3F195C17161F3D1E28180A1E281F3D1F2A1D5D1F2A190C1F2A1F3F1F3F),
    .INIT_0E(256'h1D331D331F3F1F3F1A6E1F3F1D331F401F401F3F1F3F1B651F401F401F3F1D33),
    .INIT_0F(256'h1F401F401F401F3F1D331F3F1F3F1A6E1F3F1F401F401F2A1F2A17221F2A1F3F),
    .INIT_10(256'h1E281F3E1F3F1F3F1C5C1F3F17161F3F195C195C1F3F17161F3F195C195C1F40),
    .INIT_11(256'h1F2A1F3F1D331F3F1F401F401F401F401F3F1F3F192119211F401F401F3E1A4F),
    .INIT_12(256'h1F401F401F401F401F401F3F1F3F1A501F3F1F3F1D331F3F1F3F1A6E1F2A1F2A),
    .INIT_13(256'h1F401F401F401F401F3F1D331F3F1F401F401F401F401F401F40173617361F40),
    .INIT_14(256'h1F3B1E621F3F1D6E1F3F1F3F1B651F3F1D6E1F401F401F3E1E281F3E1F401F40),
    .INIT_15(256'h1D6E1F401F401F401F401F3F1F3F1D6E1F401F401F401F401F3F1F3F1D501F3B),
    .INIT_16(256'h1F401F401F401F401F4017331F401F3F1F3F1B651F401F401F401F401F3F1F3F),
    .INIT_17(256'h1F401F401F401F401F401F4019211F401F401F401F401F3F1A6E1F3F1F401F40),
    .INIT_18(256'h1F4019211F401F401F401F3F19791F3F1F401F401F4017331F401F3F1B651F3F),
    .INIT_19(256'h1F2A1E161F2A1A401F2A1F401F401F3F1F3F1C791F24167D1D1A1F241F061F24),
    .INIT_1A(256'h1B651F3F1F401F401F401F401F3B1F3B19751D4D1E62172F1F401F401F401F40),
    .INIT_1B(256'h1F401F3B1F3B1E62172F172F173617361F401F401F401F401F3F1B651D6E1921),
    .INIT_1C(256'h1C661F401F401F401F401F3F1C031F3F173617361F4017331F401F401F401F40),
    .INIT_1D(256'h17361F3F1F3F1C031F3F1F3F1D501F401F401F401F401F401F401F2A1F2A1F2A),
    .INIT_1E(256'h1F401F401F401F401F401F2A1F2A1F2A1F401F40195C1F401F401F401F401736),
    .INIT_1F(256'h1F3F1F3F1D501F401F401F401F4019211F401F401F401F401F401F401F40195C),
    .INIT_20(256'h1F401F3F19211B651F3F1F3F1C5C1C5C1F3F1F3F1F3F17331D501F3F1F3F1979),
    .INIT_21(256'h195C1F401F401F401F401F3F1B651F3F19211F3F1F3F1D331F2A1F2A1F2A1F40),
    .INIT_22(256'h1F401F401F401F3B19751E621F3B1F3F1C031F3F1F401F401F3F1D331F3F1B65),
    .INIT_23(256'h1F2A1F2A1F2A1F2A1F3B1E621F3B1F401F401F401F401F3F1D331F3F1B651F40),
    .INIT_24(256'h1C5C1F401F401F3F1A6E1F3F1F3E180A1F3E1E281F401F401F401F401F2A1F2A),
    .INIT_25(256'h1D6E1F401F401F401F401F401F401F3B1F3B1E621F4017161F4017161F3F1F3F),
    .INIT_26(256'h1E461F3D195A1F3E1E281C5B1F3E1F3F1D331F3F17161F3F19211F3F19211921),
    .INIT_27(256'h1E271E271F3F195C1D331F3F17161F401F40180B180B1F2A1F2A1F2A1F3D1714),
    .INIT_28(256'h17331F4017331F401F401F401F401F401F401F401F40180B180B1F3C1F3C1E27),
    .INIT_29(256'h1F401F3F1C5C1C5C1F3F1F321B5B1F32170A1F151F321B5B1F32170A1F151F40),
    .INIT_2A(256'h1F281F2817201E4F152B152B152B152B1F2A1F2A1F2A1F3F180B1F3F1A501F40),
    .INIT_2B(256'h1F401F3D1F3D1E281A4E1E28180A1F3D1A4E180A1F3D1E281E281F281B6D1D3E),
    .INIT_2C(256'h1F051F051F2319411B4919411F321F151F32194F170A1F3F1C0317331F3F1F40),
    .INIT_2D(256'h1F0519411F231F281B6D1F28172017201964196419641E4F1F281F231F05167C),
    .INIT_2E(256'h1F401F401F401F401F401F401F321F151F32194F1F401F401F231F05167C1F05),
    .INIT_2F(256'h1F2A1F2A190C1F2A1F2A1F3F1D331F3F1D331F401F401F2A1F2A1F2A1F401F40),
    .INIT_30(256'h1C791C791F3F1F40195C1F401F3F1F3F180B1C5C1C5C1F3F1F3F1C5C1F2A1F2A),
    .INIT_31(256'h1D331F3F1F401F401F401F401F2A1F2A1F2A1F3F1D6E1F3F1921173617361F3F),
    .INIT_32(256'h1C031F401F401F401F401F311E3C1F311F1317091F2A1F2A1F2A1F3F1D331A6E),
    .INIT_33(256'h1F3F1B651B651F3F1F4019211F401F3F1B651F3F1F401F401F401F401F3F1F3F),
    .INIT_34(256'h17321D501D501C031F3F1C03173317331F3F1F3D1E461D3117141F3D195A1714),
    .INIT_35(256'h195C1716195C1F37172C1F371E6019711B7D1E601D4A172C1F3F19781F3F1D50),
    .INIT_36(256'h1F26171E1D3B1E4D1E4D171E1F261F1D1F1D1F1D1B621E441F1D1F3F1F3F1B65),
    .INIT_37(256'h172F1F3B1D4D1E6219751C001F3B1D4D1C001F3B1E621C001D4D172F1D4D1F26),
    .INIT_38(256'h1F2A1F2A1F3F1D331F3F1F401F401F281E321F281F0B17021F0B1F3B1C001D4D),
    .INIT_39(256'h177A1F3F1B651F3F1F3F1D331D331F3F1F401F401F321F151F321F401F401F2A),
    .INIT_3A(256'h1C481F3F180B1F3F1C5C1F2A1F2A1F2A1F401F401F3F1D501F3F1F2A1F2A1F2A),
    .INIT_3B(256'h1F3E1F3E1E281F321F151F32170A1F321F321F15194F1F401F401F2A1F2A1F2A),
    .INIT_3C(256'h1F401F3F1F3F19791F3F1F3F1D6E1F3B1C001C001D4D1E621F3B1F3F1F3F1D50),
    .INIT_3D(256'h1A401C471F2A1F2A1E161F3F1D331F3F1F401F401F401F401F3F1A501F3F1F40),
    .INIT_3E(256'h19751E621F2A17221F2A1B6F1F2A1F2A1B511D5D190C1F2A1F2A1F2A1A401779),
    .INIT_3F(256'h1F3F17331F2817021E321F281F0B17021F0B1F3F17331C031C031F3F1F3B1F3B),
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
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,dina[13:7],1'b0,dina[6:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_0 ,\douta[31] [13:7],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_8 ,\douta[31] [6:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_n_33 }),
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
module blk_mem_gen_7_blk_mem_gen_top
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [10:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_7_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "11" *) (* C_ADDRB_WIDTH = "11" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "3" *) 
(* C_COUNT_36K_BRAM = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.077098 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_7.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_7.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "1115" *) (* C_READ_DEPTH_B = "1115" *) (* C_READ_WIDTH_A = "32" *) 
(* C_READ_WIDTH_B = "32" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "1115" *) (* C_WRITE_DEPTH_B = "1115" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_7_blk_mem_gen_v8_4_1
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
  input [10:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [10:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [10:0]rdaddrecc;
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
  output [10:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [10:0]addra;
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
  blk_mem_gen_7_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module blk_mem_gen_7_blk_mem_gen_v8_4_1_synth
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input ena;
  input [10:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;

  blk_mem_gen_7_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
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
