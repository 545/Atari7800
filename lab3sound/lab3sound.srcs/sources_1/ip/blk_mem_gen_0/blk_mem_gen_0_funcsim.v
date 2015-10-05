// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Sun Oct  4 22:06:59 2015
// Host        : cascade.andrew.cmu.edu running 64-bit Red Hat Enterprise Linux Server release 7.1 (Maipo)
// Command     : write_verilog -force -mode funcsim
//               /afs/ece.cmu.edu/usr/cmbarker/Private/Atari7800/lab3sound/lab3sound.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_funcsim.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_2,{}" *) (* core_generation_info = "blk_mem_gen_0,blk_mem_gen_v8_2,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=blk_mem_gen,x_ipVersion=8.2,x_ipCoreRevision=6,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_FAMILY=zynq,C_XDEVICEFAMILY=zynq,C_ELABORATION_DIR=./,C_INTERFACE_TYPE=0,C_AXI_TYPE=1,C_AXI_SLAVE_TYPE=0,C_USE_BRAM_BLOCK=0,C_ENABLE_32BIT_ADDRESS=0,C_CTRL_ECC_ALGO=NONE,C_HAS_AXI_ID=0,C_AXI_ID_WIDTH=4,C_MEM_TYPE=1,C_BYTE_SIZE=9,C_ALGORITHM=1,C_PRIM_TYPE=1,C_LOAD_INIT_FILE=1,C_INIT_FILE_NAME=blk_mem_gen_0.mif,C_INIT_FILE=blk_mem_gen_0.mem,C_USE_DEFAULT_DATA=0,C_DEFAULT_DATA=0,C_HAS_RSTA=0,C_RST_PRIORITY_A=CE,C_RSTRAM_A=0,C_INITA_VAL=0,C_HAS_ENA=1,C_HAS_REGCEA=0,C_USE_BYTE_WEA=0,C_WEA_WIDTH=1,C_WRITE_MODE_A=NO_CHANGE,C_WRITE_WIDTH_A=16,C_READ_WIDTH_A=16,C_WRITE_DEPTH_A=83151,C_READ_DEPTH_A=83151,C_ADDRA_WIDTH=17,C_HAS_RSTB=0,C_RST_PRIORITY_B=CE,C_RSTRAM_B=0,C_INITB_VAL=0,C_HAS_ENB=1,C_HAS_REGCEB=0,C_USE_BYTE_WEB=0,C_WEB_WIDTH=1,C_WRITE_MODE_B=READ_FIRST,C_WRITE_WIDTH_B=16,C_READ_WIDTH_B=16,C_WRITE_DEPTH_B=83151,C_READ_DEPTH_B=83151,C_ADDRB_WIDTH=17,C_HAS_MEM_OUTPUT_REGS_A=0,C_HAS_MEM_OUTPUT_REGS_B=1,C_HAS_MUX_OUTPUT_REGS_A=0,C_HAS_MUX_OUTPUT_REGS_B=0,C_MUX_PIPELINE_STAGES=0,C_HAS_SOFTECC_INPUT_REGS_A=0,C_HAS_SOFTECC_OUTPUT_REGS_B=0,C_USE_SOFTECC=0,C_USE_ECC=0,C_EN_ECC_PIPE=0,C_HAS_INJECTERR=0,C_SIM_COLLISION_CHECK=ALL,C_COMMON_CLK=1,C_DISABLE_WARN_BHV_COLL=0,C_EN_SLEEP_PIN=0,C_USE_URAM=0,C_EN_RDADDRA_CHG=0,C_EN_RDADDRB_CHG=0,C_EN_DEEPSLEEP_PIN=0,C_EN_SHUTDOWN_PIN=0,C_DISABLE_WARN_BHV_RANGE=0,C_COUNT_36K_BRAM=35,C_COUNT_18K_BRAM=9,C_EST_POWER_SUMMARY=Estimated Power for IP     _     32.560338 mW}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "blk_mem_gen_v8_2,Vivado 2015.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [16:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [16:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [16:0]addra;
  wire [16:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_douta_UNCONNECTED;
  wire [16:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [16:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "17" *) 
  (* C_ADDRB_WIDTH = "17" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "9" *) 
  (* C_COUNT_36K_BRAM = "35" *) 
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
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     32.560338 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "83151" *) 
  (* C_READ_DEPTH_B = "83151" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "83151" *) 
  (* C_WRITE_DEPTH_B = "83151" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DONT_TOUCH *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_0_blk_mem_gen_v8_2 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[15:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[16:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rstb(1'b0),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[16:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
module blk_mem_gen_0_blk_mem_gen_generic_cstr
   (doutb,
    ena,
    addra,
    enb,
    addrb,
    clka,
    clkb,
    dina,
    wea);
  output [15:0]doutb;
  input ena;
  input [16:0]addra;
  input enb;
  input [16:0]addrb;
  input clka;
  input clkb;
  input [15:0]dina;
  input [0:0]wea;

  wire [16:0]addra;
  wire [16:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire [8:0]ram_doutb;
  wire \ramloop[0].ram.r_n_0 ;
  wire \ramloop[10].ram.r_n_0 ;
  wire \ramloop[11].ram.r_n_0 ;
  wire \ramloop[11].ram.r_n_1 ;
  wire \ramloop[11].ram.r_n_2 ;
  wire \ramloop[12].ram.r_n_0 ;
  wire \ramloop[12].ram.r_n_1 ;
  wire \ramloop[12].ram.r_n_10 ;
  wire \ramloop[12].ram.r_n_2 ;
  wire \ramloop[12].ram.r_n_3 ;
  wire \ramloop[12].ram.r_n_4 ;
  wire \ramloop[12].ram.r_n_5 ;
  wire \ramloop[12].ram.r_n_6 ;
  wire \ramloop[12].ram.r_n_7 ;
  wire \ramloop[12].ram.r_n_8 ;
  wire \ramloop[12].ram.r_n_9 ;
  wire \ramloop[13].ram.r_n_0 ;
  wire \ramloop[14].ram.r_n_0 ;
  wire \ramloop[14].ram.r_n_1 ;
  wire \ramloop[14].ram.r_n_2 ;
  wire \ramloop[14].ram.r_n_3 ;
  wire \ramloop[14].ram.r_n_4 ;
  wire \ramloop[14].ram.r_n_5 ;
  wire \ramloop[14].ram.r_n_6 ;
  wire \ramloop[14].ram.r_n_7 ;
  wire \ramloop[14].ram.r_n_8 ;
  wire \ramloop[15].ram.r_n_0 ;
  wire \ramloop[15].ram.r_n_1 ;
  wire \ramloop[15].ram.r_n_2 ;
  wire \ramloop[15].ram.r_n_3 ;
  wire \ramloop[15].ram.r_n_4 ;
  wire \ramloop[15].ram.r_n_5 ;
  wire \ramloop[15].ram.r_n_6 ;
  wire \ramloop[15].ram.r_n_7 ;
  wire \ramloop[15].ram.r_n_8 ;
  wire \ramloop[16].ram.r_n_0 ;
  wire \ramloop[16].ram.r_n_1 ;
  wire \ramloop[16].ram.r_n_2 ;
  wire \ramloop[16].ram.r_n_3 ;
  wire \ramloop[16].ram.r_n_4 ;
  wire \ramloop[16].ram.r_n_5 ;
  wire \ramloop[16].ram.r_n_6 ;
  wire \ramloop[16].ram.r_n_7 ;
  wire \ramloop[16].ram.r_n_8 ;
  wire \ramloop[17].ram.r_n_0 ;
  wire \ramloop[17].ram.r_n_1 ;
  wire \ramloop[17].ram.r_n_2 ;
  wire \ramloop[17].ram.r_n_3 ;
  wire \ramloop[17].ram.r_n_4 ;
  wire \ramloop[17].ram.r_n_5 ;
  wire \ramloop[17].ram.r_n_6 ;
  wire \ramloop[17].ram.r_n_7 ;
  wire \ramloop[17].ram.r_n_8 ;
  wire \ramloop[18].ram.r_n_0 ;
  wire \ramloop[18].ram.r_n_1 ;
  wire \ramloop[18].ram.r_n_2 ;
  wire \ramloop[18].ram.r_n_3 ;
  wire \ramloop[18].ram.r_n_4 ;
  wire \ramloop[18].ram.r_n_5 ;
  wire \ramloop[18].ram.r_n_6 ;
  wire \ramloop[18].ram.r_n_7 ;
  wire \ramloop[18].ram.r_n_8 ;
  wire \ramloop[19].ram.r_n_0 ;
  wire \ramloop[19].ram.r_n_1 ;
  wire \ramloop[19].ram.r_n_2 ;
  wire \ramloop[19].ram.r_n_3 ;
  wire \ramloop[19].ram.r_n_4 ;
  wire \ramloop[19].ram.r_n_5 ;
  wire \ramloop[19].ram.r_n_6 ;
  wire \ramloop[19].ram.r_n_7 ;
  wire \ramloop[19].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[20].ram.r_n_0 ;
  wire \ramloop[20].ram.r_n_1 ;
  wire \ramloop[20].ram.r_n_2 ;
  wire \ramloop[20].ram.r_n_3 ;
  wire \ramloop[20].ram.r_n_4 ;
  wire \ramloop[20].ram.r_n_5 ;
  wire \ramloop[20].ram.r_n_6 ;
  wire \ramloop[20].ram.r_n_7 ;
  wire \ramloop[20].ram.r_n_8 ;
  wire \ramloop[21].ram.r_n_0 ;
  wire \ramloop[21].ram.r_n_1 ;
  wire \ramloop[21].ram.r_n_2 ;
  wire \ramloop[21].ram.r_n_3 ;
  wire \ramloop[21].ram.r_n_4 ;
  wire \ramloop[21].ram.r_n_5 ;
  wire \ramloop[21].ram.r_n_6 ;
  wire \ramloop[21].ram.r_n_7 ;
  wire \ramloop[21].ram.r_n_8 ;
  wire \ramloop[22].ram.r_n_0 ;
  wire \ramloop[22].ram.r_n_1 ;
  wire \ramloop[22].ram.r_n_2 ;
  wire \ramloop[22].ram.r_n_3 ;
  wire \ramloop[22].ram.r_n_4 ;
  wire \ramloop[22].ram.r_n_5 ;
  wire \ramloop[22].ram.r_n_6 ;
  wire \ramloop[22].ram.r_n_7 ;
  wire \ramloop[22].ram.r_n_8 ;
  wire \ramloop[23].ram.r_n_0 ;
  wire \ramloop[23].ram.r_n_1 ;
  wire \ramloop[23].ram.r_n_2 ;
  wire \ramloop[23].ram.r_n_3 ;
  wire \ramloop[23].ram.r_n_4 ;
  wire \ramloop[23].ram.r_n_5 ;
  wire \ramloop[23].ram.r_n_6 ;
  wire \ramloop[23].ram.r_n_7 ;
  wire \ramloop[23].ram.r_n_8 ;
  wire \ramloop[24].ram.r_n_0 ;
  wire \ramloop[24].ram.r_n_1 ;
  wire \ramloop[24].ram.r_n_2 ;
  wire \ramloop[24].ram.r_n_3 ;
  wire \ramloop[24].ram.r_n_4 ;
  wire \ramloop[24].ram.r_n_5 ;
  wire \ramloop[24].ram.r_n_6 ;
  wire \ramloop[24].ram.r_n_7 ;
  wire \ramloop[24].ram.r_n_8 ;
  wire \ramloop[25].ram.r_n_0 ;
  wire \ramloop[25].ram.r_n_1 ;
  wire \ramloop[25].ram.r_n_2 ;
  wire \ramloop[25].ram.r_n_3 ;
  wire \ramloop[25].ram.r_n_4 ;
  wire \ramloop[25].ram.r_n_5 ;
  wire \ramloop[25].ram.r_n_6 ;
  wire \ramloop[25].ram.r_n_7 ;
  wire \ramloop[25].ram.r_n_8 ;
  wire \ramloop[26].ram.r_n_0 ;
  wire \ramloop[26].ram.r_n_1 ;
  wire \ramloop[26].ram.r_n_2 ;
  wire \ramloop[26].ram.r_n_3 ;
  wire \ramloop[26].ram.r_n_4 ;
  wire \ramloop[26].ram.r_n_5 ;
  wire \ramloop[26].ram.r_n_6 ;
  wire \ramloop[26].ram.r_n_7 ;
  wire \ramloop[26].ram.r_n_8 ;
  wire \ramloop[27].ram.r_n_0 ;
  wire \ramloop[27].ram.r_n_1 ;
  wire \ramloop[27].ram.r_n_2 ;
  wire \ramloop[27].ram.r_n_3 ;
  wire \ramloop[27].ram.r_n_4 ;
  wire \ramloop[27].ram.r_n_5 ;
  wire \ramloop[27].ram.r_n_6 ;
  wire \ramloop[27].ram.r_n_7 ;
  wire \ramloop[27].ram.r_n_8 ;
  wire \ramloop[28].ram.r_n_0 ;
  wire \ramloop[28].ram.r_n_1 ;
  wire \ramloop[28].ram.r_n_2 ;
  wire \ramloop[28].ram.r_n_3 ;
  wire \ramloop[28].ram.r_n_4 ;
  wire \ramloop[28].ram.r_n_5 ;
  wire \ramloop[28].ram.r_n_6 ;
  wire \ramloop[28].ram.r_n_7 ;
  wire \ramloop[28].ram.r_n_8 ;
  wire \ramloop[29].ram.r_n_0 ;
  wire \ramloop[29].ram.r_n_1 ;
  wire \ramloop[29].ram.r_n_2 ;
  wire \ramloop[29].ram.r_n_3 ;
  wire \ramloop[29].ram.r_n_4 ;
  wire \ramloop[29].ram.r_n_5 ;
  wire \ramloop[29].ram.r_n_6 ;
  wire \ramloop[29].ram.r_n_7 ;
  wire \ramloop[29].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[30].ram.r_n_0 ;
  wire \ramloop[30].ram.r_n_1 ;
  wire \ramloop[30].ram.r_n_2 ;
  wire \ramloop[30].ram.r_n_3 ;
  wire \ramloop[30].ram.r_n_4 ;
  wire \ramloop[30].ram.r_n_5 ;
  wire \ramloop[30].ram.r_n_6 ;
  wire \ramloop[30].ram.r_n_7 ;
  wire \ramloop[30].ram.r_n_8 ;
  wire \ramloop[31].ram.r_n_0 ;
  wire \ramloop[31].ram.r_n_1 ;
  wire \ramloop[31].ram.r_n_2 ;
  wire \ramloop[31].ram.r_n_3 ;
  wire \ramloop[31].ram.r_n_4 ;
  wire \ramloop[31].ram.r_n_5 ;
  wire \ramloop[31].ram.r_n_6 ;
  wire \ramloop[31].ram.r_n_7 ;
  wire \ramloop[31].ram.r_n_8 ;
  wire \ramloop[32].ram.r_n_0 ;
  wire \ramloop[32].ram.r_n_1 ;
  wire \ramloop[32].ram.r_n_2 ;
  wire \ramloop[32].ram.r_n_3 ;
  wire \ramloop[32].ram.r_n_4 ;
  wire \ramloop[32].ram.r_n_5 ;
  wire \ramloop[32].ram.r_n_6 ;
  wire \ramloop[32].ram.r_n_7 ;
  wire \ramloop[32].ram.r_n_8 ;
  wire \ramloop[33].ram.r_n_0 ;
  wire \ramloop[33].ram.r_n_1 ;
  wire \ramloop[33].ram.r_n_2 ;
  wire \ramloop[33].ram.r_n_3 ;
  wire \ramloop[33].ram.r_n_4 ;
  wire \ramloop[33].ram.r_n_5 ;
  wire \ramloop[33].ram.r_n_6 ;
  wire \ramloop[33].ram.r_n_7 ;
  wire \ramloop[33].ram.r_n_8 ;
  wire \ramloop[35].ram.r_n_0 ;
  wire \ramloop[36].ram.r_n_0 ;
  wire \ramloop[36].ram.r_n_1 ;
  wire \ramloop[36].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_0 ;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_mux__parameterized0 \has_mux_b.B 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T (\ramloop[3].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_0 (\ramloop[5].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_1 (\ramloop[8].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_2 (\ramloop[10].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_3 (\ramloop[12].ram.r_n_10 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_4 (\ramloop[35].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\ramloop[1].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 (\ramloop[4].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_2 (\ramloop[6].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_3 (\ramloop[9].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_4 (\ramloop[11].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_5 (\ramloop[13].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ({\ramloop[17].ram.r_n_0 ,\ramloop[17].ram.r_n_1 ,\ramloop[17].ram.r_n_2 ,\ramloop[17].ram.r_n_3 ,\ramloop[17].ram.r_n_4 ,\ramloop[17].ram.r_n_5 ,\ramloop[17].ram.r_n_6 ,\ramloop[17].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 ({\ramloop[22].ram.r_n_0 ,\ramloop[22].ram.r_n_1 ,\ramloop[22].ram.r_n_2 ,\ramloop[22].ram.r_n_3 ,\ramloop[22].ram.r_n_4 ,\ramloop[22].ram.r_n_5 ,\ramloop[22].ram.r_n_6 ,\ramloop[22].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 ({\ramloop[29].ram.r_n_0 ,\ramloop[29].ram.r_n_1 ,\ramloop[29].ram.r_n_2 ,\ramloop[29].ram.r_n_3 ,\ramloop[29].ram.r_n_4 ,\ramloop[29].ram.r_n_5 ,\ramloop[29].ram.r_n_6 ,\ramloop[29].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 ({\ramloop[28].ram.r_n_0 ,\ramloop[28].ram.r_n_1 ,\ramloop[28].ram.r_n_2 ,\ramloop[28].ram.r_n_3 ,\ramloop[28].ram.r_n_4 ,\ramloop[28].ram.r_n_5 ,\ramloop[28].ram.r_n_6 ,\ramloop[28].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 ({\ramloop[27].ram.r_n_0 ,\ramloop[27].ram.r_n_1 ,\ramloop[27].ram.r_n_2 ,\ramloop[27].ram.r_n_3 ,\ramloop[27].ram.r_n_4 ,\ramloop[27].ram.r_n_5 ,\ramloop[27].ram.r_n_6 ,\ramloop[27].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 ({\ramloop[26].ram.r_n_0 ,\ramloop[26].ram.r_n_1 ,\ramloop[26].ram.r_n_2 ,\ramloop[26].ram.r_n_3 ,\ramloop[26].ram.r_n_4 ,\ramloop[26].ram.r_n_5 ,\ramloop[26].ram.r_n_6 ,\ramloop[26].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 ({\ramloop[33].ram.r_n_0 ,\ramloop[33].ram.r_n_1 ,\ramloop[33].ram.r_n_2 ,\ramloop[33].ram.r_n_3 ,\ramloop[33].ram.r_n_4 ,\ramloop[33].ram.r_n_5 ,\ramloop[33].ram.r_n_6 ,\ramloop[33].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 ({\ramloop[32].ram.r_n_0 ,\ramloop[32].ram.r_n_1 ,\ramloop[32].ram.r_n_2 ,\ramloop[32].ram.r_n_3 ,\ramloop[32].ram.r_n_4 ,\ramloop[32].ram.r_n_5 ,\ramloop[32].ram.r_n_6 ,\ramloop[32].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 ({\ramloop[31].ram.r_n_0 ,\ramloop[31].ram.r_n_1 ,\ramloop[31].ram.r_n_2 ,\ramloop[31].ram.r_n_3 ,\ramloop[31].ram.r_n_4 ,\ramloop[31].ram.r_n_5 ,\ramloop[31].ram.r_n_6 ,\ramloop[31].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 ({\ramloop[30].ram.r_n_0 ,\ramloop[30].ram.r_n_1 ,\ramloop[30].ram.r_n_2 ,\ramloop[30].ram.r_n_3 ,\ramloop[30].ram.r_n_4 ,\ramloop[30].ram.r_n_5 ,\ramloop[30].ram.r_n_6 ,\ramloop[30].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 (\ramloop[16].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 (\ramloop[15].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21 (\ramloop[14].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22 (\ramloop[21].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23 (\ramloop[20].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24 (\ramloop[19].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25 (\ramloop[18].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26 (\ramloop[25].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27 (\ramloop[24].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28 (\ramloop[23].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29 (\ramloop[22].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30 (\ramloop[29].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31 (\ramloop[28].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32 (\ramloop[27].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33 (\ramloop[26].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34 (\ramloop[33].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_35 (\ramloop[32].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_36 (\ramloop[31].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_37 (\ramloop[30].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_38 (\ramloop[36].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 ({\ramloop[25].ram.r_n_0 ,\ramloop[25].ram.r_n_1 ,\ramloop[25].ram.r_n_2 ,\ramloop[25].ram.r_n_3 ,\ramloop[25].ram.r_n_4 ,\ramloop[25].ram.r_n_5 ,\ramloop[25].ram.r_n_6 ,\ramloop[25].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 ({\ramloop[24].ram.r_n_0 ,\ramloop[24].ram.r_n_1 ,\ramloop[24].ram.r_n_2 ,\ramloop[24].ram.r_n_3 ,\ramloop[24].ram.r_n_4 ,\ramloop[24].ram.r_n_5 ,\ramloop[24].ram.r_n_6 ,\ramloop[24].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 ({\ramloop[23].ram.r_n_0 ,\ramloop[23].ram.r_n_1 ,\ramloop[23].ram.r_n_2 ,\ramloop[23].ram.r_n_3 ,\ramloop[23].ram.r_n_4 ,\ramloop[23].ram.r_n_5 ,\ramloop[23].ram.r_n_6 ,\ramloop[23].ram.r_n_7 }),
        .DOBDO({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 }),
        .DOPBDOP(\ramloop[17].ram.r_n_8 ),
        .DOUTB(\ramloop[0].ram.r_n_0 ),
        .addrb(addrb[16:11]),
        .clkb(clkb),
        .doutb(doutb),
        .enb(enb),
        .ram_doutb(ram_doutb));
  blk_mem_gen_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.DOUTB(\ramloop[0].ram.r_n_0 ),
        .ENA(\ramloop[12].ram.r_n_0 ),
        .ENB(\ramloop[12].ram.r_n_5 ),
        .addra(addra[15:0]),
        .addrb(addrb[15:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[0]),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.DOUTB(\ramloop[10].ram.r_n_0 ),
        .ENA(\ramloop[12].ram.r_n_0 ),
        .ENB(\ramloop[12].ram.r_n_5 ),
        .addra(addra[15:0]),
        .addrb(addrb[15:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[4]),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\ramloop[11].ram.r_n_1 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 (\ramloop[11].ram.r_n_2 ),
        .addra(addra[13:0]),
        .\addra[16] (\ramloop[36].ram.r_n_1 ),
        .\addra[16]_0 (\ramloop[7].ram.r_n_4 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[36].ram.r_n_2 ),
        .\addrb[16]_0 (\ramloop[7].ram.r_n_5 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[4]),
        .\doutb[4] (\ramloop[11].ram.r_n_0 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T (\ramloop[12].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_0 (\ramloop[12].ram.r_n_5 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (\ramloop[12].ram.r_n_1 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\ramloop[12].ram.r_n_2 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 (\ramloop[12].ram.r_n_3 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 (\ramloop[12].ram.r_n_4 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 (\ramloop[12].ram.r_n_6 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 (\ramloop[12].ram.r_n_7 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 (\ramloop[12].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 (\ramloop[12].ram.r_n_9 ),
        .DOUTB(\ramloop[12].ram.r_n_10 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[5]),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.addra(addra[13:0]),
        .\addra[16] (\ramloop[11].ram.r_n_1 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[11].ram.r_n_2 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[5]),
        .\doutb[5] (\ramloop[13].ram.r_n_0 ),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.addra(addra[13:0]),
        .\addra[16] (\ramloop[12].ram.r_n_1 ),
        .\addra[16]_0 (\ramloop[12].ram.r_n_2 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[12].ram.r_n_6 ),
        .\addrb[16]_0 (\ramloop[12].ram.r_n_7 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\doutb[14] (\ramloop[14].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized14 \ramloop[15].ram.r 
       (.addra(addra[13:0]),
        .\addra[16] (\ramloop[12].ram.r_n_1 ),
        .\addra[16]_0 (\ramloop[12].ram.r_n_2 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[12].ram.r_n_6 ),
        .\addrb[16]_0 (\ramloop[12].ram.r_n_7 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .\doutb[14] (\ramloop[15].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized15 \ramloop[16].ram.r 
       (.addra(addra[13:0]),
        .\addra[16] (\ramloop[12].ram.r_n_1 ),
        .\addra[16]_0 (\ramloop[12].ram.r_n_2 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[12].ram.r_n_6 ),
        .\addrb[16]_0 (\ramloop[12].ram.r_n_7 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 }),
        .\doutb[14] (\ramloop[16].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized16 \ramloop[17].ram.r 
       (.DOPBDOP(\ramloop[17].ram.r_n_8 ),
        .addra(addra[13:0]),
        .\addra[16] (\ramloop[12].ram.r_n_1 ),
        .\addra[16]_0 (\ramloop[12].ram.r_n_2 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[12].ram.r_n_6 ),
        .\addrb[16]_0 (\ramloop[12].ram.r_n_7 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[17].ram.r_n_0 ,\ramloop[17].ram.r_n_1 ,\ramloop[17].ram.r_n_2 ,\ramloop[17].ram.r_n_3 ,\ramloop[17].ram.r_n_4 ,\ramloop[17].ram.r_n_5 ,\ramloop[17].ram.r_n_6 ,\ramloop[17].ram.r_n_7 }),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized17 \ramloop[18].ram.r 
       (.addra(addra[13:0]),
        .\addra[16] (\ramloop[12].ram.r_n_2 ),
        .\addra[16]_0 (\ramloop[12].ram.r_n_1 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[12].ram.r_n_7 ),
        .\addrb[16]_0 (\ramloop[12].ram.r_n_6 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 }),
        .\doutb[14] (\ramloop[18].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized18 \ramloop[19].ram.r 
       (.addra(addra[13:0]),
        .\addra[16] (\ramloop[12].ram.r_n_2 ),
        .\addra[16]_0 (\ramloop[12].ram.r_n_1 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[12].ram.r_n_7 ),
        .\addrb[16]_0 (\ramloop[12].ram.r_n_6 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 }),
        .\doutb[14] (\ramloop[19].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra[13:0]),
        .\addra[16] (\ramloop[11].ram.r_n_1 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[11].ram.r_n_2 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[0]),
        .\doutb[0] (\ramloop[1].ram.r_n_0 ),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized19 \ramloop[20].ram.r 
       (.addra(addra[13:0]),
        .\addra[16] (\ramloop[12].ram.r_n_2 ),
        .\addra[16]_0 (\ramloop[12].ram.r_n_1 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[12].ram.r_n_7 ),
        .\addrb[16]_0 (\ramloop[12].ram.r_n_6 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 }),
        .\doutb[14] (\ramloop[20].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized20 \ramloop[21].ram.r 
       (.addra(addra[13:0]),
        .\addra[16] (\ramloop[12].ram.r_n_2 ),
        .\addra[16]_0 (\ramloop[12].ram.r_n_1 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[12].ram.r_n_7 ),
        .\addrb[16]_0 (\ramloop[12].ram.r_n_6 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 }),
        .\doutb[14] (\ramloop[21].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized21 \ramloop[22].ram.r 
       (.addra(addra[13:0]),
        .\addra[15] (\ramloop[12].ram.r_n_3 ),
        .\addra[16] (\ramloop[12].ram.r_n_4 ),
        .addrb(addrb[13:0]),
        .\addrb[15] (\ramloop[12].ram.r_n_8 ),
        .\addrb[16] (\ramloop[12].ram.r_n_9 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[22].ram.r_n_0 ,\ramloop[22].ram.r_n_1 ,\ramloop[22].ram.r_n_2 ,\ramloop[22].ram.r_n_3 ,\ramloop[22].ram.r_n_4 ,\ramloop[22].ram.r_n_5 ,\ramloop[22].ram.r_n_6 ,\ramloop[22].ram.r_n_7 }),
        .\doutb[14] (\ramloop[22].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized22 \ramloop[23].ram.r 
       (.addra(addra[13:0]),
        .\addra[15] (\ramloop[12].ram.r_n_3 ),
        .\addra[16] (\ramloop[12].ram.r_n_4 ),
        .addrb(addrb[13:0]),
        .\addrb[15] (\ramloop[12].ram.r_n_8 ),
        .\addrb[16] (\ramloop[12].ram.r_n_9 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[23].ram.r_n_0 ,\ramloop[23].ram.r_n_1 ,\ramloop[23].ram.r_n_2 ,\ramloop[23].ram.r_n_3 ,\ramloop[23].ram.r_n_4 ,\ramloop[23].ram.r_n_5 ,\ramloop[23].ram.r_n_6 ,\ramloop[23].ram.r_n_7 }),
        .\doutb[14] (\ramloop[23].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized23 \ramloop[24].ram.r 
       (.addra(addra[13:0]),
        .\addra[15] (\ramloop[12].ram.r_n_3 ),
        .\addra[16] (\ramloop[12].ram.r_n_4 ),
        .addrb(addrb[13:0]),
        .\addrb[15] (\ramloop[12].ram.r_n_8 ),
        .\addrb[16] (\ramloop[12].ram.r_n_9 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[24].ram.r_n_0 ,\ramloop[24].ram.r_n_1 ,\ramloop[24].ram.r_n_2 ,\ramloop[24].ram.r_n_3 ,\ramloop[24].ram.r_n_4 ,\ramloop[24].ram.r_n_5 ,\ramloop[24].ram.r_n_6 ,\ramloop[24].ram.r_n_7 }),
        .\doutb[14] (\ramloop[24].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized24 \ramloop[25].ram.r 
       (.addra(addra[13:0]),
        .\addra[15] (\ramloop[12].ram.r_n_3 ),
        .\addra[16] (\ramloop[12].ram.r_n_4 ),
        .addrb(addrb[13:0]),
        .\addrb[15] (\ramloop[12].ram.r_n_8 ),
        .\addrb[16] (\ramloop[12].ram.r_n_9 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[25].ram.r_n_0 ,\ramloop[25].ram.r_n_1 ,\ramloop[25].ram.r_n_2 ,\ramloop[25].ram.r_n_3 ,\ramloop[25].ram.r_n_4 ,\ramloop[25].ram.r_n_5 ,\ramloop[25].ram.r_n_6 ,\ramloop[25].ram.r_n_7 }),
        .\doutb[14] (\ramloop[25].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized25 \ramloop[26].ram.r 
       (.addra(addra[13:0]),
        .\addra[15] (\ramloop[12].ram.r_n_3 ),
        .\addra[16] (\ramloop[12].ram.r_n_4 ),
        .addrb(addrb[13:0]),
        .\addrb[15] (\ramloop[12].ram.r_n_8 ),
        .\addrb[16] (\ramloop[12].ram.r_n_9 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[26].ram.r_n_0 ,\ramloop[26].ram.r_n_1 ,\ramloop[26].ram.r_n_2 ,\ramloop[26].ram.r_n_3 ,\ramloop[26].ram.r_n_4 ,\ramloop[26].ram.r_n_5 ,\ramloop[26].ram.r_n_6 ,\ramloop[26].ram.r_n_7 }),
        .\doutb[14] (\ramloop[26].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized26 \ramloop[27].ram.r 
       (.addra(addra[13:0]),
        .\addra[15] (\ramloop[12].ram.r_n_3 ),
        .\addra[16] (\ramloop[12].ram.r_n_4 ),
        .addrb(addrb[13:0]),
        .\addrb[15] (\ramloop[12].ram.r_n_8 ),
        .\addrb[16] (\ramloop[12].ram.r_n_9 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[27].ram.r_n_0 ,\ramloop[27].ram.r_n_1 ,\ramloop[27].ram.r_n_2 ,\ramloop[27].ram.r_n_3 ,\ramloop[27].ram.r_n_4 ,\ramloop[27].ram.r_n_5 ,\ramloop[27].ram.r_n_6 ,\ramloop[27].ram.r_n_7 }),
        .\doutb[14] (\ramloop[27].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized27 \ramloop[28].ram.r 
       (.addra(addra[13:0]),
        .\addra[15] (\ramloop[12].ram.r_n_3 ),
        .\addra[16] (\ramloop[12].ram.r_n_4 ),
        .addrb(addrb[13:0]),
        .\addrb[15] (\ramloop[12].ram.r_n_8 ),
        .\addrb[16] (\ramloop[12].ram.r_n_9 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[28].ram.r_n_0 ,\ramloop[28].ram.r_n_1 ,\ramloop[28].ram.r_n_2 ,\ramloop[28].ram.r_n_3 ,\ramloop[28].ram.r_n_4 ,\ramloop[28].ram.r_n_5 ,\ramloop[28].ram.r_n_6 ,\ramloop[28].ram.r_n_7 }),
        .\doutb[14] (\ramloop[28].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized28 \ramloop[29].ram.r 
       (.addra(addra[13:0]),
        .\addra[15] (\ramloop[12].ram.r_n_3 ),
        .\addra[16] (\ramloop[12].ram.r_n_4 ),
        .addrb(addrb[13:0]),
        .\addrb[15] (\ramloop[12].ram.r_n_8 ),
        .\addrb[16] (\ramloop[12].ram.r_n_9 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[29].ram.r_n_0 ,\ramloop[29].ram.r_n_1 ,\ramloop[29].ram.r_n_2 ,\ramloop[29].ram.r_n_3 ,\ramloop[29].ram.r_n_4 ,\ramloop[29].ram.r_n_5 ,\ramloop[29].ram.r_n_6 ,\ramloop[29].ram.r_n_7 }),
        .\doutb[14] (\ramloop[29].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.DOBDO({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 }),
        .addra(addra[13:0]),
        .\addra[16] (\ramloop[7].ram.r_n_4 ),
        .\addra[16]_0 (\ramloop[36].ram.r_n_1 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[7].ram.r_n_5 ),
        .\addrb[16]_0 (\ramloop[36].ram.r_n_2 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[1:0]),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized29 \ramloop[30].ram.r 
       (.addra(addra[13:0]),
        .\addra[16] (\ramloop[36].ram.r_n_1 ),
        .\addra[16]_0 (\ramloop[7].ram.r_n_4 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[36].ram.r_n_2 ),
        .\addrb[16]_0 (\ramloop[7].ram.r_n_5 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[30].ram.r_n_0 ,\ramloop[30].ram.r_n_1 ,\ramloop[30].ram.r_n_2 ,\ramloop[30].ram.r_n_3 ,\ramloop[30].ram.r_n_4 ,\ramloop[30].ram.r_n_5 ,\ramloop[30].ram.r_n_6 ,\ramloop[30].ram.r_n_7 }),
        .\doutb[14] (\ramloop[30].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized30 \ramloop[31].ram.r 
       (.addra(addra[13:0]),
        .\addra[16] (\ramloop[36].ram.r_n_1 ),
        .\addra[16]_0 (\ramloop[7].ram.r_n_4 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[36].ram.r_n_2 ),
        .\addrb[16]_0 (\ramloop[7].ram.r_n_5 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[31].ram.r_n_0 ,\ramloop[31].ram.r_n_1 ,\ramloop[31].ram.r_n_2 ,\ramloop[31].ram.r_n_3 ,\ramloop[31].ram.r_n_4 ,\ramloop[31].ram.r_n_5 ,\ramloop[31].ram.r_n_6 ,\ramloop[31].ram.r_n_7 }),
        .\doutb[14] (\ramloop[31].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized31 \ramloop[32].ram.r 
       (.addra(addra[13:0]),
        .\addra[16] (\ramloop[36].ram.r_n_1 ),
        .\addra[16]_0 (\ramloop[7].ram.r_n_4 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[36].ram.r_n_2 ),
        .\addrb[16]_0 (\ramloop[7].ram.r_n_5 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[32].ram.r_n_0 ,\ramloop[32].ram.r_n_1 ,\ramloop[32].ram.r_n_2 ,\ramloop[32].ram.r_n_3 ,\ramloop[32].ram.r_n_4 ,\ramloop[32].ram.r_n_5 ,\ramloop[32].ram.r_n_6 ,\ramloop[32].ram.r_n_7 }),
        .\doutb[14] (\ramloop[32].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized32 \ramloop[33].ram.r 
       (.addra(addra[13:0]),
        .\addra[16] (\ramloop[36].ram.r_n_1 ),
        .\addra[16]_0 (\ramloop[7].ram.r_n_4 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[36].ram.r_n_2 ),
        .\addrb[16]_0 (\ramloop[7].ram.r_n_5 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .\doutb[13] ({\ramloop[33].ram.r_n_0 ,\ramloop[33].ram.r_n_1 ,\ramloop[33].ram.r_n_2 ,\ramloop[33].ram.r_n_3 ,\ramloop[33].ram.r_n_4 ,\ramloop[33].ram.r_n_5 ,\ramloop[33].ram.r_n_6 ,\ramloop[33].ram.r_n_7 }),
        .\doutb[14] (\ramloop[33].ram.r_n_8 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized33 \ramloop[34].ram.r 
       (.addra(addra[13:0]),
        .\addra[16] (\ramloop[7].ram.r_n_4 ),
        .\addra[16]_0 (\ramloop[36].ram.r_n_1 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[7].ram.r_n_5 ),
        .\addrb[16]_0 (\ramloop[36].ram.r_n_2 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[14:6]),
        .ena(ena),
        .enb(enb),
        .ram_doutb(ram_doutb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized34 \ramloop[35].ram.r 
       (.DOUTB(\ramloop[35].ram.r_n_0 ),
        .addra(addra[15:0]),
        .addrb(addrb[15:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[15]),
        .ena(\ramloop[12].ram.r_n_0 ),
        .enb(enb),
        .enb_0(\ramloop[12].ram.r_n_5 ),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized35 \ramloop[36].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (\ramloop[36].ram.r_n_1 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\ramloop[36].ram.r_n_2 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[15]),
        .\doutb[15] (\ramloop[36].ram.r_n_0 ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.DOUTB(\ramloop[3].ram.r_n_0 ),
        .addra(addra[15:0]),
        .addrb(addrb[15:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[1]),
        .ena(\ramloop[12].ram.r_n_0 ),
        .enb(enb),
        .enb_0(\ramloop[12].ram.r_n_5 ),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[13:0]),
        .\addra[16] (\ramloop[11].ram.r_n_1 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[11].ram.r_n_2 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[1]),
        .\doutb[1] (\ramloop[4].ram.r_n_0 ),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.DOUTB(\ramloop[5].ram.r_n_0 ),
        .addra(addra[15:0]),
        .addrb(addrb[15:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[2]),
        .ena(\ramloop[12].ram.r_n_0 ),
        .enb(enb),
        .enb_0(\ramloop[12].ram.r_n_5 ),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.addra(addra[13:0]),
        .\addra[16] (\ramloop[11].ram.r_n_1 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[11].ram.r_n_2 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[2]),
        .\doutb[2] (\ramloop[6].ram.r_n_0 ),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\ramloop[7].ram.r_n_4 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 (\ramloop[7].ram.r_n_5 ),
        .addra(addra),
        .addra_16__s_port_(\ramloop[36].ram.r_n_1 ),
        .addrb(addrb),
        .addrb_16__s_port_(\ramloop[36].ram.r_n_2 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[5:2]),
        .\doutb[5] ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 }),
        .ena(ena),
        .enb(enb),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.DOUTB(\ramloop[8].ram.r_n_0 ),
        .addra(addra[15:0]),
        .addrb(addrb[15:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[3]),
        .ena(\ramloop[12].ram.r_n_0 ),
        .enb(enb),
        .enb_0(\ramloop[12].ram.r_n_5 ),
        .wea(wea));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.addra(addra[13:0]),
        .\addra[16] (\ramloop[11].ram.r_n_1 ),
        .addrb(addrb[13:0]),
        .\addrb[16] (\ramloop[11].ram.r_n_2 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[3]),
        .\doutb[3] (\ramloop[9].ram.r_n_0 ),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module blk_mem_gen_0_blk_mem_gen_mux__parameterized0
   (doutb,
    DOBDO,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_3 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_4 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_5 ,
    enb,
    addrb,
    clkb,
    DOUTB,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_3 ,
    ram_doutb,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_4 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 ,
    DOPBDOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_35 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_36 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_37 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_38 );
  output [15:0]doutb;
  input [1:0]DOBDO;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  input [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_2 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_3 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_4 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_5 ;
  input enb;
  input [5:0]addrb;
  input clkb;
  input [0:0]DOUTB;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_0 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_1 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_2 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_3 ;
  input [8:0]ram_doutb;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_4 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 ;
  input [0:0]DOPBDOP;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_35 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_36 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_37 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_38 ;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_1 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_2 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_3 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_4 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_2 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_3 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_4 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_5 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_35 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_36 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_37 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_38 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 ;
  wire [1:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire [0:0]DOUTB;
  wire [5:0]addrb;
  wire clkb;
  wire [15:0]doutb;
  wire \doutb[0]_INST_0_i_1_n_0 ;
  wire \doutb[10]_INST_0_i_1_n_0 ;
  wire \doutb[10]_INST_0_i_2_n_0 ;
  wire \doutb[10]_INST_0_i_3_n_0 ;
  wire \doutb[10]_INST_0_i_4_n_0 ;
  wire \doutb[10]_INST_0_i_5_n_0 ;
  wire \doutb[10]_INST_0_i_6_n_0 ;
  wire \doutb[10]_INST_0_i_7_n_0 ;
  wire \doutb[10]_INST_0_i_8_n_0 ;
  wire \doutb[11]_INST_0_i_1_n_0 ;
  wire \doutb[11]_INST_0_i_2_n_0 ;
  wire \doutb[11]_INST_0_i_3_n_0 ;
  wire \doutb[11]_INST_0_i_4_n_0 ;
  wire \doutb[11]_INST_0_i_5_n_0 ;
  wire \doutb[11]_INST_0_i_6_n_0 ;
  wire \doutb[11]_INST_0_i_7_n_0 ;
  wire \doutb[11]_INST_0_i_8_n_0 ;
  wire \doutb[12]_INST_0_i_1_n_0 ;
  wire \doutb[12]_INST_0_i_2_n_0 ;
  wire \doutb[12]_INST_0_i_3_n_0 ;
  wire \doutb[12]_INST_0_i_4_n_0 ;
  wire \doutb[12]_INST_0_i_5_n_0 ;
  wire \doutb[12]_INST_0_i_6_n_0 ;
  wire \doutb[12]_INST_0_i_7_n_0 ;
  wire \doutb[12]_INST_0_i_8_n_0 ;
  wire \doutb[13]_INST_0_i_1_n_0 ;
  wire \doutb[13]_INST_0_i_2_n_0 ;
  wire \doutb[13]_INST_0_i_3_n_0 ;
  wire \doutb[13]_INST_0_i_4_n_0 ;
  wire \doutb[13]_INST_0_i_5_n_0 ;
  wire \doutb[13]_INST_0_i_6_n_0 ;
  wire \doutb[13]_INST_0_i_7_n_0 ;
  wire \doutb[13]_INST_0_i_8_n_0 ;
  wire \doutb[14]_INST_0_i_10_n_0 ;
  wire \doutb[14]_INST_0_i_1_n_0 ;
  wire \doutb[14]_INST_0_i_2_n_0 ;
  wire \doutb[14]_INST_0_i_3_n_0 ;
  wire \doutb[14]_INST_0_i_4_n_0 ;
  wire \doutb[14]_INST_0_i_5_n_0 ;
  wire \doutb[14]_INST_0_i_6_n_0 ;
  wire \doutb[14]_INST_0_i_7_n_0 ;
  wire \doutb[14]_INST_0_i_8_n_0 ;
  wire \doutb[14]_INST_0_i_9_n_0 ;
  wire \doutb[15]_INST_0_i_1_n_0 ;
  wire \doutb[1]_INST_0_i_1_n_0 ;
  wire \doutb[2]_INST_0_i_1_n_0 ;
  wire \doutb[3]_INST_0_i_1_n_0 ;
  wire \doutb[4]_INST_0_i_1_n_0 ;
  wire \doutb[5]_INST_0_i_1_n_0 ;
  wire \doutb[6]_INST_0_i_1_n_0 ;
  wire \doutb[6]_INST_0_i_2_n_0 ;
  wire \doutb[6]_INST_0_i_3_n_0 ;
  wire \doutb[6]_INST_0_i_4_n_0 ;
  wire \doutb[6]_INST_0_i_5_n_0 ;
  wire \doutb[6]_INST_0_i_6_n_0 ;
  wire \doutb[6]_INST_0_i_7_n_0 ;
  wire \doutb[6]_INST_0_i_8_n_0 ;
  wire \doutb[7]_INST_0_i_1_n_0 ;
  wire \doutb[7]_INST_0_i_2_n_0 ;
  wire \doutb[7]_INST_0_i_3_n_0 ;
  wire \doutb[7]_INST_0_i_4_n_0 ;
  wire \doutb[7]_INST_0_i_5_n_0 ;
  wire \doutb[7]_INST_0_i_6_n_0 ;
  wire \doutb[7]_INST_0_i_7_n_0 ;
  wire \doutb[7]_INST_0_i_8_n_0 ;
  wire \doutb[8]_INST_0_i_1_n_0 ;
  wire \doutb[8]_INST_0_i_2_n_0 ;
  wire \doutb[8]_INST_0_i_3_n_0 ;
  wire \doutb[8]_INST_0_i_4_n_0 ;
  wire \doutb[8]_INST_0_i_5_n_0 ;
  wire \doutb[8]_INST_0_i_6_n_0 ;
  wire \doutb[8]_INST_0_i_7_n_0 ;
  wire \doutb[8]_INST_0_i_8_n_0 ;
  wire \doutb[9]_INST_0_i_1_n_0 ;
  wire \doutb[9]_INST_0_i_2_n_0 ;
  wire \doutb[9]_INST_0_i_3_n_0 ;
  wire \doutb[9]_INST_0_i_4_n_0 ;
  wire \doutb[9]_INST_0_i_5_n_0 ;
  wire \doutb[9]_INST_0_i_6_n_0 ;
  wire \doutb[9]_INST_0_i_7_n_0 ;
  wire \doutb[9]_INST_0_i_8_n_0 ;
  wire enb;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[4] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[5] ;
  wire [8:0]ram_doutb;
  wire [5:0]sel_pipe_d1;

  MUXF7 \doutb[0]_INST_0 
       (.I0(DOUTB),
        .I1(\doutb[0]_INST_0_i_1_n_0 ),
        .O(doutb[0]),
        .S(sel_pipe_d1[5]));
  LUT5 #(
    .INIT(32'h002F0020)) 
    \doutb[0]_INST_0_i_1 
       (.I0(DOBDO[0]),
        .I1(sel_pipe_d1[2]),
        .I2(sel_pipe_d1[3]),
        .I3(sel_pipe_d1[4]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .O(\doutb[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \doutb[10]_INST_0 
       (.I0(\doutb[10]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\doutb[10]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\doutb[10]_INST_0_i_3_n_0 ),
        .O(doutb[10]));
  LUT6 #(
    .INIT(64'h0000000088888B88)) 
    \doutb[10]_INST_0_i_1 
       (.I0(\doutb[10]_INST_0_i_4_n_0 ),
        .I1(\doutb[14]_INST_0_i_5_n_0 ),
        .I2(sel_pipe_d1[1]),
        .I3(ram_doutb[4]),
        .I4(sel_pipe_d1[0]),
        .I5(\doutb[14]_INST_0_i_6_n_0 ),
        .O(\doutb[10]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[10]_INST_0_i_2 
       (.I0(\doutb[10]_INST_0_i_5_n_0 ),
        .I1(\doutb[10]_INST_0_i_6_n_0 ),
        .O(\doutb[10]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \doutb[10]_INST_0_i_3 
       (.I0(\doutb[10]_INST_0_i_7_n_0 ),
        .I1(\doutb[10]_INST_0_i_8_n_0 ),
        .O(\doutb[10]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[10]_INST_0_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 [4]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [4]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [4]),
        .O(\doutb[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[10]_INST_0_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 [4]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [4]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [4]),
        .O(\doutb[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[10]_INST_0_i_6 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [4]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 [4]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 [4]),
        .O(\doutb[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[10]_INST_0_i_7 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 [4]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [4]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [4]),
        .O(\doutb[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[10]_INST_0_i_8 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [4]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 [4]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 [4]),
        .O(\doutb[10]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \doutb[11]_INST_0 
       (.I0(\doutb[11]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\doutb[11]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\doutb[11]_INST_0_i_3_n_0 ),
        .O(doutb[11]));
  LUT6 #(
    .INIT(64'h0000000088888B88)) 
    \doutb[11]_INST_0_i_1 
       (.I0(\doutb[11]_INST_0_i_4_n_0 ),
        .I1(\doutb[14]_INST_0_i_5_n_0 ),
        .I2(sel_pipe_d1[1]),
        .I3(ram_doutb[5]),
        .I4(sel_pipe_d1[0]),
        .I5(\doutb[14]_INST_0_i_6_n_0 ),
        .O(\doutb[11]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[11]_INST_0_i_2 
       (.I0(\doutb[11]_INST_0_i_5_n_0 ),
        .I1(\doutb[11]_INST_0_i_6_n_0 ),
        .O(\doutb[11]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \doutb[11]_INST_0_i_3 
       (.I0(\doutb[11]_INST_0_i_7_n_0 ),
        .I1(\doutb[11]_INST_0_i_8_n_0 ),
        .O(\doutb[11]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[11]_INST_0_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 [5]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [5]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [5]),
        .O(\doutb[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[11]_INST_0_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 [5]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [5]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [5]),
        .O(\doutb[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[11]_INST_0_i_6 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [5]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 [5]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 [5]),
        .O(\doutb[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[11]_INST_0_i_7 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 [5]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [5]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [5]),
        .O(\doutb[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[11]_INST_0_i_8 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [5]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 [5]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 [5]),
        .O(\doutb[11]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \doutb[12]_INST_0 
       (.I0(\doutb[12]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\doutb[12]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\doutb[12]_INST_0_i_3_n_0 ),
        .O(doutb[12]));
  LUT6 #(
    .INIT(64'h0000000088888B88)) 
    \doutb[12]_INST_0_i_1 
       (.I0(\doutb[12]_INST_0_i_4_n_0 ),
        .I1(\doutb[14]_INST_0_i_5_n_0 ),
        .I2(sel_pipe_d1[1]),
        .I3(ram_doutb[6]),
        .I4(sel_pipe_d1[0]),
        .I5(\doutb[14]_INST_0_i_6_n_0 ),
        .O(\doutb[12]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[12]_INST_0_i_2 
       (.I0(\doutb[12]_INST_0_i_5_n_0 ),
        .I1(\doutb[12]_INST_0_i_6_n_0 ),
        .O(\doutb[12]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \doutb[12]_INST_0_i_3 
       (.I0(\doutb[12]_INST_0_i_7_n_0 ),
        .I1(\doutb[12]_INST_0_i_8_n_0 ),
        .O(\doutb[12]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[12]_INST_0_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 [6]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [6]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [6]),
        .O(\doutb[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[12]_INST_0_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 [6]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [6]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [6]),
        .O(\doutb[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[12]_INST_0_i_6 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [6]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 [6]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 [6]),
        .O(\doutb[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[12]_INST_0_i_7 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 [6]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [6]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [6]),
        .O(\doutb[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[12]_INST_0_i_8 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [6]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 [6]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 [6]),
        .O(\doutb[12]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \doutb[13]_INST_0 
       (.I0(\doutb[13]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\doutb[13]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\doutb[13]_INST_0_i_3_n_0 ),
        .O(doutb[13]));
  LUT6 #(
    .INIT(64'h0000000088888B88)) 
    \doutb[13]_INST_0_i_1 
       (.I0(\doutb[13]_INST_0_i_4_n_0 ),
        .I1(\doutb[14]_INST_0_i_5_n_0 ),
        .I2(sel_pipe_d1[1]),
        .I3(ram_doutb[7]),
        .I4(sel_pipe_d1[0]),
        .I5(\doutb[14]_INST_0_i_6_n_0 ),
        .O(\doutb[13]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[13]_INST_0_i_2 
       (.I0(\doutb[13]_INST_0_i_5_n_0 ),
        .I1(\doutb[13]_INST_0_i_6_n_0 ),
        .O(\doutb[13]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \doutb[13]_INST_0_i_3 
       (.I0(\doutb[13]_INST_0_i_7_n_0 ),
        .I1(\doutb[13]_INST_0_i_8_n_0 ),
        .O(\doutb[13]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[13]_INST_0_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 [7]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [7]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [7]),
        .O(\doutb[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[13]_INST_0_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 [7]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [7]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [7]),
        .O(\doutb[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[13]_INST_0_i_6 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [7]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 [7]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 [7]),
        .O(\doutb[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[13]_INST_0_i_7 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 [7]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [7]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [7]),
        .O(\doutb[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[13]_INST_0_i_8 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [7]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 [7]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 [7]),
        .O(\doutb[13]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \doutb[14]_INST_0 
       (.I0(\doutb[14]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\doutb[14]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\doutb[14]_INST_0_i_3_n_0 ),
        .O(doutb[14]));
  LUT6 #(
    .INIT(64'h0000000088888B88)) 
    \doutb[14]_INST_0_i_1 
       (.I0(\doutb[14]_INST_0_i_4_n_0 ),
        .I1(\doutb[14]_INST_0_i_5_n_0 ),
        .I2(sel_pipe_d1[1]),
        .I3(ram_doutb[8]),
        .I4(sel_pipe_d1[0]),
        .I5(\doutb[14]_INST_0_i_6_n_0 ),
        .O(\doutb[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[14]_INST_0_i_10 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23 ),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24 ),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25 ),
        .O(\doutb[14]_INST_0_i_10_n_0 ));
  MUXF7 \doutb[14]_INST_0_i_2 
       (.I0(\doutb[14]_INST_0_i_7_n_0 ),
        .I1(\doutb[14]_INST_0_i_8_n_0 ),
        .O(\doutb[14]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \doutb[14]_INST_0_i_3 
       (.I0(\doutb[14]_INST_0_i_9_n_0 ),
        .I1(\doutb[14]_INST_0_i_10_n_0 ),
        .O(\doutb[14]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[14]_INST_0_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_35 ),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_36 ),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_37 ),
        .O(\doutb[14]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \doutb[14]_INST_0_i_5 
       (.I0(sel_pipe_d1[4]),
        .I1(sel_pipe_d1[3]),
        .O(\doutb[14]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \doutb[14]_INST_0_i_6 
       (.I0(sel_pipe_d1[4]),
        .I1(sel_pipe_d1[3]),
        .I2(sel_pipe_d1[2]),
        .O(\doutb[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[14]_INST_0_i_7 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27 ),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28 ),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29 ),
        .O(\doutb[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[14]_INST_0_i_8 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31 ),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32 ),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33 ),
        .O(\doutb[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[14]_INST_0_i_9 
       (.I0(DOPBDOP),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 ),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 ),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21 ),
        .O(\doutb[14]_INST_0_i_9_n_0 ));
  MUXF7 \doutb[15]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_4 ),
        .I1(\doutb[15]_INST_0_i_1_n_0 ),
        .O(doutb[15]),
        .S(sel_pipe_d1[5]));
  LUT2 #(
    .INIT(4'h4)) 
    \doutb[15]_INST_0_i_1 
       (.I0(sel_pipe_d1[4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_38 ),
        .O(\doutb[15]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[1]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T ),
        .I1(\doutb[1]_INST_0_i_1_n_0 ),
        .O(doutb[1]),
        .S(sel_pipe_d1[5]));
  LUT5 #(
    .INIT(32'h002F0020)) 
    \doutb[1]_INST_0_i_1 
       (.I0(DOBDO[1]),
        .I1(sel_pipe_d1[2]),
        .I2(sel_pipe_d1[3]),
        .I3(sel_pipe_d1[4]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ),
        .O(\doutb[1]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[2]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_0 ),
        .I1(\doutb[2]_INST_0_i_1_n_0 ),
        .O(doutb[2]),
        .S(sel_pipe_d1[5]));
  LUT6 #(
    .INIT(64'h000004FF00000400)) 
    \doutb[2]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 [0]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[3]),
        .I4(sel_pipe_d1[4]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_2 ),
        .O(\doutb[2]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[3]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_1 ),
        .I1(\doutb[3]_INST_0_i_1_n_0 ),
        .O(doutb[3]),
        .S(sel_pipe_d1[5]));
  LUT6 #(
    .INIT(64'h000004FF00000400)) 
    \doutb[3]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 [1]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[3]),
        .I4(sel_pipe_d1[4]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_3 ),
        .O(\doutb[3]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[4]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_2 ),
        .I1(\doutb[4]_INST_0_i_1_n_0 ),
        .O(doutb[4]),
        .S(sel_pipe_d1[5]));
  LUT6 #(
    .INIT(64'h000004FF00000400)) 
    \doutb[4]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 [2]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[3]),
        .I4(sel_pipe_d1[4]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_4 ),
        .O(\doutb[4]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[5]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_3 ),
        .I1(\doutb[5]_INST_0_i_1_n_0 ),
        .O(doutb[5]),
        .S(sel_pipe_d1[5]));
  LUT6 #(
    .INIT(64'h000004FF00000400)) 
    \doutb[5]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 [3]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[3]),
        .I4(sel_pipe_d1[4]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_5 ),
        .O(\doutb[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \doutb[6]_INST_0 
       (.I0(\doutb[6]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\doutb[6]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\doutb[6]_INST_0_i_3_n_0 ),
        .O(doutb[6]));
  LUT6 #(
    .INIT(64'h0000000088888B88)) 
    \doutb[6]_INST_0_i_1 
       (.I0(\doutb[6]_INST_0_i_4_n_0 ),
        .I1(\doutb[14]_INST_0_i_5_n_0 ),
        .I2(sel_pipe_d1[1]),
        .I3(ram_doutb[0]),
        .I4(sel_pipe_d1[0]),
        .I5(\doutb[14]_INST_0_i_6_n_0 ),
        .O(\doutb[6]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[6]_INST_0_i_2 
       (.I0(\doutb[6]_INST_0_i_5_n_0 ),
        .I1(\doutb[6]_INST_0_i_6_n_0 ),
        .O(\doutb[6]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \doutb[6]_INST_0_i_3 
       (.I0(\doutb[6]_INST_0_i_7_n_0 ),
        .I1(\doutb[6]_INST_0_i_8_n_0 ),
        .O(\doutb[6]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 [0]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [0]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [0]),
        .O(\doutb[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 [0]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [0]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [0]),
        .O(\doutb[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_6 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [0]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 [0]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 [0]),
        .O(\doutb[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_7 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 [0]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [0]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [0]),
        .O(\doutb[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_8 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [0]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 [0]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 [0]),
        .O(\doutb[6]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \doutb[7]_INST_0 
       (.I0(\doutb[7]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\doutb[7]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\doutb[7]_INST_0_i_3_n_0 ),
        .O(doutb[7]));
  LUT6 #(
    .INIT(64'h0000000088888B88)) 
    \doutb[7]_INST_0_i_1 
       (.I0(\doutb[7]_INST_0_i_4_n_0 ),
        .I1(\doutb[14]_INST_0_i_5_n_0 ),
        .I2(sel_pipe_d1[1]),
        .I3(ram_doutb[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\doutb[14]_INST_0_i_6_n_0 ),
        .O(\doutb[7]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[7]_INST_0_i_2 
       (.I0(\doutb[7]_INST_0_i_5_n_0 ),
        .I1(\doutb[7]_INST_0_i_6_n_0 ),
        .O(\doutb[7]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \doutb[7]_INST_0_i_3 
       (.I0(\doutb[7]_INST_0_i_7_n_0 ),
        .I1(\doutb[7]_INST_0_i_8_n_0 ),
        .O(\doutb[7]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 [1]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [1]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [1]),
        .O(\doutb[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 [1]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [1]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [1]),
        .O(\doutb[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_6 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [1]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 [1]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 [1]),
        .O(\doutb[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_7 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 [1]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [1]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [1]),
        .O(\doutb[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_8 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [1]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 [1]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 [1]),
        .O(\doutb[7]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \doutb[8]_INST_0 
       (.I0(\doutb[8]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\doutb[8]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\doutb[8]_INST_0_i_3_n_0 ),
        .O(doutb[8]));
  LUT6 #(
    .INIT(64'h0000000088888B88)) 
    \doutb[8]_INST_0_i_1 
       (.I0(\doutb[8]_INST_0_i_4_n_0 ),
        .I1(\doutb[14]_INST_0_i_5_n_0 ),
        .I2(sel_pipe_d1[1]),
        .I3(ram_doutb[2]),
        .I4(sel_pipe_d1[0]),
        .I5(\doutb[14]_INST_0_i_6_n_0 ),
        .O(\doutb[8]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[8]_INST_0_i_2 
       (.I0(\doutb[8]_INST_0_i_5_n_0 ),
        .I1(\doutb[8]_INST_0_i_6_n_0 ),
        .O(\doutb[8]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \doutb[8]_INST_0_i_3 
       (.I0(\doutb[8]_INST_0_i_7_n_0 ),
        .I1(\doutb[8]_INST_0_i_8_n_0 ),
        .O(\doutb[8]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[8]_INST_0_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 [2]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [2]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [2]),
        .O(\doutb[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[8]_INST_0_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 [2]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [2]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [2]),
        .O(\doutb[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[8]_INST_0_i_6 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [2]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 [2]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 [2]),
        .O(\doutb[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[8]_INST_0_i_7 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 [2]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [2]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [2]),
        .O(\doutb[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[8]_INST_0_i_8 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [2]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 [2]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 [2]),
        .O(\doutb[8]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \doutb[9]_INST_0 
       (.I0(\doutb[9]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[5]),
        .I2(\doutb[9]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[4]),
        .I4(\doutb[9]_INST_0_i_3_n_0 ),
        .O(doutb[9]));
  LUT6 #(
    .INIT(64'h0000000088888B88)) 
    \doutb[9]_INST_0_i_1 
       (.I0(\doutb[9]_INST_0_i_4_n_0 ),
        .I1(\doutb[14]_INST_0_i_5_n_0 ),
        .I2(sel_pipe_d1[1]),
        .I3(ram_doutb[3]),
        .I4(sel_pipe_d1[0]),
        .I5(\doutb[14]_INST_0_i_6_n_0 ),
        .O(\doutb[9]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[9]_INST_0_i_2 
       (.I0(\doutb[9]_INST_0_i_5_n_0 ),
        .I1(\doutb[9]_INST_0_i_6_n_0 ),
        .O(\doutb[9]_INST_0_i_2_n_0 ),
        .S(sel_pipe_d1[3]));
  MUXF7 \doutb[9]_INST_0_i_3 
       (.I0(\doutb[9]_INST_0_i_7_n_0 ),
        .I1(\doutb[9]_INST_0_i_8_n_0 ),
        .O(\doutb[9]_INST_0_i_3_n_0 ),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[9]_INST_0_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 [3]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [3]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [3]),
        .O(\doutb[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[9]_INST_0_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 [3]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [3]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [3]),
        .O(\doutb[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[9]_INST_0_i_6 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [3]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 [3]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 [3]),
        .O(\doutb[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[9]_INST_0_i_7 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 [3]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [3]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [3]),
        .O(\doutb[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[9]_INST_0_i_8 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [3]),
        .I2(sel_pipe_d1[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 [3]),
        .I4(sel_pipe_d1[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 [3]),
        .O(\doutb[9]_INST_0_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clkb),
        .CE(enb),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clkb),
        .CE(enb),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clkb),
        .CE(enb),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3] 
       (.C(clkb),
        .CE(enb),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3] ),
        .Q(sel_pipe_d1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[4] 
       (.C(clkb),
        .CE(enb),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[4] ),
        .Q(sel_pipe_d1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[5] 
       (.C(clkb),
        .CE(enb),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[5] ),
        .Q(sel_pipe_d1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clkb),
        .CE(enb),
        .D(addrb[0]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clkb),
        .CE(enb),
        .D(addrb[1]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clkb),
        .CE(enb),
        .D(addrb[2]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clkb),
        .CE(enb),
        .D(addrb[3]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[4] 
       (.C(clkb),
        .CE(enb),
        .D(addrb[4]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[5] 
       (.C(clkb),
        .CE(enb),
        .D(addrb[5]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[5] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width
   (DOUTB,
    ENA,
    clka,
    enb,
    ENB,
    clkb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]DOUTB;
  input ENA;
  input clka;
  input enb;
  input ENB;
  input clkb;
  input [15:0]addra;
  input [15:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]DOUTB;
  wire ENA;
  wire ENB;
  wire [15:0]addra;
  wire [15:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.DOUTB(DOUTB),
        .ENA(ENA),
        .ENB(ENB),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0
   (\doutb[0] ,
    clka,
    clkb,
    \addra[16] ,
    \addrb[16] ,
    enb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]\doutb[0] ;
  input clka;
  input clkb;
  input \addra[16] ;
  input \addrb[16] ;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]\doutb[0] ;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .\addra[16] (\addra[16] ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[0] (\doutb[0] ),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1
   (DOBDO,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    \addra[16] ,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [1:0]DOBDO;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [1:0]dina;
  input [0:0]wea;
  input ena;
  input \addra[16] ;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire [1:0]DOBDO;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [1:0]dina;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.DOBDO(DOBDO),
        .addra(addra),
        .\addra[16] (\addra[16] ),
        .\addra[16]_0 (\addra[16]_0 ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .\addrb[16]_0 (\addrb[16]_0 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized10
   (\doutb[4] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [0:0]\doutb[4] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [0:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]\doutb[4] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ),
        .addra(addra),
        .\addra[16] (\addra[16] ),
        .\addra[16]_0 (\addra[16]_0 ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .\addrb[16]_0 (\addrb[16]_0 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[4] (\doutb[4] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ,
    DOUTB,
    ena,
    addra,
    enb,
    addrb,
    clka,
    clkb,
    dina,
    wea);
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_0 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ;
  output [0:0]DOUTB;
  input ena;
  input [16:0]addra;
  input enb;
  input [16:0]addrb;
  input clka;
  input clkb;
  input [0:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ;
  wire [0:0]DOUTB;
  wire [16:0]addra;
  wire [16:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ),
        .DOUTB(DOUTB),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized12
   (\doutb[5] ,
    clka,
    clkb,
    \addra[16] ,
    \addrb[16] ,
    enb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]\doutb[5] ;
  input clka;
  input clkb;
  input \addra[16] ;
  input \addrb[16] ;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]\doutb[5] ;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.addra(addra),
        .\addra[16] (\addra[16] ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[5] (\doutb[5] ),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized13
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.addra(addra),
        .\addra[16] (\addra[16] ),
        .\addra[16]_0 (\addra[16]_0 ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .\addrb[16]_0 (\addrb[16]_0 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized14
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized14 \prim_init.ram 
       (.addra(addra),
        .\addra[16] (\addra[16] ),
        .\addra[16]_0 (\addra[16]_0 ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .\addrb[16]_0 (\addrb[16]_0 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized15
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized15 \prim_init.ram 
       (.addra(addra),
        .\addra[16] (\addra[16] ),
        .\addra[16]_0 (\addra[16]_0 ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .\addrb[16]_0 (\addrb[16]_0 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized16
   (\doutb[13] ,
    DOPBDOP,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]DOPBDOP;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire [0:0]DOPBDOP;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized16 \prim_init.ram 
       (.DOPBDOP(DOPBDOP),
        .addra(addra),
        .\addra[16] (\addra[16] ),
        .\addra[16]_0 (\addra[16]_0 ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .\addrb[16]_0 (\addrb[16]_0 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized17
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[16]_0 ,
    ena,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[16]_0 ;
  input ena;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized17 \prim_init.ram 
       (.addra(addra),
        .\addra[16] (\addra[16] ),
        .\addra[16]_0 (\addra[16]_0 ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .\addrb[16]_0 (\addrb[16]_0 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized18
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[16]_0 ,
    ena,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[16]_0 ;
  input ena;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized18 \prim_init.ram 
       (.addra(addra),
        .\addra[16] (\addra[16] ),
        .\addra[16]_0 (\addra[16]_0 ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .\addrb[16]_0 (\addrb[16]_0 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized19
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[16]_0 ,
    ena,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[16]_0 ;
  input ena;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized19 \prim_init.ram 
       (.addra(addra),
        .\addra[16] (\addra[16] ),
        .\addra[16]_0 (\addra[16]_0 ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .\addrb[16]_0 (\addrb[16]_0 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2
   (DOUTB,
    ena,
    clka,
    enb,
    enb_0,
    clkb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]DOUTB;
  input ena;
  input clka;
  input enb;
  input enb_0;
  input clkb;
  input [15:0]addra;
  input [15:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]DOUTB;
  wire [15:0]addra;
  wire [15:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire ena;
  wire enb;
  wire enb_0;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.DOUTB(DOUTB),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .ena(ena),
        .enb(enb),
        .enb_0(enb_0),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized20
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[16]_0 ,
    ena,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[16]_0 ;
  input ena;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized20 \prim_init.ram 
       (.addra(addra),
        .\addra[16] (\addra[16] ),
        .\addra[16]_0 (\addra[16]_0 ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .\addrb[16]_0 (\addrb[16]_0 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized21
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[15] ,
    ena,
    \addrb[16] ,
    \addrb[15] );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[15] ;
  input ena;
  input \addrb[16] ;
  input \addrb[15] ;

  wire [13:0]addra;
  wire \addra[15] ;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[15] ;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized21 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .\addra[16] (\addra[16] ),
        .addrb(addrb),
        .\addrb[15] (\addrb[15] ),
        .\addrb[16] (\addrb[16] ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized22
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[15] ,
    ena,
    \addrb[16] ,
    \addrb[15] );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[15] ;
  input ena;
  input \addrb[16] ;
  input \addrb[15] ;

  wire [13:0]addra;
  wire \addra[15] ;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[15] ;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized22 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .\addra[16] (\addra[16] ),
        .addrb(addrb),
        .\addrb[15] (\addrb[15] ),
        .\addrb[16] (\addrb[16] ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized23
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[15] ,
    ena,
    \addrb[16] ,
    \addrb[15] );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[15] ;
  input ena;
  input \addrb[16] ;
  input \addrb[15] ;

  wire [13:0]addra;
  wire \addra[15] ;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[15] ;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized23 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .\addra[16] (\addra[16] ),
        .addrb(addrb),
        .\addrb[15] (\addrb[15] ),
        .\addrb[16] (\addrb[16] ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized24
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[15] ,
    ena,
    \addrb[16] ,
    \addrb[15] );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[15] ;
  input ena;
  input \addrb[16] ;
  input \addrb[15] ;

  wire [13:0]addra;
  wire \addra[15] ;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[15] ;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized24 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .\addra[16] (\addra[16] ),
        .addrb(addrb),
        .\addrb[15] (\addrb[15] ),
        .\addrb[16] (\addrb[16] ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized25
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[15] ,
    ena,
    \addrb[16] ,
    \addrb[15] );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[15] ;
  input ena;
  input \addrb[16] ;
  input \addrb[15] ;

  wire [13:0]addra;
  wire \addra[15] ;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[15] ;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized25 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .\addra[16] (\addra[16] ),
        .addrb(addrb),
        .\addrb[15] (\addrb[15] ),
        .\addrb[16] (\addrb[16] ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized26
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[15] ,
    ena,
    \addrb[16] ,
    \addrb[15] );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[15] ;
  input ena;
  input \addrb[16] ;
  input \addrb[15] ;

  wire [13:0]addra;
  wire \addra[15] ;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[15] ;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized26 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .\addra[16] (\addra[16] ),
        .addrb(addrb),
        .\addrb[15] (\addrb[15] ),
        .\addrb[16] (\addrb[16] ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized27
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[15] ,
    ena,
    \addrb[16] ,
    \addrb[15] );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[15] ;
  input ena;
  input \addrb[16] ;
  input \addrb[15] ;

  wire [13:0]addra;
  wire \addra[15] ;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[15] ;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized27 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .\addra[16] (\addra[16] ),
        .addrb(addrb),
        .\addrb[15] (\addrb[15] ),
        .\addrb[16] (\addrb[16] ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized28
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[15] ,
    ena,
    \addrb[16] ,
    \addrb[15] );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[15] ;
  input ena;
  input \addrb[16] ;
  input \addrb[15] ;

  wire [13:0]addra;
  wire \addra[15] ;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[15] ;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized28 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .\addra[16] (\addra[16] ),
        .addrb(addrb),
        .\addrb[15] (\addrb[15] ),
        .\addrb[16] (\addrb[16] ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized29
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized29 \prim_init.ram 
       (.addra(addra),
        .\addra[16] (\addra[16] ),
        .\addra[16]_0 (\addra[16]_0 ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .\addrb[16]_0 (\addrb[16]_0 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3
   (\doutb[1] ,
    clka,
    clkb,
    \addra[16] ,
    \addrb[16] ,
    enb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]\doutb[1] ;
  input clka;
  input clkb;
  input \addra[16] ;
  input \addrb[16] ;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]\doutb[1] ;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .\addra[16] (\addra[16] ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[1] (\doutb[1] ),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized30
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized30 \prim_init.ram 
       (.addra(addra),
        .\addra[16] (\addra[16] ),
        .\addra[16]_0 (\addra[16]_0 ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .\addrb[16]_0 (\addrb[16]_0 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized31
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized31 \prim_init.ram 
       (.addra(addra),
        .\addra[16] (\addra[16] ),
        .\addra[16]_0 (\addra[16]_0 ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .\addrb[16]_0 (\addrb[16]_0 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized32
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized32 \prim_init.ram 
       (.addra(addra),
        .\addra[16] (\addra[16] ),
        .\addra[16]_0 (\addra[16]_0 ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .\addrb[16]_0 (\addrb[16]_0 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[13] (\doutb[13] ),
        .\doutb[14] (\doutb[14] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized33
   (ram_doutb,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    \addra[16] ,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [8:0]ram_doutb;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input ena;
  input \addra[16] ;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire ena;
  wire enb;
  wire [8:0]ram_doutb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized33 \prim_init.ram 
       (.addra(addra),
        .\addra[16] (\addra[16] ),
        .\addra[16]_0 (\addra[16]_0 ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .\addrb[16]_0 (\addrb[16]_0 ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .ena(ena),
        .enb(enb),
        .ram_doutb(ram_doutb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized34
   (DOUTB,
    ena,
    clka,
    enb,
    enb_0,
    clkb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]DOUTB;
  input ena;
  input clka;
  input enb;
  input enb_0;
  input clkb;
  input [15:0]addra;
  input [15:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]DOUTB;
  wire [15:0]addra;
  wire [15:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire ena;
  wire enb;
  wire enb_0;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized34 \prim_init.ram 
       (.DOUTB(DOUTB),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .ena(ena),
        .enb(enb),
        .enb_0(enb_0),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized35
   (\doutb[15] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    ena);
  output [0:0]\doutb[15] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input clkb;
  input enb;
  input [16:0]addra;
  input [16:0]addrb;
  input [0:0]dina;
  input [0:0]wea;
  input ena;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire [16:0]addra;
  wire [16:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]\doutb[15] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized35 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[15] (\doutb[15] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4
   (DOUTB,
    ena,
    clka,
    enb,
    enb_0,
    clkb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]DOUTB;
  input ena;
  input clka;
  input enb;
  input enb_0;
  input clkb;
  input [15:0]addra;
  input [15:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]DOUTB;
  wire [15:0]addra;
  wire [15:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire ena;
  wire enb;
  wire enb_0;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.DOUTB(DOUTB),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .ena(ena),
        .enb(enb),
        .enb_0(enb_0),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized5
   (\doutb[2] ,
    clka,
    clkb,
    \addra[16] ,
    \addrb[16] ,
    enb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]\doutb[2] ;
  input clka;
  input clkb;
  input \addra[16] ;
  input \addrb[16] ;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]\doutb[2] ;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.addra(addra),
        .\addra[16] (\addra[16] ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[2] (\doutb[2] ),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized6
   (\doutb[5] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    addra_16__s_port_,
    ena,
    addrb_16__s_port_);
  output [3:0]\doutb[5] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input clkb;
  input enb;
  input [16:0]addra;
  input [16:0]addrb;
  input [3:0]dina;
  input [0:0]wea;
  input addra_16__s_port_;
  input ena;
  input addrb_16__s_port_;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  wire [16:0]addra;
  wire addra_16__s_net_1;
  wire [16:0]addrb;
  wire addrb_16__s_net_1;
  wire clka;
  wire clkb;
  wire [3:0]dina;
  wire [3:0]\doutb[5] ;
  wire ena;
  wire enb;
  wire [0:0]wea;

  assign addra_16__s_net_1 = addra_16__s_port_;
  assign addrb_16__s_net_1 = addrb_16__s_port_;
  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ),
        .addra(addra),
        .addra_16__s_port_(addra_16__s_net_1),
        .addrb(addrb),
        .addrb_16__s_port_(addrb_16__s_net_1),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[5] (\doutb[5] ),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized7
   (DOUTB,
    ena,
    clka,
    enb,
    enb_0,
    clkb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]DOUTB;
  input ena;
  input clka;
  input enb;
  input enb_0;
  input clkb;
  input [15:0]addra;
  input [15:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]DOUTB;
  wire [15:0]addra;
  wire [15:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire ena;
  wire enb;
  wire enb_0;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.DOUTB(DOUTB),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .ena(ena),
        .enb(enb),
        .enb_0(enb_0),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized8
   (\doutb[3] ,
    clka,
    clkb,
    \addra[16] ,
    \addrb[16] ,
    enb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]\doutb[3] ;
  input clka;
  input clkb;
  input \addra[16] ;
  input \addrb[16] ;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]\doutb[3] ;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.addra(addra),
        .\addra[16] (\addra[16] ),
        .addrb(addrb),
        .\addrb[16] (\addrb[16] ),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[3] (\doutb[3] ),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized9
   (DOUTB,
    ENA,
    clka,
    enb,
    ENB,
    clkb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]DOUTB;
  input ENA;
  input clka;
  input enb;
  input ENB;
  input clkb;
  input [15:0]addra;
  input [15:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]DOUTB;
  wire ENA;
  wire ENB;
  wire [15:0]addra;
  wire [15:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.DOUTB(DOUTB),
        .ENA(ENA),
        .ENB(ENB),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init
   (DOUTB,
    ENA,
    clka,
    enb,
    ENB,
    clkb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]DOUTB;
  input ENA;
  input clka;
  input enb;
  input ENB;
  input clkb;
  input [15:0]addra;
  input [15:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTB;
  wire ENA;
  wire ENB;
  wire [15:0]addra;
  wire [15:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .INIT_00(256'h20EF889C8FC4E90D21BAFC6F4C1DE8102FCA3D158F06E23C2782931958E34BB5),
    .INIT_01(256'h388147CD24DECBEDB62F7CCD94462D1397F95B0CAAB5C9A5221C9ACC6826762C),
    .INIT_02(256'hFFDE4E345EDA6732173A7A4D0DFDF6536039822D9E671C26684474567C85C6AF),
    .INIT_03(256'hB209BFEAA7845892358AA9719ACB6058AFECE72B4D8C736DEC93F9493FD78540),
    .INIT_04(256'h9357B21F1B083162CA3018D436374A2E39614C229E769A16368B18D4799C570F),
    .INIT_05(256'h73D9E8D6729A5BD19B3921789F0E29D89B275A8D8AD3B1EF3B1C22F91AC8F732),
    .INIT_06(256'h3A636912726453382110CA020C8D4F06757106D2B0332A16AEB33477BDF087D0),
    .INIT_07(256'hFC95BAA23B2E8136DA79A773487690541C2612129237A51ED4452BA0BB56556F),
    .INIT_08(256'h50ACC1AF77A15EEDD7B02A5E0F0C5319118E22F4BCE6766E549272B34173E083),
    .INIT_09(256'hE81DCE8F40C24E0AC99C69AA2710C772AAAD7AB17292CA594CFCC66BED61CB28),
    .INIT_0A(256'h025DBEC3D4D082D265CA57A7DA722912446EB411462812BF44A0BF0BB3723B1E),
    .INIT_0B(256'hE38C96FA35407648E092988362BF34F65964366335141D61FD33074A82E744F5),
    .INIT_0C(256'h8DA22D11BB0181CC684F5D70D57E82D1079B334DADDE288101120AB9581E34BD),
    .INIT_0D(256'h8EAF67CD818678A5CFEB1A5CEAAE498F34C37DF2E615E058CA345A26C351E804),
    .INIT_0E(256'h088F36440E3F801EE44297D6123956795EFD22E743F42CC7942D654862DAE310),
    .INIT_0F(256'h9BCE47137FA7160DE181373B090F3E8CBF427C2C9C4DCB2BE9C6F9041C7A86EB),
    .INIT_10(256'hDEC84B02183AA13ACA042910AFE080339FF082E937C48C062A6F8C3A23F31B05),
    .INIT_11(256'hC2AADDFC4961F7EA523EBFC389FE1493D926DEA56E602BCA9BB976FE930D5AF3),
    .INIT_12(256'h8F3753CD8E523FFA0021219BCE288BBA4ED5CF562B4A33B3585BDD1F73B97852),
    .INIT_13(256'h144526893CCF91B5BB99ADA9FA8FE0151B0BAFC8D0C99302520445FB1F9CE008),
    .INIT_14(256'h5DC0C9EB9827BE6C34C0250C28C24D41C519413B2F14AC0E1D1EF77E7EA86A79),
    .INIT_15(256'hF19E884DBAB96019D1A9C8124AFAAE92DD34F472963395B9CB2FD1D004EA9352),
    .INIT_16(256'h9588CED145BBA2F0A50B3632FF984C11B2ADB774B7C6D1B2320BF5B1AD5EC38B),
    .INIT_17(256'h297F2C59A2CEB4094256BCD671A0440FE8195ABE0566211C6A26564DE66080CF),
    .INIT_18(256'h9CE3D3AAE5FFA7C864047ABF60AA3E90191FD597E6C1F8E887A4CC5092B7FECA),
    .INIT_19(256'h76803862CC27A1DB0358F11FDE155AA36012DA030EAF97126017A87448CED91E),
    .INIT_1A(256'h7F1032809E4098220A4FA6ACAF1C4D7F5CF5632D9CC7AADEB93CF84EC213F455),
    .INIT_1B(256'hF3397A9A340DDF9FA28D60D12BA6D97EEB00B4F28EF19852498CF56F94ADD4F5),
    .INIT_1C(256'h9961B2445194671A9B0E214A19C0DD09AEF4D7C502D0A17CC176BCE94CB688DB),
    .INIT_1D(256'h7D81411C0795229E0DC4B0569D109CF11573A95D79DF8FB4F644D3E046132250),
    .INIT_1E(256'h5A7DA71DFE07211ED3504DA74B1E4FC768DDB8CDCC102F7A3EE0DAB99A41C38A),
    .INIT_1F(256'h588CDC5ADD9F7BF21526DFED00646DDF67FED5A4D9B58420510E8549E3624718),
    .INIT_20(256'h69984C45C6E25D3F17274995873792AA8D7931DA9B3B6FD581C6A58665C34DBC),
    .INIT_21(256'h794331A6E1A200ED20591EE0A3AAFCE2459942B9E64BE7B909D7DCDD070F11A9),
    .INIT_22(256'h1597A4B16C7EE79543602CCC19B048A838CD0CE633890EA8D0DEDE7BC7527DC1),
    .INIT_23(256'h29815360C4D78E3EAE993F5BCDBAB5F35101F4B681C4F9C87F1522AEC16FB759),
    .INIT_24(256'h17C57EF91305DF1D04129FD02ECD755BD0C724D1F178BC8BB7EED92EC9035A63),
    .INIT_25(256'h4A6879647FD368EF4DDD7FE070075938D99694251569D42F125BE0CF7E5FA93D),
    .INIT_26(256'h5C7150C0BA6147933A5490E88F523F87A92CF9293EC7EFF18BA62AEFBF632B26),
    .INIT_27(256'h4CB3887568853E46E40C0E0BC2F30972BFFC962BA8FD503864602EE042FC921D),
    .INIT_28(256'hA5FBAC57023E2C77C24E58E49187ABD6BF95DE02D9527E1F0C6BA41DAA586FE5),
    .INIT_29(256'hAEDDEA35B32FD346D9BA46685A779D0446D6827EECDACB2F3FC2EDBFB8AAC9FC),
    .INIT_2A(256'h628277CADDEDEC334E2ADF18ECA72FB2E5D035810F9A9C3E8A6B181ED0D838A1),
    .INIT_2B(256'hEA4507BA583887CF22542394588B356E8A116990BB66267031E800B5E6821A52),
    .INIT_2C(256'hE00247F34FF1A5FC5BBC272C18E071A587359C1C3D997305025B1FB946265A4F),
    .INIT_2D(256'hFCFADA2B08C31B7FF3F5A7DC4E9953A423A25E12ED510E0243D8366E41F91286),
    .INIT_2E(256'hE0EAC94FC4C22FF236D2CE639B39A93303FFD00040B0714DA04A34EEC0533D4D),
    .INIT_2F(256'h1FE492031DBB2F5BDEB5B56E6C6E6787EC3E7789639E1DF8AEE4ED4201926297),
    .INIT_30(256'h52DCDCBD50218083EC0A18A8EA0B7B0E80F58ECC052C3BAC579166CD87329F72),
    .INIT_31(256'h797314942370EBB4B9BDF27E46CD40541C4481B945AF41AF380ECE868FE8E57E),
    .INIT_32(256'h2971555C3EBBB1822B3E5232D0424404456D0DB1204857883270F9A9B367E35C),
    .INIT_33(256'hF7EDB27FD06F464FDB476ADCC9761B9379D7C51669FCB3A1BAD9E54B5AE7C24D),
    .INIT_34(256'h962436335251200222072F41A6DC7E830DA81C93FC4026BFA9BE9BB989ED1EFB),
    .INIT_35(256'hFE7CD7A17F74FE97D916BE4C07B5F2E44136E310C27EF6862AA49B68DA59D8C6),
    .INIT_36(256'hDD70A5DCD9047D53E03870B80402BDE7330A8212C5C2BB62EE8E362638476541),
    .INIT_37(256'hEF5ACE44BB7EBFFBDFC8AEA768F347179639CBDA2D4CF89B55A34F21C487BFD6),
    .INIT_38(256'hDC9A96D8A93EC7E27E4B8E7C698EE4E4CF1B1E98F08492D8B8B81D735BA721C8),
    .INIT_39(256'hDC9295F0EB43251DF77522F7AAB8ABB8DE45712EA08A811C2D4EFACFBC0BF2FB),
    .INIT_3A(256'hF2BAC244EBB1C4277C13CCDBEC7564964D1A2C85F658F421296F9174683EAA48),
    .INIT_3B(256'h3D9E487C011E905BAC835352E68165447971086E61CC5B0BFAA5FF2EFDF9550C),
    .INIT_3C(256'h722EBAC304500AD1BE2B9DE16EB7E3672AF2E79D0CCA60C4358ACFF60DB0534B),
    .INIT_3D(256'h690DD0BA16B7777E8D5915D0C211844FED44B936FE70B6283A1E668911D5942D),
    .INIT_3E(256'h61450EACA657037217E2D5FB3441DE84C71029A78F7E522B93DFB54C468AAFFB),
    .INIT_3F(256'h129876D53A74377AD6739A88783CD2828C0E1A8292464738207E876B0EAD9D12),
    .INIT_40(256'h9FE8B731FDC7CF64F236011F2094117A9D80498934D9C2D5A4D9C0B45542D4DD),
    .INIT_41(256'h8CDF8949771C42432D7E6A7C36B4DEB0F2A6B464E3928BE46E3CA8546B8EEE68),
    .INIT_42(256'h137770273C35E1C6E0AEE8087347A7366037B086F27229E1E4DFE506B6B57E30),
    .INIT_43(256'h5DC93416C5E4D2C276F26A8F65DA901FFB2266C1893D9BB3845DF9D3985D641C),
    .INIT_44(256'h17738405019D91FA75644D44EA813021C8B196E6222D4428358065501097F876),
    .INIT_45(256'hF1C730084399BDB6BA4458A9663A18CED2450F89E99AFA250129E9EBFADB66F5),
    .INIT_46(256'h7428364534BE90FFB8DBF615512F062016C3B695E9E88A5CFF1337EA4306D345),
    .INIT_47(256'h42AB0A0979A428008FDF91EE7D02362D0A1CF03A3D8A1D87EEC152BE8F98685D),
    .INIT_48(256'h170B6F04DAB6FDE1E5248D87259EA61A9E258DCC027C0E6A3D8A47239F6BBA1D),
    .INIT_49(256'h7C4ADEFC342116D0C9E67153DBC60D69DB6C9E47D430965CC20285DEFDB41898),
    .INIT_4A(256'h4BD722CE3B938FD5383B465805DE5F9A34198FD9DE2E245E26CC011C188F0251),
    .INIT_4B(256'h014617A85D0FBAE3DF18B3A9CFF2B880400C381F8D9F74598F2C6BAE17B91036),
    .INIT_4C(256'h9697940600B6D0D6FB3B660CDBFDCBC0005C6B4C8C9FD6CBCD67F5C61A1DB836),
    .INIT_4D(256'h194A2D258A63CCC5E14944E19B9B64203A6A1F287ED32EEDFA9FC9E10111671D),
    .INIT_4E(256'h4DCF2A0C1553A3A34CA1EDC2BC718A207C8DA4DCA445B61AC9ABE2C5B5635460),
    .INIT_4F(256'h274F7A899AF6BEC0B85C7A37872F2EF41753EE343F4933305AD93FA65BB41B0C),
    .INIT_50(256'h09DFCAEBFF7DE92719B5D67AB9453A6A1804E108FD736830053EF8C62296C682),
    .INIT_51(256'hCBACBCF6B68A6C109BAB1C28F0C4BF82A26027DA9C5F416647EACA74880DB918),
    .INIT_52(256'hC304FCA395FDAF36B76C2A12F2646DEAF749A8BA083FA67510151934F0FDF8A1),
    .INIT_53(256'h14750C5F987A90337D0E16EB14E8E44A222FE210DBAD200AF7E7EA78B2DE3C68),
    .INIT_54(256'hD6AC7B210D5D8B9E07E9655EFA5C3C01353E1D4A080B0234C6C26EA2DB1CCBF3),
    .INIT_55(256'h0AEAE2BD616F3BB1DF3E12F73FA4868E2E0F808696E12ABBE89CCB84D042B453),
    .INIT_56(256'hC2DF5738D8A768E3FB344219154BA50EB04AF7F0D8D49E9E298F7640A68BF3AF),
    .INIT_57(256'h8FD331A152012E94909A99578967AE07E975E4FCADE29AB3A6657BDB69CFF54D),
    .INIT_58(256'hF540DE01E2E4CCB761515E079A013B24FC905B3D74D9CD524CE0F757F8CF79FC),
    .INIT_59(256'hC9E6D5009895BA2C4AF613975BD374A17896280334B6B3E22A9808B1087AD194),
    .INIT_5A(256'hEDB251B7C863A1A18917CD20AEA99A791030A7A7691057ECAEE892A8B2A3733E),
    .INIT_5B(256'hB3B3BF04D624565DB2EB920B1449DAFB355DAE27C00A8367FBBA0D58B89290B5),
    .INIT_5C(256'h1E8E015508054E854F09B3CF7DEEBB008C5A77CA013BE6AB0FC4ABD31E23069E),
    .INIT_5D(256'h7BC53785AA770079DB2F65737CC73E860CFB1F6D10FF57D44C417D85C6AF892E),
    .INIT_5E(256'h439FB9FA020A42E3F674CF1A9D6A9B1DA61C9FFCDED74F8537142FCB7DD51401),
    .INIT_5F(256'h1349B6E31C9618BBBBCB96467815DCD09D954D91C33030D41059E473FC873915),
    .INIT_60(256'h30E44FA970283BEFF99A0E4F129640D8EB07AEE129790CB9352364800E4DF68D),
    .INIT_61(256'h3B5B02F8125E869882293394F2C2AFCD6F299ED8A21B607886F3DC060C02E0C6),
    .INIT_62(256'h6774A775F20F8CF6AD23C145181209D3065778F379213454E7A4A7C855F57B83),
    .INIT_63(256'hE36944FD058BC8C9C13B1CDB96CB8270046152C35F25272D413CE25A1B1CBB82),
    .INIT_64(256'h745088273271F1F2DFA74A0D7D1F83F3EF938CCB3BD246D80D384C983B9A2060),
    .INIT_65(256'h8610A80AAEABC0FD4D7F08248E7E1D3DDE69DB30764AD3BAA7C250A812398605),
    .INIT_66(256'h6DCBAD2526BA007A4E6EC193F3E8B71E60B8A0FF3D0356244EE72BAA11E72C64),
    .INIT_67(256'hCB1940666A7255F23DF29D79B1967B706F9EA5303A79EB4BD275353384FA651B),
    .INIT_68(256'hF8CE8EBFCF8DD9FD753D51F992C01C982A3D7C891C8EB809C6D2768B9E8B6031),
    .INIT_69(256'h52FC8CBD1D0429FF48496F3416B87C159C6D31F20A661A26D7CBA74CD53182C4),
    .INIT_6A(256'h7C08469E44B40B775A255496BA3B9D2369C74BA0771CE62D216B6789D795CF0D),
    .INIT_6B(256'h273FF1BC793A46586AC672D00AF8BFDAE8DBD04DC1524EC2BB0551614E4F64C1),
    .INIT_6C(256'h2F57E2B9B6D318E97DB6A706982B78C82F4EBFDCC45E2153BB016E0DEEF9DD9E),
    .INIT_6D(256'h7E73290389816213FD7008CBA900ADD9A821AB1268AB980F7BD378707FCCC1E1),
    .INIT_6E(256'h8A994712CA318641634F31A4216E050214804661E1660965519FB569C6346076),
    .INIT_6F(256'h2DA2A379BDF158F653754467ADE742786DC9A3FF3BC9675E82A0FD047FEFFB6B),
    .INIT_70(256'h2AA8FE4BA49C90416DB628D29CC1C5DAE4044FC49C6B7D85A619D629ABF4AB98),
    .INIT_71(256'h3BE65CD5EC85637960B19FF4141F69B99EE937DF28CD6D494283E821C2FCD2DF),
    .INIT_72(256'hF1EC4F1C6A522B254932DD16C618979A4FCC7AE1A31426CEF3F8F3107ADD148C),
    .INIT_73(256'hA99176E15C2CA776C12D538718CD73197056B71D8288033846058640E9EB1483),
    .INIT_74(256'h23E112EE284D0C63ECA4AEB256373C7D1B43D2933151EFE3A89D8A2B595E73D3),
    .INIT_75(256'hC634038967C516DEE87BED6DCA6E6F9F6AFF728F26651DA76173AA6B26833CEC),
    .INIT_76(256'hBFCE5B5BC505343CAF37F6741352DFCDAC90350991CE1C15BAD06E9C0A15159B),
    .INIT_77(256'hB37C940ECCEC5C270EB9B7F9EE06538B9C9B8087951289D7847F8B37BA356E08),
    .INIT_78(256'h0E5C4682062B694C4B71DFFBC424540B11C6079B1046772A1A0183C33BFF461F),
    .INIT_79(256'hE6C27585E374101DC359410B2CA802BC47D0041347EC4B78AA64630643D269C1),
    .INIT_7A(256'h118BC92C81EF5F11F25A75608C950F6DC1C4CC041F8DD2F19D3F6AD1F35FDBC2),
    .INIT_7B(256'hC7B5669D7F977D7AD03152C9F96A187C8BBAB7C485A006BBDBC55DC4B6F0CC4A),
    .INIT_7C(256'hA8A2250EC57637FA947FAEEEE01F458335C0EF8A3CA49D56BA4824490FB5EE85),
    .INIT_7D(256'h55548B92D77BB109F8F634C0322536A550506B270FAE3AD74252FFC0AD9C854B),
    .INIT_7E(256'h2916823D6F5E36FCF66AA535731ADEAE3BF5CD2EC9954C513EB8AAEFC1858766),
    .INIT_7F(256'h521AD9B3911C8F1A21B83F536BFE139051712DEDE1BD3C048E5D6B260E83AFA3),
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
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(ENB),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .INIT_00(256'h81DBA547E93FD28A8A94C6E57303583CD1FCB177B1053965C247C48F876BE6F3),
    .INIT_01(256'h079563FF97D8F7CC5A556B338EC00131820F25EFC238F24160AF62DC65404D34),
    .INIT_02(256'h6808D16204936DB46291575A084BC85CD233F5F62278F3344BCA6BCAF8196754),
    .INIT_03(256'h29FFEE4A71B21D3904A1EF62753B21FD7DE437651611CCED9B3595D8C72BC669),
    .INIT_04(256'h6F6A2E63F1C4BCD50DA7EE07E280764BA147D0EE401E7972E54318AC39B0F978),
    .INIT_05(256'h8AEA0B6D7727F1DCB309D294E0D783B25F193F14EBB48386E13CA4650C0F7E64),
    .INIT_06(256'hA40E5160F4124356408535B590216D9A1DDACA81629C08D69DC62AEE2838C342),
    .INIT_07(256'h9E2FB61569D7DCA17D4411F47F351B8209EF245983F72B69F3276B01BB9B56BC),
    .INIT_08(256'hF5A859EB7F9E480D579C2090E6BD20DB994662AB02B73B3B59430EF7A54A6852),
    .INIT_09(256'h16B8E83FC82C1A68223D4DE0D5A7B6AF67A3F1421FEC9322903918033A56BA95),
    .INIT_0A(256'h485694772F0306DA01816D6FF5FCB055E239D5C9CF94C18E646F1CB1537768E3),
    .INIT_0B(256'h2C2B0507E09E0E29BD128A1BB3A9445C0488737F48F65475DD215A526FE7D24A),
    .INIT_0C(256'h28F5EBA286EBF9A59AFE9BA40806A9AA451AF8C0FFDD3FE000000001FF2F9237),
    .INIT_0D(256'hDE64DCC091E57B5BBB7E4C4B0A77150AB05C6544E01C3D47456EDC31A4716BE2),
    .INIT_0E(256'hC1B242CB0896FDA34EC945D893FCDB7C1DDF2531D2F5249F8523726C3D554FAD),
    .INIT_0F(256'hDC5494333ED8EA4D9BD4F00D85B65E9A102032E05887E672EE275D00B0E0C3D9),
    .INIT_10(256'h29CF64624861E95A33DECCEAFD0DFC3E08DF04B4E2012D27F72FEEB8BDA1E0DD),
    .INIT_11(256'hB5E92FF12E83FA298D70B844F87428606031FC6C82F9B10C90AD05C60546D4BE),
    .INIT_12(256'hAC65E47D02A9C8B53ACB9BF966DEA9B9F0E30D8D4D10A4B81F5D7CDB2E7FDC91),
    .INIT_13(256'h696F47C143011BA4FBAA378D731E34548439AA548EC5F89C554303E3D02C4EDD),
    .INIT_14(256'h748BCF05241B1C0AE5DFCA3E1E12DFDC364612C3AF57486FDFF4C04A514A372E),
    .INIT_15(256'h64597B78FAC852D72C91CB210AC188CBB604ED1D699EC46E667F7EFF64AE282F),
    .INIT_16(256'hDE92ABA8F2789DD6A6FD9A17D2E49E78A6CCDF8CD3C955A1CC8850D799DDC788),
    .INIT_17(256'h241C6968E2D44EB0F44FE82D8E99485F36A1022618B180E53575F3EB86B3C96E),
    .INIT_18(256'hDEA88094F86838A68D11FB853655A8D33477C5AC640CAB08534AF861CAB2D1CC),
    .INIT_19(256'hACAA0694E09E0480C84AEC158A07FC94E743700BFAFBD87537757A04F1850FBF),
    .INIT_1A(256'h855E4406F7A99445C73B595CDDC9572903E211B851C2DB09ADC1FA63881B9BDB),
    .INIT_1B(256'hB138F7D1A9B60530E4BA4DAB991F90BAC3E22999463421559A7573EE5B71DDAA),
    .INIT_1C(256'h52E7DFD3957AC6AF16747E4D8F2B162977A8B32018AB7BDAAE0D984BEF400A46),
    .INIT_1D(256'h0563CC5F51CFA274B74FB31777A184B868D2ABEC05CF31F58F9B8494BE0B037D),
    .INIT_1E(256'h320D928485C938C0A668742BFC43C4D9B0E2F308B799488D00DB9D7FAE1B19E1),
    .INIT_1F(256'h33F4E738732FCEEF64A3662E2258AD13A50E4074EB273E5684EFF1A1AD81FC37),
    .INIT_20(256'hA3084212C31C43CBFBC4B1CE732FE4C9ADD234ABB7ECDDF0B4989FCE9D2ECD44),
    .INIT_21(256'hDF105BE8EA338AFE9BB6FA52AFDA5087F8992ADF6989BC09C879AC1B4D757CD2),
    .INIT_22(256'h2B38319079FC0CEF2D909377139D83DD07A3FB7D40F1940E6743CBD0FA50C76C),
    .INIT_23(256'h39EA64CE5DA8A19DAD99A661E7736CDE98BE6BC1D17CC62FD7B4DCDAA9842AD2),
    .INIT_24(256'h9BBDB6C1B61EF7B6C84922A82E9C8F01E9804F8875EBAEF201056727F3C0E29C),
    .INIT_25(256'hCF2A60506F73881385438B5EEEE7AEE41E1723A47B539B841F83A09C875F7110),
    .INIT_26(256'h3D86608AF07429B02C4EACEC892D5B07E02C777E1954B05413936A5D54D1B469),
    .INIT_27(256'hED861603823796122E06505C29BCC86B610D2B9B8BF78F06D05A2D947F0313E8),
    .INIT_28(256'hBD358727A39FB406EBE237B5A54A5C0CBBA5C6DE1BAD9963FBB725DBD18FA489),
    .INIT_29(256'h65C1F99317EA85B5AE570667666FD9626CD26F4E56AFE958B719B42F501E2369),
    .INIT_2A(256'h1261DFB56C31E95E3EBED2818B2B31980CCAC85F37266E4DEDF8758686EFCDF5),
    .INIT_2B(256'h9B65B76AEDD2637BB7B2BCD1443F70275767401B3E860B03BD14EFD1B064E4CF),
    .INIT_2C(256'h42BF76C12B7FB7891962F432A5113C40C13A0D5EFC34ECFB1186B39F3D888629),
    .INIT_2D(256'h3B7B16F1625BFA51AF59E59A029D8766CD45C2289494E812374801F2183E1842),
    .INIT_2E(256'hBAE39278FED94388517BD2F4429DC18D11E57801302E3A988C0DFEF5EEB89B12),
    .INIT_2F(256'hABC8F57B9986D2648956AE9DE2B1F4C6E3E000000001E4BD0E556D26B321D02F),
    .INIT_30(256'hAD1945F95C2057AFCA8DA0C56E8600F407B57B11C68EB284D0B8A5571F074652),
    .INIT_31(256'hF6C337684E83015E04E1F8E1E3B98E09DE88567A652B08F27ABB91DF660FDE8E),
    .INIT_32(256'h976166045BC1851A42EA13141A41315D88ED2A63511CD144531017748466A57C),
    .INIT_33(256'h5E771FFCBB3F63088C6D8CED854DB10411D91799F1818A40DD6AA93881ADFD89),
    .INIT_34(256'h0DA89393E61A8314787CC3030BC26E983919929A9A58093F74FF398299F69D41),
    .INIT_35(256'hB665B1FBC1904F009CE4D6D80000E117D9CAD106FF408E15930DC7AD35B96C1D),
    .INIT_36(256'hC8452A49AD95B2DE4E6AB6BD3E38DC20F5AAC5BFEFA230424BA2595C5FDA1594),
    .INIT_37(256'h8ED378940761A3DDBA420C9FA228F520FC0A45BC6EAE63FBEB4FFFC207EA4948),
    .INIT_38(256'h1627A9ED9F20B4A1A174E485059D38F97A970BA46126DB5EE9C01405C260B627),
    .INIT_39(256'h2CA161359190122D8ACD473721588F595F7392AF30757A30145EA02F9525A71B),
    .INIT_3A(256'h92BEA234C491F360E738033E770EBBB27FF3F057F61B29071D0A1C7E1E7DE4DF),
    .INIT_3B(256'h77EA1E0175C7E9550F90F4394C096154D9ED91A9CA2FBB8AF878073E6924A551),
    .INIT_3C(256'h883FAFF497BD57DAC76B2D6A807430A5ECAD62634834C9A1E054BDD3C8CE1A77),
    .INIT_3D(256'h5B264317607337BBCB930DEE25697698F4447E68530A7D216EADE03AD0CE71A0),
    .INIT_3E(256'h9A43E1CF442800E60491D3946FB2BF9D5920D47B881B0D236F5313EB8BE5C4DC),
    .INIT_3F(256'hDD8155556141353C81F4970539903673E20221CB37B1354E905128BD76D9FDB8),
    .INIT_40(256'hA4D42D8B64522629165E66B4A499588210D1A3C171E08B0CEAA6E1BAD5F548A9),
    .INIT_41(256'h908D41B0A52C1436AE4404FFE70A4693E78B07D0C28C05E013251E5922B94C7D),
    .INIT_42(256'h2B8305D92F809AD2497B0CE9A9C874D0780B0C46071D0216C38BE91453594965),
    .INIT_43(256'hA2F503BFC59E139962CBC87EC1A815A45D4C8682C1866E7C3CDFBD346B5E2319),
    .INIT_44(256'h2AF259973F407E8100C7015B649007E9D6670B3B5811850E2C4E985AF554F7FF),
    .INIT_45(256'hCFE206AFF21BA3BDEAB1140FC3FF71018468C3069E55AEDE5B9E34C85DCFC995),
    .INIT_46(256'h7E3382FCEA7254F4762E4C16CC1FCD114D5903F2FBB2353CE591EE5D9DDA1F4F),
    .INIT_47(256'h673D5291450A74DCAD6E043386BF634CE65A0CC828967B543F71AA9346227641),
    .INIT_48(256'hF4974D19DDD110A5027F30B0EF17B003F8D3D6B908D274292E80DB368481CC98),
    .INIT_49(256'hD010E16FDA59E1EDAA7BC582FE9CB880F6CC86C00E0E632FE3E4FD18C231FD04),
    .INIT_4A(256'h7CFCB0B84A1C695E5CA3FA0B50C617988551AD6AF20193ED8EB94600BB4EAA83),
    .INIT_4B(256'hAD8EBE9461168D0A12EB9F12AD0905EC934B9505D1C6F8D7B7BBDF071786BB87),
    .INIT_4C(256'hC10645CD475ACD9258C0DAEC7CF602F2CA36F59C79CF1B5970F533E65982D703),
    .INIT_4D(256'h6CBBE46A2726344BCB0EAF629BBC2FB867AEC3E6281D0E8788DC7C8C03A6492E),
    .INIT_4E(256'hAAAB7A909A7D317F7E4579B3073DD4A5FBD425ED1F03E11CA35CFEF35895D85F),
    .INIT_4F(256'hC4C2C824997DFBD80CB4AB37DD38F77FF18279B19BBC90CB0BF109DF2BFEFEE7),
    .INIT_50(256'hF76D31D668E4A3F386B3D3CE3AB339BB8AD229EC42DC5A74D5CEF9961A74C0A8),
    .INIT_51(256'h27E10F9FD834F3026565A3FDD83C15DD53C38DE286A5AB556CF2B6350CE13FB2),
    .INIT_52(256'hE9FE24355E0694FF4503E775760F6B9ED27A022AB2F1404363123C44D0B55462),
    .INIT_53(256'hD650C6291CDB28ACB59758DB896E514B77D074A0802BB410F9397A2EF51C6942),
    .INIT_54(256'h4E949DCEDEEE244EFAF9CCCFFB20CFC65FD858455DC60FF56292D6AF3A9DF935),
    .INIT_55(256'h8755752802AC354CCB70318625D92A083B402F8329B471E2742EC0A131A2C673),
    .INIT_56(256'hF8E2E65D19BD53901A7A6A422CD480C1D329D92A8DEB048D4C58E4B735F2E490),
    .INIT_57(256'h183391818B79CA7D7757F62C3E39D5EDF23E4AB057CAFF82CB32AF82C0A34451),
    .INIT_58(256'h3DDE4A0251F2BEBE69B0501E272EF8C6AC8979BA397AAFA79A00B4B895484B5A),
    .INIT_59(256'h4CEEBFE14C74F775362DBB796A68349A8004689D424EFBD81C2C5B544012A963),
    .INIT_5A(256'h71B7EB543556EC19DEA1AD6A09B23122C083C3FC939C6648B7DB92E7793522DA),
    .INIT_5B(256'hC005A7BDCBAD4563893F7F1A6D018F8B61DB741078978BA9D3F0606CE32D1247),
    .INIT_5C(256'hA331C579D20FD90D6AC7783D689F20D3F4F8C977799950BD8B9E79938FDCB9F9),
    .INIT_5D(256'hEF4969055365FBCA15BE35D8B1101212A57DF06CD3C6467C87A52C8508C6E523),
    .INIT_5E(256'h5562BCB8FCD04BF8774CCB3672684B081BB5A7B8D27FF755E1CF92DF405A2883),
    .INIT_5F(256'hD61516490D303D3ABD1C9B855659D891BDE76A41F5CBF608BF27954E578BD9C9),
    .INIT_60(256'h5FAFE1E2A8DA847BF0C21926919016EA60F8B49ED97DBEA4C093F0643119EEF1),
    .INIT_61(256'h8A8BBE2BDB3DC6BC3A9DB3A08AA6DB0AD9504BF92EB2E57F8524A7BAF95C6FCD),
    .INIT_62(256'hA375A9FDB220F006F352E2A9807471C5823862EAFE589EDA8715A77E4597FC59),
    .INIT_63(256'hB5886C62EEA95F0B879CDB56668CA179A2238D91FC1E691EB6D8CE31A5A50139),
    .INIT_64(256'h7FEF2EC504028EA208AFD7D6DC962385B8613F3FFEB433422E9E3F6BF0946F94),
    .INIT_65(256'h360D07696FB7A21E24CB80510F768BFA708E0BD8AD54780C7C1BD1C0436F4DCB),
    .INIT_66(256'hAF6EDB29325D4930C7D3773A5B07C0FCD2C0723083CBCCC638922852FBAD226A),
    .INIT_67(256'hC69C99BFA0C540B0020BD1E752F291196CF680F3F0E0E15B2D60A817BFF54060),
    .INIT_68(256'h4015197B93AED277BF3E1CC39C18F30934FD364402D3E3E60F0C3B095DD84DFA),
    .INIT_69(256'h8E9505597614D80E969C6A11E0E68D45D5AE4E9921E6E01D6AF472B0B2C26A59),
    .INIT_6A(256'h37015D99ADB811F89014E404D8AD77D31887AB6073A98668EFA52E24BC25CCA3),
    .INIT_6B(256'h76970F281833FB0D538C120F718E1F3BFD6E4044CBC9162D6735DBBFADBB5D29),
    .INIT_6C(256'hCB5DEA189C62AE05D63223B1A491C3E40D772B5F2C88C26D775A0216FFB54F9C),
    .INIT_6D(256'h0C1D47667911AE2B4AA3A947CBAC9E906AB7DDCDE4B96CB7359D093D5BF9927B),
    .INIT_6E(256'h3879407D987AEFE52E7A6F04DDD1788D589C47A343F6DC2A239AE704C0B88558),
    .INIT_6F(256'hAA90CDEB446A17FFD1C90196B0C90FBA10DCECF844A9944469E24E96ACCC5B0E),
    .INIT_70(256'hE0DFCE93111D6F3298C17022AE5C5C85E9318D9A594A490478F5F1327E6C7D73),
    .INIT_71(256'h589941BDF76F0B89A970C85B474B60B4E99E94E4FA145D61B32CE1D2494F8E08),
    .INIT_72(256'hEB6AFC635D9A84B97E783B1B013FAA2A24D6A10F9AD213F94F731B7A15F230FB),
    .INIT_73(256'h7F310E0AE8A4553B46443D6ED4B914F81F94F2FF729D053E9C2CEA6F105E2735),
    .INIT_74(256'hE314736AD5841E51A9706AEF687139515F11E5D8ABB1F58DB14C2B30182146B8),
    .INIT_75(256'hE3278EFA53A57113AC86FC3D9E8BEDB9777E6097474D02662B77610542C7AA6F),
    .INIT_76(256'h22928F2B1854D1F8DC8D247A7B66935FA8B8A267DC30801D5AFA7150349CF2AA),
    .INIT_77(256'hE612D10F6FDE76537E2E8CB7A3E306250CA26EF90346070F40A1A134E66EA10A),
    .INIT_78(256'h7841185372D2BDAFB33609DC16E37A9ACAB2B4A981FF03CF33FF0B7255BB024D),
    .INIT_79(256'h5A7A4511ED77B55EE3270A21AF953F4B9E5A0DAE7E8FD8F38CB3AC1B5F84833D),
    .INIT_7A(256'h02C6E6B6FD0D6398D21AC623048A672917CBBE20D0D8687DFEAD91F3D0431553),
    .INIT_7B(256'hB106983634A8DC57672C5967A788E9BCEC4CF3858F2E8D533CE80E3F5EEBA2D8),
    .INIT_7C(256'hA42E12FA9952006A7B337F2DDB71F7C94E38713BDFE8E063A78CFDA87FF8E6F3),
    .INIT_7D(256'h2B1D2F50D34FF5C7CC76007B80FE2C5A02BD88A944AF2C8B8F632F1C89986BBA),
    .INIT_7E(256'h598C06B2911F2BE3711B9985A3A116D901DEEE37E800739DBEC5B14C08525094),
    .INIT_7F(256'hE51A10DFCD0339F4D3ECA970740268E49189F71FEEE577FFE4CB0082AF2F9920),
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
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:1],DOUTB}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(ENB),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0
   (\doutb[0] ,
    clka,
    clkb,
    \addra[16] ,
    \addrb[16] ,
    enb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]\doutb[0] ;
  input clka;
  input clkb;
  input \addra[16] ;
  input \addrb[16] ;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]\doutb[0] ;
  wire enb;
  wire [0:0]wea;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

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
    .INIT_00(256'hD6D8EEEF6423B3EF1C202A068F4EC537387A0F3288E49BCE1E7D64267F85025D),
    .INIT_01(256'hDA6E725BFBA3C482A9A253CECB62DE6733AAACF4B6B7F3B8F06553E2F3B6456B),
    .INIT_02(256'h081CAAC936CE5BF7FF3175880F7D5B20E4DD17A3461F6E3AE729CCACE138336E),
    .INIT_03(256'h3227DB02A17353350F614EFF98F07161513561F133DA17FB802A615128CD05B6),
    .INIT_04(256'h24354BF6CB3540FAD5BD834D5F207BB42A96EF0245B4B9A207F770F701681EE3),
    .INIT_05(256'h2EB9B179ABDD32786ECA14D7DB9EC3CA4F629178BBE01EE7D0FEE85501D137D2),
    .INIT_06(256'h5703F64F959F1FCF254DD9621A9C6299FB97DE148ADBFA8C20385B716DB08342),
    .INIT_07(256'hE6E717C96D145FACADED5290CB100CAA96BAC7F1767B0B61BC6DD1613D921DF2),
    .INIT_08(256'h85011BF6D7DBF0C788758E907D06BD3557A54312C0EEBB475B437C8AD4EA3B7F),
    .INIT_09(256'h22D8C136D5E768273E93D50F4A753BF74B8BFB083A7CB6079C518613E6906A61),
    .INIT_0A(256'h49140EE04F43E3F68958418EA4A3216422E15DFD2C516721F91227D5C7AACCFD),
    .INIT_0B(256'h8694137FCB5ED385C36BCF082EE295C3375FFCF3A34C6B1D823BF6F42EFA79A3),
    .INIT_0C(256'hDB7F96502A6EC133F008B72B5066FA22541C765BE84AC70CDA1306F9A4CB703B),
    .INIT_0D(256'h630156F5A7ED642C44484D0F1689CA0174BDBC431E9563D55194D120E1471BF4),
    .INIT_0E(256'hF126EB7A17871887B7C0AFF7F992D1EA15EC86B442247AF2FA953FEC333A615B),
    .INIT_0F(256'hC26DADE8FDA56C2D8379E828950C6FA04FEA17960DE8736894427FD494DAC9A3),
    .INIT_10(256'h41431C7678BA7102B58A6575460B1E2E1796046F3FF121143FD4A42F5DA58D3A),
    .INIT_11(256'h1C025C6B24C3C2BFC90AE32897680BC55C1AE1BB0C18BEE1AB9E13C3C164DD64),
    .INIT_12(256'hFE0B06DA1A7EA8455FED7F874BA25F2887503BAE509C7DEFAAF4C1940B64C27D),
    .INIT_13(256'hE0A02BD26D07C564157C204B00103CFBA5A98743F8D1E20CBD1C1BA12AC13ADB),
    .INIT_14(256'h59D54C60F3FAD0C9F1922B13F1B13A91FACA7391375356E8B71ADB9F541BA8FB),
    .INIT_15(256'h687F58B8D208CC2B5D82B979989397FC6FEFFA1D5B8FCAA164B7B8304A364DA3),
    .INIT_16(256'hFED5F1D5C04DBEE1A500CC4200D7B140827137CFAB5E33D997AC6A47C04AAAF5),
    .INIT_17(256'hE3F697DA599DA489ECD66845AAB228BB8D09C65C507F3B69A1BE1C85E702797F),
    .INIT_18(256'h45F477E6B870B3E0DCD475FBC03B2B774CFB87E8209D373C00A538593B5EE2DE),
    .INIT_19(256'h5146323C61AA101B1DE96C4997909D6F9C724326045CF35879012EC23ED6A004),
    .INIT_1A(256'h7CFA3E71EF712C8EE71BFE2B306254C76D545264289BE4864CF9B63EB5E809F3),
    .INIT_1B(256'hEE1A32526D44E1ECD770A3C7A3D13834DF20FC78D005A0D2299308147C6EECDE),
    .INIT_1C(256'h2935770C010B3992998394294BFC3BBC7CB8EB65274737A0914D3F8B0632B17C),
    .INIT_1D(256'h3311B2899F632CE3EF12CD43CEF874682D814B1D0A142FBFA0BAEA1E2AC417B8),
    .INIT_1E(256'h98AECC2D8E000000000000460DFF000000000000055B11608DDF5C127041EC76),
    .INIT_1F(256'h0000000E2180C5B3C0030286178C0E184FCEF2FA7F80000003402C2CFBC254B9),
    .INIT_20(256'h71BB37EA9C63E983000000000000000000000000000000000000000000000000),
    .INIT_21(256'h1FFFFFFFFFFFFFFFFF18792FC3FFFFFFFFFFEC4CAD95867E2CC000000005555D),
    .INIT_22(256'h0E65C07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF874E829F015F0FFFFFF924F0F),
    .INIT_23(256'h00C0007F48130F00000000003FE19801FFFE7D669AE89F0FFFFFF3CF9F329798),
    .INIT_24(256'h0000000001FE3FE4322ACFF00000001E198B3609C5601FFC69864166A836FF80),
    .INIT_25(256'h5141E70FFFFFF0012EA867000000000000000039F8D65934C7E0000000000000),
    .INIT_26(256'hDF824FFFFFFFFFFFFFFFFFFFFFE67BF856CE600000000005EC07FF4D6742404C),
    .INIT_27(256'h073020C080C2810FE60D80A8523BDF1448B9322F7A437B60DB89EA32112230BB),
    .INIT_28(256'hD2482D719D664B7A6183DF711B3395B23DEE8F5B926439EFDEDA2394F3B95C72),
    .INIT_29(256'h1ED2520D4FE190AFACDB26785FECDBA0D8AEAA9D4CF91F2BC0A3F072C9CCE5C6),
    .INIT_2A(256'h8D3FC8D50CF94A75A46D6F448E5E695C040D88AB85AC289396D97B079DFB30F5),
    .INIT_2B(256'h01DB80FC8BD1B5124CF44897317085B57B46DB001D251F0BDB000DCD2957F4A2),
    .INIT_2C(256'hE1D4D975139C1DDD529D49D5984C4CA5A7E6C817F577E1E538B77DC58FAB2AB2),
    .INIT_2D(256'h73B7CECE67AE0FF5F3C46C2AE7B93F9ECDAA1EBC5F706A3629B334135185A5A9),
    .INIT_2E(256'h50CCCE9FF7E5A32C3CDEEB281DCCD20BABA4DFABD85EADE69B91D0F20FAB6676),
    .INIT_2F(256'hBBBBB79D5A6CAAEBC4161864A565D60F31DE81E7FD2A3177BFF474710CAE001D),
    .INIT_30(256'hBD559BDF5EE45571DABA5BFEAA8B38F8E243849941FE5621CE5CD1A92404509B),
    .INIT_31(256'h5AC70042E5ED75EF6324F0DD642EAF486AD495B2D327ED65BAEBF36B0F0B6336),
    .INIT_32(256'h23612CF4B0C5B057FEEDE2760D86CBE6E6BA5233DB8A6C0C88976FBC356CD6B8),
    .INIT_33(256'hC5353F50D9E3EB41E0F9D6740F4A3BE7EFB7E3FDDA6DBEBEBC9E8F597E6D2521),
    .INIT_34(256'h17F5C2A4E423B06474DC9E3ED35DEEAC69920ABD835E6638D5AEE0603EE655D5),
    .INIT_35(256'hDE1403EE83051EF0F72B53EE8C3CF189742C8C847078E29B3CC1DC14009EB572),
    .INIT_36(256'h9F0505F5A91CB3B7EADBAEDCC2EEC62A545427E9A8A535E6D803EA28D91C6987),
    .INIT_37(256'hEC66DFB3A6AEBF0A66536128937155C6419CF56BFD420D5B03F29D65C7664E34),
    .INIT_38(256'h8FDA0A7F50EB155F51FBF4AE854F7CDCDF9EB8817D0CE9026049938698AF2BE6),
    .INIT_39(256'hF08E1CA0C6ABD861300F9A792DCE47112418BD9F01C42C0CBB6D19D6B39CD81D),
    .INIT_3A(256'h831625205C8E7D5B4C7887F7875B0553265BD84DAF81BDBF747C0F70ABFA64DD),
    .INIT_3B(256'h230EC56F46672AC0067C3945010FB4426593481C5D6DA96CB7CD944946272FF4),
    .INIT_3C(256'h359550ED8364428329C41202DA73661178725DD81353382B76F7D42743EB160C),
    .INIT_3D(256'h3709EB74890047FEEDAA4F48DEA1C414F08934E2F43BFAEE5467086117E22E06),
    .INIT_3E(256'hA9D6F9786679AEEF69C0EB696E00BB59ECCD1F94F1969D1DAC7CCD0691C3EBAF),
    .INIT_3F(256'h4372765E51864F3A1553BE6B2E70040DFE2623A260F4AC8B1E8D3A520C899204),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:1],\doutb[0] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\addra[16] ),
        .ENBWREN(\addrb[16] ),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1
   (DOBDO,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    \addra[16] ,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [1:0]DOBDO;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [1:0]dina;
  input [0:0]wea;
  input ena;
  input \addra[16] ;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1__0_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2__0_n_0 ;
  wire [1:0]DOBDO;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [1:0]dina;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

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
    .INIT_00(256'h2E59178020A167665470AA4AB5265991D6954A7C569722E086ACF6962E20F1E8),
    .INIT_01(256'h2351230FE27B9290217610ACF8DEE8729FF9F4DD4A68B095103A439A1473616A),
    .INIT_02(256'h2AD2292F90CCB7547B191034B92EE5A01ACFCB7814B909DCE7E06847B9B5EC0B),
    .INIT_03(256'h5855DB34725A26204079DBE72C1FCA292236E76C0059CEF7B76BC5FD8DCFE476),
    .INIT_04(256'h740FE550B1796267CE5BEE939DB2BDE5BCB3E422D3AB1ACECE4FED5412F616B3),
    .INIT_05(256'h4A7C29F5B3FD09C5AAA926E46B06122C0EFFDF7F02614D2B92C96C2C7E070B81),
    .INIT_06(256'hF25B11358303C8B037D3670EF6851535EC51B154399EB58D9D6698F5DF2E9521),
    .INIT_07(256'hD9831640520865190B31FA31DC860D7FB3FD3BD6A4C8FFC2C5631F481F5753AB),
    .INIT_08(256'h0000000000000000000000001DEAAD388AA070329C69C74280BB0011D3CFF33F),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[12:0],1'b0}),
        .ADDRBWRADDR({addrb[12:0],1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:2],DOBDO}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1__0_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2__0_n_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0020)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1__0 
       (.I0(ena),
        .I1(addra[13]),
        .I2(\addra[16] ),
        .I3(\addra[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2__0 
       (.I0(enb),
        .I1(addrb[13]),
        .I2(\addrb[16] ),
        .I3(\addrb[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized10
   (\doutb[4] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [0:0]\doutb[4] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [0:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 ;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]\doutb[4] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

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
    .INIT_00(256'h4BCB9A1064F9F7794DFA9D2FFF18433140F9B4A1748947F962FC6705B9687F1D),
    .INIT_01(256'hBFC92431611325E707E341DFEDF0A49D645ED8A27B9E3520FB7F3849329437BA),
    .INIT_02(256'h5EA134FCE566E049E0DE6F0B2364BC01E445499EF16A26180BE6E46BFB7BB4FC),
    .INIT_03(256'h6172C7A7EB338BD0E4201D61EDA69C9049B90AA21EF2E2B3F66BB6CAF6501461),
    .INIT_04(256'h6535AD42FE6F3D601A9508C3F64216D7A5113BBF89562E680A1DC2980E98AB3C),
    .INIT_05(256'h6E66542F5DB85008CFBF6C711D6C465A081F5FEA32C92422B4D74959E548336C),
    .INIT_06(256'h14F2503AB0FCF5570AB8584D2ED05E9C60BE61240F5641460F80968B2B2182CB),
    .INIT_07(256'h99B1100B4878FAEFFC814B2D2216914BFFD8E109C6CA6CDC73F092CEFC08031C),
    .INIT_08(256'h7DC1DB0DF079ECF84A478D1C2E01B18E04270A4D2B7C05FE150294CDECACFCF1),
    .INIT_09(256'h0FE874F267828EF0028326235565D384FDC2D0C4AD89B029C969AA6246A12997),
    .INIT_0A(256'h577866FC4878485C9BA2EEAE6CC577886C76179A7C9988A31AA524A7468725D0),
    .INIT_0B(256'h57DB2ACCA5DE67C1A7498BAB3ED7D88B9B58AA7813DF1A650CB778973D3D026D),
    .INIT_0C(256'hA186C12F02F0F6F64B6CEE7FCE13BB76CC1BB77445E4882E81F126129BA6F449),
    .INIT_0D(256'hC0861A21B74AB253D6E4082485D57080FAFDAD7814A6CCAD56B6619D6FECF8D5),
    .INIT_0E(256'h4492AA0EA11CB1A88CBAD75A014C6919AABC64582E221DA16C83F6EC13D02929),
    .INIT_0F(256'h9A0469ABADC8983E21A065E5B07CB515DEB7D1B273A8048F1A02C0EDEA897816),
    .INIT_10(256'h1C940BB7ADDBCE5D4545301EF6BA88EFF07DA8A3539FF032BA0AB566C8486850),
    .INIT_11(256'h95532704A433FF563AA0D4CC9AFD15B81A12EA93ECE892961C50905C217FED93),
    .INIT_12(256'hF005DDED6222F6E206320B0FBDABF76970FD3DDA03C4DDB07A3F8559BFB36B78),
    .INIT_13(256'hEDC8B873FAEA69E86737D3699D53331113E9F936E238673A035A80C9E2D97DAE),
    .INIT_14(256'h23402AA27E2B8D61616793FA37A9B21D87C5DDFC1EC9EFF41CCF77F297CB0E26),
    .INIT_15(256'hD85426FDC09B9D56656D1A4875662FAEF6640685F37C887C7956BFB52BF79A32),
    .INIT_16(256'h3A870E449E2353CF90A2DFD85003B2DB7D2606874CC32423AF90B4E39A33BBBA),
    .INIT_17(256'hEE8C5D434EFB51851968F66DDC2B8E7834FDB386C5DDF10C16E00D192382B400),
    .INIT_18(256'h1FD4D46383039527FE9234DE725C85A3A5F1E799D3D5AB958C1A62C1175661C6),
    .INIT_19(256'h98CF53D3CD8775DECA1B10111CD20E150D7BB476283114524232B52D624FC67C),
    .INIT_1A(256'hBAB4D9DF7C81C138B371BA4CB5F10438AEBD5FB5D6109DC1B59D1006C623FB9D),
    .INIT_1B(256'h51C53124232D1624EA4B7111D28D34D8D480A55AEE5D6EB27F64366A875C48E2),
    .INIT_1C(256'h79DB5B9051195706E234BD00F638716B73CABE428CB27E04A18A18270DEFA197),
    .INIT_1D(256'hD95CC89651D366999567C780F9D8FC09DEAA6F4C5CDAF36BEDD34CE82D163C0A),
    .INIT_1E(256'hCF9F3E062A000000000000001D550000000000000000994146BF23AA1B503D7A),
    .INIT_1F(256'h000000000C7482AA00020004000800100020CA2A55000000000010A0FEFDFBF7),
    .INIT_20(256'hF14150001E2CAA81000000000000000000000000000000000000000000000000),
    .INIT_21(256'h000000000000000000003CC000000000000001EAF801FEA52A8000000000000F),
    .INIT_22(256'h00200000000000000000000000000000000000001E0D72FE80000000000F0B00),
    .INIT_23(256'h00BFFFAAFE5FFFFFFFFFFFFFFFFE0000001DFC02826400000000000448938000),
    .INIT_24(256'h0000000000035FFD35D54AA000000005CC07EAAE2AFFFFFFD406D5AD7BCA5500),
    .INIT_25(256'hF52D0000000000005C3ABFFFFFFFFFFFFFFFFFE000157D540000000000000000),
    .INIT_26(256'hB85C7FFFFFFFFFFFFFFFFFFFFFFFFF912000000000000000C000001D1AA1DAAF),
    .INIT_27(256'h978E99D08563C808678C4BE6B6281882DC43ED71342557A401730D0FD5B19BCD),
    .INIT_28(256'h250167531AAF24793260072A1CEB88C85CADE5895A966775E081BA8B0A60639C),
    .INIT_29(256'h2D39731E0C93783F5390A6FEF581997FFB9F75E1F720A09D7951637CB3ED9BA5),
    .INIT_2A(256'h70F87FD093DF908D75689A9D7B1EBCCC8037554553D72774306A311F99CB566A),
    .INIT_2B(256'h4ABCB0F678CAA28EEB63B588E0BE01EE8D24A5C246920712E41A083944013DC8),
    .INIT_2C(256'hDFF1B139C3A0423435817421793EDFDA84EE8DE0B3A8A0BD800F8A30CF4BCE22),
    .INIT_2D(256'hADFC0F8C3E445BBA157089CCAE458A0196B24EEE1755ACF0D42CF8DFA67AFA3A),
    .INIT_2E(256'h2F642EF2553C92AF19DB8233C6E93FFE34C9E4BAD7C6C38A262DD90404EA02BB),
    .INIT_2F(256'h6875CC5B4E48A71BE161340BDBB3E8059AB698E61C8C01E8933CE33EA7FBF064),
    .INIT_30(256'h87F62B06023DB7EA379290E544EE24F867C82B891798F8848ED2B115406A189B),
    .INIT_31(256'hF7996FC5500DC654C21E8EB0AB08DA183C63EB5542DC56270386900891E30027),
    .INIT_32(256'hA50CE2B8F918B3B4B6F2551DE57119BACB25D6F79E4AAA61A4A4EB974EBD81DB),
    .INIT_33(256'h72BB06F9D192140E6A5E70A28C5E09414FCFA62D1BF4C6E5A47ACD75702990CA),
    .INIT_34(256'h81197D86DD6E9EC9A6DA3848090BC790224374E153468A9AD7D16B8208B621BC),
    .INIT_35(256'h563B7679B4CCBDA62E2B0B4F7DB416DCA596AEEB3DDD644D68C2006D587168AE),
    .INIT_36(256'hA943484C96FF2D31F28ABB2CA84D226C2310BB73D5F03B136FCA658E6E407300),
    .INIT_37(256'h0E1A69E2AADA90E487A10E0F6059044D02BF681B0DA716BE4935023C728542EF),
    .INIT_38(256'hA08BAEC4036F1AEB802FB7126C08193685413D44D3938140D075B32413352F6D),
    .INIT_39(256'h17DF0188FB351BCA9FD6C041A2655130DFFA44F0E18491D05D86C4AAAF892B88),
    .INIT_3A(256'h4D0A3278A0B6CCE13554250739E7267FBDABB596E390669AA7EC7A97C5784453),
    .INIT_3B(256'h033ED84BE1D6521F2A21C198F96DFB742D20F3763A5C42515A3FF14A9B5E0F3D),
    .INIT_3C(256'h78B0D5396B458E031D648D237D6F9EDEFBD59D66CA03874CB5BC380EDE6A127F),
    .INIT_3D(256'hA578373EC3D1E251AF0FAFD426D5DA4A3247CCA5F8187AC00AF3476A2B3FAF92),
    .INIT_3E(256'hE459DDE9DAA92F45917A25572DE735D476DE10A0CF06A4A692B6BCB39505B419),
    .INIT_3F(256'hF05749EF081CBEBCE260C0BFFB4DF25D2C5BDCBC2EE26D70FBB4B80C848C6B8C),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:1],\doutb[4] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h04)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1 
       (.I0(\addra[16] ),
        .I1(ena),
        .I2(\addra[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2 
       (.I0(\addrb[16] ),
        .I1(enb),
        .I2(\addrb[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ,
    DOUTB,
    ena,
    addra,
    enb,
    addrb,
    clka,
    clkb,
    dina,
    wea);
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_0 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_1 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ;
  output [0:0]DOUTB;
  input ena;
  input [16:0]addra;
  input enb;
  input [16:0]addrb;
  input clka;
  input clkb;
  input [0:0]dina;
  input [0:0]wea;

  wire CASCADEINA;
  wire CASCADEINB;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_10_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_11_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_12_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_13_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_14_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_15_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_16_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_17_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_18_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_19_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_20_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_21_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_22_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_23_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_24_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_25_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_26_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_3_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_4_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_5_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_6_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_7_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_8_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_9_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ;
  wire [0:0]DOUTB;
  wire [16:0]addra;
  wire [16:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .INIT_00(256'hBA4A2E63D89B1EC9B0439C1757BB1713A151D2845A14321ED30E90D398BD6357),
    .INIT_01(256'hF57E32ABBE61360176AD2D9215DF21C78BD05501F28690C773955701890F1B82),
    .INIT_02(256'h9773D44A544C891BA88D5BB4E3C6242F623B8C8D8C380D26F31A31E99DABD8FD),
    .INIT_03(256'h1DC9711D7104FD11921A25A01D0C03142C6001D96B0CF386B1D6F34142649C60),
    .INIT_04(256'hE468D14B3212798C07895D9EFC8CE10AED37AD9728975DB160601B1462E36A52),
    .INIT_05(256'hD2ACBF36824E6C8BBBD72A5227201BD11E34AEE8427D6148E9FC49C20B7D2D67),
    .INIT_06(256'h72131A96D31DDA59CFEFB8BFDCF67F19DF6BEE3C0242ED2B00D462FAB98284F5),
    .INIT_07(256'hDAA99910FB30CF0E0DBF7C6C07619D98ED4A3269C687B5BF6BD4BF36214E7D6E),
    .INIT_08(256'h6CBC6EA8C32D87FE79DFD2738B7D9CC165B40F6A7582367C1802D1537FE55556),
    .INIT_09(256'h5F75931DBEB991D8F34F38CA4C4A0D16C89843F40DA8866F9B8F9B8068DDBD2F),
    .INIT_0A(256'h0E5168987ADC491C11B0A7E105580CEEA14DD48E7630926164303EDA965D9F30),
    .INIT_0B(256'hEC007F917D5447A54E32559FBA586988CEDF96D43DC676C1DC626AEDE48AD7A2),
    .INIT_0C(256'h455FCFF0751D38A0E51A55AAF17EF9E97D2253D5B8D82026AC64FA297431AAF1),
    .INIT_0D(256'h12830148193DE6399617F9CA3778E4C4E2B31BBE9F05D7F487C12AE2AB30EAEA),
    .INIT_0E(256'h03299704CD08648BA0C1A8A4F878779E17A34F58D67A4BEE929DC69CD1A81799),
    .INIT_0F(256'hAD13FC7EB440F641F80DC5F494E55087E69199E39EA96698B59302E6D1E23E39),
    .INIT_10(256'hA43FFA0751B9DD16A31B9EF5635F1E7E6554E0707D147F24CCAC1AC5BCBF6C4B),
    .INIT_11(256'hDFF3F785E9B427C9A520B62A5C485BDB85FCA5DB682F4CD93EBC6A07A4DA4670),
    .INIT_12(256'h531A08064772488E02B83FF32C46C619D7BCF36990B2238C0DA99C54E064814F),
    .INIT_13(256'hA2E31E28EEF9EA3BE0E0C8B2DD5787E5E45E7BE9571901BD318BE67E75B2B622),
    .INIT_14(256'h41D6FF07916AAA93A3D55411DDA36825C1932A7F571BFCF6A7833A5CE0F21D3A),
    .INIT_15(256'hB950B758EC5C865E6B35F211B78F89F0B8C52403A236CC0C13B4A40E3BB50588),
    .INIT_16(256'h2479EDC682B03FDC0E4A4E73E7B4C812EE36B6D407B44717FBD42BE37CC24EE3),
    .INIT_17(256'h8D1F6D785F962945C9B468EA6987655E4FE03F8CE223B4B90EA8F97CB1954DDF),
    .INIT_18(256'hB064E3C013FA0D37DA5F73DF766F9B3016E6C536D53A21C02D76CA9BE47D5593),
    .INIT_19(256'h2412D66C3861826E629B65319275A5A18C9E0B0D7DD3E3F5DAC16C5A0322E246),
    .INIT_1A(256'h1ECCC698B58E221540824A447712082F6C2F539BDEEBE897406161206393C5A5),
    .INIT_1B(256'h85B0D882CA1EEE0B85EBA48936343991AD54FC13FCB866A1A0354186854029FA),
    .INIT_1C(256'h88998631F1960E5C95C330213D3FA5FBB9875451A659A002325FB471DB041F50),
    .INIT_1D(256'h67C4A862FAD5DBA8D731CE700FEF38D13DC845F909BEB393BE1BE627D5F13213),
    .INIT_1E(256'h401C4AADFF6026000000F9A053A014D28EA516B5551562F3CDD88E98E990B25E),
    .INIT_1F(256'hAFD10AB7D1093B11AA02EB76235FD6070E5114FF786C7B8825E40000C6060F55),
    .INIT_20(256'h4EB54C2C2402904F62B45CC3E883B38C68DC6ECEA2F8D2651584A7F460403052),
    .INIT_21(256'hBBB4E2412F3646DEEB4BDEEF8592D1AEC24D2E498A2B6970155C3772745A64D9),
    .INIT_22(256'hC21120A385E17C8734D15CD464959F19B1D26CDB0F0701C18168CBD15928ED3D),
    .INIT_23(256'h10E929FEB22AFA38DB854EB2A3D29C29946934FBFD858371793218853CD4B386),
    .INIT_24(256'h8FAB685C5C31D65D0BF71E79E1907ED496B77B4B5D8BBA7842FCBDFF4D0DC5DF),
    .INIT_25(256'hF5807FD5593DB2688371D3A15B52A26ADC312D70118057295CFD0A0FBFF96AAF),
    .INIT_26(256'h0CBB81261AC0FFCBEEB0509F846EB96BED741B17095EC6BF4A20AF67718939A0),
    .INIT_27(256'h3206499DA839E1902043092A1E6E48A9D93A7ABF0F13AD62E35A0C238609B20C),
    .INIT_28(256'hF09B69A2872B5959DBB23670AEB5E6F4F97F46340677F3EA3E1214B2090BDEEC),
    .INIT_29(256'h2C88D837A3A8F07F5958CCDBBE75262CDFBDB5E350BDD073C8F9E9486FF6C04B),
    .INIT_2A(256'hB2278E5730DCADAF83B32431CEC9305ED007B7E1DD3D8120FBBA2A09E9665166),
    .INIT_2B(256'h04691D11CF77ACE16F164BC8E113C6A0F35C211DA5C3E4CDEC98E6A0904396AE),
    .INIT_2C(256'hE199E9999728F017BBBFB45307A53C5F399962D27A737207B89C53094D9676B0),
    .INIT_2D(256'hCDF8CAC4FB6B344A4F13CEEAFDD0C762AD303DA7CE1160C3B59D1C21E39E76D5),
    .INIT_2E(256'h664DC87615D684D950D4D0DFDD55C66CBC62FCCF3709E18BCFB42AE0523EB531),
    .INIT_2F(256'hAFFE7703C490BBB0AF14649F9CBE10C086C0F9D9D71E6E0F47EB387151B255C1),
    .INIT_30(256'h8F0AD772634ADF3B1245E5111EED88F555BE8EFBAE9E1D291BE164DE6974D841),
    .INIT_31(256'h98B4E76620D6FB8453F227CEA834C2DB8FD666492CE307E9070C8BBA3F012200),
    .INIT_32(256'h7E0AE84D41E6E516714D272549D551F6368F371E1CEE5B249799062423C6DA92),
    .INIT_33(256'hD27C86B8EA8234E16C5EAEDFCF4AEFB8CAE3CF4BC89DD53E50894A182B145645),
    .INIT_34(256'h6DDF734974980A694EE6F96C5E1D7A8B952EDE4A3223DA4CC600EAF4E01365CC),
    .INIT_35(256'h74CB82B1858E4DAF4B6BFBCE77C108E2DA768B4FCCDFA6A3A684976C4DFE0D41),
    .INIT_36(256'hCF03B26F077F3262BD13A500CF6FDB5DD1867CFD26CCD7EBC977EB78D6E2FAF7),
    .INIT_37(256'h7FCDD330846F8D2330D024CD1D42232CEEE77DB0D367E25BC87FF34C4BA13FF8),
    .INIT_38(256'h4609272E50EAC21DF765FE56CFD42D0771198DE94D2B90188FEC6C569AB3F0EC),
    .INIT_39(256'h29682B0080281DD19C0363FF8B5091A87A2CD6B75F946DDDC586483757C5B151),
    .INIT_3A(256'hF8A1CE5BD7F0A292CE5E26C99033C8A99A2070D9AB2275F94A33F10503F4FA23),
    .INIT_3B(256'h8AD54B8F571AD5AB1F576FE4793408DD7F6A57262F7B67B8BC60D4EC7545C3DD),
    .INIT_3C(256'h226D051048C2AFCB7A9184FD8ECA0980202651CCF6BFB45A2AC00D5A60830407),
    .INIT_3D(256'hFC374C3BAF3A1E696DDBD93078F71B193376737D3926EADA4A7E1AE0A9B0FA24),
    .INIT_3E(256'h2A1AAE75D8B1AD7E843D7EC7397E8B326B9CFF91ED2059DF290AFD5ED6E2BE1B),
    .INIT_3F(256'hF4F6D5D792D132762FC2AC83723021632B170891CD78A5480A655350CFD596EF),
    .INIT_40(256'hD20A4A69804641096FF7ED9AC57FE0FE93E9BED8E0A3432BEEB60B0A4251D7A6),
    .INIT_41(256'h57285444DF6EAD2CCC35917692E4C9637BFB9EF1AE576F7BBE0118C2FA1E6A63),
    .INIT_42(256'hE457977845647526506E62D87A9577EDEE52DE30DFFC8DEAC5DD138B05A0779A),
    .INIT_43(256'h4861FB0D0B7CCF90DAE45ACF3CB178FF8D51D11FDF1DF9C436F03FBE08359404),
    .INIT_44(256'h9B812C21B57957E66B01066E0A9783E5C7898BB66C49E77F833D971617C22C9A),
    .INIT_45(256'h2E6488D53CE56AC8372BCC4302316D0E6A5F88F8B968F6C48CDC7E10A3BB7142),
    .INIT_46(256'h160A86D9D08AE8D80BA79844408DA60F327CF149923DABD6A7DB383CDB863CC7),
    .INIT_47(256'hA3C0DFCF785CFE5E60EB8A9CFC3195941C171ECC9D688BD4E88820B575920280),
    .INIT_48(256'hF552B7B908C5F26428502A08E377240A9235A02A32EFD8EDF0D8F7792925390F),
    .INIT_49(256'hFB6CA1DD29FA0C8E304FE181F18E1C2DB1D5346784F31F92FDC4A1785CB2C443),
    .INIT_4A(256'h5A5E3C25912240BCBA550A40A37AB1527F49B4587467C62CFFB099F5EBB78353),
    .INIT_4B(256'hB2163DE34CFE569A414E86E9A17B4D35D015754F910068CD8CC25E4A0648631F),
    .INIT_4C(256'h6D4999C5FBBA4E939410BEC06AEE3E8239AA12A8E003B8F6691CFFB47D50D196),
    .INIT_4D(256'h5517943396B1055552C114B05A66D841ACF484E0FA8C5533CA216A4A3B406501),
    .INIT_4E(256'hDB7E5ED0675C6E2B50597EBD28C16302340138F53D3A4EAAA9739CDB748C1913),
    .INIT_4F(256'h185DCAF76C8280105185034CA1A721885DB310C660CC9E82451FFED74A237AB3),
    .INIT_50(256'hE24D804389FA4FF0F58C0E94B469A39302A964B4E80A2A41047E9A0BD7A40639),
    .INIT_51(256'hB7E90B15C6762BF22CA60B6C51E5A82ECEE047F978BD0F4EA5E04C47B8A36B7B),
    .INIT_52(256'hADD7CF8E5161A6136E7038808DC14DB9D730CB6153582110F4DEC9D16B30D23F),
    .INIT_53(256'h865F2E5F4F8293F5E42EC468E0DCCB3CA462AA308DA1D69D3346BD82E9A6EFCA),
    .INIT_54(256'h50AEFD930AE58C12E7CF0540730EDAE0392A6A0FA82CBE3D7B4F05B66EE12319),
    .INIT_55(256'hDC6F82B39DED6CF18500BA37B2408E7E07493F386ECD13EAE4EC0C43063A2422),
    .INIT_56(256'h4FCEFC2F4E6E1171E3464C32EA56B1CE7E2CE93C07D4B89AE76E2645C11A9A73),
    .INIT_57(256'h9E043FB123AF9C9E8B0B3698CB0878C0DD8D8894ED87B16E1E1D24804A64B60E),
    .INIT_58(256'h5F5A0D56D6AE1BE0F462B4714E1103A7C3808C46EC2D8764D87E930691A9A810),
    .INIT_59(256'h32EF785D01C2C48553EF4A84F6AF276F025D2F1F595615175AEBEC904D90A0E6),
    .INIT_5A(256'hFFAA7C6B4C5632DC0F762F4E6D46B67F8E3A4246B698E0A3AF4B471632EA1829),
    .INIT_5B(256'h284F4428598C1984A0C15B81FFBAFCA22EA921D1CAD4BACC92C0CF3E09F36AA0),
    .INIT_5C(256'hF37C565520938C182D51E26BDE9B14D7AE937535D85842DC421C3DEB6E35AAAC),
    .INIT_5D(256'h935258BB593A6ECFF103DDADAFD2DC271CE3537474577FBA8A3EC2A99CD93B1B),
    .INIT_5E(256'hBA4580E291301ADFAF233FE206F601C9F39B8275CCE78608059E4EBD50BAA1DB),
    .INIT_5F(256'h96FE144BD4659BC7F92DFAFC24E4B4730D554CA2410C10937A9CA099ADBD5EC1),
    .INIT_60(256'h36D508BFAF29053D8044A56E7261979AA7849AEDD0B33149ED6AE18E3A22ED96),
    .INIT_61(256'h7D25E1E0732D48D977EF23E17ED1FE0D6A94D5B22137C60759232F2764A2B491),
    .INIT_62(256'hA05F24C8EFA116CE12A089063285C3DAB31FDDDA8B5CA1683905D694B0A9CF59),
    .INIT_63(256'h673679DA0AF271AA16324EA7C2B048C85059D20DEB995702D4EFA39DA28752CA),
    .INIT_64(256'h88B6FA03A1F48B2CF1326FFB8DDCC31C1A83E30C82325F4D972FB33391F7CF84),
    .INIT_65(256'hD7F380877168670B9DFAA08B204E6F805426149245381F989B9136F78F38FD9D),
    .INIT_66(256'hAAB85928E68511058C1B9B6FF1992E1351A824509486B20C5060B1F31A3DD717),
    .INIT_67(256'h799CBD5956772BDB764191E99066E36E6332FBE26E78ABD36DBB8E24766BBA3E),
    .INIT_68(256'h2D1709A7ADC31BDAB31E62D4B8CC395CB2CDB39DFD2B1865F2DD8788A70B0201),
    .INIT_69(256'h53A8A8C7FFE6B76E229094E7F842B8D1BC4BD3ECA118121B63BAAED2A766E398),
    .INIT_6A(256'hDAD093E9E1BFB3C1796F970EEF14ADCFF54704635B8F55F34B7402FFC7F230D5),
    .INIT_6B(256'h15863866E23C44E174BE23CFA23DF0F28AF9E27FFCC002B1037C307D2ED14938),
    .INIT_6C(256'h84652B21019F4CD70CCCED8A81883AAB1B162CC2BF43E60EE01B1E3EBE845FE5),
    .INIT_6D(256'hA0106B312AD690FD0A0CA83F8C97D39D38BA12180994C5992DCF64F10900EBCD),
    .INIT_6E(256'hF6EB24C3BD0F5170DE6000F3A862740F72E020F50CB927B82242C7B98070446F),
    .INIT_6F(256'h2FAED5F85B70BDA2BE869873011F3332F9748DF9333F50E03B339F4F52ADFDE6),
    .INIT_70(256'hBFDE617BB2B5BA3775856988E83F995821A2E75B0E54B25D88B4FC042BDB64F3),
    .INIT_71(256'h3768957BC36D42B8350EBD16199BA31778B9C87436CEADA1A1154F3F95CAA76C),
    .INIT_72(256'h7AA6A62D4F2F0FF5DD85A9E35C965E228DBD6E01957E14F7828EC6B77AED8774),
    .INIT_73(256'h844730A8F583167EF8D357455E57B55BD523C032423A5EACD9AB6AEE86CA3135),
    .INIT_74(256'hA013CDB0226665EAA41E1CAEEA4AB3EE23B4E82032C5F46DD2E8E842721008A2),
    .INIT_75(256'h0AAF1CB34B35449EE9AE211622CA6B8697CE4F5FE9912E8442E19CF7EDA69D80),
    .INIT_76(256'h617BF299D647CBFA0463C0DDB8819FBC6119B8B26C1AB5B5CE1CDE4F5885FFFC),
    .INIT_77(256'h133A40C6D5D26921ACF874EABCDC78E908F13FB78799E729D434B6CA5C3995E8),
    .INIT_78(256'hFAF85F8C4FFE03C6DDC0AF606CFAD2A4AA95FE663863C570B42C902BCE98AF6F),
    .INIT_79(256'h3109578C7D98C48DEA8D6B317C17B8155C147845F023BFB1872DACC9A7D0B18F),
    .INIT_7A(256'hA2231C472C602F4125FCE0CFCDD387B7BE4C96D6048A7312FF9153036A22DB6D),
    .INIT_7B(256'hAB7B7C0A6EF21BA14B2990BADFB2C11EA35E2050F778739C722DB7B336A6E4A0),
    .INIT_7C(256'h38EF25D4DD67CC83DAC9EF53121E0568E9DF80F105C3CC7825D9F5A7920FFFC2),
    .INIT_7D(256'hB5995FF2B076295FF7FE588D4FDC2023BF45B03D82E602899B13FA51E4048DBA),
    .INIT_7E(256'h62177CE2D25022F7B345ED56EF83E6DAFBE6689F6846D4D615BE64A2E88762BC),
    .INIT_7F(256'h088881F1787931F9C5E0A7BB096F2C3E64A95563B5BFC24C560575C519835786),
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
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra[15:0]),
        .ADDRBWRADDR(addrb[15:0]),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_1 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .INIT_00(256'hE7A52A4B6565197D5CFFC79350863E8FB158BD0AC56D20703183D2D7C820995F),
    .INIT_01(256'hA40729A6ECF2C2A97AEEF6497E6189B69995912AB4BE0B0258C1DEA91EFD6B99),
    .INIT_02(256'h941338297A48E0448EF73DB21759318F6D42184E20F2EBE8E2537C618420C376),
    .INIT_03(256'hC3ED38CB9624AEA5FF7243A0E1246CDB8C4543C480F36C542F339FEEAA6B4ECD),
    .INIT_04(256'h0EC11647292FE9EC8117F0F338365C40660F4BBE72DFF9FECB677E03FFB7576D),
    .INIT_05(256'h7BD897821866B987A5599AC1179AB2146CBE46CE574530CCD785A3F17390B22D),
    .INIT_06(256'h38E57B2AE0A178D26A42EF41131F65FCCCCBEA5786552B167D3B2DEB208251C5),
    .INIT_07(256'h3B14DC84E554DA52154859F7A0C6BC6369DC6ED298BEBE8962906F3E7F9EA621),
    .INIT_08(256'h319180048B76198FCC3EABD2FF12516687CE17979B4D24C5261B44EFDCB568FC),
    .INIT_09(256'hD5CB9C462EDE686F625747DA32E9DF382EAE790E4AE228698B03FBCCF89E70AE),
    .INIT_0A(256'h0417FD95F9521A4D3D26F34E22F30F9EAAE8071876F36EEFFEBC0034A11D26A9),
    .INIT_0B(256'h80000001D37FFF1800FAD9ED4000FE130A5FC44E6C23B365C802257946348D20),
    .INIT_0C(256'h9E3E36046E85E5C299C6D64D10FD5EF62FF50AF831D215400000000000005FAA),
    .INIT_0D(256'hB9FC05D7FF697E47B557D5C66D8CFF7B9BAB359674F305B3A8786B6EA04BFE78),
    .INIT_0E(256'hD1F3F0A14564F3D867B97C1E96A209F30A620BD2ACCDA393E358504330578516),
    .INIT_0F(256'h2012F1CCB47F00C52E232203E581DD17D8FD4C7EC23082A9163D64ACC1B4AC38),
    .INIT_10(256'hF25C2420F1D4550B243F454D3E5F3DD91B5CCDA56CB589E8A20F324DB51DEDF0),
    .INIT_11(256'h46C6C265107DFC2A161692EAC3749EAFDE9E1948B9406E5A9865860AD14B5F3D),
    .INIT_12(256'hFB2DFC9F6D9F34EDFD423A1F2FDCF21A47974F5DD4B87D2B12C770CC2A440F30),
    .INIT_13(256'h1A0014D87ED02A603312A5743D7E3A74EBA7F6169631FE59AF7DC1E5E05BB460),
    .INIT_14(256'h30F93C6128E4BADE09072444D99A04D6F3E8FD3E91AC85F6A6AD305AC3021069),
    .INIT_15(256'hCCC302DD527EAD1D93A282E6E18298B75D45AA2EC84884DEB2DA45822C5FD96F),
    .INIT_16(256'hE5FD3DD1D167BA214D4A1F4914AFC51AC9FFBB50358A96F40F198265C5487770),
    .INIT_17(256'hBB743DD41DF24EA035AAB101CDAC07A6F5FADA170FCD5DE8FAE5AAA229B8F7FA),
    .INIT_18(256'h9B47EAC2AA8543EFFF121AC6E6B8B1B4389E3376E117EF9C8401DE8881B3CC01),
    .INIT_19(256'h9F44708AE0460E3B0301ADA4154009E00E481FF51A823FF60F1820BE15F1C1D8),
    .INIT_1A(256'h4AFCAA8A120A50E2248F459D8479611050FC4FDAEBF2833EFDB18761CFFDABA1),
    .INIT_1B(256'h50559609D9810545F3CFC370E7B5EC2BB4502E2778C6F10D69E035E3CAC8464B),
    .INIT_1C(256'hEA5BAD4E7F50FFE7A77AC528CFCA19690A3AD73C2D06B47E27F84EA5CAD77050),
    .INIT_1D(256'hC6899C029E5CAB5C25C53788B589571B7C52531C7D81B1F34DCB617BF0CF4FFF),
    .INIT_1E(256'h8D1A9D943913ED774F469E99A669E1064CF73C2C7C5909B30AF413993445AF5A),
    .INIT_1F(256'h22EDB4F77BC479A9D32B5EF80ED68D18CC19E5B4934B090BF688460C528997C9),
    .INIT_20(256'hDE292F8DB5D1369C7DA3DF6FCA0BC0B5E85F1E82F6B5684883BA22A830599FC1),
    .INIT_21(256'h673648E74E983BE30D692CFC72B494884DB2224464863D547C9E4136F5C7013F),
    .INIT_22(256'hB0B0ED8B18494FBE88300D2563BF007915BEAFA9BDD0179EF0A861B9781CB431),
    .INIT_23(256'h02C66920E4611A0900F8BF23DCEFE8377B7C3684397AA971A3912893379558C7),
    .INIT_24(256'h52E9756732722242C4EB5F016D5DFB378F228AD544B0B2542E1D4B9C82BEAFE9),
    .INIT_25(256'h62C2786D2D367513BC02976D10832E84B5D5EAED11291BFC09035663E97281ED),
    .INIT_26(256'h6C5403531F175108EB1F497930805DF9EC92D1E226F5E5B4C3D6FB9ABDDD1267),
    .INIT_27(256'h7A8E95DF4804A3485F8504031B79062FD1D97000F095513C85951C21D363A983),
    .INIT_28(256'h385009C06E9E5BFC9F754E76CEF40A7F54E81D733B552C619963D8BC7AACFA80),
    .INIT_29(256'hCEA77FA73B5BADB8BB5D429F3E0E4C88511B8BEB9F81220EE7EC31F91AAB07AA),
    .INIT_2A(256'h32570D60284060DD01E25CF8CE1284B4FA0FCEE3F82843DC1C83CAA3ED2B8410),
    .INIT_2B(256'h55CE5FD629070588F0A7DD90BB494629EC77872CAB86DF62F31FE16DB5A197B9),
    .INIT_2C(256'h626636BF85318D4345BC5997E32B9891458E785ADC3DF0864D1A4C2CDCCF95F0),
    .INIT_2D(256'h3EB7BCB703EC46A8BB22746B85BF75EB4E8F1FEED393E05671540276F93188AF),
    .INIT_2E(256'h94E982A9E50000028D6CADAF1CE9D2A19A39F38AF518078684D72A305C3BC894),
    .INIT_2F(256'h557EC82BA14FE380236C00763174E854AAA000000000A0101906BCBFFE95CA46),
    .INIT_30(256'hEDBF5D6E13CDF659C00044EA3B0CB2019F265AEBE81867A54F90AB4E6AD3D82A),
    .INIT_31(256'hC762E4D076207ED93249FECC0CDDDB0F5D51AB087F8CC90D58821BA372157B49),
    .INIT_32(256'h412CA2B0178A6BD791853C7F7F7764E3B3C0718597592700A595A8A566BD5C12),
    .INIT_33(256'h51D99A5866E178F908E60C7733DAFAFA25D1BCEDAC66FDF9F2C0245B4130075D),
    .INIT_34(256'h36679B23C2DE60CFD7D27FFFCDB1CBFF119CD16E0E4C64E7A23832D5E932A205),
    .INIT_35(256'hB8D088C8AB3B108621C07080000000000B940400AE7C7F30C000FFB37FFA5F95),
    .INIT_36(256'h54E46BF18D70D7A5C1DCE056ED2E06C3F07A10AE1938DB0B41D61ED39C17049B),
    .INIT_37(256'h73146D3FAD6ED11C493817F783EF47FD6C2904EBF0984F352FB0B58CFB274DA9),
    .INIT_38(256'h9AF14F54D7EC333619831E4CEB9942B8878DA83DC42CFB154BBD5435888A79DD),
    .INIT_39(256'hE1DFE6C9D0207F0C4615385862C0801BE99737764BC2FE89DFF6AFBE07A0A161),
    .INIT_3A(256'h52AB12ED41F9573AA36E798389A689BFFCE0EA91DBF1E1422E49D086E33A088A),
    .INIT_3B(256'h37CC5A666719547F13DA9172E7207A8BBBCCB9F0FFE663265A7C2D22EBDE7106),
    .INIT_3C(256'h547A9AC68EB8397F3B2901E7889D182886EFEBDA0E2D1523EB55FAA56BE1A43A),
    .INIT_3D(256'h0DEE3F8A0A1DA80500EBA1EF02C972992DC88AA89D3A69715B034550F7BA3146),
    .INIT_3E(256'h17CF9D05F74E60D35165A1330CD5345609F8B65062390D927F38682C5EEFF101),
    .INIT_3F(256'hB9625EFDD4E3572D35AABBA31A9141FA3F2AB32A20C8E983DA712471422349A0),
    .INIT_40(256'h3E34DD81D655FD0883E5FE6CBDA142B02AF9A139EEC20437586361D12A73EC9E),
    .INIT_41(256'h9DCD4694988E40CDDA0EFA963C31254DDB89A0E0E6686A9B9ACEEBF53418B7B2),
    .INIT_42(256'h717C3CB32568F71A96E21DA2D13E3788AA3F2BECCB26E50AC25D0C8B0C039458),
    .INIT_43(256'h745E90F8EA37DCC46F3658B129C231DEF9B16F7A9A54DE8E0F723C44F5B0FAE3),
    .INIT_44(256'hA5EFE1ABE4046D9FF958E8C754EEFAE474209F3BD5ADB9ABDCA407B20E9D3D38),
    .INIT_45(256'h00000000D6AC7CEE0A88D54800000020D80199874A7C8A9EB96A2A0753C8ABEC),
    .INIT_46(256'h54388B8F1B0C007FFCED4252D000007CC241F357FF11A7FFDFF1A83AA03A5E80),
    .INIT_47(256'h0075384004D000FFC027F9800001F280003558301355387FB174494000D56140),
    .INIT_48(256'hD402AF816383FD5E0005FF1C0ADDFFFFFF55518000004952D5448502AAAED800),
    .INIT_49(256'hCD7B880E8EDBA7A56D5AD1E54FBDE41BF1C8365609F76ACB922474151E63FC21),
    .INIT_4A(256'h640412CCE287C118EDD310C539520ECAA54A754CB13DADB54006DC4F9ECDC9F9),
    .INIT_4B(256'h3293FB890CD5C08E52FBEB64ECAACA9F3DBB2ABB7AC7A0B04B9B3756B913F017),
    .INIT_4C(256'h4A38656650F494048D3CE271E5CE39C3684511D8907C3125692D17E79B916373),
    .INIT_4D(256'hAC7BE01478439701B256F55326117BD791A8C68ACF2698836AD48A326278E91E),
    .INIT_4E(256'hA398B99FA03492889FCB058A7E2904F509BFADE7CC7AF673AD5012235BA8EA09),
    .INIT_4F(256'hBB247C8171760B9B71AEBF90847E038922F8423A1EEB107DC2B39F29C84D9FF3),
    .INIT_50(256'hAC9866E8EB2185622B7A26F16A3D258891BC50D28EE8280DF9857E46EDB48C15),
    .INIT_51(256'h4893C2FA75474AE36EA66A119D6F4155B9BD58B027D0BF340C07663DF65B507D),
    .INIT_52(256'h973F4E8AE56E4EC5935DAA5EAE68A27FA25DAE3E0D63ECB7D706D71A30AEF9AB),
    .INIT_53(256'h2851AE2EA809A60D36D043697324B23817C6B96D525163133D752A60C2339046),
    .INIT_54(256'h36D44DC9AC89AC431EA623134847DEEB9C347E27E0351AEFC6246A18C4160E14),
    .INIT_55(256'hBE08E737D85B1BA1384E5AA332004087FD31A2FBC49E4AF94337EB9C59349681),
    .INIT_56(256'hA91D72DF8FACF1B1D4A6A6D401D47905B52ECAF20C88520FA4F5A351784785E1),
    .INIT_57(256'hFB1214E7277444CA8B2B187D0222360CEA0A3A86D355C0DBE821CE3FC9177D9A),
    .INIT_58(256'h6C0FC66A2FC35644DE4469E4E29D91EDA8230EA9DC931DEE64FC15FB17D75A5A),
    .INIT_59(256'h6582EEEF0E404F53B881EC50FED33227DC206E78E6762C069A66C7A31EDEDC87),
    .INIT_5A(256'h3522EF1A4DD5F77F0AED8DECDFD69740FFA900FAE50AED4504B07F057F10781E),
    .INIT_5B(256'h5DB742D5192AE95A39A74A29509093DBAF194B18C8D1FAC2D865AAFB49120176),
    .INIT_5C(256'h29FA4F19145D6556521402AA1164493A6299214EEDDC949C04D8A0EDE5A72F8E),
    .INIT_5D(256'hF9A2C6026B8A97710DE390C6FE1AC8E7CC043B5C6D0D374C5F0D3B2E9F2B8551),
    .INIT_5E(256'h7611FF9E804563CF745CA684FEC14082C193C4EB3BBF3F794CD8F70A6D18E1A1),
    .INIT_5F(256'hCB658ED62436FA4673C5854022F8E5019B339B6BC0B631284F1909D724290D94),
    .INIT_60(256'hD5C8F886F78E06C55C477CE58163EE4FF54615FB4A4A464FEC9DA42605221D02),
    .INIT_61(256'hED22E4B380D1D286B1A122B27CC2E427489A82D8CC4AB373E201D7A9434A1D13),
    .INIT_62(256'hC1B3121C083426EB9FCE6CCA3F65F87C4A56445C3D90091ABAECA7D9F3A3292C),
    .INIT_63(256'hA57F3A545EBD24C62D6A5D7BFED6F566DF0F52498E7EE69F5D3A87637DAA4CA5),
    .INIT_64(256'hECC9C926E39F91BEAA468110FF139F20FDBE174EA1845F8FCB82D7B023EAAAC7),
    .INIT_65(256'hF5A72C6BFB735F60BE968718D8EFD532A666D8E42158652EC42E85CBD98E86BF),
    .INIT_66(256'h33DFE2ECFCA8693915C6876D8E7DC588E402AE4E5B2FCA87D5BABE2113DCDFB4),
    .INIT_67(256'hA026BCC61A6D50F1D65CB6DA353D58715EEE9118874E71FC284114DB0133871C),
    .INIT_68(256'hAA08CB8454215D39329B967D4FEABE934D2ED473F2E6090A0F6FA0A7228D2453),
    .INIT_69(256'hDF8B56BF087729B4B85A75CAFCF717B05D4AFD15B471E7C4F1D2E8414C632B4A),
    .INIT_6A(256'h79E1498A7BD3053544147BF64A3342CD7E7990FC42EFB9F072DA1DEAE8B41601),
    .INIT_6B(256'h680E8B7316965D255175E84A92F1C4422D40C60FA30731AEAE1F57045A2BB971),
    .INIT_6C(256'h1632A1DDF1BD58A55F239BDACED668F38B84894C8663D8A08B5DFBC9A50CFD88),
    .INIT_6D(256'h3A98C4F590C87E1FC37484105350E854FFE30C1FD5FB1B99CF20706FF9CFD4AD),
    .INIT_6E(256'hE3F0899DD2940446F29181A854C2A5C75034AE55F3371E039F40E2F0CCD71A8D),
    .INIT_6F(256'h8F6622DB73836C0981958D4C1D257307D4B08ADCC59D61B23F732FAC04C22EFA),
    .INIT_70(256'h58EBF9F61873FF5843497A39C7E7612B73CEA1EEBC5C0654584713D767F1B768),
    .INIT_71(256'h24C720EE72190958933C0AE25A248F69B04CA5322CB6B4043D75CF72D6E02723),
    .INIT_72(256'h04090039F628A97E2CA38317B655CB86613970ADB85CBD38FBE4955CD7ADEE2B),
    .INIT_73(256'hB1DB9367582E9DA634126F163B0572E5CE762FFFDE07F6156CBCF47B03476704),
    .INIT_74(256'h734B8D8A4C4E51E11CD71047C47216720856791EA0952958B9BA23EE72D9C6FD),
    .INIT_75(256'h299D197159EB9517C98BD39EFF872EAE9A019A2B48494FE5E3395159B4AA2C2F),
    .INIT_76(256'h99332619106C03EBC4FCF5A53F91AE635D1F3DFC823556C3212D65233A8361EC),
    .INIT_77(256'h8F3B3B4F98557124B55C97394566BC6005F8C0BDA4A58DF22C5244AA952F20E0),
    .INIT_78(256'h18666213245FC2FD855792ED85BA2411261E51C9C0020C47365903E7487C4719),
    .INIT_79(256'h1267A0F43A3679108E6DDD4A9120D1604FEE0BC7F862BB8DA04FF88A933B70B5),
    .INIT_7A(256'h8DE2198A6110A64160AF232BFB1B41468878F49416D161D92971826B95FC5B12),
    .INIT_7B(256'hF9C375679706BC654DF34A95955D82A26D63B9A8A4346ABFB68A5789837B47AD),
    .INIT_7C(256'h3968E849DD1AD7DFEEDC3AB3BF79863A8587820055E6C61DC0BD9093FCB3BDC7),
    .INIT_7D(256'h1C3747063029B8E082B1EBAF2AB798CFFD58FE9AF95A0935CB504D34C181F9CB),
    .INIT_7E(256'h151D2E363116CB71695D32B58080E7CC76825FEB0B7BA37B19029DCF2856EB0B),
    .INIT_7F(256'h249AE63282AE55C5CA4D7B4E0761EC05A9E8BDC8785FDB2F010DEA7FE73980D4),
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
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra[15:0]),
        .ADDRBWRADDR(addrb[15:0]),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:1],DOUTB}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_1 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_1 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_3_n_0 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_4_n_0 ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_5_n_0 ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_6_n_0 ),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_7_n_0 ),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_8_n_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_10 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ),
        .I1(addrb[13]),
        .I2(addrb[12]),
        .I3(enb),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_11 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_21_n_0 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_22_n_0 ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_23_n_0 ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_24_n_0 ),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_25_n_0 ),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_26_n_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_12 
       (.I0(enb),
        .I1(addrb[12]),
        .I2(addrb[13]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_13 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ),
        .I2(addrb[13]),
        .I3(addrb[12]),
        .I4(addrb[11]),
        .I5(enb),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000A200000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_14 
       (.I0(enb),
        .I1(addrb[11]),
        .I2(addrb[13]),
        .I3(addrb[12]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_15 
       (.I0(ena),
        .I1(addra[11]),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_16 
       (.I0(ena),
        .I1(addra[11]),
        .I2(addra[13]),
        .I3(addra[12]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_17 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I2(addra[13]),
        .I3(addra[12]),
        .I4(addra[11]),
        .I5(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_18 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .I2(addra[13]),
        .I3(addra[12]),
        .I4(addra[11]),
        .I5(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_19 
       (.I0(ena),
        .I1(addra[12]),
        .I2(addra[13]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_2 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_9_n_0 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_10_n_0 ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_11_n_0 ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_12_n_0 ),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_13_n_0 ),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_14_n_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_1 ));
  LUT6 #(
    .INIT(64'h4000000054540000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_20 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(addra[13]),
        .I2(addra[12]),
        .I3(addra[11]),
        .I4(ena),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_21 
       (.I0(enb),
        .I1(addrb[11]),
        .I2(addrb[12]),
        .I3(addrb[13]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_22 
       (.I0(enb),
        .I1(addrb[11]),
        .I2(addrb[13]),
        .I3(addrb[12]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_23 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ),
        .I2(addrb[13]),
        .I3(addrb[12]),
        .I4(addrb[11]),
        .I5(enb),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_24 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ),
        .I2(addrb[13]),
        .I3(addrb[12]),
        .I4(addrb[11]),
        .I5(enb),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_25 
       (.I0(enb),
        .I1(addrb[12]),
        .I2(addrb[13]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h4000000054540000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_26 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ),
        .I1(addrb[13]),
        .I2(addrb[12]),
        .I3(addrb[11]),
        .I4(enb),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA20000A0A0)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_3 
       (.I0(ena),
        .I1(addra[11]),
        .I2(addra[13]),
        .I3(addra[12]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(addra[13]),
        .I2(addra[12]),
        .I3(ena),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_15_n_0 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_16_n_0 ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_17_n_0 ),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_18_n_0 ),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_19_n_0 ),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_20_n_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_6 
       (.I0(ena),
        .I1(addra[12]),
        .I2(addra[13]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_7 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ),
        .I2(addra[13]),
        .I3(addra[12]),
        .I4(addra[11]),
        .I5(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000A200000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_8 
       (.I0(ena),
        .I1(addra[11]),
        .I2(addra[13]),
        .I3(addra[12]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA20000A0A0)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_9 
       (.I0(enb),
        .I1(addrb[11]),
        .I2(addrb[13]),
        .I3(addrb[12]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3 
       (.I0(addra[15]),
        .I1(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3__0 
       (.I0(addra[15]),
        .I1(addra[14]),
        .I2(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_4 
       (.I0(addra[15]),
        .I1(addra[14]),
        .I2(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_4__0 
       (.I0(addra[16]),
        .I1(addra[15]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_5 
       (.I0(addrb[15]),
        .I1(addrb[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_5__0 
       (.I0(addrb[15]),
        .I1(addrb[14]),
        .I2(addrb[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_6 
       (.I0(addrb[15]),
        .I1(addrb[14]),
        .I2(addrb[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_6__0 
       (.I0(addrb[16]),
        .I1(addrb[15]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized12
   (\doutb[5] ,
    clka,
    clkb,
    \addra[16] ,
    \addrb[16] ,
    enb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]\doutb[5] ;
  input clka;
  input clkb;
  input \addra[16] ;
  input \addrb[16] ;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]\doutb[5] ;
  wire enb;
  wire [0:0]wea;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

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
    .INIT_00(256'hDAB962FBEDFB202D19FA25C9CB0565641DB8D69E0C6D084667592AB0E9F891FC),
    .INIT_01(256'hE9142D41726CABB8A404C11BBCB20889284290A47CB9D884E0993879FBA61376),
    .INIT_02(256'h9082F1397E7C7275655C6831167D5A0A1E9EF899832C225F13CC81902956E931),
    .INIT_03(256'h76BE1CC2A6B30744882E2C52D7135747848BD0E27F9D675428EC099665858F88),
    .INIT_04(256'h3819E59FA55B1F02A48F3695AA2739B80BFB3F0E88EFCEEBD9DBBF67A1DEFA9B),
    .INIT_05(256'h67011C71A98060575A4D3FD1B865F9BC6653112A834404253649D1FA8CAED5B5),
    .INIT_06(256'h6394B830F36FC706023B8D0A54856E02C8469902909E7167153C7ECBF3536807),
    .INIT_07(256'h7B8A9C401D88A932630C107E0D4A1D92FA8DE4E341A226F27EC24DA8BE7F6C03),
    .INIT_08(256'hFFAD8B854A6BFB51054C576A0499EE527B18F8F5C54C7238E0944F015275FAAB),
    .INIT_09(256'h3C01058C1F8BAC87648CABEDD707AF3DD130285FADEB052C245E3AAF03C38E96),
    .INIT_0A(256'hB36592B53E55783AACDC9F050E9FB0DE40F7DBFEE113AA95B70361AE5166FBA4),
    .INIT_0B(256'h024D0720D853D4407C0A53EC91B9AF69DB85A6784D428A2DDDC12E4B2540BF1D),
    .INIT_0C(256'h319457AF77B340C5EAEB2B6F94E717876ECC00DE5AEACE8D91BF3C82B61EA049),
    .INIT_0D(256'hBC2B0A129CA90F33B12D75E9CE59C5620F69A7C2CFF7809C983FB867262C99FE),
    .INIT_0E(256'hE278632DCD7E60091B90DC7227F3BB86A221B9199B6C59C0C229BE23D6099719),
    .INIT_0F(256'hE4A5498CD76AE8D45FECB821C347D6524CA7B0A97646C76ECA5F5F4BFC20C535),
    .INIT_10(256'h9645105B32510BB0CD1EFBB5FBD00FAF279D18D59E26F737358112CEEF5A890D),
    .INIT_11(256'h5960E0E472776118678B871A58217405969374E988B4B9A04282D025B3BFFCA0),
    .INIT_12(256'h1DFF1EAFB6622D98D2CB749C6CC0AA047A18C873AA9B77FB375A9CF1BC26FBBB),
    .INIT_13(256'h3211E1012F4E9536E1FEEDAC6EFD93089D3941A3C770250E99F8D18B926AF066),
    .INIT_14(256'hFB6F64FA6B21A72C287309012DB3101E874304E677AA5EAA838DD4F27B7DD696),
    .INIT_15(256'h3B006BDA3350CBFF5DE128AC40EC7B1BF424A8D22228A453801A797CAF2787D5),
    .INIT_16(256'hEAB784F616B76B4EDE0A99FB61B63656BFFCD08B318DECF1627993EC5D3C4217),
    .INIT_17(256'h98C836711B8918275C16DC19642C94D02A3C0181FF2C653354E4F3284ACBCE01),
    .INIT_18(256'h84A6F616F3E96DEA54A6CAED9B244DE445CBEF7D00EA998799FE2F4C6D910D84),
    .INIT_19(256'h94F3443970F57D5C6E6B07E4DE8D0CFEF199F49EFDA9CD4841D7C2D668E6BF78),
    .INIT_1A(256'h8876AE46DE92EADF5DB09DB332F503324E7F4734FB9A94B88A820D7B9607E231),
    .INIT_1B(256'h8305394937341FE053EAB1456516667227A839D4D499D855CA49C4933B1C54F9),
    .INIT_1C(256'h3F26FF2AA555FE7F1A7E2F9041AB6C15AFB171831105672796F5A7494B80F2E7),
    .INIT_1D(256'hBBE3AB98B62CE278FB1BB63ED51B28E73E894E3D5D835C4A16DAB32F638E8EB0),
    .INIT_1E(256'h3060C5ED2A000000000000003D5500000000000000001EBDB97CFC5DECEE7065),
    .INIT_1F(256'h0000000003E04AAA000000000000000000007FAA55000000000003CF01020408),
    .INIT_20(256'h0EAD500001CBAA81000000000000000000000000000000000000000000000000),
    .INIT_21(256'h00000000000000000000C74000000000000000150800015CAA80000000000000),
    .INIT_22(256'h002000000000000000000000000000000000000001F8E454000000000000F400),
    .INIT_23(256'h00FFFFFF005FFFFFFFFFFFFFFFB000000053FFFDFEF0000000000003F3618000),
    .INIT_24(256'h0000000000009FFD52D54AA00000000FCBF80007FFFFFFFFF8078157F9BA5500),
    .INIT_25(256'h353B000000000000AADFFFFFFFFFFFFFFFFFFFFFFFEAAD540000000000000000),
    .INIT_26(256'h80E07FFFFFFFFFFFFFFFFFFFFFFFFE9FE000000000000003C00000028511EAB0),
    .INIT_27(256'h553F8C2D0D87BA090AC474B7AFADCB02A7F77F35FDCFB1CB7BBFE7AEABCE22A2),
    .INIT_28(256'hFEEA95B26BFBCD1839DEFBC394A7237E6490B1281C4B9BD03AC06EE899A82885),
    .INIT_29(256'h16F1B6EE4719FDC1F511F882E245FA1CF21FE291A2327D2EA87E097A207B7E4F),
    .INIT_2A(256'hEB52E196D1A3FD1044337EDAEFBB868CAD69BF2F3B34E0193BDF187B9B9206C6),
    .INIT_2B(256'h431B47B530B8B79D763A29C4FEDDEC1D75763FBCBF168FB16EDB38CEC6A5791C),
    .INIT_2C(256'hE0E69B46878BC8046D82F837B36AFDD863B21C444E0D983C77CFA961C6852769),
    .INIT_2D(256'h69DA83C1D669D1D749CF7CBF30E88E0A54652F4F670285118E9BD7644DCFF6B3),
    .INIT_2E(256'h1A4B18E2E649ECD2AA6156E1570C63854670FE549DFD94AB0E08226F5C6285A9),
    .INIT_2F(256'h47D433189E9609B5E2F58DB1D7A751171714F1EA21DE243A3276196D19AFDA5A),
    .INIT_30(256'hC817B8CB197842C1A6C5534E58E3C4C78D8B2FE5A446332B6967F10CF77AF1E9),
    .INIT_31(256'h6021B915D3E4399562C28297894F7EC683AD920171F221059EE2616FF3D1D66D),
    .INIT_32(256'h2BEFF29EC104715728CFD8E28FFB463958CD729405A259C7F3490AA14A63C02C),
    .INIT_33(256'h3B5DC6E34FC032423B74ED0DFF101A95C738474C22DF85A3C066389F9CDF3910),
    .INIT_34(256'hD31A4257CE1A43671D40B9053246C0068AD6A97C861FEB2F8E699A07E830E025),
    .INIT_35(256'hD855F513C0CDCF8637EBFB1D0E5F8218A65C6E36434124FF98DCD7D12B505881),
    .INIT_36(256'hE5DE63831C955B3AD5676867856D807C3736E5957823DD3BEB64A45BCB86841A),
    .INIT_37(256'h8E620608C788524BD96E4051554EAE15E45C581864A937CDA12152E2913469CE),
    .INIT_38(256'hED80C4F196900F257FE779015111564B1287A117BEAF0DE7AEF31860CF3EEEDE),
    .INIT_39(256'hD1D80B4B7BDBC73638A362529F3A9D770AA93054CF9DA7B11812E3A79D94D4C1),
    .INIT_3A(256'h040E34FA465E0C2150A338C2F6772DF18A88D22F36459B486AD236B5ADB9693D),
    .INIT_3B(256'h1F5B1E967A6145CF1C787F3DAF36ED1E45D11230256B17F452D6FC5E1383DF95),
    .INIT_3C(256'h65A1798C2768A505B0A1C36BD2EE0D5AB82FFAC9A4D7C1AFBA0D5D033BA89215),
    .INIT_3D(256'h418C119CDE0E3CA7AAF89D32D99E8BA59047ECD485F6C94BF6BC7435D3BF6562),
    .INIT_3E(256'h689327C063BF1A7307E956EC7B10631AAD77987C1611085C30B84E702B5AB7DF),
    .INIT_3F(256'h33277A79AFACA7FCC55F02E1B2E45E764A8538721BA061AB221C46875ACC4272),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:1],\doutb[5] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\addra[16] ),
        .ENBWREN(\addrb[16] ),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized13
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__18_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__18_n_0 ;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h07871B1F0F0F0F0E0F1F8F8F8F07078FE7C3E3F8E0F8FFFE1F1FFF61D9FFF838),
    .INITP_01(256'h38E3DF7CF18E38F3C79E73861E70E78E1F9F8F0C383E7E7C74E1C3C3E3C2D7A7),
    .INITP_02(256'h8E71C639D7B9E71CE39CC38A3DD538E68A35A639C7147AAF79A75D7EAA38E386),
    .INITP_03(256'h38C639CE738C739CE71C6339C638C631CE71CE31CE71CE73AE718E738E738E71),
    .INITP_04(256'hCE7398C6739CE739CE6318E631CE7318C7398C739CC639CE7318C739CE739CE7),
    .INITP_05(256'h4339CE67398CE7319CE6739CC6739CC6339CC6739CE6319CE7398CE739CE6339),
    .INITP_06(256'h73398CEE63339CCE67399CEE3399CCE7319CE67319CC67339CC67399CE7319CE),
    .INITP_07(256'h8DCCCC6666333B199DDCEEE66733999CCE6733199CCE773399DCEE333999CCE6),
    .INITP_08(256'hCCC4EE666773333B9999D0CCCC4E6663773333B313998998CCCCE62673313B98),
    .INITP_09(256'hEE6666E333313B9999D9CCCCE66E6677731399898CCC4E6666633339999D9C9C),
    .INITP_0A(256'hDC0DFF4EEF47DCCCDCC06FFCCECC46E66666276763733333311B999998CCFCC4),
    .INITP_0B(256'hEA6FEA376A66F622772377333B3337667F773777377626F6467FC67FE01FD81D),
    .INITP_0C(256'hFA13662375137B11F7113B313BD81B989F988DF895F889DDCBDDC4CEA66FD46F),
    .INITP_0D(256'h6EE84CDC46EE46EE0776237623FE237911B911FF913BB13FA91B913FA32FEB1B),
    .INITP_0E(256'hE66EC437663662373333331BB199D88DEA2FDA87EE676E44FC677EE6EEE4FFEC),
    .INITP_0F(256'hB227F407F322FB22BF627F707F941FCA2FEA0DF945FD44DD40DC84DCC4EEC46E),
    .INIT_00(256'hF5FA00FCF80004F8DDCDE7F3F0F0F0F8FAFAF7F6FD0A14120F05FBF9F7020F05),
    .INIT_01(256'h101208F7F1EFEDFB0F150CFEEEEDEEEDF2F3F3F2EDEBF1FA00FFFD01060602FD),
    .INIT_02(256'hDED0F81D290C070EFEF6F0F1F9060A07FBEEDCC7D1E9F0F1F4F4F0F1F6F7FE08),
    .INIT_03(256'hD4EBFC0B05FAF0ECE5EC05212C0FE9CFC4BDD5062F2FF8BB969DBADAEF0F2007),
    .INIT_04(256'hE5305843F28041700144402B0BF9F0EE0F53655021D09CBCED08150EF3CEC0BE),
    .INIT_05(256'h93A46C078F3F38BC373E13BE778CCDE4F7253414EDC3AEBEEC234A3FF6B49DB4),
    .INIT_06(256'h184D541AC38181D53FA2B049E79274C52C716A0BA5493BA5379C904ED693CE2C),
    .INIT_07(256'h1C91A15B0B925094ED65D17F259A047A28AFADF03CEB15B5486B39CE6D4278D6),
    .INIT_08(256'h5CA1F42B3D1EE59068AD215C742271EE13DAC5026EAB2A4CD39625D5116E2681),
    .INIT_09(256'h149A50857949FC3CBA74AF4BBF912BC8646A069BB569E37166B01E62692EBA71),
    .INIT_0A(256'hDC4ABC75AA489D74340AE2C5D9F6FE0410F29F6367B2FE1C1AD7814A77E84D78),
    .INIT_0B(256'h574513F9CAAAB1DDF80C0CE8BBAAACC0F11F2828ED7781EEC8D24A1F837D0AA7),
    .INIT_0C(256'h1A1D04A56F98E7190FDA8E980B86B9619255F49A9DFB3B18D8A2D16ABE629B05),
    .INIT_0D(256'h4EA835742BCE919BEB5950B96175C42243EACFFF262DFEEDF0193F2F11F7EF03),
    .INIT_0E(256'hEEA8AAEE455D27D5D3427856F0C0ED31471DD4ADED364803B898A2CD1F1DAE5D),
    .INIT_0F(256'h6242F18ABA276E55E27A9A176837D3A7A4DC17FD976C81D808F9CA759AF23C42),
    .INIT_10(256'h1E7B28CF3BC561B3E1349B0D903B7C41B52E651FAC66E17D913879750DB2A210),
    .INIT_11(256'hC6971921B2A0A1871DAFB9CAD2F21F5D4078F8EE8BC68788E37A14B44B2AB177),
    .INIT_12(256'h1C326BDC6C90054C64CA409BE56D8AD34CC08DFD39C684E12248357B3F60FA36),
    .INIT_13(256'hCA834C2570F2AECC982F400A571372B38D0150F0264152A7E13A3942B8A081B6),
    .INIT_14(256'h701DC342E23ACCAF168B912E9D4CED7AB871921879D8DB3B664FB43449EDA7ED),
    .INIT_15(256'h7D2441C8C01B252CEFC7D1925768AAEFEE45F429D573C43EAC3CA051B0ED3259),
    .INIT_16(256'h5D5B6C0D558D50FB01715B01A1A7CFFE0707E6D25DC23E8CB5B004665565B68D),
    .INIT_17(256'h6305DEBDBC0AAA9072DC365D0BA64981119D997216486068F86B7548B2E0BBC8),
    .INIT_18(256'hA182B71D8135C7B3534D1090766AD7474626B13A8952C9DACCE6728530FD7163),
    .INIT_19(256'hB26409684F60D3D9536E09ADA56F11B8E407EF9B9F84D4BB81CD408782C1F047),
    .INIT_1A(256'h96FB9F372A15CF9E39EE43AEAAC6368283E89C41A820A2D58CC136A582A6E220),
    .INIT_1B(256'h0CD2AE318736CDB0A4D9139334B939846EDED245B84FC4D695125C9734B13D2C),
    .INIT_1C(256'h420709B259DA2302BBA1EC52A324D43797960EC50F32A26CD92E4C9B03A93512),
    .INIT_1D(256'hE058A72DC9FE626319B547E046BA949803B9B424E02BA3BE20BBF43A5A15B1FD),
    .INIT_1E(256'h6BE033A15D85E64A7D48A63F9F7D16B582CE76C45C84E660B80C49D802955D96),
    .INIT_1F(256'h1F72E64C8B328006827D258901BA9625C580E98FEC95C7F178E386AAAE6AEC1D),
    .INIT_20(256'h2F821766D3339B576EE89ED368ABE567A860B2E77B753EC9F6664C209AE77C95),
    .INIT_21(256'h83B24BF12570C441216143C447007D5BDBA6027EB4E96DC686A8D35CA31D68D0),
    .INIT_22(256'hBE6D39A37AC23B219353068178C97E138881AF63CD7E89DB6ECA795FE35DCE7A),
    .INIT_23(256'hC4881883729054C64A419D5BF45B26D0813BBD82C66E299080CF8ADB6E87A759),
    .INIT_24(256'h7010AE5C2E94668E7CFD266DB238C57536967FDD716DC961169C64BB4B10A88E),
    .INIT_25(256'h6FBA6397B68CF87F5FC78711785EC492206B27655D066E1D7A40E4590E9F4C2C),
    .INIT_26(256'h4DEC6E4B2176E56C953B62CC75954773D180D5655DC082F35A80AC73DE37687E),
    .INIT_27(256'hC4BD73AAAF5EC55967B052965280B86CC556489C881B6D3CC08A55AD34856D40),
    .INIT_28(256'h5869B9578A6480CBACF17C80B689D964498F6F06830B75703268E89F836587D9),
    .INIT_29(256'hA472AD6A82B069C46D65A651E1834E98AF228036899B226ED1528B6C8AAF1A52),
    .INIT_2A(256'hAE5A6BA76DD59675C98BF3B66FB57B02673FAB78044E1F9AA7446CFBC6D06A8D),
    .INIT_2B(256'h672298C546599890E5586F9C7DE27962AD8914812B988F366CE45E9B3239AA5D),
    .INIT_2C(256'hAD86087E2AAED9316BDB89CC5C5FB37EAD6859C66AB77B58A8AA3A61429B9017),
    .INIT_2D(256'hC46D8BEE7BB53B33A283D5430C8893225ADF95B76154A95BC3754E9F71EB3B2E),
    .INIT_2E(256'h5440B3B8E9574ACEEB0F5F27BCC13E51A587C65745AF86ED600BAED1456628C1),
    .INIT_2F(256'h2FF904146D2DA7D34C4BCD9CD14F3FADB8E95A35C3D9FF610476C24433C782B8),
    .INIT_30(256'hA695596EE478BF7444E1C5F46F38B9BF0C4C289F82202DC991AB4032E7D1F261),
    .INIT_31(256'hD6522BDBBEDF4427ACB929520488C8351DA671CA4A29D0D2F0552398A43034F5),
    .INIT_32(256'h276E149DAC4B5DFD8ACA4D23C9C0015325D0E7512F957AD36B208D98002CDCA7),
    .INIT_33(256'h6E23978A306914CEE1672DA9AEEF97537B50BE350B8578343AD2A3E26A36CDA6),
    .INIT_34(256'h7E00A5E67D379797E52D0F71703D2AA49DE25923ADB13958D7A0E67437BB8DEA),
    .INIT_35(256'h277ACF263CD777E14D1DB09AFF6C0AB0CE4D3F9D61D96E2CC775EC65F5A4D972),
    .INIT_36(256'h1EAAE50B86209CF2421A9F9D032AE285DB6C22B68DF0480FB5CB5554D08FE078),
    .INIT_37(256'h01BE83EB770990A51129C89FE75415DBF7077C269AE63D0D969BF13DE5B8F660),
    .INIT_38(256'h0655FAA2C64E40E1AD211DCCFB2441DFAAF3591499CA2F31C5A6F1430EC1EE1D),
    .INIT_39(256'hFE3010E6DC1767F29AE220EA8CAF0933D094F04AF6C0D01A6D02A7DB561EA188),
    .INIT_3A(256'hAC185DEF79C03815A0871462F8A8FA603FEEC5FF2FE079DC4812B39D0636CA9F),
    .INIT_3B(256'hCC681778DA75F47A4DD2C14585DC73F25D1E91901954D5A4187416E6F42679F6),
    .INIT_3C(256'h3EEAAE163EED897C1F49B7A31B4CED78CD5216D7D92F60E4B10426DE67C71B0E),
    .INIT_3D(256'hAB1748DA96FF38FCB2B80EFBDBF5245DE59EF937E094DA1BE3A8CB181FB2B715),
    .INIT_3E(256'h53D69A244EFAED155B46EBC02954A485122EF7D4EA2BDFBF033F56EDCD302FB2),
    .INIT_3F(256'hF2387007A8D44AF78CAE1317B1B02433BFB82745FEDC0D4B06B5BD0C1ED1BF1F),
    .INIT_40(256'h58CA99EA0E0196A0283EF7D7375206EE103BE28EDD2FDA83C33A208A941E2B08),
    .INIT_41(256'hC8D05F54C0B03653F3E72A59C29F1222CB77D7210CBCA62A3307EB1347E8CF2A),
    .INIT_42(256'h2C6923DA1654ECAAEC3210AEE04D26AAA8121201FC244FB485395AC683034A08),
    .INIT_43(256'h6CF989FA50FD9CF2680B8DA1394BE6E1182ECEBB1A0EAAC8FD07C59D3440F1E7),
    .INIT_44(256'hC39F2749CDA32F4C00F55889F07AD5621CA5AB3251AA972930E2C41C7B25ADF1),
    .INIT_45(256'hBD3336E2D46A8A9C8B2437CC871A59BF6ECF21FB0010393EACA22F44AB9C3440),
    .INIT_46(256'h50A78D2337C75AAD31EB8BB81610EDE14B5FAEB03D489E660D29EC99A71CDF8D),
    .INIT_47(256'h808C0922A56C1330FBFF326C0D970667C45BB316F295C70103C5B16D7DD3AF2F),
    .INIT_48(256'hC83928E3D96F63C0D041438B64F622A0A44239B0C2FF534EA80A75F1A0D9341D),
    .INIT_49(256'h50DCDA37349A9A252BA783136B1276A73D44FBD7787170923826B385D9210FB1),
    .INIT_4A(256'hB80F1C017C904927A0B62F30F6EA549F1DA7154EDA87BF281E99A93C22C5CB4C),
    .INIT_4B(256'h06FFA8BA5A35D1E7467124E13F42C28CC221159AB8261897B2485B27B81544B7),
    .INIT_4C(256'hC282DB5B23E3EA65168FDB1FD66ECA3624BAD81F0FDFE7707EE27CDE1BBD72C1),
    .INIT_4D(256'hC64349E9CA39346D59D405A98E265AE0A2E06F4791CA4D128FCD3D1F9B680521),
    .INIT_4E(256'h570E79CD280D8CBE4816A3C93E2609E80A66ED8FE32BEB5EBF3F1CA3CA6E35BB),
    .INIT_4F(256'hC28CE045F874E74F13DDEC7B4CB9DC612891CC2406A2CA0CF7A5AA0E3D1EE3F5),
    .INIT_50(256'h9D194DF1D43E9428C2EA491A8ACF4613B3C9FEFBB2B5343AF8F719530694174C),
    .INIT_51(256'h4A52D1B01B6017FD044B1B78D23CF090DE611F94DA300DFDE5110E898B3A2494),
    .INIT_52(256'h31FFE01F95219AE55DF680E149118ADC4D13C2F06658F7E54444BF9B030B8FA2),
    .INIT_53(256'h34E6FE433094C8360990930F0CC9B2093301F12863EE96FA0C8E910731D77CF3),
    .INIT_54(256'hE7E31A29C6AEF41AE1A02045DFE24F6511EA184F0FB5F654F28DED4C10BEF76D),
    .INIT_55(256'hDDEB1DFEB27C0A52F2B40B440400094014E6F708E07FC1FEF6BFAFF9F9B9225A),
    .INIT_56(256'hE89CDB04D2CCFDFF01FC124303DEFFF8D3C701ECA9BC07039FE05A47FBFB544B),
    .INIT_57(256'h7BAD27EC9DFF5B1500033142A7A719E484ADFEEEAAB9FEFE02FB184FEEB0E920),
    .INIT_58(256'hF3C5ED11070B0A33310002F5D3DBFCE1CDF00AF4DB0A19080F0817E99AE42FEB),
    .INIT_59(256'h15F8206760D6CE440E8394F9FDB9B1FBFFE9184037E2E3460090B1FCF5B6BFFD),
    .INIT_5A(256'h5F5FDDB00BBD439B06D69AF024E3C413441AF82035E3C601E485B0F908DDB804),
    .INIT_5B(256'h31ECCBEDFCF9B3B001EDC4FF25F4C7F75E319CE944EA97A403DF93CA27F681CD),
    .INIT_5C(256'h633CAFB3FA0ACBAD0812E8E43549DBEF470EC6E816DF95F136EACB2B46FAEF1A),
    .INIT_5D(256'h3FC79FE504DEB0E62011FF187051ADAE04E28FA904EBAFBB0D17EEF25070B2B6),
    .INIT_5E(256'h09BDA008F905F82D52F3E3203ECDC829E9A1D9FF02EBDA235610E11C621BCE23),
    .INIT_5F(256'hEFCCE500FF00FE192EC8B60EBF89DAFBE3C9DE02FD01FE082A19BDB613B5AAFE),
    .INIT_60(256'hFC03FA2743E2D9472EC0C909CB99F4FCC1E601FD04F8222005C7B20CD0A2D2FA),
    .INIT_61(256'hF2E43F42F704FEE08DB30FA865C10CBDA5F82A310BFD1E2FBFA5031AC593FE1D),
    .INIT_62(256'hF54B4BF309F50F916FEEEEB8C31C0F01FD275F2CFB191ED29CCE06D9B1DF01FF),
    .INIT_63(256'hFD18239E83EBD897AD071FCDD2272B0AFD2F6F249BD42AA175DBD79ECE170905),
    .INIT_64(256'h1F45A278C50DB09DEDFE01E1DC41440801111EA4B20DC57CC62913D4D13B5B20),
    .INIT_65(256'hFFE692C00BDECEE4190C00FE358C42F62A26AEA8EC0798A14F31E0EB1E797EE4),
    .INIT_66(256'h01A368D602FF00FF001D1EF2795CA7CE23F8899BEA02DADF170702FC467825FE),
    .INIT_67(256'hCEC8B2F2FF00FF003B9843F2715168A214645D0E30F4EB213316FB418104C4F5),
    .INIT_68(256'hE606FB031511FCFF6F49EF07FC9182F1FEC7D808FB02FFFF324912FFFF00A256),
    .INIT_69(256'hE207FA05FC6667F32B3E0C94BF0F9E8BDE1607EB095F2CF6704197BFFCC297B6),
    .INIT_6A(256'hF5200ED941AE34AB1346BD72CC09E1BFE206FBDA14B347CE1A149944C0F5AAA7),
    .INIT_6B(256'h01200FD320AA1B78D5037576EA0000FF21310FFF94B927FCFFDC87B0F8FEE9DC),
    .INIT_6C(256'h2410FA1E5220B5EBFD888AF0FCBEE109110CDF197327C6EE01D87E74E30100FF),
    .INIT_6D(256'h330E02571ECAC5EE02B694FA1CD0F43A4109E317762085D506DEB1E525E6EF15),
    .INIT_6E(256'h14FB052E055FCF2AD88DDE2CD9C4F31F07FE0557175ECE027881EC28FCC6F317),
    .INIT_6F(256'h0996DF07CB91DD06B3ADEA06FC0203430EAE4712568C1D018BD90AF8ECDC003D),
    .INIT_70(256'hF15DCE0EC79AE027F3A6E95C28EB3134BBA1F1F89DB1F8F9B2B0F302FBED1762),
    .INIT_71(256'hFFCCB7FAF8D50A1A08EEE33F5AF5E5F50BD889F4E4B2EF05F3B0F27331E1F340),
    .INIT_72(256'hCECBF100FBEBED0931E3C34E64EAC1F700BEAC07F6BBED1B00E4155337FE0913),
    .INIT_73(256'hA8D0FD01FD03FA0D1307F70CD294FAF09FCB2BF4CF01FB04FA0D27340AD1F0F9),
    .INIT_74(256'hA705D68F043C16F7EC3F61DFA714259DA6F806DFAD0D2700FF106364E8B602E7),
    .INIT_75(256'h625DEFD81335E3D895D2C38C0B43B35A1540D38B2C65F5DC277F0DABD720D97A),
    .INIT_76(256'h02EBD41837DFBD319F0D6BC039BC6F0A43DAAE21550EDC2FA27CD5AC00E57297),
    .INIT_77(256'hFEF9E6274CE1EC5A58D6BF00F08E7F13F1BF073729FD01146C1AA7F810BAABF0),
    .INIT_78(256'hE9D9111203F83A72BE96E307CE8FED20DFCD0E3E33FC195D2ABEC507D58FC401),
    .INIT_79(256'h04F82E5715001131AA7E12B96BB31D26FE0108332FF83670A98F02EE8C7D3346),
    .INIT_7A(256'h05F540610EFD15F78296F7CCA2E302FC05F638712BF9201DC3C80DC19AEB01FD),
    .INIT_7B(256'h5A18FD05D1A4DCD3B4ADD104FC03FC162C17403DE3E403E4AAB1F0E9E40100FC),
    .INIT_7C(256'h3DDED4EAE5D6B0AADF0000FE03F9305F360D01EECCC2DDC9A5D80100FE03F834),
    .INIT_7D(256'hFA07BF9EEDE2B6DC03F4E30C532FFA1619D8ABB1DFE193C305F2DDDB312C1E6B),
    .INIT_7E(256'hF2C99DCA0400E6FE512BF82F4403F401FFE2A6BCEE03E4E21410FB3D9142FA04),
    .INIT_7F(256'hEF07AFB4321FF94C8B2FFC1112C480CEEABCA8D405FC01236743002D28E4B9D9),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__18_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__18_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000100)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__18 
       (.I0(\addra[16] ),
        .I1(addra[12]),
        .I2(addra[13]),
        .I3(ena),
        .I4(\addra[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__18_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__18 
       (.I0(\addrb[16] ),
        .I1(addrb[12]),
        .I2(addrb[13]),
        .I3(enb),
        .I4(\addrb[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__18_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized14
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__17_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__17_n_0 ;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h311BDA07F88DDD0DF999BDDCDDCCDFD4DF9899F8999999BB93BBB37FB0373237),
    .INITP_01(256'h733F3013989DDCCCFCCCFFC46EE237313FB81DD98DDCCEEE666E627672333113),
    .INITP_02(256'hDCC4DFD00FCC0DEF42FFC4DF606FBC17B4037703BBE9BFA89BDC4FEE46EE8677),
    .INITP_03(256'h26EE26EE66666666FE46E666EFCCCEC44CCE4DEF459BCCDFD49DDC4DDC4CFCC4),
    .INITP_04(256'h517FF0BBB89FFA0FFA81BFE03EE80DDC8DFE80DDC4EEE86EEE6EEB2777666FA2),
    .INITP_05(256'hDD89DDC99BB99BBD99BB93BFC03F70377C077B137FA1BFF0777037F4177703FF),
    .INITP_06(256'h7F2667713F991B373333113BB89998CACCC9D9E89DCCCDDCC9DDC8D8CCCDCC8D),
    .INITP_07(256'hFA27FF27F7703FBC377713BB99BBB99B9999FE4D99E4CDF66ECDCCEC666E6666),
    .INITP_08(256'hA037FD00BFE085FF1017FC013FE80BFF00FFE00DFD05FFC05FF80FEE06EEE46F),
    .INITP_09(256'hF001FFFF800FFFE8007FFC8067FFC007FF0000F7F4037FE203BFF2037FA2337E),
    .INITP_0A(256'h9FFFFFE6EFFFFF7FFFFFFFFFFE6FFFE77FFF3FFFDFFF811FFFF00BFFFF8007FF),
    .INITP_0B(256'h39FFFC07FE61BEFFFFE01F9F0FFF18FFBCFFFC03FFEE0FFFD87FFE03FFC01FF3),
    .INITP_0C(256'hF88FFFAFF39CFFC00FE6F00FFFFC23FFFE67798C6FFE781FF7FFF03FDC7FFFFF),
    .INITP_0D(256'hDFFFFFCFFFFFAFFE7DC7BE5FC1FF33FFFFE39FEF7FCF703F87FFDBFFFFFDFEFB),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE70FFFFFFFCFBFFFFFFEE3),
    .INITP_0F(256'hFFFFF9FF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hED03C9C94F4908438A28B3D405D081C30402B7CF4B1FFB58AF45D9E602D98CB1),
    .INIT_01(256'hE75844C8105EE7B0EC068C6CE202BA96E303D5D74E37EBF81EFBA4C8F7DCA1B6),
    .INIT_02(256'hF6709DE7CF3A2599BD271497B22909E5E26D75CDE5692498E514CC88CA06FDEB),
    .INIT_03(256'hA9EF4EE0B0FBFDA5BE2F0FC2D61A472CF54362E1BD1113A9B9FEFDC4B72E5B27),
    .INIT_04(256'hBDE302D980C60AD6B3DC1A05EBEF5733ABD805C2A6E9FFEBBBE403FD02FC7E55),
    .INIT_05(256'h9EF4E1A4D52707DED83B53C2D14C1F8CAF17EFA5ADEF00D4B6FA0EF9EDEC6232),
    .INIT_06(256'hF5FBFAD7F5001E0DFE3E6019A8EE14D9AAD70AEBD1E706FC02253C11C9E6039A),
    .INIT_07(256'h0F10D1D200300EDD195115C5F508CEBDCFF302E0F401FF000252450501FB838A),
    .INIT_08(256'h3FD7B0E95B1BFC05541C62CA2F0483B8360CA8CF253322F0102C04BA302975A7),
    .INIT_09(256'h0AEEF95431E6F52B0479D209F59CDF611BE0D0418011E9301CC879CD0A987108),
    .INIT_0A(256'hE61F8B18B0EA05F366BF50F390DA3E17B8DE5D4AF1A5EB17CEA3D90EED89D253),
    .INIT_0B(256'h374BB978E5FEA27FEA21DDB4F8342D000D6A1D9CB5EB09EF97ED44EBC0032AFC),
    .INIT_0C(256'h0C6EAE19FA7C9618FDA5A2015B16CF0C8E1974CF16DD88DD390DD8CC1D4C07EB),
    .INIT_0D(256'h8173FFE48DAD021BE9DF5483F3E95D087272EAFAA092F0FDDDD20A7A16B90472),
    .INIT_0E(256'hA20D02B7B5122009F338ABDDA1F30DCB71D80AD8A5F92308E6E76A57F0F5140D),
    .INIT_0F(256'h02FDF7CA3891DBA22F45C0A7FBF9A8900628E6BF14725303115C0CC40222DD83),
    .INIT_10(256'h39FB287907C7EE03E8ABCA02F0D4EA01FD02064C67EFE7171DDFA9D707DEBCFB),
    .INIT_11(256'hF80507E2D803E9B1BEE502F0CED51E603CFB2359D8B8FDFBC0B2FF00EBA8F262),
    .INIT_12(256'hFE03EAC2E300FFFBE4F2FC04F82953E5D302EEC3D6F7CDCDED02FD04F828732E),
    .INIT_13(256'hDF04EEE302FD01073F581B050601F4E903E9B8D401F6DDE90B382E063242F5E3),
    .INIT_14(256'h06E1D5052129254421F9F701F3D1CAE8FF01F1DCF3FF0838643001FD04E3C1D5),
    .INIT_15(256'h04F747972D03FC05DDBBDDCCE1DBD4F2E2E51C522BFF0410E1D702F7D8BDE6FC),
    .INIT_16(256'h240E2A0FD8E2F7BE9AD20001EADD276836104236D7D500F7B7B4F302E4C3EDFD),
    .INIT_17(256'h85890BCB669E1700BAA12F833BF25B79C1CA04E2A5A9EAE7BCDA03FD02106E85),
    .INIT_18(256'h90AB07FDDDC73E2F02F46C7ED5E71F0B716BDED18EC11B1BCBB167B148F4567C),
    .INIT_19(256'hC3D607F809F16E6FD90538C841AE08C47EC007FAF5DD505F0FFE304D8E9E05EC),
    .INIT_1A(256'h03FE34870BED1CC9B00A0575AC08EFBBB8F02F4FF9D76B6AB0C805D78FB1F7EF),
    .INIT_1B(256'h44E14435B2C4180FC3C81809ECF1FC4C47F14C89CBAB0BFDB780D808BAC6FAEF),
    .INIT_1C(256'hFCA6FA1DA9A9FAD5B4DF231BD3F43C19EEF40100CD86C80AC2D205151BDA038B),
    .INIT_1D(256'hFDBEBDFEFEC5CC502FF534300CC4C718F7BAE40101BDC5603EB3C7866B6CB258),
    .INIT_1E(256'h0FFCE56360A5B83817AFC82A1395B53328C9CA4265C1A7957D9FB2220DB0C708),
    .INIT_1F(256'hA83ADC4E44A8A205F8CDD908FD90B4273909E1512B83B622F1A9D307FDC0D20A),
    .INIT_20(256'h05C5A5E303AA61CA2AD6AC1445F0E62910D4E705E8B6C6FFFB04FC021F17FA31),
    .INIT_21(256'hC0BFF500FFEEE32216B0FD50D6AAEC00DCB1E404FC01B4D7672DF87867C28ADB),
    .INIT_22(256'hA1E3062514E2433EE4D1F102E4AEDF05C9B3E903FD010167319CDD26D39CE701),
    .INIT_23(256'hFD0686359DE700E09BC0F7D6B3CAF501FF02383707023F1ABDD310D18EE102CC),
    .INIT_24(256'h0103F9C3C2DEF303E0DBF502FF0348480C002B0CACE303C296E204E4DEF7230B),
    .INIT_25(256'hB6FEF5B6E20AF805FA095748072406C6EE03F0D6CAF5FFE1C4D0F6180505503B),
    .INIT_26(256'hE60BF3D8DA0A3A2FFC0D4EFAC8FFF5B4A8F6F9C0D801FC0300476E1AE0FFF5A5),
    .INIT_27(256'h06FA05FD2E6318DE01F2A6B0D2F0DBBCF4FFE3FB0031721EF821F7ADCF04D9BB),
    .INIT_28(256'h8C7711FD20F5A1BD01EFB0E60BEDB0EB3D382630582FEEC6F9F59DADF9F8D2F1),
    .INIT_29(256'h4AF387E406B97FCE08ECB0D6221B08097C36B2CD02ED88A7FCF2A7D400FD000C),
    .INIT_2A(256'h00EDA89BE0ECAABDFD00FE0949872CF3F907E09FD6F3B5B5FFF2CBC91F470506),
    .INIT_2B(256'h05D87EBBFEFF00073E74360E1CF6C4C401E688A6FD00F5D62A8C43FF1749DFAD),
    .INIT_2C(256'hE7FF0009578632186025DDECFDC9BFFE00F2BAB7216A2B207E57F3D806E0A2CA),
    .INIT_2D(256'hCD438FD0E06D0598C007DDB5E702F1C0A94280F62F61E4D1FF00EFA3B4EFC4C8),
    .INIT_2E(256'h8B4E7B6B6F02E1768C03FDEEC3529DC8DD8F48A2DB21DD698803E9A99CF521ED),
    .INIT_2F(256'h4DD310F6C9D001F1BC20D591D528BBD270F727BF72DF24C283ED6446B56CB7BC),
    .INIT_30(256'hD1AF3136EBCD577ED6CC2A32929C09D7A7D2140E9E8E4151FB3AF299BEF634AC),
    .INIT_31(256'hC3E36D41DF1839EC889508E3A5C105E2B9ED3A47CE049A3CAFF839C3A9211A05),
    .INIT_32(256'hEE0110F5A9B802EE849E0205C3BD413CCDF7650990FD4BBD79BF06D078CA1B1B),
    .INIT_33(256'hA9A11A1DAEAD010B94985B69D31877FEA5C517DFB8323EAE98D8FF03F8386524),
    .INIT_34(256'hD403FFE1D43C5316FE1521CBD20F13D0C70409E4CB041D0DD8F95A05EE03FA0B),
    .INIT_35(256'h7962C3CA636794AF202099782E469897174A32E414723BF91B1BD29BE81DD5A9),
    .INIT_36(256'h2F2FB3A5F0E6EBF3F10003BCBC4233F170A828B7F82EB1BC5A598DA60AFBCCB5),
    .INIT_37(256'h319789EFFCEDACF5411AF68DACAFB93B35582A163FD795D503FEEDE6506701ED),
    .INIT_38(256'h01AAC85F60C9E9AE6077A532F44D9838217D965025CED46063CFD4464079A146),
    .INIT_39(256'h4AA3E547E799FE1E8B883432BDDC05FDD9D991A8D5C6644489A0F700A879114E),
    .INIT_3A(256'h8C0C2DAD9D1D1092A0FFFB0102FB7D50BEE45F4194C709DBB8C8FAFD01E2E86C),
    .INIT_3B(256'hC82A0D968E2848E5AD3D8AFED4472AA8B0F2FFB899EAFF0000FF885A95EC63D6),
    .INIT_3C(256'hE6391AD9F17039B8E71ABC8FE700E8C0E605FADEE68A5BB0D6492186A719ED82),
    .INIT_3D(256'h7935B4E91BEDA1D400FDD4E806FAD5CF518023FB4C4AC891E1019566D815CB9D),
    .INIT_3E(256'hFDE094DC03AC8AE104FCE1F378610C0366108AE3FFCC98BFF400CECFF9FE0200),
    .INIT_3F(256'hF8AFBFFFFB03FF3DAE38D766229192E9FD727CEFFBB773DE571EFC518FDA96F1),
    .INIT_40(256'h0B07579D2CC6FE12F0A3D70DEE7CCB0BB186E06B1DFB0A95306FD804D387B0FB),
    .INIT_41(256'h0CFD01F9A49FEEE7A8B0ECE9D7046C7D270E4F39DBD4F1EABB9EE503B88FE346),
    .INIT_42(256'hB7C1FFEE7AA412FF0B58712C09FB04F5B0C9FDCD88B3CA9DB1F35C691D4B8649),
    .INIT_43(256'h03225C330A345009DAF9FBC7A0BEC0B58F9FF10202338251244D4906E9F704F5),
    .INIT_44(256'h0000FBE1D6D6C26C5FB6FD04FF1A1D2536424009FE00FDD5B4F1FFBB619EF8FF),
    .INIT_45(256'h080602FE020B1430361102FE01F8D2DFFFF6B089C6F90100130A040B162C07FE),
    .INIT_46(256'hFF02F0C2BFC8BBCADEC4DE040E030102FD06080701FE00EDD9E0DBEBEBC7D0F4),
    .INIT_47(256'hFE01FE01053E5C322211F6ED00F7CEB4E2E1817DD3FC03F918360C011E250100),
    .INIT_48(256'h02F6DDB3A4A693CFFF00FE10432EFE134C28D8D6120AADC600F6C6A7E1E0DA00),
    .INIT_49(256'h6C571F092118F6F3FE02EBB096A692BADCC5C6D8050DFC184D3507031924F0E4),
    .INIT_4A(256'hD3D4E5FF00FD1858581F082B2001F6EF00F7C196B3C8D1D5D4E4F0103124F925),
    .INIT_4B(256'hAC949AB19C97BCDF00020C1B304E54442B27242818040305F3B57EB007D58EA7),
    .INIT_4C(256'h16FBFF0701EFEDDBC2A6939F9A9ABACBDCFB060B0F1D3A6373462E4021DFB7B3),
    .INIT_4D(256'h4B4562763615121F10ECF3DFC4B4A8AB9F94B2CFCAE10802FA0A111111152732),
    .INIT_4E(256'hFE050C13263D4B453A3A3618F7EDF1D2968496876A80A3AFBAE0FC00FF0D2E40),
    .INIT_4F(256'hA9BDDFFD030F313F45535D44201005FEF6F8EDD1C8CDD9D5C0B4C7CDBDC5E1FA),
    .INIT_50(256'hE0EFF0ECE5F1F9F9FC0F1D15141717152525090303FCF2D4BFBCB199868B9AA4),
    .INIT_51(256'hD7E4E7E7E9ECF4FAF8F8F9FC02090A0803030A02FB01FBF0F3F1F3DDC4D8D4C8),
    .INIT_52(256'hF6FC01FBF8FDFFFBF8F8F7F2F5FBF9FAF9020A04000605FF000200F3EEF7EDD5),
    .INIT_53(256'h00F7F0F4F4F0ECF2F8F7F7FDFEF9F6F90206FDF9FEFDFBFDFDF6F3E9E9F6F6F7),
    .INIT_54(256'hF7EBE9EFFDFDFA0406FEF902FCF2F0F4F0D7DEF4F7F1F0F8F7F4F80302F9F8FB),
    .INIT_55(256'hF7F7FAFDF4EFF5FDFBE1E7F8F3F0ECF8FDF4F5F8F7F8F7FDFFFAFAFEF8EFF0F6),
    .INIT_56(256'hFEF9FC00FEFAF8F8F6F2F5FAF6F3F5F7F7F7F8F9F9F7F5FD00FBF9F9F6F3F6F7),
    .INIT_57(256'hFA0104FBEEEFF5F6F6EEF5FBFCFBF9FAF9F9FCFBEEEFF6F6EFEBF50301FAFE01),
    .INIT_58(256'hC7DEFEF2EDEDF3F2EDF701020202020202020BF2D3E3F3F3EDEBF4FF0404FEFB),
    .INIT_59(256'hD0FB15FDF502060800F8F7F7FCFEF1D8E2F3F4F5F4F5FD01000101010903F3E5),
    .INIT_5A(256'hF2FDFAECF0F7FEF7F1FAFF02FDFBFC000B131402F3F1F1F1EBE8E1CDD1EAE6D2),
    .INIT_5B(256'hF004F9F1F0F10005F7F4FCFFFDE7C7C3E6F3EFE5E0F40204070808070807F6EF),
    .INIT_5C(256'h06070704DFD4F2FFFFEFDAD8F6E6C7E8041B07E1F6090B05FAF7F8F7F8F6DAD1),
    .INIT_5D(256'hD5EDF1DBBFBEE3F4F2ECF41A2F160407242B04EBD8DBD5D3FF272BF7D5EAF3F9),
    .INIT_5E(256'hB3EFEECAC2C8EC0404FEFD0B110703F7FD0DF8F1EDECFF04FCF9FAF9F4EEEBDE),
    .INIT_5F(256'h0511F4D8EB0301F8DDD6F6F5F1F1E3F1F4F4EFB89BEE2207000D0D1019FFF2CC),
    .INIT_60(256'hF1EE01F5F4FC0D100EFFEEEBEEF6F4F5FCFDF8F7F7F7F7F6ECE1DFE0DFDFCBD2),
    .INIT_61(256'hFFF9F8F902FFECECF8F9F3BA94B7D2EAEDD5DBFC0E090F091006FDD8B0D8BDCD),
    .INIT_62(256'h16FCFF07FEFEFBF3DED9F8FCFAEAD70425FDDAC5CF020A080B1B25F2DDF6FBFF),
    .INIT_63(256'hE1D9EEEAEFE5EE0D07E4E00706FBCDF41CDFC7D3F50F0AC7EC31361AD0E50610),
    .INIT_64(256'hEBD2BADBF1E5E4C9D2F9FEFDFFFC0718190FF00A2A07FFF5ECF6F5F5F0F2F0F0),
    .INIT_65(256'h0509020EE0BDDCC5D8F5FB1205FFFE03F7F1FAFE050505050A234027E2B6CBED),
    .INIT_66(256'hEBDAD3FC342FE6A3D1181CF8CFEB2A18DFC2D8F6EDB66B9FE1F3101B34604906),
    .INIT_67(256'hF4EFEFDBE80B1E15FE000306F8F3F1F4DEB7BBDDF9F6F3E0E500F902DFB8DAF2),
    .INIT_68(256'hF8F4EDEFECF1D6C6F1FDFFFAF4FA02F5E0EDF3F9D8BCEB02F6CBCEFEFF01D5CE),
    .INIT_69(256'hDD040E1000EDEFE9DEE4C5B3D8E1EDFBF9FE03FCF703FCF1F3F1F7F7F1F0F4F8),
    .INIT_6A(256'h06F7DCC2D7F3F2D9CCF01B0EE9BFA2E302F0F5F1152508030803FFFAF3F6E0C3),
    .INIT_6B(256'hFAFCFAF6F4F6FCF8F6F8FA020D04FCFDFB0203F5F7FAFAF9F9F8FF0BFEECCBDF),
    .INIT_6C(256'hDDDD0214313E14FBFCFDF4F0D5BEDAF40604FBFF0A0AFAE0DCF0F2F3F5F1F4FA),
    .INIT_6D(256'h03F4DAE6F7FE0FDDBDEA083E2CCED7F0F501ECD9EBFBF70301F704FDF3F4F1F3),
    .INIT_6E(256'hF3FDFDF8F2FAFEFEFEF3EAE9E8E5E6D7EA04FE08F8E6EAC9C6EBF7FFFDF8FF03),
    .INIT_6F(256'hF2F802FCF8EEF2FBFAFDF5F0F5F8F7F7F6F4F5FCFBFCF9F3FBFE060AF7EAEAEB),
    .INIT_70(256'hEDE9EEF5F7F6F6F3F6FAFCF7F0EFEDF5FDFDFEF2F1F5FC05FCF8F9000100F8F2),
    .INIT_71(256'hF4F6F3F4F3F9FDF6F3EFF5FAF9FDFBFAF9F90000FAFAF9F9FF01FFF7F2F6F5F5),
    .INIT_72(256'hF3F2EFECF5FBFCF5F1F5F60005FBFAFB02040405FBF5F3F3F1F4F8F6F7F2F0F1),
    .INIT_73(256'hF7F8F8F8F7F7F7F7F7F7F6F3F1F3F7F8F8F8F8F8F8F8F8F8F7F7F6F2F5F3F1F3),
    .INIT_74(256'hF9F8F8F8FAF9F7F8F8F9F8F9F9F9FAF9F8F8F8F8F8F8F8F8F8F9FAF9FCFAF9F9),
    .INIT_75(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9FAFCFAFDFBF9FBF9FDFD),
    .INIT_76(256'hF7F7F7F7F7F7F7F7F7F6F7F8F8F8F8F8F8F8F7F7F7F6F7F8F8F8F8F8F8F8F8F8),
    .INIT_77(256'hF8F7F8F8F8F8F8F8F8F8F8F7F7F7F8F8F8F7F7F7F6F6F7F8F7F8F7F8F7F6F7F7),
    .INIT_78(256'hF4F6F7F7F7F6F7F8F8F8F8F8F8F8F8F8F9FAFBF9F8F8F8F9F8F7F8F7F8F7F8F7),
    .INIT_79(256'hF8F8F8F9F9F8F8F8F8F9FAF9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F6F5),
    .INIT_7A(256'hF1F9FAF8FBFEFAF8F9F8F8F8F8F8F8F9F9F8F8F8F8F8F8F8F8F9F9F9F8F8F8F8),
    .INIT_7B(256'hFAFBF8F6F8F9F8F8F8F8F9F9F9F9F9F9FAF6F3F2F4F2F2F3F2F9FBFBFEFDFDF4),
    .INIT_7C(256'hF9F8F8F9FAF9F9F9FAFAF8F6FAFDFBFBFDFDFAF8F9F8F8F8F9F9F9F9F9F9F9F9),
    .INIT_7D(256'hF8F8F8F9F9F9F8F9FAFBFCFAF8F6F8FBF9FCFAFAF9F8F9F7FAFFFEF9F8F5F4F8),
    .INIT_7E(256'h05121C15FFDFC8E4F6F8FDFBFBF6F1F2F9FAFAFAFAFBF7F3F8FEFAF8F8FDFFF9),
    .INIT_7F(256'hF9F1F0F5FDFDF9F9F9F9F9F9FAFAFAF4F1F0F3F7FA0101FEF9F5F3F9F7EAECF5),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__17_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__17_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00001000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__17 
       (.I0(\addra[16] ),
        .I1(addra[13]),
        .I2(addra[12]),
        .I3(ena),
        .I4(\addra[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__17_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__17 
       (.I0(\addrb[16] ),
        .I1(addrb[13]),
        .I2(addrb[12]),
        .I3(enb),
        .I4(\addrb[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__17_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized15
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__16_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__16_n_0 ;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h3C2C787C0F9F1E1C78ED11E1E3C7FC7C79E3B487FF0F0F1C78F9E1E71E1E3FFF),
    .INITP_01(256'h7E0783079F07C783FE1FBCC3FE0FF8F5F1F07E61B4F8FF878F9D91BC379F1C1F),
    .INITP_02(256'h0F8F8003F8783C3A6F81C787C371300F9F836788B44030FF0F678DBA60F8FF1C),
    .INITP_03(256'hEFB7A23E00610C61FFFB9FF39D77179798136F99C00060BA0383F33670C61F1E),
    .INITP_04(256'h19E38678833E60CF9833C419F20C7D0FEFA0E0F41079FFF3CE3FBDBFC7A7ECE7),
    .INITP_05(256'hF79BFEF7FF9D9F2F6FFBD3FDE8FEF63F393F99FF99FFB9FDBDFEDEFFCF38278C),
    .INITP_06(256'hE3E3C1F1F0F0C83C7E1F0FCF0E6CF7E01FFE007EC1C3F0F6447B91BCE47FBCFF),
    .INITP_07(256'h3C7C10EE7C10F40C3F8C1B1E0F8F07F083FC70787078387C3C361E0F070F8783),
    .INITP_08(256'h87C1C761E1F0F07C0FF0F0F0F0483C1E1F83E1E0F8F8607CF007F8787BF83F30),
    .INITP_09(256'h3FF0706C1C3E1F0FE0FFF87E0F8783C7E007E3C1F9C1FD1C198787C237C781EF),
    .INITP_0A(256'h83C1E1F8FC1F1F07C363FF201F03E1D3E7C09F83C3CFC360EFF0E0C7E1F07EF8),
    .INITP_0B(256'h7CF8F86FF0F87E3C3E03C1C3E1E0FEE07F0783DB83C1CFC1E1FFC0F0E3F23F0E),
    .INITP_0C(256'hE27F47F23FC3E0FC1FC707C77207FE3E03DF3E08FE0F07C787C07FC3C391E1F0),
    .INITP_0D(256'h0F0FCF07C0F703E23F03DF3F19FC1F8FF07E7C3E23F03F1BE0FDF0F0FFE0FEE7),
    .INITP_0E(256'hC3DC9F9F0A0FEE07FC783FBE3F18FC160FE0F878783F387F07C3E1C1E1CF81FF),
    .INITP_0F(256'h4CBA62D91748F27CDB3C1F878507F3E3C1FE0F07D2C3F1E1F9BE0F8787877B06),
    .INIT_00(256'h004D5DF9B08C8E6CFFC5638E073FA82F6621FAEEF5FAF3F4F7FDFFFCF4F4F1F8),
    .INIT_01(256'h08F7F3F2F7051001DAB3B2CBE91E26FDD3B1CB184A3709E1D3E1FE1D27DA99C0),
    .INIT_02(256'hF2FFFFFDDFABA4D31A546025DB885CAE134B5117D4BCCFEC031210FCE7F0030D),
    .INIT_03(256'h24C3A6B7F94831E5856BCA366F32B1404D361130EBEEB672363D966018F2DDDC),
    .INIT_04(256'hABC3F9315A23EFD3B9EF111C0FF8EFEFFBFAF7E0DAF10D2B26FEC9ACC3F53057),
    .INIT_05(256'h598D0E248E3AA978FB6279590410B1E4912FC78AC9EA12CC9C759200636E34D8),
    .INIT_06(256'h142C2809FED3C3E5F90C07E1C3AAB1F11B2011DABCE1F330450C0FC1A9F8166E),
    .INIT_07(256'h344CFEA280B758EFDE436ECB06B43B9046AC61A2FC39724F1BFBBBA2B9DD020D),
    .INIT_08(256'h442FE4FF65EE7B8ADA190DF5A07B92D44E6A2DC16EAD1665948C46E15D2272D1),
    .INIT_09(256'hF5715320CE244DBEDC2F31C7A4C5621D40F6324C9760D9C504C6C2D3D9E9243B),
    .INIT_0A(256'h1CEB1BBA782BCD0FE4CEBCABF4023241E7CC7CA6F7F6F1D0C147B8782DEACFBD),
    .INIT_0B(256'h965F4BCF583507F9E6DDE2F33A9F5F0E15D1611B2B99E30010E7FB5A9F9859B8),
    .INIT_0C(256'h4E4E3B3DA2BEF0405767491CF3B4B8DCCFD2F3F8EB115323EDF4C3DB00FA26F6),
    .INIT_0D(256'hC8E4CAA4BDAFA80B779B31FFD237A9DCEFA0E77FD497225FD4F6727E7462F89A),
    .INIT_0E(256'hE00E06EFAB9DB7E052BEB0731BBCA574A2F70F40048D779CD9306A837F1FD5CE),
    .INIT_0F(256'h09F1AA7B8FBAED030707030702D2C7EAF1041E1B1000EEF5011025270DDDAA99),
    .INIT_10(256'hAC64F15857352118F5C5CDF7FD0C3C14E7DCE5F4B88FB1FA4E4502DCCDF51C18),
    .INIT_11(256'h2F9BAB5DBA3232B6772865D227C95960D21340077712D102E6DB68C94F0D0A69),
    .INIT_12(256'h8AF3BCB2CBDDC848CC842B9CA4A4946B4B10F5DE004B4819D86F474C3A4E70B0),
    .INIT_13(256'hF60A19FE9635297BD72E69503605ABDE76053CC2178D2740B152D4738DAC1740),
    .INIT_14(256'hCEF014406B19AA35F54AACE8071000FD0103FBF30405255D5D493608E4C2B3CF),
    .INIT_15(256'h9313257DE74F045BCE0D494023260EEFE3E50A250FDEA59DBF0F4D593DF8D1C9),
    .INIT_16(256'h2400173BAC1469784ADA3B33C666E6FCB53F87304196288FAD74EA4F1BD60D0A),
    .INIT_17(256'h53797147E97A4C74AF023D18B0391B6DED426C6F5E655E2E192D39585924D88D),
    .INIT_18(256'h08AD85E382E2E67DE231B99BDF72FB92D7CB59B15E447EFB485536F1C4BADB15),
    .INIT_19(256'h45DB24F4C944C089DC0B50857D57F6BD95A1E0FD191BA31ED3BE21B75F21328D),
    .INIT_1A(256'h86ED2D9CC2A07E5E3A2B16030B27717D38FF9BF3773A2A9D6E9181D1B0D9A4AE),
    .INIT_1B(256'hA2BF9209A027363D7E3D25CBEACB19BBC5BDBFD7F7885D60B40F0BCD59E8DD04),
    .INIT_1C(256'h9B14C07284014F84FA41B9DF0DDB721AA36DBE5D444DD6F6BDE606127F3DD3EC),
    .INIT_1D(256'hB3B1D29A7F7F60738B72A9C0F6C32A4A55C11BB320153819588FADF72B11D993),
    .INIT_1E(256'h77765820083D66611FD7CC053B662954F3AD72A32FD027A4D6033DF9BC822DF8),
    .INIT_1F(256'h5EA5EE05F7BC611E01FE38A45A70F4EA6B6E6788479F73419A62AA313172D339),
    .INIT_20(256'h7DDB2F52AC46B88C096C75BFB80A7DBFAB6C0AC5039237EF638B7AFE5DCD5F3D),
    .INIT_21(256'h7D28992AE3893BF8E2F348A4B59D707EDA631DCDD841679B1CE0092C43501F36),
    .INIT_22(256'h0F58E4B4515A3B57AA02737B36AA13BA796142544C393F2D5A8CA2DF279B267D),
    .INIT_23(256'h5F73CC9738A4C6C258A7CACE47134ED069D4F42E535875B232989F42510E3E14),
    .INIT_24(256'h5F5C6016B4526D9A231E3DAE29A82852CB529FC8B43B81A9D16F57B6333A3C41),
    .INIT_25(256'h44C25DC52292330A03622FDD6DF4708D6632FA9015A4F17B4B5F972AC44EFF3D),
    .INIT_26(256'h9CF7A96458A5129A26D53D787F5B37D247B91E913911397F24DB66FA76ACA0AA),
    .INIT_27(256'h31217601B458EB79A38249D37645FBA97AF47A465804AC52ED4C777017C47D17),
    .INIT_28(256'h025A10CB72D3A5157D069B4F16FB9C779ED1740ABA3993A255EB8240CD5DDB79),
    .INIT_29(256'h703E2DBFB61955A6592641A7A95F1EF915BB7828A48D2161DF87292C422C1B0D),
    .INIT_2A(256'hC340CB324AE71A741E10697F545D638AECA0498244A40D8F645A759B6E19EA16),
    .INIT_2B(256'h0EC39EC88AEB286CB9BD30A6C0965D66CA59F8573DBE268E0D056CADC49C6B7F),
    .INIT_2C(256'hBCC6407FBCDB5E7313A8D0C99275924125A9E08CC4E225987DD93FAB9F4D1563),
    .INIT_2D(256'h81F560FA0954C2D79A4D1C5CE2793FAF90224E88FDC60C6ECDD08C5B5EC04C15),
    .INIT_2E(256'h2E8CBDF1EB8A3D3B8915EBD1F84B8ED335E2FB7BD2C98B36E2F386511899B041),
    .INIT_2F(256'h381B54DD9A3EC4C345A50C7C07F7427F8E9A7F42255FDF7D1A9E99199DE34208),
    .INIT_30(256'h47C7A4D6137CDBAEEC548EB1BD8C6076D54D0D7E8D4393017716053B678B8867),
    .INIT_31(256'h1F45A582F398086943D9B4C4DE2B10C988BD254E84519A37B003F2B08EA00393),
    .INIT_32(256'h49B44CD8FFBC33DAA1B411666F3CDD5A0E2F90E226524814E4B29EDD6D052ED5),
    .INIT_33(256'h892D01EFAD78A4F6F2DAD7933148C00F4590A68B888F550B07F8C1C8D28927FC),
    .INIT_34(256'h05346F71FDA55DFDD634F0822652C844EBA991CC0BFEAB3C0035A8024D90A9AB),
    .INIT_35(256'h2DE04B11207EE6288D8F35FABF92A4D11B8CDA8BF180455295FA392EFFE0E1EA),
    .INIT_36(256'h9D7CACD61F9FAD5ADD6880E5247EA32F8F15D7D151037EE3EC85FCBFD1F0253B),
    .INIT_37(256'hA5D1FC478280FC6B2D46B70D2B2EF9A66DBD8EE6F1D362D26C6E99D4022134FE),
    .INIT_38(256'h3860583601AE8CD3226F8437FEDD8E60A91533412CC9641D7918556B7D54E59A),
    .INIT_39(256'h4814BB543C9E53DDEC81E11DC036E8719F7B2BD39777AE1131342902AC4B47BB),
    .INIT_3A(256'h09FBDADF020829492BA31915650C7C827618ADA3DE265F5D1FD295605BB11E5A),
    .INIT_3B(256'hF5053E6E5E19D29FA9A178A2DAEC09312EFDE3F22A4C331F14C38DCBFC100F06),
    .INIT_3C(256'hA1854325C532309FEF2E664AD95C37B92A639B9A2FB28F6E5282D1FB2A290101),
    .INIT_3D(256'h8243E76B2048A2D4EF041F09BECA43B9F3BF26820FF92FB21C3C2FDE939DE249),
    .INIT_3E(256'h1FFBB88578E07091A1A93AEB0E2C4428D26C420BCE4F0080C18D4B0DB8C852A3),
    .INIT_3F(256'h1F07B36998D80B4931D56D252AB31C406C6C1EF6355F7228CEB25CF03DC6F31B),
    .INIT_40(256'h53E4A4A6D301F3D3E0D9A1A7DD0F52857224932955C2E1E72314E4EA02487B4B),
    .INIT_41(256'hF6A36EC2263979BF9D532B151AEAAB8B82591767D92C8F9C49D77577DF3C5D73),
    .INIT_42(256'hBD3C2C90F055731A8E0B057FD3187D7B27F6FC031E271021059064717AD3232A),
    .INIT_43(256'h4A8453F4AFA0A399DB3F7C868659CC440431C645819C50B552499E2D8BA9993F),
    .INIT_44(256'hB75545B11878B9A32D6CD2FCBB53CDE98F01752843C63256594202AB7FACE302),
    .INIT_45(256'h4A14070FF1CDBAE5F6B7A8E200091206D16B55D0331F0C11F3A69CF9618B5204),
    .INIT_46(256'h394CDF3A8DD27EDB4F264BA614454D2AD48872B21B71927E13653B81CAF11D55),
    .INIT_47(256'hD40A3B5852F1753855EF9BDDC984047A66C0377A42DD780EF14FD36DFEF45EB6),
    .INIT_48(256'h1A0CF0F500B8678ACEF20F3B43F18961B0053B79845400D7F1F7F502FFE39993),
    .INIT_49(256'hCACC79DC34D5DD13AA2E5C6843F095A7F765BCB050A405139AD6024A400AFA0B),
    .INIT_4A(256'h3B4D78A9D30707DFBEE52564BBCE93FD7042667084E305FC070F00D4B6F55195),
    .INIT_4B(256'h80D6FF3661490E03204B441207DF783063BDEA23470C9E547BED78E3FDB91E7E),
    .INIT_4C(256'h0A152809D98E5087F238558671F09EA0E60C09325222C8BCE4F4163D23E3803E),
    .INIT_4D(256'h7EA5F94D441D2E18FAF7F8E4C0BDD5EBD1C8F6EDE12E84803AF6C1AAB2C9E906),
    .INIT_4E(256'h8C6011DCAFC10A1B1007E688477CD52A6B7C46EF957DBDEC1D5E7B46F7C59D85),
    .INIT_4F(256'h441ED18CC6F4E2DFF4D9B4FF4B693A0C10FDC5B00643433D2BED59EC2AC13E7E),
    .INIT_50(256'hAA91D8222E4243F4965344A12D94B47D35E0A199C2F7FA03FDDBA0A2F51E3F59),
    .INIT_51(256'hFCC3DB10F3C2C7F4AD7ABEFB224A633DCC5C991F28001310C7C702210DEFE4D9),
    .INIT_52(256'h7DD8352C252DEFADC2EE1827E9CECC8665B5215F8D76E652F008A52064B2AB46),
    .INIT_53(256'hCDF4FA161BEC8D385ECA022575905E29FC0D11BD80AFB083C21128385132E597),
    .INIT_54(256'h663A01B47F777EC00E27436C713EFE876DD2EF023F4D16FBEBF503EE0B24E5A5),
    .INIT_55(256'hE5FC3C764205DDE000FFFF143A1DD6E5F8CBA8D2E3AA97B70719F72043200443),
    .INIT_56(256'hE9C5744B3A922D769E9A6CF3918AB0EF241B06EE81465CA82591AF7206731770),
    .INIT_57(256'h391192B58E38A02F42B84446162B00712A81E84FC0E191FB806BADC0D63D6D25),
    .INIT_58(256'hDFB6D9253B24FAE6F2EDE6FD1100FD11150ADFC0CAE3DDE0396D6848E8821DD0),
    .INIT_59(256'h889CED41695E2CE29B7A87D0E6BDBFE7F2E01166775B470DBA7E7DCE01040C05),
    .INIT_5A(256'hC717303E3F14AD3F35920A33487835D3CEF7150CDDCABE7C68BC184E766620C4),
    .INIT_5B(256'h0AC78A789EC0C3F52B1F1A230BD8AEA5E42F37373609B092B6EE10F7F904E2A9),
    .INIT_5C(256'h8987F0507A6D32DC792D7E1D6E827834C05B5FA7D2E9F30BF8C6D517444D4C38),
    .INIT_5D(256'h3D03983E49BBF300435D2A0A1200C29BB1E22A492B1702C7B2E3344F2D0AE0C6),
    .INIT_5E(256'hE4BCB4FA304C5544ED865F85EE374B4017D68276B8E9F8192A14F2CDE7F80D3E),
    .INIT_5F(256'h04FDF4EBE9FC1712C8A6DBEAE10233079D6B87D3FD2E655209ECFD05F6C2B2D0),
    .INIT_60(256'h5ACF1F3A4E44FCCCF20E06F908210EAB7FB3EF2B5D6C10803162B8F32F5D5E26),
    .INIT_61(256'hE10E46581DAA4A43B0FE14667B2E000809FFF6EFF9F4BEAADAFD133D5B077E3A),
    .INIT_62(256'hF6DCE5F9C28ECF010B3041018B3C5AD32954807925D5D0EAF6F8031C0DC87792),
    .INIT_63(256'h4457361B1000E7CBC9F30CFEF7F8EBF10601F19E4D63C10C327B701DFC040D08),
    .INIT_64(256'h08C487AB0400E3104237191B13F9BBB1E7FDE6CEEAF6ED173C1AE7974C70C205),
    .INIT_65(256'hD7B75FE08960739FCEF82844008D7BC20873D3C264E77F93DBF00C3011DBCFF5),
    .INIT_66(256'h231BF4DCDADCA282B4F0307DB190ED410E52D11159996F17E8D1956266AB2AB3),
    .INIT_67(256'hEFEDE828490DFB1111E2B2C3EEF3E5F002FA084041F589405CBADBFC5C44FD07),
    .INIT_68(256'hDECAE8E0B46A91EBDAB6F5434A83A66BF58174ACE3DDF112F2D3F4170DE19AB0),
    .INIT_69(256'h6E8BE5063A654006FBFCEBE1E1EF03F09399E2F54CAF9838B355A2F3084C7A49),
    .INIT_6A(256'h220CF9081D03CD9C9ED6BDB60B6986808E4BBE4D4598DFE8276939FBFE10DC9B),
    .INIT_6B(256'hA58FA1F847456369019C7E8FBFF8EE0835EAA2B7DAEF55AE8124B35E88D8EB05),
    .INIT_6C(256'h1F7A45FBFE0B0CE5C5B6CAE0C3D10D2A44704FEE85484B9EF1237C59F2DBE1D0),
    .INIT_6D(256'h1512DB9BB5E0DBE2236037161704CD94B7FB01ECF9FFEFE3174FFB9E748FDEE6),
    .INIT_6E(256'hC1EB39A080240F07E0BB819A0AF9C5FA222D698B6D006261B9DDE50F3401EA02),
    .INIT_6F(256'h19647F15A4364EDF0B4FAB8AF8BFD9E2E7ED060BD6526DED0C7BE5C54187104C),
    .INIT_70(256'h6054E45A201F35E9A3CE0705E7838CD7D91E6142406340D48580BDE6A4B4F9FC),
    .INIT_71(256'h476E411526FFA76F6FCC44657062F6A68579BF0A00071EF297AD051869B06DD7),
    .INIT_72(256'h569637349F08377A8426CEC1EDF8E7E81322D1B7FC28113F64F78B595DB7E6FA),
    .INIT_73(256'h8EA07819B08DBBD3C8A3B5000D17697EF8A5DBF1EF07252E11B2658ABC139DD5),
    .INIT_74(256'h9764E76542A4E5F93D5E1CDADE0E1F0BEBC5B1888AD12671B7A50E45D60CAA4A),
    .INIT_75(256'hCAC1CAF9FAFB214A26C76172D501419EAD2FC4BDC7BAAFC9F823F39A9FC1E74B),
    .INIT_76(256'h5DE0C92370CC420A43A0DA94D0719FF0FBC6E610F2B9D3125091AD8F23A0567D),
    .INIT_77(256'h45EC31395736E8B5BCF80AB589F84309F33E2DC0A7E0F8F6FA1326D9756CACF3),
    .INIT_78(256'hB41A859D56F54656D108476B1DBEADC218FDA28EF506A5C30C4885BD7BEF45D9),
    .INIT_79(256'h046ACBBBE23B41FEFC1FEF730521C676C2F7D4207138589AEB11466F27A36B6E),
    .INIT_7A(256'h5CC6B03DC20659D62EF380F0FF48833C58B8E3DB0F6D36A27A9FCC34ADCA7290),
    .INIT_7B(256'h59BE48928F6310BF8A7E76888075F1B3FCC9A02962031E73027698B27BAD0111),
    .INIT_7C(256'h8E18938B0953E43E0E73ADD34DA86D637DC2E3FF5F64F4997698E3449152AF49),
    .INIT_7D(256'h145C91C343D112CC4A52FB8150AB367FBAE986E6712B1F5DE81A63BF47995253),
    .INIT_7E(256'hF289CAC375318B11264DE5E35E209B51B7330A95248D12FD36B2751B066D0C84),
    .INIT_7F(256'hDA3AF45AC13EABA961463BE0C3B27EC8BA2FEAA3B10C0EB629DC6F37ADF00661),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__16_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__16_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00001000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__16 
       (.I0(\addra[16] ),
        .I1(addra[12]),
        .I2(addra[13]),
        .I3(ena),
        .I4(\addra[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__16_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__16 
       (.I0(\addrb[16] ),
        .I1(addrb[12]),
        .I2(addrb[13]),
        .I3(enb),
        .I4(\addrb[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__16_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized16
   (\doutb[13] ,
    DOPBDOP,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]DOPBDOP;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__15_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__15_n_0 ;
  wire [0:0]DOPBDOP;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h1E7C278609F9073D9F6F8DB7449744D7EDF27BEEF6D9FB47320F7037E0FEEF36),
    .INITP_01(256'hFF803FF03FFFFF01FFE07F80FFFC39C07BF000FFF0001FFC005C7C30E1C0C7E3),
    .INITP_02(256'h1CF1C03CF01FFE00FFE01FF80FFC3F3FE06FE61FFFF9BFFE83FFC7FF8787FFC3),
    .INITP_03(256'hFE807FF003F8433FF803FCF0FFFC073FE187FFFFDF7CA0FFF1C7FE1FFE1CFFC4),
    .INITP_04(256'hF9FF80FFFF9FFFFFFFF07FF801FF003FF803FFC01FF87FFF15E70EFFC30CFF03),
    .INITP_05(256'h691CCF3F1E7079FFC61CFBC3C7FD7FFFFFFC3FFF07FFFBFFFFFFD1FF80FFE7FF),
    .INITP_06(256'hCF07091588870FCF922603E1C04676DF86198C3F1E7FF870FBCED2BFFE1879F7),
    .INITP_07(256'hC792B4E28F9C3CFC3877FF838C7C74FA3C3CF0E3E7FDFE1836186FCFDF0F0707),
    .INITP_08(256'hDB57E3E1190FDD263973F9FDDC3FB3787F871CE83C0FF1E1C1F8D6AF61DC225B),
    .INITP_09(256'hF0060F9C0BD3F21876B40849EF44012C6431C3437D77FC7086476D1FE7BBC7FF),
    .INITP_0A(256'h1E3F1C0F9F0303E7E0C1F1F8E0787C103C3E0C3F1F1E3BC7C207000040406830),
    .INITP_0B(256'hBBE4339C82325DC220E5316D11CD11ED2DDA11EDE1E1080EFFF87BB26030F060),
    .INITP_0C(256'h7FC07F81BF03FF00FC31F983E1C1C3C3CFFF9E003C78787BFBC1E383E3C63FDC),
    .INITP_0D(256'h7F39FED9FFCC9FDECFCE7FE67FE767FB967DD1B6EFB64FFC1FFC1FF83FF23FE0),
    .INITP_0E(256'hF323F3B7FBB3F33371BFF89FF9DFFCCFF9CFFCC8FCC9FEE7FE76FE77FF33FF33),
    .INITP_0F(256'hF9DFF99BF99FF9BFF3BFF33FF73FF33FF37EF337F337FBBFF3BFF3B7F3B7F337),
    .INIT_00(256'h346CE86C62494100A58FB2912C06733C105C27B6EF2A3C9F0D43EF5EFA96EE12),
    .INIT_01(256'h6412AA59FCF3B795DEE8DB59A74C441DE55FACEB8FE4B967844EE5F121E4571E),
    .INIT_02(256'hC16E65EE38C41CE217B8A73E10DF76CA7E93DA931AFD09604517ED711EB97BF1),
    .INIT_03(256'h17E621FF46D708C58027039C2FA60BB711DBCBCBE002D1470848E09648820131),
    .INIT_04(256'hA08FA932BFB71E046AD0E8A1C0ACD9A5F3CDC37AE3923B2F950FF3533D4EA98E),
    .INIT_05(256'h1FAEAC21A0DBCD5AFF38FEBE54C0C520F0FC6E7118E314A615D201B1EFA6E19E),
    .INIT_06(256'h701F0D5A130B9221B4C4AC7C07791285F2BCC2C1EE3E70AE0C7E27AA9E338DD1),
    .INIT_07(256'h2F88D836929567EA44E792614709C26B27835722AC51EEF58DFC923904AF4FED),
    .INIT_08(256'hDE964EFCC7AED0126BCD0A3441558CD9060DE26F11D8B1AD9F6104B8A8DD43C1),
    .INIT_09(256'h35436B9FCCBF8C4600F402E6AF60FDE1EB0B5393CCF01E509BF41321E7864318),
    .INIT_0A(256'h968CA8DA0C36474A4A4452635E4629130F0601E7A77A523A37344977B4F82030),
    .INIT_0B(256'h19F5C0721AFC1138586E95DC3086CDEAD8A7947E6461340EE38F502B477794A9),
    .INIT_0C(256'hF8EFE4D6CFA883A0CBD2DFDEDBF8183E3011FDF2FC0403F6EBEE021D505F422E),
    .INIT_0D(256'hFDF3E7C6A8A1B0D3EAF7FD000306070800F5F0EBEAEFFAFEFF05122B3A402A07),
    .INIT_0E(256'h0D05FAF8F8F9F8F2EBECECE6E5E3E9F1F5F9F8F7F6F8F8FC00040605040201FE),
    .INIT_0F(256'hF1EDE7E0D4C5C3C2DE0427505B513C1F0B05FBEDD0AD969CBBDBF3FD060C0E0E),
    .INIT_10(256'hF706111002EDE7EDFA05070300FFFBF9F9F8F7F4F3F5F3F1EFFA080D0F0AFDF6),
    .INIT_11(256'hFE02090C0D08FCF0D8CDE2EAE5E7F2F9F9FD010102FFF9F3EBE8ECF1F8FAF8F7),
    .INIT_12(256'hF6EEE9EEFCFFF7F2ECEEF6FAFE0401FCFE02FEFBFAF9F8F1E6D6DAE3EBF9FD00),
    .INIT_13(256'hDFEAFA00080A0B0601FAFA01F3D5B0AAC0DEF70206FCF902090702F8F2F8FBFA),
    .INIT_14(256'h2E211813FBEFCDB5BFD2E4EDF7FF070C0E05FCFAFBFAF7F80104FDFBFAF4EEE8),
    .INIT_15(256'hFDC3A69497AFA8ADC9EEFF07121E4055411B00EDDFD8CEC3B996A0E1FA020F1B),
    .INIT_16(256'hD498B4F1060206034B5B0FFCCCAAD9D5BEC0886F8F94CF1D24525026493E1814),
    .INIT_17(256'h566610E1EBE3010DAA7275B1010A01F1F0FE2620141A192D2507BC6179E60B06),
    .INIT_18(256'hB6C9E7EEDDD4D40E454B08D6DAFE4833F4D5C1E5FCE6D0A1A1E52A3B0BDD042F),
    .INIT_19(256'hC5D5DBF40C0309EBD6FC131C26F2D2C1A9CBD1D1D5D1F3070C1009FFFCFCF1C7),
    .INIT_1A(256'hCCF102FCF3DECEEF00FAE9D2CFDA0100F803FE0109010203FBF6F7F4F6F3F4E7),
    .INIT_1B(256'hD1CFEB0E291202FDFA0B101105E8C5E5F2E3DEC4DEF3F0F1E4D6F3FFFCFCE5CF),
    .INIT_1C(256'hE5DAEEFCF3F8E2E1D79CC2C9BBEB0512130C0C200AFAFCFA030AF2CEE2F1F0EE),
    .INIT_1D(256'hCFB4A8A7CC384E170403072C340BF6E1D8D6B3ABB7D31102F1F3BEEF3D7AA342),
    .INIT_1E(256'h2536401F1B01D0C3BE988C8389021D1D15CD0C272221CDC30010FFF2DBCAD3D6),
    .INIT_1F(256'hE1E0D386839BE028FD070C17634E2C2601F9E9BAA09693A09E9693B410434F4B),
    .INIT_20(256'hD3DB152F570FD9F904353602FBFC122DF8AD9BAEC9F3FEFC161722515B2FEEE2),
    .INIT_21(256'h100F02FE01FD02F6D1CFE30106DDC5F217464500F3D8DA02F3F1E7C1D3FDFFFD),
    .INIT_22(256'h050708FFF1E4D0D2EEECD3BDD701283207F1F2EEF0E6C2B8BAD7F4F5F4F4F9FC),
    .INIT_23(256'hB9BAADBCF00A062135242F080B20F8EEEBDAC0BDBFD4ECEAEFFE020524291812),
    .INIT_24(256'h412C0A06080707EEC6BFBED0E7E8E5EB0308100D0D0F0F0F0603E9ECD9B7D1D1),
    .INIT_25(256'hF3F2F0EFDFD5ECF8F8FAF9FC04050A0800FDF9F3E6DFCBCEEBF6FDFCFF050D27),
    .INIT_26(256'hE9E8EDFAFFFCFAFAFD0606FFF4F1F2F3F8F3EBEBF4FDFDF9F9F9FBFEFDFBF4F2),
    .INIT_27(256'hF9F9FCFCFE0002F8EBD7D4E9F0F4FAF8FD05070A08070903FDFBE4DDF1F5F7EE),
    .INIT_28(256'hFC000003070B0D05FEF7F2F0F3F8F9FAF9FBFF0301FDFDF7F8F4ECDBD6F0FBFA),
    .INIT_29(256'hF9F9F8FBFBF9FAF8FCFEF9F4F0F6FAF8F7FD00FF090A02FFFAF3F7F6F1ECEBF4),
    .INIT_2A(256'h0004080702FFFBF9F3E4DCE2E9EEF7F8F8F9FBFFFF00FDF7F3F7FAF9FCFBF7F9),
    .INIT_2B(256'hFAF8FAF9F8F4F0F2F2F3F4F5F9FC01040601F9F7F8F8F6EFE6D8CDDDF2F8FCFF),
    .INIT_2C(256'hCFFA292601F8F6F3F6F5F2F5F8FD01FF00FBF9FBF9F8F5F0E9E9F3FAFAFAF8FB),
    .INIT_2D(256'hE0F7071004F6F6050D1102F5F4F60208F4D9CECAEA09FEE9CEE9487C6512ADA1),
    .INIT_2E(256'h0B1509EED5D8F40003FBF2FA07110D0600F7F7F8FD0309FFDFD1CEE5F6F0E7D2),
    .INIT_2F(256'hA190797B3C556C4587E939C7BDE9080BFDFE0708FDE8D6E30A14FCD3B7BBDBFB),
    .INIT_30(256'hC7DAD0A7A191C5367A823AB3BA4BE0DE3EA84951C43B38E3612574F921D291BF),
    .INIT_31(256'hDD796D62EB03A69F9BDD5C54E7BFF8C267175D535F84AAB651ABBFC7C5A890AE),
    .INIT_32(256'h9A737B73058CC1D3D9C188B7B9A5B4A9B5A190B2E6237C842FDABAE33B95B391),
    .INIT_33(256'h24BA8481AB4EE45AAAC2DD425DE54AA608AA6CDE8AB83DE5C53FBB2E3DE42674),
    .INIT_34(256'hA457CF75596D6F5BE06406491FE4AC19F1BBFD6C2D8A920D0F4450A6CCEFB859),
    .INIT_35(256'hE26341B5EA902F21903547515612D0948722418DC9CD07416D5B15D76B3B2BF4),
    .INIT_36(256'h613DEE9A4A19CA45F654684F02D6DEF712301400FBEEEFEEECF51723F5864565),
    .INIT_37(256'hC8FC341FD58685D02C675E5D0A896EB7426D7429064AB3C0BDF61E23B3447E7E),
    .INIT_38(256'hE3FC01DE9C616CD64CADD78CF88B85F0484F3F2D09E2E5E40556674100C59292),
    .INIT_39(256'h5C19809A85555A14A4B4044DAB95D73BCAF526F5FE632A387DF72A05C8937DA0),
    .INIT_3A(256'hF7F9F90301FBFBFBFDFEF5EAEBF900FFF5EEECEAF8FFF903202013F7E8134C62),
    .INIT_3B(256'h6338DFB8A5C4010B1604DEC9A3AE0911C2634FB611433B17F7ECFD060A01F1EC),
    .INIT_3C(256'hF8551F03F3D3101E0AD95D0045E1779D1A7D478F5E0FD95BAB2B7DA2DA16D105),
    .INIT_3D(256'hA003956FCC7DCFC149A888FA0DF2DBD7F3BB98B3BBCAEAEEF80313161706FCE2),
    .INIT_3E(256'h9B97CB2DBCCAEEFBFD0A08E797C1517A510ECCA397E32314F5BE8894C3E83DAB),
    .INIT_3F(256'h60E9121804AC3A0AA63D48C3ECE0D0EB44B0D725E1A1662E9545D8BDE14B63EC),
    .INIT_40(256'hF21BB12180B362F2614D3457E04905C992BE1219984E53A4FEC088234DA9F972),
    .INIT_41(256'h6F8B0A5C7F5C09B05C1D35829F4FE772E23CD29BAE1E002036F1306C1BFF1508),
    .INIT_42(256'h9D5BFF9366B4105393C58F1788369DFAE09E6EB0175C4DF39165B243B7BD5DD9),
    .INIT_43(256'h18F197697CA9BCA9C117A2D35DB9213B0D875FF8BFE82419E1B651FD71082762),
    .INIT_44(256'hB841417F221606A44D0FF7EFB019025CD819DEC405BA41298ACC6545A6195446),
    .INIT_45(256'h7559F9B942EDFF7D3F14A320770E9FA0898590ACEC4349D89E22449E77DD9562),
    .INIT_46(256'h20736BFF52879F7B38B9B12E883B4D5D92D0877AD28D62489FF5B71F142A6532),
    .INIT_47(256'h6CBD8C4885D9CE12F8B2B50766B35D597D8FD9060E16F6B9A6CFFE7B9F6413D9),
    .INIT_48(256'hFBD4C40A0392620E4F4F14733783711A61DED4BB03A96A5B8EC5B0BEE6DBD7AE),
    .INIT_49(256'hF52078B375D801688C7A2555167D43A09C40155E9509F6DBC7DC55C89195B1E3),
    .INIT_4A(256'hFD80E5D16500FCB6BC52700346A16D99DAF3B495C1E000280EE8E8E81363670C),
    .INIT_4B(256'h0B8FE03C37B9F3561AB37BFC4260A860BE3AA712C1520D813F29D2085451B82A),
    .INIT_4C(256'h10DD39128B5381FB004464083A5960E4F18279ABDB9F4D958AB46F4D517CD267),
    .INIT_4D(256'h1C8715A0C49CB4F07ABC24E43CD1DB2451E608F713AD4243B322D50B062F9DD1),
    .INIT_4E(256'h372D7AF80689FC8678FC9304D30E68439DDEBE1893DD6C16BBBB38B9C841B79D),
    .INIT_4F(256'h07649FFB7484280D558FA69737B08F0FB0FCE86EC03F324117D0BE2FAFFD3A50),
    .INIT_50(256'h3132C7F7D6934D438A441B593D397CA8BE232871F8062C274460DE06A4D6E7D1),
    .INIT_51(256'h8E10C88A480C91FE8D50679ADF183B9B30BDAE3D3F747DACD47A100359B3E8D1),
    .INIT_52(256'h4E8CEF204B779D69DF6D1EE8B99E43E1B2D7183720EB1E79C9E00350A50A67BC),
    .INIT_53(256'h8FE305296BB50E65A3E93A777A580E905D736D34B1178B3B62B91C3F091974F5),
    .INIT_54(256'hF4D255D2540B2D8EDD0368A8DC144497E02377A97010B292AB8911578D2C2E45),
    .INIT_55(256'h7B4C26C56D3C37098D01804B3364B4093F5BA7E13496E41B4D728E8D0D834511),
    .INIT_56(256'hFF3EBD5AB2D09E51F99C3E180F04E451D877403F7DF734799AAAE85FEA5C8387),
    .INIT_57(256'hE5E7FB154483E56CC2F63432432F2E26EFA430F29137E4B16F3E7ECD317891B9),
    .INIT_58(256'h84D219B7AC6F464D94D84BEC2E9DE3E52D646422F6D5A86A20F982F7CDD3C4D5),
    .INIT_59(256'hE2AB97807262453023143886C924888B2B9F25246F283B9C417EFFEC20AC01FA),
    .INIT_5A(256'h773680189DC15DDF6A419840F9FB46707A144DFBF17BC071030D4EE88C9F1D71),
    .INIT_5B(256'h6E4C062E2361B1B84F703A2F74FCEDD43619C3EBA7CD42790E37CFAA4D319EF7),
    .INIT_5C(256'hA136A9B284EB9CE56B7406CF8151645D7832D5F0B5EB80B61528E0C3541B473F),
    .INIT_5D(256'h566D4538BECDABBBDE35770EF46ABE8CDCA725FC6B72135FFE37E3CE7A6D9178),
    .INIT_5E(256'hD21BA1FEE0354F6E21782DDD352D72BDCB98A2578A263E8558A743A9C157A1D1),
    .INIT_5F(256'hD76E3F6D3BA5D6492181EE270B45C06E008C77FE532BDDB6CB47E74F8150AB0A),
    .INIT_60(256'h021694275337E7AE95CC3FAE75EF91E09BCE5AE1F9C3370075F2A26C7803921F),
    .INIT_61(256'hAD450137F525EE9C5280119DEFEF82F5A8B0E02A4C21F1DBD50978D9D35CD34A),
    .INIT_62(256'h6715D9C4C6E7091110EFB8A3C2044D5E27F4CCB2CD093B3206BC7894EA11F5F1),
    .INIT_63(256'h91DC0507F3BA8366A1E6F7FFF4D9D4E6FC0703F9EDE7F1081D2A1A122A446582),
    .INIT_64(256'h9AA9DE27614A16F7E9ED093846361FF7CCDB011D3019FDD4C2E20B1F1600C185),
    .INIT_65(256'hD97F496FB6F2131B0A04FCFD0F171BEFA57772A0E60809FFFB0613324721EABD),
    .INIT_66(256'hF408FCDAB48093ED4D7C7F755523FEFFFDE3AA764F59AEF70D14140A1E434217),
    .INIT_67(256'h0BDAAFAFB3ABB6CADBF73067776146300BFEEEC2988A8299DA0A3745321604F9),
    .INIT_68(256'hD981EE963B2D839AA2B2C0DB5FEA0EE39451FBC1B2BCA8857378C41865814C24),
    .INIT_69(256'hE0DA54E7A576839ED8C97759639C1DA7E0B63FF9D4A8B7E8F7D4A686BA27A1EC),
    .INIT_6A(256'h65983C80D97F5975E520DC4EFF29690AD220DA2D9F5D599BF1FDBE8486C11A85),
    .INIT_6B(256'h46CF093FF532BA1A25F4760626B16B2DD6C3B5B2EA8BE16AFB30C52BFF55F1BC),
    .INIT_6C(256'h177D312F538AD2B5959FD41D6C196B2883E250D9F261D5FAC5682E4DC58A5491),
    .INIT_6D(256'hF444E5E208354B3D60A511BA286246CA309B4D1F2F5F928A6378DA61B00C24BD),
    .INIT_6E(256'h765A8FCCE9C0672F52D968E24736AB2285FEF2368A98664771D65E05A2B13DB0),
    .INIT_6F(256'hFF388BB2C8A1809F00A10F7172F4498C4D5568988D4501FA59F8972C56D643D9),
    .INIT_70(256'h2D69A2AA6D4274D04EE65C68F86CB63D3E75BECEB17E7EAB10B72E4CCE25961C),
    .INIT_71(256'h429ABC90575DBE4BC9486E033C8102E94594C9CA9581B544DD395A0754BC470B),
    .INIT_72(256'h62A9DDC6A9C113CF7C90F850B9FBDA204E9EAF877491FE8B0C5027AE0C7E3D1E),
    .INIT_73(256'h7E82604C890487085939B2299A2C184C8589685E99E451DC4B34BA4486F6D1FF),
    .INIT_74(256'hD1C1847FC22490104C1D92E68957688D9D9A726993E05CFC472DAA088E240E43),
    .INIT_75(256'h0BFFCDDA0050D11A37CAF77B474F73B3ECC97961A40E8CFA0DB82FA648284793),
    .INIT_76(256'hC6A890A1EE9B163F0F93E135F8FC52AECDA39AD20B8F1E31D96CCD12C6FA5CC1),
    .INIT_77(256'hDFB39BCE12A03242E2367CE0B5F062BAAB979FDC26B45073298FDB2CF5074AAB),
    .INIT_78(256'hA8606FCD32C661830A4AA628E62591C3B688719F1ECC6072FE59B52CDF137EC4),
    .INIT_79(256'h9F6E6EAE1AB436740E69EC58273F88C99E3F368C21CA3A712173B118E3389CB5),
    .INIT_7A(256'hDA8670CC3BCE6B67F9589F17DA1C93CCB5766094EB7A1A650139C35B2E498BC3),
    .INIT_7B(256'hB77077C533A10240D6FB7934365CB307E5A383BB25A41323C31C8006EB2E93E7),
    .INIT_7C(256'hAF6545AC6E0E7283FA2D8F3B273686D8BE8281BE4BD64A5DE93688331B4481C3),
    .INIT_7D(256'hDA794B9A22C64970307CB7633D408ACDB454117229AB1F4CF737852C245C99C4),
    .INIT_7E(256'hB3E08773BF39B52053F14BB35E2F1D63ADAB5856B837A80D3464AE5F345976BD),
    .INIT_7F(256'hAEEFC0AEDD4BD426685B7EB66826193496D79983C218A62E3FE157BB2BDF0C55),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],DOPBDOP}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__15_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__15_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00004000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__15 
       (.I0(\addra[16] ),
        .I1(addra[12]),
        .I2(addra[13]),
        .I3(ena),
        .I4(\addra[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__15_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__15 
       (.I0(\addrb[16] ),
        .I1(addrb[12]),
        .I2(addrb[13]),
        .I3(enb),
        .I4(\addrb[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__15_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized17
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[16]_0 ,
    ena,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[16]_0 ;
  input ena;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__14_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__14_n_0 ;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h000839E81FD98C6EFCCCF8CCFCCDFCC8F9CCF8C9F999F9D9F8D9F99DF9DBF9D9),
    .INITP_01(256'h07DE0F9F1F8C1FBC3E383E407EF8FCC078E1F801DFC1F013FA01FCF38FF60183),
    .INITP_02(256'hF3E1F3C1E783CF07DE07FF07FC1F7C1EFC3EF87FF078E0FBE1F181F7C3E787EF),
    .INITP_03(256'h07C1FF81FF03FE0FFC8FF80FF03FF00E600FC07BC01E07FE067C1CF839F071F1),
    .INITP_04(256'hC0FF81FE0FF81F747E487F81FE03FC0FFB9FF01EEC78981B01E600FC04F80FF0),
    .INITP_05(256'hCA0FF07F99BD8F937F81FC19F0FFB3F81FEEFF1BDC07201D07783FC1FE0FF83F),
    .INITP_06(256'h787E1E1E1F0F9F0FE1E39CF878F27FFE3C00078E0E04E1FDC00FCF03811F2090),
    .INITP_07(256'h0CE4C7832990F06DB43C1B6D0F06DB23C996F0907CBE361FAF8B37E1E341F878),
    .INITP_08(256'h3CFA68F451E1E641090635888073608F87FC1DF07FC3DF07F87BE0FE04659F1E),
    .INITP_09(256'h38F9E0CF8C0E78F1CE1C7CE7F37BFB887308131ED11ED112D11EDB14DF25DE3C),
    .INITP_0A(256'hCB8FF37FE087E3C0FFE003FFE7FFE07FFF80063FFC007CFC003FFF800E1E3C38),
    .INITP_0B(256'h3C7FE107F8007FFE3FFC007FE03FF87FBF8018F03FFF0E3FF100307F3C0E79C2),
    .INITP_0C(256'h7FF01FF003FFC007FC03FF007FF807FFF00FFFE1EFF001F7F807FC7063FC1FFF),
    .INITP_0D(256'hFF00FFC30F83FF40FFFFFF000FFE01FFE003FF00FFF403FFC03FF70FFFEFFF80),
    .INITP_0E(256'h1FF01FFF021FFE77FFFFC7FFFFFE03FFFFEFEC37FF7FE01FFF0FFF1FFF6FFF0F),
    .INITP_0F(256'h727FF21FFFFBE7BFFFFF9E3F23BFE71FF786FFFFBFFFC7FFFFFFFC39FFFFFFE4),
    .INIT_00(256'h8FC2806EBD4DDD478C416AA729EA2370D1F49C74AC018313521C63AE3DF2F336),
    .INIT_01(256'h88D2B7B0E3206CF4481A74A82AE1EC40ABEABEA2D024B95E61EF66AF581FF832),
    .INIT_02(256'h6EB2CAC8EA0E7C0154F551F467F3CD0165A8B2C2F127900D733077F265FCF722),
    .INIT_03(256'h51C8D6B1DC41B2033F2DC4277C1DDBEB478C9BA5E32987FB3B059A0B5FEBD628),
    .INIT_04(256'h227FB0B6D4F64BD95259E1479A1EE4026BC0D7CDD8F04FDE300C990564F5AFCE),
    .INIT_05(256'h1FABE0BCC3EA1FA60944EE41BF1FC6DF45AEDCE0F11F6EEC3D33D2319214BCC8),
    .INIT_06(256'h050FA81CFB37C0F2B40B42A60886B04EE8333A1CC5CE162183553975FA6D20EE),
    .INIT_07(256'h265DB6F3DCB59C6F6A907232C2E7555556A460B1C83DE16CD6ED88D3ABEC9F3A),
    .INIT_08(256'hB60A79FE677B8D9EA386692D67B72F731C222257898CD12D993586944E06F6FB),
    .INIT_09(256'h1A2B467FE501FF081E3B88BF98620B944E4A63786718DAF83169B9FF1D1DF2B8),
    .INIT_0A(256'h6D0AED26608F9292B1EC3C80B5A44AE17E556EB81A3F291A4391EA00AB4DF176),
    .INIT_0B(256'h01CACBDDF91F3101E1E3ED07395F29D5783138649D0030050A2A56A6BC822ECE),
    .INIT_0C(256'h1CC5724A5389E805DCB9BED0F0031414B961403562CB0C09FEFE020A43878251),
    .INIT_0D(256'h683CFCAA8AC0EB143A17FFF7F6134D6B3F0CDBC7C5CEE50F28F5001D35759578),
    .INIT_0E(256'h234840FDAF7D78B0FE140A03EEE10038705402AE70788CBBFC04E2C3C7F01B54),
    .INIT_0F(256'h1170A27B40F2ACAFC8FC15FACDC8FC2B7EB48A34ECB6A8C6F3111BE09EA6C1F2),
    .INIT_10(256'h82C3205A622ADCB4B0C8FA1912E1BBB8D10E41533DEA775E83ACF30EE5C2D2E6),
    .INIT_11(256'hC1DCFD43A99743E18B89AFD71C2B01E3E10646A1C27F0FA7786C99EF0FF1B182),
    .INIT_12(256'h9E8D96B6035B8D7418C9AFBEDA052D08D8DAE110679B710CB88284B8F812FBDB),
    .INIT_13(256'hF59E5B548FF37AD3CE6CEDB2A2C7FB12E99797BFF650918E36CB958290C9F4D8),
    .INIT_14(256'hF6FCD39E95BD1589D0A438ECBDAFCAED08E2886683BD2A91BE8B23EBC2C0DB00),
    .INIT_15(256'h7EC103FFE2D4CD008FF6DC7807AB848AC7FBC682686496E83873653007E1C6D4),
    .INIT_16(256'h85AFDC2734B86F87B00365A5902BE5D1C3D81325F4ABA2C81581BCBA55D09379),
    .INIT_17(256'h855891DB0509D6A09BACE148867737DEABA6CBF71313CE96A0D7389BB86E12B1),
    .INIT_18(256'h451CE5D7F8111AFEC4A097B90A50673904DCD6F0012C35F7BEA8A8D12B5833E7),
    .INIT_19(256'h8F8D652403F0EC1811DF9C795786195A4D2008F8E5F02836F0946775A30D656A),
    .INIT_1A(256'h47ED80BED38648390E0010DC8156BB135DBAA26B26FBFBFAFEE773152062D245),
    .INIT_1B(256'hDB1B8E0B7ED8CF8F4E1E0F02EAA342193AC663A1B39A4A150EF7E2DD7BFF0120),
    .INIT_1C(256'h684C57880A759FA57D12FAFED3FAFC91515384E258B5D09A3326310BE2C25ADB),
    .INIT_1D(256'hEED17A464DA434BB03E87D30F5B289905F161D3B9E22789E9E511811F2DDF0D5),
    .INIT_1E(256'hC9BFCEAB797984D759BDF6DC610BE398849451123973C366D8DDAA46F8D6CAD1),
    .INIT_1F(256'h090B0D0D04BC6D6C83BC1B6A8E7D35F7CDAFCBF1BD5F578CDE4287B19C4408E9),
    .INIT_20(256'h8B875C3004FB1104AA6B4559CF398BAD5E141E12FAF2C77F4F4D8FF2357EA350),
    .INIT_21(256'h1FA9EFCC8B6D43F1BEA856EBCD20A21581C3BC8D73411318DF79422857CE2A5C),
    .INIT_22(256'h1A69F6900A3DFC973FF2AFA65FF5D2FF9302790816A47957020E038912EC0F84),
    .INIT_23(256'h30111C5DD07203532EB163F5A9B470152F3D59FC7EC7ECB063410DB8A28722F1),
    .INIT_24(256'h4A6D642A1D2AA71A71EDFDA27D47CBBCC68A57566DB72895E2B6773BC150677D),
    .INIT_25(256'h3FEE99867D320EE6F9B04DBC06EB91450ADCE0CC76484A75E375EDF69A4C27B8),
    .INIT_26(256'hE0C88A44E4A09E9F655A6088F765C7E8C8612FF9A4A26B0FF42779FDA404E785),
    .INIT_27(256'h5C980C86E6E7C266FBC1B6AC7B534575EA6FD8E9844C0AA38656313769ACF479),
    .INIT_28(256'h9E95CBE4C0A2B612739E7735FBB696A587581F2EC955C4D5B371D7897B828C72),
    .INIT_29(256'h0146696634DFCDFB07FCD39FAB024C575931DABED7E3B98D8AB91672844514DD),
    .INIT_2A(256'h923EFB0E67FF73BCFDDC986E25B94A01B3E3A3228FCEBD610A1521EE760AFC71),
    .INIT_2B(256'hAF8A2EAA9EAB7950424AA77635481C9FD457202B29253F861591F0431E6AFED7),
    .INIT_2C(256'h823F55EE8E957032B22F21B9FBD9AEACFC890013F333670F0539548CE752CEF1),
    .INIT_2D(256'h91EC6B4F94842C2CA130729CEDCC28DFD6BF81474E8F014C6B652FF2EA0111E6),
    .INIT_2E(256'h922CC50C2ED003750DD50A5162C77E0000BB710BB8C8E89947E8EF892CD02B16),
    .INIT_2F(256'hC2A3D7E6AAD0111B6C6DD78DDB959DC0CEBF9FCB7DF2C06918AA5267B4C39065),
    .INIT_30(256'hB2EE2A2D754CDCA90469AE0285E8D6519B1B9FBE1D0633917171F90C7D3A787A),
    .INIT_31(256'h832BF9B881B1D7EBB77B6DAD2E9CF6D8CAEC20B75BA4883BCB450D191411F9F4),
    .INIT_32(256'hA2D4CB86ED590BDDB6736CB4F424F4FF4247931F8AC4DA2B94B1CFC9BE93D1F8),
    .INIT_33(256'h5223EC9F89DA4CB8E7AA2E0119312316041A4C3A12FAD09AC0134825DECEE233),
    .INIT_34(256'h30EDB282BE3A5D0F996476D66EF312AC0E853A3B35283689F4F8BB8D5E43830C),
    .INIT_35(256'h37479E2F7A5D11CF9485B1356418A6497500AD39682DAA068C96B5B4DC47A482),
    .INIT_36(256'hB1AD528990CD9FC70A7FA13AEEC8A8A0F56553EF95505DD46096580D9C370905),
    .INIT_37(256'h0461298FF253B4D57EED75526C8BDA3A929431C87C294E0E86852ECE7B82FF7C),
    .INIT_38(256'h9F84C462C269C123DE601092F0F356B4623B44508E03838F22C28A699B279681),
    .INIT_39(256'hFABC0B9AE857293FC8697F2F77E90A7B19C4280C65C0817693BEE357EEDC41D0),
    .INIT_3A(256'h30B5836B74AD0FC51572DE814354D38FE778B009EE62EC94E09D27982A03469B),
    .INIT_3B(256'h52D86EE314E34A9D0CD5F0743E04448AE69B393E15C6D24C8EFAEA7A29BDE4B6),
    .INIT_3C(256'h169A973CC7573082109FD3A02C951DDD039A661E0273E738C0E6ECAB8B1EA03D),
    .INIT_3D(256'h0B40A6029133127C7324CE8272B30E679F87177306CD09D2D4922F8DF637CD26),
    .INIT_3E(256'hD1AC516257FB0FCF36A5E99D62B17511A3586BC23C98B991139B28EC25F2F359),
    .INIT_3F(256'h3C9FC159BE27C5EFE70E66F24EA2D47628F145471BFFCBBCDD194F88921E9E49),
    .INIT_40(256'h65500F0601EF16462BE95FF0F07A77231EC13789021BA6F1030E11EDC1CCF112),
    .INIT_41(256'hBCBFC2B0FF708E6527DE8484D109F29D4C296D29D2ECB85CD46948A9FCFBF410),
    .INIT_42(256'h5EEC9093E1E4C69474EA8B905B47EF7775F41DEE913C6CDF56BAC08545E28E9F),
    .INIT_43(256'hF47F705039FECBD8F7BB4A1334B674DAB55532F0A3C602ED8F321A751398A391),
    .INIT_44(256'h69D293FF0DE9E48D40F0AEC5241FB619C216D589D6C58E47FF052706982D1F5C),
    .INIT_45(256'h1B95760274F3D89580B3936B066B41006910AD20D942302B2CA1570ED22B7407),
    .INIT_46(256'h0EB8F847194115CB7A48825DE19956F55E49C64418C553C8F2C2ABC8766E41DB),
    .INIT_47(256'hA415B75B2C702545BD5B82AFC4B461E750E833D24E569E08D7A5546C4E25F545),
    .INIT_48(256'h6C7481BD1E0255F09A85B5D6B6663720B53B32A84E31992FAD1A2A1471DC7CF7),
    .INIT_49(256'h81B0F7D3F282B68673BB47B21C01ADBB91B3EFE70F970CFFC9E416178E1F0F91),
    .INIT_4A(256'h3B36878FCD69CBB269BF6EC93117B3A26B7BC7BBE48BF1CB72DC8C9FFCE95A6C),
    .INIT_4B(256'h36F59A1BB4BC239607302E06E11482D7ECB73463BFB91AB2397A4CDE929AFA9F),
    .INIT_4C(256'h5F434D2EE1F87BE2807AB46A117EFED1B8AB7E3503CF005AC03296F806D6B58A),
    .INIT_4D(256'h62FB64C124402CF6A33B1BEC8C38EFE1E614417CBBF279EF4E7B44D849DC8961),
    .INIT_4E(256'h3BFE9827981AB6646E91A1F55286F86EEB485C5F10B15806B45D3B14CFA6C507),
    .INIT_4F(256'hA8E0358DDA044ABA09457C6F1BBC4CDA752005B86D6382EF72FC6BD6274D5F52),
    .INIT_50(256'hAB6B3213E88021DBB8C1E61D63A5D11F5AAB09415445FA743E17CC792DEEAB96),
    .INIT_51(256'h8D9695BBB594845F330CF6DAC0A78F7F72574C667DAADEF6F917529DD1CCCFD3),
    .INIT_52(256'h63302B65A4D807588E9CB9EBFDCEB58128D285541E02F9F610375E88C3F62561),
    .INIT_53(256'h6E7B9AC4CFC0C7DCF00A31463C1A0A0F11152A2308FCF7061312F3C4986A5B6A),
    .INIT_54(256'hDEF9FE0502FEF9F8FAF9F8F7F6F5F3F2F0EFF50919180F0400FFFFFCFDD39E84),
    .INIT_55(256'hF8F4F9EDD7BFA07F5674CC043061868386897F75614EF597716B82B2EAF2E2D1),
    .INIT_56(256'hECF3FC13373A1D03FD00010406F3B58A93C7F5070C01F6EBE3ED0E374E3F1902),
    .INIT_57(256'h491F831BF20EB33B743C8951E771C0A5509A9BEBA96288C11CFDF1E0D9DCE4E6),
    .INIT_58(256'h891ED8B18535C64D305F87BA3795DA54E982C6B7329525CA6916C96B6CDCBDA6),
    .INIT_59(256'hC8A1733AB9510270E68941130500051C47C075E61C374E9DF1447592B2AC8B20),
    .INIT_5A(256'h3809F4E7CBCCD2CAAC837A7F73653F12DDC1C9EA569EC70C53A10243566985B6),
    .INIT_5B(256'h2BFE0F529ACAEDFBFA031A385186CDE4C57A1BF2F307231CF3C0C6E60842695F),
    .INIT_5C(256'hFFFBF8041C32536C3E12FBE9EBFDF6C59CA1D1EBF60A140F04F8DCBDAEA7996C),
    .INIT_5D(256'h0B06E8C39F705B515F767781AFF73774888A6C3D456A744910F6EBE4E9EEEDF2),
    .INIT_5E(256'hA5B0C0DDF817304E7A7D777E8248212511E4C5DDC7BFD2E3E7E1ECE3E7F3F600),
    .INIT_5F(256'h0005FCEDEBF3010F0CDEA9958FC1FCE2BACEF60A1A1705FC020B0F0C06F2BFA1),
    .INIT_60(256'h0BF5FF191D08DED4F2F7E0BEC9F70E09090D02F1F1F5FAFCE7BDA1ABC7EBFAF9),
    .INIT_61(256'hE6EBF1F2FF0709080A0A0B0B0AF1BFD4F1DDC59E96CB031200E8DBDE0E4C613E),
    .INIT_62(256'hF8F8FB05F5DDC4A5B0ECE2D710332546420703093A3202C572A5E4F701FCF4E8),
    .INIT_63(256'hCBDCDBF01C3729273E212931E9B8B4B49AAACDC2D5FBFDFEFCFEFD142F392EFE),
    .INIT_64(256'h1DFBE4A2B9D9B2B9B0BADBD9EB04040C232A3D3406FBFAF9E0B5AF9F7690C0C2),
    .INIT_65(256'hA4B18891D6FF1A3242464F655D24FFE5B0939390968D95D11D636A7763121E46),
    .INIT_66(256'hA6AE84413F10F9DAA78D675460828594BCF80E23464A4D404848553F01DBB49C),
    .INIT_67(256'h3CF8E2D3CECEB2617BB5C7F5040530533C3000E5C9AB924F588ED6FE0A183689),
    .INIT_68(256'hEAD7E0FAFDFCE2D9EBEDF808EEE1FEFADBA2A1DDFCFCF9E4E719223132142457),
    .INIT_69(256'hEDF10A1C1B232A302505F4DEE0ECEFDAB4B7DBFE05ECD8FC19272801EFF2F1F1),
    .INIT_6A(256'hEBDED5E4D7DED4AFC1D9D2E704FE1424090A2537381FFEF9F7FAE8D6EFE2DEF4),
    .INIT_6B(256'h8A9EDF060C19384559816931210FC9A38E8391AAC8C2CAF71A293C4947453A07),
    .INIT_6C(256'h2B160603DCB4AB93AACAC4C2BDC2E70B13141C35434D30F9F2F0EFE29F77747D),
    .INIT_6D(256'hF2F8FFFEF9E3E2F5FAF9F3F1EFF1F0EDF2EFF0ECEFDBCDEE070B0D040428231D),
    .INIT_6E(256'h00121003F5ECEEF4F502090E1103FAFDFEF8FAEBCBB9C8EF00FF00020E121607),
    .INIT_6F(256'hECEBD7C7D4E5F1F702071214140E0102F9EBD7DADCCFCDD7F5FF030A0705FEF3),
    .INIT_70(256'hF9F7F7F6F6F5F3F702FEF800F8E7E3D6DEE9D4CED6E8FAFB05100E04FEF8F0ED),
    .INIT_71(256'hCFCBE2E0D4EFFFFD11160B02F4F1F9F9F6EACBC0C7DFF9FE040A04F8F6F6F2F5),
    .INIT_72(256'hF9F2F3F2F3F8FDFD01FBF0E4D6EAEEC9CBE2F41015071031382C12FFFADACDDC),
    .INIT_73(256'hE4EEF4F3F6F6F1F1F4F7FC01FCF0F8FCF0EFF800FBFA04060F0EFFFC00F6F3FF),
    .INIT_74(256'hECF0F4F6E7E1DCD8E9FCF9EDE8EAF6080E0608101108FAF7F9FAF8F4F0EBF0EB),
    .INIT_75(256'hF4FDFEFAF7EDF1F5EDEFF8F6EFF0F5F6F9FF080E08FEF2F3F8FFFCF6EED9E4EE),
    .INIT_76(256'h0E283C341A05FB00080702F7EDE7E4D5CFECFDFBF1EFFB0204FBF3F901F9F2F3),
    .INIT_77(256'h0C1006F4EFF3F1EBDDD3E6F900050307131911FEE3D3E3E7E0DCD8EDF9F9FAFB),
    .INIT_78(256'hEBEBECF4F7FAE9CDC8D6EEF7F9F5E9EAEFF0F1EEECF8FAF8F6F5FE0A05FC050B),
    .INIT_79(256'hF0F5F3F6F6F6F8F8F6F2F6F6F9FCF3EAEDF5FAFDFAFB030A0C05FEFBFF0401F2),
    .INIT_7A(256'hFB00FAF5F0F0F6F7F8F9FBFBFAF9F5F4F2F3010702FAF2F3F5F8FCFCF6F5F4EC),
    .INIT_7B(256'hE0C3CCFB0AFAF3F1FD0B120F02F5F901FEF8F4F1F3F6FAFDF7F5FAFFFDF3EFF3),
    .INIT_7C(256'h0200FF100A03F8F5FD01FEEFD9CFDCE5EAF1F80201FCF6FB090B02F0EBEFF5F8),
    .INIT_7D(256'hF2F2F8F4F3F7F4EFF0EBECF7F8F7F7F7F8040AF9F0F6F8020400E9BCB1C4E5F6),
    .INIT_7E(256'hF7F8F8F3EBE5EDF9F7F5F2F1FE08FEF2F4F5FE1412FFEDECFA01FDF1E7EDF9F7),
    .INIT_7F(256'h01FAEFF80102FE0B0EFDE1D0E2E9EEE8E7F4F4FD0906FF0B16150BFDF7F5F5F6),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__14_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__14_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00020000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__14 
       (.I0(\addra[16] ),
        .I1(\addra[16]_0 ),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__14_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__14 
       (.I0(\addrb[16] ),
        .I1(\addrb[16]_0 ),
        .I2(addrb[12]),
        .I3(addrb[13]),
        .I4(enb),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__14_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized18
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[16]_0 ,
    ena,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[16]_0 ;
  input ena;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__13_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__13_n_0 ;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hC0700007FFFFFFE000F9E20FFFE38003F019C031FFC800F1FC383BE80F0C0FFC),
    .INITP_01(256'h7BC37124BFDD103F01F0FF87C7F93C1C7FE03E7FC3DFFFF81FC3FFFFFFF7FFFB),
    .INITP_02(256'hEEDFC60007886EDB3E4C3C0399828BBD824D101DA6EE88F0E3BCE19BF03899DE),
    .INITP_03(256'h22051004C0CC43B0200D05A5238477711C646E983420E800F8DC73D237374985),
    .INITP_04(256'h659ED165FD9364D9B768805D9108C769181E51149F089D1F048029085C8DE840),
    .INITP_05(256'hB070088190049BF20449FC0620FC0721E31C4603F04F93F04736C07A76EDBE4B),
    .INITP_06(256'h62E78BBCD9CCCFF278C0FE30C839E0E79F967F03CB3FC7FB9FE1F3877C6DC19F),
    .INITP_07(256'h71C40C1BCE7C03F3BD1F83C22618DDB1FF83667FC1E3E01F0044C31A3FF03F80),
    .INITP_08(256'h03F81FE1FC07C7FC0F81E7CE63C1EE0F9C631F9C7F1DCE3F19C81FFF38FFBF00),
    .INITP_09(256'h07E9F03FC3F87FC0FC1F30FC1FF80FFE7C01FF0FF0FF9FFFFF87E01FE07FC7FE),
    .INITP_0A(256'hFF83C3F9FFBCF78FFC70FFC3FE7C07FF7807FC387FFFFC3FFFE1FF8FFC3FF9F8),
    .INITP_0B(256'h1F7FF07F07FC3FC7FE07FFE31FFFE39FCC307FEF7E3077CF3FE0FF31FF8FFC03),
    .INITP_0C(256'hE3BFFFFC1FFFFF0FF0FFBF79F807FFF03FC1FF8FF1FFFE3FFFFFFFF07FF03FE0),
    .INITP_0D(256'hFFFFC7FEFFFFFFFFFFE3FF0F9C3EE3E3FE7FFFFFFFFFFFFFFFFFFE3FF0FF8FBF),
    .INITP_0E(256'hE60F9FFFE3FFFC7DFFE7F7FFC7FFFFDFFFFFFFFFFFFFFFFFFFFFFC7FFFF87FFF),
    .INITP_0F(256'h8CFDF91FF010F81FE37CF4686A37ECC4C1A2BFC19883447F800E602D8FFFE0F7),
    .INIT_00(256'h043BDF0D38CDEC580BE990D13EA2081354DAC96EC9AFF3E8F8F4F2F4F1FB0D0A),
    .INIT_01(256'h4250697A6A36D564310CE8960A9964769DD01E70E080298A8F7749AB9AFBA228),
    .INIT_02(256'h61A8DDEEF3FCFAD77A078C166DC14F02000001194B649EFF1E79CDE63699F335),
    .INIT_03(256'hB4B6DCEE031109050E130FFDEE0102DA9C4BE097887E6F7088ED90E32273C820),
    .INIT_04(256'h885B292C519AD4EAE9E6F3000200FEFAFE142F3E5773A4D8D28D320F0E05F7DB),
    .INIT_05(256'h676751270C030201FAEBDCE0F30004EFCEBFE0020400FF0A121D2007BF818188),
    .INIT_06(256'hABAEBEC1C5C9CDD0D4D2C6DADFC6C3C6C5B9BEE0F5FDFFF2E9ECF6082E556F73),
    .INIT_07(256'hF6FE040502050D0E04FAF4FD0A22301C16262516120B0B1116120A0905F6D7BE),
    .INIT_08(256'hEEEEE8EEF1F2F1F1F0F0F3FE01FDF7F4F5F1F5FEFBF9F1EAEEF0F3F7FF02FCF5),
    .INIT_09(256'h251106FDFDFBFAF9F4F50A1C1402FBFBF9F2F3FAFFF2E6F6FAF7E0D3D4D8EFEB),
    .INIT_0A(256'hE8F80B110903FBF5ECF002FAC8CDF6FCFBEFF0F4F0EDEDF0F7FEFCF4F608162A),
    .INIT_0B(256'h04FAE8F3FAF8F1ECEFF5FF0302070B121807F5EFEAF0F90500EBD5C2C0C2C8D5),
    .INIT_0C(256'h65C54D7639E1A08BA9C7EFD1FA64BD22E350994A5B9A060D0C2217FFFEFF0607),
    .INIT_0D(256'h608E672B0A0403F9E9DDE5FE11273A17D2968188A6CDE4F1FA0D273E2CEE9E67),
    .INIT_0E(256'h026FA72F437D868480B98545D1897F806F21E3F8AB670910131FFEB8766390F1),
    .INIT_0F(256'hA93EF93F642C5D2050DA3B716B0B8002F02559A921A1FE1DB2066ECCBDA47FF9),
    .INIT_10(256'h917C8CD31A5DB0F39F2FEFA3D6467D4E9BDA8901A60E44ECBBF66F499504DAA6),
    .INIT_11(256'hC8B8E0369CB0E53D10F84CE1FAE014A55EAF4C1FD0439307E4C57FCCC508F9BB),
    .INIT_12(256'h16658EBDDD6CC504F0CAFCC774AC0B1D372D1AFBFEAB8301D1B4ABC9124B4200),
    .INIT_13(256'h272CF44B53AD670C15E531CA4D5FA8C7B226AA4917F2DA53474F23CA71E5C236),
    .INIT_14(256'hF61433F62A98A6259306110068CB02DAECB8148CDFDA9ABA043BA85A50E9B239),
    .INIT_15(256'h91146B162884FD5A3DA1DA8D0E8A017D6717C692C0E20F5D545247405834FDDB),
    .INIT_16(256'h7485D9FD7CBD88C0DD00421F6F973E7EE888F8741B765194C616AB0CD2E0C54E),
    .INIT_17(256'hEADD44344A4EFAF689393A802E2EA8E4D689BA082E0DF780A378555358340D43),
    .INIT_18(256'h1A4D17943728D0ACD6024C321442BE3E151BBCE9781623DF61A26184F0BACB8B),
    .INIT_19(256'hFDD7A5B198F3809010A46C1B4104913B1EF6D9EB141273035AE57F15E62D6CA1),
    .INIT_1A(256'h67B82507839F982118442759D48D23A47EDA703E165109C726D7CE4B20454035),
    .INIT_1B(256'h3BF4A7DAAAD07FF16FF5244D89551F705AF7A93C32833F5820454344DB2E7F6C),
    .INIT_1C(256'h8F80220FE7B8F49AAC41E0D4A8B15F0084CB0083C4E1BAE0A7850AD7E13C926B),
    .INIT_1D(256'hA1FC1666FD5668F904BBAC50DCEE8B20FB14E82298986E030D38CC43F60C4B6B),
    .INIT_1E(256'h5ADB2EB4E0C8C693F607747A0BCD648C2BE212537D59CC740FFF8EF519426854),
    .INIT_1F(256'hD92E68F8C2DE80202C71858BE82CA973892E683C29938003107BD8D82480E6C4),
    .INIT_20(256'hC8CED980932CB62A77E45A8D75DE7F69D0A32881ABD83C4CA44F03426787C2E9),
    .INIT_21(256'h168BA3A740166DB0722F96BA4A169CFEC43A6EC5360C0AF29DE1A993F4FF6049),
    .INIT_22(256'h07D056B5666C389761BDD0A1E8FC37C1F02422CC48696D1EF59935D77B8D6B6F),
    .INIT_23(256'h4C9C88C0750F91A94C251B8F89E7DE41F840C6E2D047D9C9B0D60833F9AD92EE),
    .INIT_24(256'h1EF64F57BE8EFCB0294D2F00FD1A3F02BCD7386109B262ACD181001A06413F3A),
    .INIT_25(256'h49B9E539E40354E3C65754CBC29F037D6300B3C56B659481204AC278D7E29223),
    .INIT_26(256'h4A617E8774E8C35355EE2448C9D23087685738BA2D0C406927C50AD97B18F551),
    .INIT_27(256'h573874AB1168C918BE382AB8161FDAD07A79D0B5D886A431251345D269A1EA02),
    .INIT_28(256'h9C2C80317ACB4BFC3983EE9309138ACB17CA0387DDE8E655F006C71022FE2A78),
    .INIT_29(256'h4587E5A9F13F7BE768CD5976A8FE5EC8058A047BCDB86752269F555E24FA5A0D),
    .INIT_2A(256'h2E9CB1AA0B7EA0993D6FB2BB4084CFF8D409C047E963D642344A5BAB87F0D4CB),
    .INIT_2B(256'h7D65DE110706DAD853CC5EF4F8FA2A8975B7CA7EF084EA060D1886D59953EF4B),
    .INIT_2C(256'h4FA4A856D5EB770DB77247456BC444CBF8C0977115D49C368F614322B7E385FE),
    .INIT_2D(256'h645F754A2DC8E960E18D1CC734DB0AB0A17781CCCACA31A8AB678D8425F9ACF8),
    .INIT_2E(256'h16F5F77439DAE2B08A470C1B0F2D4B6367067214054DFFF36F2857B6018811E5),
    .INIT_2F(256'hF827F2BF248B361B0F4D17D0536656776D5B7E19279F7CDC993CE5C8745C158D),
    .INIT_30(256'h0EDD9C9DD0FF324D038EB101BEBA018C1ED6BBCB6A4D2FC2AE39355E166893A4),
    .INIT_31(256'h2C8A0B911240B5DEDAE8E516849431B67A92D4F430038275FFB1A6795AFC91B3),
    .INIT_32(256'h4427CACEAC76156DEF0F8C59618ADBDC9AD77FE34ED1C5814671D5F2B80F016B),
    .INIT_33(256'h96F03BE0C6D1D9C555B9B3999D4B5FC1238826255D55408A26CEF0D88115C774),
    .INIT_34(256'hE76EA49E7977C8AD8432B69EEE2C045E0E6AEC398BBE9427FDCC4ACB9600F42D),
    .INIT_35(256'h53C427065D135F1CE0CD03416D896B26B63A3479A7B2FD709148D7D10E426427),
    .INIT_36(256'h46FACB4B49D76AFC7606C2DC0E8404A96054DA68FA9A7F764E2D0E4C01E56EFA),
    .INIT_37(256'h07C267DE8ACB5E351E8366D524B4A49D5CCF6FD2B5AB30531E93E8825219C8C2),
    .INIT_38(256'h8041E29BB7EBFEB4777CB0FA4EB6E4B15334E88C6A32143FBB1F6FD2D88F4F33),
    .INIT_39(256'h195152526A73937B0972B66AA55C49EE4024C93F1B1EE272C06FAA52ED9011E4),
    .INIT_3A(256'hA8D10F87CD9228D39172CA619051D7916460BF0529455E74826E0E83150C5BBF),
    .INIT_3B(256'hF4F3F1F0F6FEFEF7FB163750491FC237F10E6809B92A34B018DFA46974857076),
    .INIT_3C(256'h5BA55B1AC0282DF8A44E0698089FA6FA75FB93356A095CD22DC92BBD091507F8),
    .INIT_3D(256'hF6B196DF9A0B3E6EE7B7EE6DDAF2E0D9EB1C4678843DC73830B771DAA45C9CAC),
    .INIT_3E(256'hE067B533B35001DDEE1C4B81C8F82E667D9AB590451AFDE8EBB47328CFBB048E),
    .INIT_3F(256'h01AA5207C0A7C62093F748B3F50AEBAC96592A34FE75F29B678AE047E8B75FBF),
    .INIT_40(256'h1A9E1B3F20B65B17E2A8867B728096B4E205FEE2A88895C50F6BB0C69C5E5231),
    .INIT_41(256'h355731DA58D9B216A7EE4FC702FFE69C371001FCD6ABA5A8B89D7958434649AA),
    .INIT_42(256'h0FD4976F6C7B92D80D210BBF6304D20D79E380FB464112AF3A14B646295192E2),
    .INIT_43(256'hDD49D4293205CA7E18AB28D2AEDA4EC7245B2DDAA13D1B78DC1AA02B643FDB6C),
    .INIT_44(256'hA21842F5781FD1B0BAE0021F3A3619F3A95004E11765CE0A4775380FD38E748E),
    .INIT_45(256'h30180D06FAF9F4EEFE2C5760442203F0EAEAF40312FCC49A6916E0F6184CC32D),
    .INIT_46(256'hA797A1B8ECFF0B324F4F4F3C0CFAE6C1C0EF142524F9BA8C615F89B2DFFC1832),
    .INIT_47(256'h254F777B4B1BFBBA8B707DC4EF010F11120F02FEFAE9CCAEB1D5FF2D574C20E8),
    .INIT_48(256'hD0EBFD000A130F0C09FBE8E6F3F1ECEBE9F3041512F5C8B9C1CCE5F0F5F5F205),
    .INIT_49(256'hCED8EFF9FEFDF8F3F802010404FEEDDBDFE8F5010401020A10100AFBD2B6B5BC),
    .INIT_4A(256'hF3EEEFF502121D16FFEFEBEAEAF0F3F3FA0100F9F7F4F8FEFFFEFEFEFBF4EFE0),
    .INIT_4B(256'h01EFCFBBD1F1020D110D0D0E10120BFBE8D2C1CAE5F6F8FE10171006F9F0EDF0),
    .INIT_4C(256'h311505FFFCE4CAC4C4CFE7F5F901080C060B0E0AEAD2EEFEFBF9F6E9E6F1FA05),
    .INIT_4D(256'hE2C6C3CFE8F70914100901E5C4C4D9F70A00F5FB060F130EF0AA82B7E8FC1F3A),
    .INIT_4E(256'hDCFB0F171711FEF8E5D7E8EEF8386E4C1EED9B6A6777A7D1E7F107374F4F3710),
    .INIT_4F(256'h392B191303E6C9D7F0F4FA01FE0000E4C7BCC5F2326871491A05FBE2C6B3A1AE),
    .INIT_50(256'hEFF4F1EBEDF71B4A360DF0CDBCC8D1DEF2F6FBFEFE0505EFC6B0A6C0F2214B45),
    .INIT_51(256'hF1FAFCF9FAF0EBF1F3F4FA05141E12F5E8EBF5FCF7D4B2CEFA0D1411EFC3BED5),
    .INIT_52(256'h0EF8ECF2FBF8F3F3F5F6FBFBE0C6D1F0FDF9F9F5EDE90A261204F9E4C9C7D8E8),
    .INIT_53(256'h04F7E8E8FA1F2F271108121B0DE6C4B8C8EAF8F1EEF407161602C9ACD71B4030),
    .INIT_54(256'hDCF5FCECDCE4FB1225FEB27187E8090A07080F120FEBC0BDD9F0FBFCF4EDF1FB),
    .INIT_55(256'hEEF9F5ECEBF1000904F7E9EE0F43572AF2C0918CADBE9EA3C5EB396C4A09FAE9),
    .INIT_56(256'hFAF7F7F8DFABA7DFFE03FFEFF3F80606F7DEDBFD00FCF7F7FC276135FEE8B5BE),
    .INIT_57(256'hA18990A2B8D3EAEBFE132A4B2F06F0F0F7FE05000303FFFDFCFAF7F8FA0103FF),
    .INIT_58(256'hB4A2B6E3FBE4DCE8FF33451CF2D7D8F5F2F0CFA4C5FE4067646D5E493F12DCBF),
    .INIT_59(256'h2128FFDCC5D8EAE4E0D4E1062B290E03F7F4F1EBD5C1DAF90307FCFA080D03E0),
    .INIT_5A(256'h00FBE7CBB6BDE2050B09FCFA0B14161303F3F4FF08F9CDBBDCF90500DED7EFFE),
    .INIT_5B(256'hE9F50C0AF9FE000A1102F1F8030A0D0D09FCF2F3EDD6C6CCE5F8FE02FEF7F7F8),
    .INIT_5C(256'h0F2D22FFF2ECEBEEF7F5EBEDF7FEFFFDF7F6F7010A08F6ECFB1915F7F1D3B9D1),
    .INIT_5D(256'hE2F9F5F7E1E3FC091C311C0107F3D1C5DCECEBE9D7CBCAC6C3DCFD060401FCFD),
    .INIT_5E(256'h0B28232918F1F1EBD2D6EEEBEBF300050407FDF4FDFFF3EEE8ED062923F2C6BA),
    .INIT_5F(256'h131100F8E7C5BAE306FFF9F8F1F1FBFAF4F2F6FE06090B0600F7F3E7D7DBDAE6),
    .INIT_60(256'h08F8EEEDE9E9F3F7F3F7F8FA0202000A0E06FFFCF8F4EFEFF6FAFC070E0C0B0C),
    .INIT_61(256'hF4F3F9F6F3EFEEF5E7CCCEE1E9F7FCF7F9FBFBF8FAF4D6C3C9E1F7FF01081211),
    .INIT_62(256'hF4F5F8FC07110AEFC9C6E3F4F8F2EBECF7FFFFFCF6F4FE0B0C01F9F9F8F8F9F7),
    .INIT_63(256'h0001FBF6F3EFEFF6F8FB0B030D2B10F2E0BBB2D5EEF0F6F7FA040701F7EDF1F5),
    .INIT_64(256'hCFCBDFEFFA0005080F15141303F8F5F3F9F7F0F0F8F8F8F6F3F7F8F900050401),
    .INIT_65(256'hF1F4F2FA03050602F9F5F8F7F6EEEAEFFE04FAF2EFEBEBFA01F8F4FBFF0102F0),
    .INIT_66(256'h090D07FEFAF6F4F8FAFCFAF7F9F7F3F1ECECF1F7F5F1F0F4060F1003E5CDD0E6),
    .INIT_67(256'hF0F0FA040A06FDF6FA01FDF8E6D1DEECF0F6FAFFFDF8F8F9F8F0ECE8EBFA0607),
    .INIT_68(256'hF8F9F8F900080D06FDF8F8F8F7F6F1F2FD050703FDFCFBF8FD03FBF9F8F2F2F4),
    .INIT_69(256'hF2F8FAF9FBFEFBF9F8F0E9EBF0F0F2F8F7F6FAFFFEFDFF020100FDF9F8EDE5F1),
    .INIT_6A(256'hF7F9FBFAFCFAFAF9F8F8F7FAFDF8F8F6F2F1F2F7F8F8F9F8F8F5F1F0ECEAF1F4),
    .INIT_6B(256'hF2F8FAF5EEEEF50005FEF9F9F8F8F6F0ECECF2FBFFFFFFFFFFFBF9F9F9F9F9F9),
    .INIT_6C(256'hFA0102FCF3F9040C0B02EFDAE5F1FA01FDF8FA03090AFCEDE8EDF9060B01F5F0),
    .INIT_6D(256'hF8F0EAECF5FBFAF2F2FBFE020806FDF8F8F8F9F8F8F7F7FA01060805FCF9FAF8),
    .INIT_6E(256'hFFF5F0F3F9FAFAF9FAF9FAFAFAF9F0EDEFEFF3F9F5F4F8F9F8F8F9F9F8F8F9FA),
    .INIT_6F(256'hF2F2F2F1F3F4F8FCF9F8F8F3F2F0F2F7F7FB020101FEFCFDF9F9F9F8F6F6FA01),
    .INIT_70(256'hFBFBFBFDFDF9F9F9F9F9F7FAFF03060401FEF8FAFAFAFAF9FCFDFAF9F9F9F9F6),
    .INIT_71(256'hF9F9F9FAFAFAFAFAFAF8F8FCFDF8F9F9F9F9FAF8F9FF000101FEF9F9F8F9FBFA),
    .INIT_72(256'hF8F8F9F9F8F8F9F9F8F8F8F9F9F8F8F9FAFAF9F3F3F9FAF9F5F2F4F3F3F4F5F9),
    .INIT_73(256'hF3F1F3F3F7F9F8F8F8F9F9F9F9F9F8F8F8F9F9F9FAFAF9FAF7F3F3F6F9F8F9F8),
    .INIT_74(256'hF7FB000101FCF8F9F8F8F8F8F8F9F9FAFAF9FBFAF7F3F4F7F7FC01FDF8F9FAF8),
    .INIT_75(256'hFAF9F8F8FCFCF9F5F3F6FA0002FEFDFBF7FCFFFF00FDF8F8F8F8F9F9F9FAFAF8),
    .INIT_76(256'hFDFFFA000703FDF9FBFCFBFDFAECDDD4DFEAEAE9E9F2010E0DFFF2EDEFF900FD),
    .INIT_77(256'h70ADE90005EAF32372B19844C27B8DB2D81D28FAF3F3F4F2F3F2EDEDEBECF1F7),
    .INIT_78(256'hE82F785DCAAFF1F3F8FCFFF7E9E6F6FFF5ECEC113C443F2AEAB9BDEB04DCA373),
    .INIT_79(256'hF103203657766C5142180D15CA6E18AD8B0CB5256970665582E108A0DB29DD5C),
    .INIT_7A(256'hF41437E7145B32987B67C8C2B2F42D29D7E8DD85CC7D68DBAEE15E91A1A1CEEF),
    .INIT_7B(256'h34D963AECCD3E727347B456745966A4901908975B2EDEFD6B3CD0F70AD6816EA),
    .INIT_7C(256'h42DFF8BC03ABEFDC3B640BC04DD6261F2B87E0620032FC44E5FA45780860E7D9),
    .INIT_7D(256'hAAAFDC071B09CF4FEC2982977DAC0973238E942D6DF5227273F5158E12017786),
    .INIT_7E(256'h97D7EEFC091A292C2B2612F7002D3820FAA96AA9F83892BFA5610FC3A57E77A8),
    .INIT_7F(256'h1CC37835CC56E8DF184A21231B340607B1C4B76525CF2393CC64AE3187BA7B3C),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__13_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__13_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h02000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__13 
       (.I0(\addra[16] ),
        .I1(\addra[16]_0 ),
        .I2(addra[13]),
        .I3(addra[12]),
        .I4(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__13_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__13 
       (.I0(\addrb[16] ),
        .I1(\addrb[16]_0 ),
        .I2(addrb[13]),
        .I3(addrb[12]),
        .I4(enb),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__13_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized19
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[16]_0 ,
    ena,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[16]_0 ;
  input ena;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__12_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__12_n_0 ;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h227419F40C7B0C7A3AF984F9017CC13E605F9877E41CF3063E43F0247CF7CFFB),
    .INITP_01(256'h5B8992DDAAD105DE476935EC9871B6F3C26CBB191FE5B67315C26CCFF8031604),
    .INITP_02(256'h1C3077C79CCC88E1C1FBBC307F638605CC712D8C8E1C1891225B8952BDB891A2),
    .INITP_03(256'hC8D88639BF30C207C430E1FDCE007E600E0EC87183B108387E470C1FB8E39BE3),
    .INITP_04(256'hFF807E70F9F0FF38F0F9E1E3C3FF870F3E1CF33E204F906300786223860FCC39),
    .INITP_05(256'h001FFFF800FFFF8007FFE303BFC00070E003FFC0007FE10C33C70CF386109EC0),
    .INITP_06(256'h0FFF0FFF83FFE1FFC1FFC7FC1F207FC1FF8FFC01FFF7FF883FF1FFFF007FFFFE),
    .INITP_07(256'h10FFCFFC1FFFFFFBFFFFFF0C1FFC0FF83FF8C7E7FFF87FF80FF81FFC01FFFFFC),
    .INITP_08(256'hEF18FF8D5FFF847FFFBFF007FF1FC31FFFDF9C7F807FE07FC0FFA8E3C21FF1FF),
    .INITP_09(256'hF3FF79FFDF7FE3FFF1C4FFFEF1FF8E78F7FC3FE1FFF7BFFF38E3879EC7C3FFE3),
    .INITP_0A(256'hF7FFFFFFFFFFF0FFC7FE79FFFFFFF07FFFFFFFDFFFFFFFF807FCC3DF17FFEFBC),
    .INITP_0B(256'h9FF0FBFFDF8C7FF7FFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFC3FFFFFFFFFFF19),
    .INITP_0C(256'hCD20114D064B8030AE7862C483CA1E2401AE24D21E1FF3C1E7FC3C7801FFF807),
    .INITP_0D(256'h8DBD302943D9BE638E4D48DA47A9028BCEDC750012DF8BE07CE2471D84DA4E3F),
    .INITP_0E(256'hE405F304FCC19FB037EC18439B809BCD8BFF9A23E79831E62784FFB208803FC4),
    .INITP_0F(256'h03F07323B495DC88EB3F338C01DF9CE20E47DEF8CD9819C70CF9817021C7B827),
    .INIT_00(256'hBB35B1E8D2C82AE05A74600761AB343262CA4C2382151A6389A37275F5B55F53),
    .INIT_01(256'h22971A498DC57DED59687A23269B27A3C6696AF69EECDDA573BE1BBE034CA470),
    .INIT_02(256'h2A432AD253B8EA2A2576A70B608D18C84599A66FE56AF14BDCC99B78B630EA2B),
    .INIT_03(256'h80EC236A0F204088EC9C7B34ADDAC56D0BC368D5098A75164E51A2C16614512A),
    .INIT_04(256'hF49B531E1C68A13D3937CCC99A55FB6BF579B4575A75B762136C16A79D6838E1),
    .INIT_05(256'h66810C4D1FCE253F2FAFB5EF6D6B26BB134A1A88D15507B50239B6DB5AC33874),
    .INIT_06(256'h4B58AED712AB347AEF5F79672679EA639D5493F981EE195DEF82ACC23E263C9E),
    .INIT_07(256'h3C6F1D206F1FFE44C93BAEA9C097F1AC7F8BCB1F7E07962E97895D03557EEDA5),
    .INIT_08(256'h4F1B037FE22E96AF8A5520366A25AB28AD6FD8CDB8402EE37D52A3FE81668B2E),
    .INIT_09(256'h8F8FE7A5B64EC0E6A7CF21608E546BB7BA41D201E9F024981730D11EC1793A45),
    .INIT_0A(256'h2EC766D13315EF018713C8B166044C1A02214F572D0729AF287D21752088FC13),
    .INIT_0B(256'h61C94270832B6DFDF450F729F572C3DF978461A53769CAC714514ACE2B667448),
    .INIT_0C(256'h69EEC40EA038A2922BB56D8E0F5A33BF21ED3AFAE278346ADEA8BAED1D1CE788),
    .INIT_0D(256'h8F66090B059710ACB062441938B588120088E800A42D2D1BDFF8390C9FDD2F0A),
    .INIT_0E(256'h2B8A97EE3B680CADDA10F88C29A682749B4ED907F42A544F23ACDAD9F12AE5D0),
    .INIT_0F(256'hE5A17026709CA768DA8DD17AA7DA9807FC9F3350BAC6916834613B4113724E10),
    .INIT_10(256'h00BFE53D27DFB8412552AC91F393BE42396A82656FE788C325E96467FF7AA0FE),
    .INIT_11(256'hEFFB8C6AD363A7E9E8AB9E4D2588BC42BE62993D5FCAEAA3A1147A79BAB4997F),
    .INIT_12(256'hA44B950F70329F55C8E6709A2B8C37A5B77A22C2C142790B5AE4FDA959A14A81),
    .INIT_13(256'hCC55B29206BB405722C297D66BD7619AF9FBBFAC453B94CAA6066B6DDA0A98F8),
    .INIT_14(256'h87B056A3FCE7780BD03CF5677B19732B73047F780BC1BC18ABF4C9721FFB12F8),
    .INIT_15(256'hB1FC4AAAEFA833E2D2FFE88D1FF71B90F60CFFCAA6E560BFB223CCD92693DEF2),
    .INIT_16(256'hE64840C897BE08890730EE51CDCA1A0E82DF8DCA97377161E69FB00E6E6D22BB),
    .INIT_17(256'h425F2AD6BFFB91B75810F7F60934525710C4C6E907B8432074E1396C42F49B98),
    .INIT_18(256'h1BB81A82F4839840C889D5416009ABA2EE4FCE4135759A4B71994ADDA7F167DF),
    .INIT_19(256'h39A05583E8E346AF973210682DFCF7FC73B15C08D1F44476A99C289E95F9F2B0),
    .INIT_1A(256'hB520B0F8EC74F395A303E45EA653C887116E844AFC0E97D5900CC7BAEA56B2B4),
    .INIT_1B(256'h0A487343A74B860490E8CD4CAC98E50AC822AFE99B175F8D55F4D5FF635A07D0),
    .INIT_1C(256'hBAF9323DF1ACB3146759061771A4BAA351F2754A918530C0A523D9579BB47B18),
    .INIT_1D(256'hDF9EF66EA56927ACE393ECD410749B02A9AFF56BBED486DF5584E1B56907F356),
    .INIT_1E(256'h00407454ABF8AA2E9E6D20ED4D82813DE9FB6EB59000B9067DB4A2740D4250E1),
    .INIT_1F(256'h589218AA0AEA740ED0FF15CA479B55C9A648B0AD4CF2CD179A85F192A32ECA15),
    .INIT_20(256'hC61D7D8312D1F976E2F5D266B63668A49120AC9710E66BD0B83CF0C7FC452CAF),
    .INIT_21(256'h4D9FB3854552A5B63FC15F89F1299CA53BEBDD0E462D94C071F4A11D3E0DDCB9),
    .INIT_22(256'h9CD5630D82CDC47E33EB0B24EE853F72E55FF942F391312D0DA02A72177636D3),
    .INIT_23(256'h1221F1992A42E664826626FBC5C30C23EE856CB013B35160E822A186A0C762D0),
    .INIT_24(256'h7FDF509B9030B9431C5BAFF2FCE1D3CEF669BA890DBCC7DF2DA0BD6ED57395DA),
    .INIT_25(256'hFA8A42922C95975DE65B2D70D80D04C8918DA90D7E945EE48470A10A5B40DA84),
    .INIT_26(256'hF9CF88A0EB150DD0AAB8D4F72D676722F8DCB2A8B8E0F9F70201D1C5FA306652),
    .INIT_27(256'hC8462D749BC4C9D8EF001F345B87854C1EEC7C3E65BDFD0D1DECB9D92A948D28),
    .INIT_28(256'h3DF9C1C1CA4AEC4B7C9FD200F6AF831662BAA30264D1FF08F3F33DA5DAD9A12F),
    .INIT_29(256'hAFD5078011B9104D8655FC9536C46C10A98BB0E83AC01A92022E3D1FA612EC9D),
    .INIT_2A(256'h0C0E1F2F1B0C110E05F5BC6D463028508CB8FA4CA4DDF814E69D5921BA069F8B),
    .INIT_2B(256'h0B7CEA3C63799ADBFBDBB9722F02D7935C3F3369808FBCD6E7ED134B6651200A),
    .INIT_2C(256'h22FC17466C7D7982A4DD000B0A0B0C1F4A8DC6BFB7904C2715FCBA44EDCBA7B8),
    .INIT_2D(256'h9A83673E11C37E6642373F1F16304A6EA6E1FC4191D60301E5AD7449350ED480),
    .INIT_2E(256'hCFAC8D807A877530E08C564E677F6B32234E7FC7F2EBE8EBFD36667F8D848699),
    .INIT_2F(256'h3A506A828A734B1C0B0C06F4D5BB98809AB6C0A2695C77A9D9EAE1E5F41256AB),
    .INIT_30(256'h013669776E56361E12FEEBC1AABFDDEFEEF2F1ECEDF0F8EDCEAFA9C1E0EEFE21),
    .INIT_31(256'h120BFBE8D6DAEDF3F1F0F0F8030601FDF6F4F4F4F2D3A88A8898BADEE9EFF6F8),
    .INIT_32(256'hD1ABA0ACD8F6F5E6D2DEF4FD00FDFAF9F9FAF9F8F4F1F2F5FA000400FE070E0F),
    .INIT_33(256'hDAC3C9DAD3CCD3E4FD0D1407F4E6D8E6F6EBD0C6DDF10F3C5343200C080909FA),
    .INIT_34(256'h1A160BF2CAC2E2FA0204FC011524303719F4D7C7DEF3FEFFF8FD1433493A13F7),
    .INIT_35(256'hEEF70006080603FCF4E7DCE3E8F0F2EAEFFC040907FFEBCAC8E3F2F5F6F70010),
    .INIT_36(256'hFC060B090806FDF9FCFBF8ECDEE4EBEFF6F7FB02070908FFF5EEEEF1F2E4CCD6),
    .INIT_37(256'h0B0F0B05FAFAF7F3EDE2E6E9E9F0F8FF00000000FEFAF6F2EEEAEEF0EFF3F8FA),
    .INIT_38(256'h0A0C0B0D0F0D06FEFBFAFAFAF9F6F0EBF1F8F7F6F0F0F1F3F7FAFCFBF9FA0409),
    .INIT_39(256'h09070401FBEED7C4C7DBEFFBFE02050A0F1003F4EEEBE4CECACCD0E5F3FF0707),
    .INIT_3A(256'hF8F6F6F5F3E2D4EAF7F8FCF8F900080B04FCF4EEE8DFCCC6C6CDE3EBFA090B0B),
    .INIT_3B(256'h1004F5F0ECEBEDE9E6E6E7EDFA030A07FDFE020609F2C1B0CAE5F30406FBF9F8),
    .INIT_3C(256'h24110DFFF3F1F2F1F1E4CDCBDBF5020D0D070600FFFCFAFEFEF9F8F8FA030A10),
    .INIT_3D(256'hF4F3F4F7F8F8FDFDFEFBF6F4F6EED2CED0DDF4F4F1ECECEE02141712FBFB0A20),
    .INIT_3E(256'h050503FBFBF9F2E1D9E8ECF3F5F2ECEDF5F5F5F4EDEBF1F6F5F2F4F5FC04FDF6),
    .INIT_3F(256'h060B01FF0008331EE1D0D2D2E8D5AAB9D6F70E07F2F1F8F6EFEEDED3EEFE0B0B),
    .INIT_40(256'hA6C105252401FF1311150BF9F5F8F5F6E1C5C1CD052A0CF3F3F3FFFFF0DBD3F4),
    .INIT_41(256'hF3F900041A41300AFDF6F5F3E1D3C0D3FD01FE02FC0E2506FCFDFF111D12D0B0),
    .INIT_42(256'hE210376A5D3F3F402FECA15A5AABB79B95AAE11C4E4C250700F8E3CBA493A1C7),
    .INIT_43(256'hE7EEDDDBFBFCF7ECD8DE04FAEADCB7C9F30202FEF4FD180D05EDBCB4C8D0B8B2),
    .INIT_44(256'hD7E0DFE0D4B7CCFA080A02F4F3F4F3F1D7E20D0C0E03DCE21F2B02ECE3CCDFFB),
    .INIT_45(256'hD0D2CFD7D2CFEEF0F806FFFAF6FDE3D6FFEBDBFB050C151516131F2608EEEBE1),
    .INIT_46(256'h01FD02ECD6E6D2C2C4DCF6EFE9E3D3CCF113130E01F50A332CF8E4D8E0FFF6E0),
    .INIT_47(256'hE0F9FE0DCCB4DFFB2B3716F9FA010E08F9D5C2E5FDFBF9D5D9090922FBE002FC),
    .INIT_48(256'hFEFD040713FCD2B2C1EB16382808F8F9F9F8F5D3AEABCAEDF2EBF6010102F7D7),
    .INIT_49(256'h0111FBDFDC012820F2C6D10E5030F3D5CD0A28241DC8A3CEF11905F3F5F3FA03),
    .INIT_4A(256'hF7F8F6F4D5CFE9D2DCFBFFFD01E7E0FAFA01DED5F3F5FAFEF6ECF7FCF8F9F8F8),
    .INIT_4B(256'hFCF5F7FC0EDA8186CFFBFEFFFEFE0F302D0AC6AAD7FBFCD7C9C8E6354D3D1AFA),
    .INIT_4C(256'hFAF4F4FD1F3718D49DA4C1EDF6C2C1C9F5354524F6EFFB1708F6EED3E0303E0B),
    .INIT_4D(256'hFDF0F0F7031508FEFFFF041A11FA0400FCFDFCFDFBFFE0D5F5FDFAF1F3F7FC04),
    .INIT_4E(256'hD0DC02FFFBF9F3FB04FAF3F3F3F4FCFCF6FAFF060802F2EEF7FAFAF5F0F1EEF4),
    .INIT_4F(256'hFBF7F8FB0A0BFFEFD3E5F8F6EDE8D2DD00F3ECF2FE0207FCEBEFF2F2F8F7E7E5),
    .INIT_50(256'h0E1204F902F7EDF0D5C0CAE1F4F5F7DDDCF8FE01F8EEEAF2FA03FEF6F9FA0E0A),
    .INIT_51(256'h040C171908FBFBFAFFFDE9EDF9FB0505FEFC06130F03F8D8DDFE03FDF5F5F4FF),
    .INIT_52(256'hFCF9F8FCF8F8FDFAF3ECEBF0F1F3F7F9F9F9F9F9FEFFFBF8F7F2F0F7FF020403),
    .INIT_53(256'hE9F0F2F6F8F7F8F7F5F9FEF9F8F7F5F4F5F5F5F5F5F4EFEDEFFE00E6E1EEF2F5),
    .INIT_54(256'hD0F0F7F6F6F6F6F6F6F7F2CECFE8F5F8F6F5F2FB040A110D00FDFBFAFAFAF9EB),
    .INIT_55(256'hF0FF040403FCFBFAFBFAFAEFD9E6F90003FDF9F8FF0D0DFBF4F4FAFBFAEFDBCD),
    .INIT_56(256'hF4EDEAF1F8FAF9FAFDF7F1F2F5FAFEFDF8F7FBFF03070705F8F2F4F3F8FAF8EF),
    .INIT_57(256'hF4EEEDF100FCFAFAF3FBFBFCFAF6F0E0E7F2F7F8F9F6F2F7F8FBFBF7F4F6F1F1),
    .INIT_58(256'hF7F8F7F8F4F2F8FBF8F8F4F0F7F8F7F4F1F0F2F9FEFEFAFB000000FFFD0001FF),
    .INIT_59(256'hF9F9F9F9F9FA00060705FDF9F8FAFEF9F8F7F6F6F8FFFEF9F8F8F7F8F6F2F2F2),
    .INIT_5A(256'hF7F7F7F7F7F7F7F9FFFEF9F9F8F6F9F9F9F9F9F9F9F9FAFFFFFFFBF8F8F8F8F8),
    .INIT_5B(256'hF8F9F8F4F3F8F8F9F8F8F9F9F9F9F9F7F6F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_5C(256'hF1F2F2F1F3F7F5FAFF0000000000FEF9F9F9F9F9F7F4F5F9F8F8F9F9FAFAF9F9),
    .INIT_5D(256'hF8F8F8F8FAF9F9FAFBFBFCFCF8F8F9FAF9FAF9F6F6F8F8F8F8F8FAFAF9F9F6F2),
    .INIT_5E(256'hF7FB00FDF8F7F6FBFF000000FCFA000101FDF9F9F9F9F9F9F8F8F7FB01FEF9F8),
    .INIT_5F(256'hFE0707EBB7ACBDD4EFFCEDEE10465A46FCA698B4E703FFF2EAEBF3FAF8F8F8F9),
    .INIT_60(256'h0102070E100D02FDFEF8F2EBECF6FDEDCAAD9EC5FB172613060C080D0CEEDAE1),
    .INIT_61(256'hE1E6F82423F1B9ABC0E2E69B8FBB268BD2DAE3555996151D04F8F8F5FB061517),
    .INIT_62(256'hB35D2BFFECE8FD2B4D2F02EBDAD6DDC79F99AFE20A14F2D3C6C70243697C4DF8),
    .INIT_63(256'hDB9020065ABF90E720BF5D450C27F09F20522E073DFF06B469A2F25137320D5F),
    .INIT_64(256'h3F44873C178C3A621AE8BFAA206258DA0C0C17DF8F6EBF0E543690ECC44C35CE),
    .INIT_65(256'hE5E59ADD6C4CF67F79DD5426762DB09641FCFC51700054D908FBC2E12F1D4944),
    .INIT_66(256'h20BBF69008CCCC453FB0B9A0DCF1BE45E5C10FA40AE5DE2615D42A3030B415AD),
    .INIT_67(256'hC3AF10C745556E094E70383CC4761D69D4EA9B96B099EBA49C119D1ECF4CC215),
    .INIT_68(256'h9761DD3DBDD0682FD5DE8208485A22B7A7332477DB75B8428768F7AD98A2E2E8),
    .INIT_69(256'h5ED250083AED2E0B966CE861A6346ED5B88D97BB5CC48BDB71EE6B7D06AAE5BF),
    .INIT_6A(256'h54957ABE959C793C234166A25F959E97C10751C30A8CF98C4985DA1157647698),
    .INIT_6B(256'hACCE0200AD599553150740752F8F72C4279939C8F97CE19C66009B19F5C27B26),
    .INIT_6C(256'h2C47918F2EF5C4CFFFBE0E658FBEE0CA78D3C442299F078B87DA95E6AE3EED9D),
    .INIT_6D(256'hDB28521D9C2E7441F332CA1D3D89E63F955230241E209440D4CA707E77480B56),
    .INIT_6E(256'h3027CF966E11A454017D02D0D723BC150A8EF56B3B7D4FD7CA4EC936C7A9F8B1),
    .INIT_6F(256'hBE9C832DE4FDCB805A339EDBF9FD17F0881506F89ACEB55035B4063844C1B603),
    .INIT_70(256'h6B46684652640F5849156156405C9CC5B649C86279CCB26853C514573059AEAF),
    .INIT_71(256'h9BEC9C0A15FBD1D7FB192E6CCE09D33BC1683D64C3F2B56920F74DF392FF3FFD),
    .INIT_72(256'h7B81932BB92FB5BC6AFF93EC3EB62F3884D454D82454CA6EB180117203950EB9),
    .INIT_73(256'h1ABAA1FF0E82F66D100A71F3C3592B44933CDF3C1FF819FDAE36A3D54B81236F),
    .INIT_74(256'h21AFA13AF90CAD58850A74B3B36A60E529C523AD26E20E9BD12277AA79FF7B06),
    .INIT_75(256'hADBE0DC1A5599A7E6D63147BCF5AF4544FCFFF46E6527CB7E709AE487367F68F),
    .INIT_76(256'h104FB7BD813BDE3AB92F94560621943BB705B3448D9EB0800791EE1D84304CA1),
    .INIT_77(256'h967A0BB30A148C86B4B3C8D0EA89D7B6CED471068234F41C8F5E2534974303B1),
    .INIT_78(256'h86297AD65529870C83E62962CC537660095FC78B56EE84516EA8570B9827617D),
    .INIT_79(256'hCF997B9F16B9096F2577816A42B11D8D17F9D6B49AD0ED6351075322F2C79489),
    .INIT_7A(256'h069737F26341E4081CE067AC009997A7BBBCD330D184FB586C4AF86F0EB17A3B),
    .INIT_7B(256'hCA9B73E0422C04DA2D447974E7245E7E8E942D3FD4C85F95C76A5E7656CB3D5C),
    .INIT_7C(256'h66898DD6F6DC4BDA8E04DD0F57829FC7FD025A1C67005D1BF39F1FE1D3D7552F),
    .INIT_7D(256'hF6C3FDC84DA5B41C99CB7FD6FAF5E4E925AF1B2AD53FA5590FCCC2E343B1001D),
    .INIT_7E(256'hC7C0758CC5A68138692B005EFD6725109D459AF291E23907336113C6C375E481),
    .INIT_7F(256'h210701060706FDD58C5858AE60BEDBBD33B784F47277F231836B5B6DD856CA81),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__12_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__12_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h02000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__12 
       (.I0(\addra[16] ),
        .I1(\addra[16]_0 ),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__12_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__12 
       (.I0(\addrb[16] ),
        .I1(\addrb[16]_0 ),
        .I2(addrb[12]),
        .I3(addrb[13]),
        .I4(enb),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__12_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2
   (DOUTB,
    ena,
    clka,
    enb,
    enb_0,
    clkb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]DOUTB;
  input ena;
  input clka;
  input enb;
  input enb_0;
  input clkb;
  input [15:0]addra;
  input [15:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTB;
  wire [15:0]addra;
  wire [15:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire ena;
  wire enb;
  wire enb_0;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .INIT_00(256'hD418A921A35BF3230DA2F8665CC1D4E40AA51309D9E08B04BF1C2FD855140106),
    .INIT_01(256'h3085B6BEF7CBA11660ED2FA3393F88664D8F7A61A91A086B72A3AE4C77762B4F),
    .INIT_02(256'hAB4C53B659CACCC854418CEFAC8703A6C2FF357AEE7A2BC3FB9D0BEE95FEC3A7),
    .INIT_03(256'h3E0D82EEC922BB0333014BBDBA612A027B113F38A56F551F86E86920492E7DFB),
    .INIT_04(256'h65387717753F7A39A6C1E0336C13F60A69372E0998C799094BC8849F1BB0B2F7),
    .INIT_05(256'h537D44A4C1745065A02F6CCF08A003B3AE7B594B6510B98582A28CC1115D17B5),
    .INIT_06(256'h8CBFF245A763C6247C98B20678D9B615924714E1D92627B052E87297883DEF44),
    .INIT_07(256'hB25CABD5495F0EA44505C758DD5A9B0217ED97CE8595582ECCEB65064EAA375A),
    .INIT_08(256'hA60F7F4B3C910C8BEAAC7B0318CC5E8F41C127255A90752E2BA19A5BC4188FFB),
    .INIT_09(256'h6162D92A483D9FC66D772C0A4CA8BC43F3561F9C3EDD839B187B1D0F6837CCE1),
    .INIT_0A(256'h44C6568E2F054F0268C20A3A7C7C1CB114F2B1A586664DC216205C40507B7E49),
    .INIT_0B(256'h86F6FA7CD1EFBF7026A4DC183113D9B96FE5795DC5A49D66FEA7F613CD33F09D),
    .INIT_0C(256'hB7871B17077C9B5143F0D5F791E700F0F742252B4E5BCFB253D43715918DE8E3),
    .INIT_0D(256'h863F31849A531D271E97CC6BEBE5C58D27099E63F9001D363993AB8C4DB30866),
    .INIT_0E(256'hDD058A7313A8149F9F5678448C000826FD327BA24984C3608BF169F4C4FBB9B4),
    .INIT_0F(256'h5F19C088B8430B9BB7683C22675DA4E67ACA5C03BF006FA54CC6464E7591164E),
    .INIT_10(256'hBF429D4C14CE961AACD454F4CF7A748AD8C375CD63133A35EC65021FB2B09C05),
    .INIT_11(256'h1E45ACA9BE36F327B5B69E436CC9E61317447F6BC9899E5EB16B46AEF247110E),
    .INIT_12(256'hA264BEF5C3D366DD14EECB7C773162545FA08B8AE7D44F8463697DC70617D76C),
    .INIT_13(256'h2151890DB004C560D0F782DD99B72EED1FD9740844DF366AC0F8466F06F106F5),
    .INIT_14(256'h46AEE3953A09C22946C54F435F85059D30DFD96FA8EC8EFD134039C055128DE9),
    .INIT_15(256'hF0739BBFA53D95E6E91088343B7A9256B975AA013336816B401E8DD15D63311C),
    .INIT_16(256'hBFEB9B16E4F59899B30F20A6224D7D33AC371713A33522B9BFB642C8D6E1665D),
    .INIT_17(256'h01BE3F2B8FC497CEA8DB1F50EE9C2BEE8CBBCD3AB54B7E6C032EE2D991893267),
    .INIT_18(256'h361D0E65D9EBDC10E67C80BE44B03907D72DE15537D6776ED681B1A270CCF897),
    .INIT_19(256'h53720595CC1B486F6E0D5172DC2F490ECF97F74F739C25B0DE13A5802D8635F2),
    .INIT_1A(256'h98E171D701889BAFCC727DBCB86B64E0FE5C61C8CF0962E1467331F75DE75CE2),
    .INIT_1B(256'h8E9C1B0CC72AF3DE39E4AF15F56EC026A8722E1639EAA68CCB98718204FAEADE),
    .INIT_1C(256'h0C4787121AC8F7A573EB2E70787E128374D2074C12E6174EC514FC45292B399C),
    .INIT_1D(256'hA10D1C78501CB83A3B517A31F6EBA889F204092A0F16BB20037A4D9155FECA3D),
    .INIT_1E(256'hE9BCF7207DDF83EDE764BD783F7B24A12360611E763558AF78A66B5737C43C1E),
    .INIT_1F(256'h2905D566B3F42FF57C76FFDA66500C5C84ECEF6C7090FD7821F43BADE851A0CF),
    .INIT_20(256'hBC65FBB4218D186854C43E914196BD096F582815E7C73618AE730DB5F66664DB),
    .INIT_21(256'h783DC94529E0015183863A37C922956270E1A5BFFC6060C7877271D3728811D9),
    .INIT_22(256'hA36CB525C0598C0AF10B955596A62F92795054F5BE4A0EE79167D56A4558CF5E),
    .INIT_23(256'hE7A5C976A0490CEBA7FA5A64F0F673E8A456C4B4D7E15A82F119B29AC409B002),
    .INIT_24(256'h94D2A337E3DD09A83A02A6EECD7013E938B4157BD507C47844AEB15F76990955),
    .INIT_25(256'h7C8B1EEC0425AB1167CF1F192E76BB843696B30B6EA4C47F643F7AC45F28E202),
    .INIT_26(256'h98696793A9BC42CB125DE45A3F97920FF1D299233F5A4127178E861935EE472D),
    .INIT_27(256'h2479B5A67BA0AE9D20290FBB11A361BE9BCD96751B5E4231A30630086BC3C676),
    .INIT_28(256'h65FEC60B166D991112C31E74010661FC1479722A04BB5351FAB231C22D79240C),
    .INIT_29(256'h1C584721459A208866B0C8EED9361167BB342EDB23C2A0309505B316B0D196F2),
    .INIT_2A(256'hF6B77489FAC3AF15B20FE9AAC875A4A248C273D369310F9B063349B6BBEC3255),
    .INIT_2B(256'hBDD102019D057126343B31C26B3C7C8A20992D212FB4AA433C33AB84B5A4935C),
    .INIT_2C(256'hCE23F1AFFAAD04279E3B0161BDE38B470D28F9D053F251FEF8E32BC27186FC19),
    .INIT_2D(256'h886171127BD2988C7D03AE6FB82E310B4412AF1CDA5F5A2FCCB7100FD503E93B),
    .INIT_2E(256'h230805103122B41D53B65DE731377A8947C7979EAFD2955FF7E28E6F243FEB88),
    .INIT_2F(256'h0741373B57AE4E91A80DB826A1919020E906F5822A8A4B27FED31189EE1F0D97),
    .INIT_30(256'hAD99F1E6F982CDE0A57CC09489F6B7BF51236E2AD448F1C9FA4B2C4B371AB669),
    .INIT_31(256'hB6CB4E332579759C9255FC27506D4559D6A3E2E9C4EFCE58931C8CF92B90D89E),
    .INIT_32(256'h99E182AE0FE6FA98F0C9F7D885A6A26CD9DB555DB9F24DFA35A03F6DBEDF0756),
    .INIT_33(256'hFA3648F72716A579B2C8003AAADB12668E120135EA7C37FA754EF60D3B07A776),
    .INIT_34(256'h189AAF1FF191C33C68C4BCBA33DD7EA7039B85C8D86AEDB023373D6ED23369CF),
    .INIT_35(256'h3D6BE15861B07C5186ED83CB5B3CCABA2FF5E5A815C4EFE377F610F4A812106D),
    .INIT_36(256'hEBD884106AA684C41D9C656FB4FCE3EE691D25093D32F5C7DF7B3D55AAD61FDF),
    .INIT_37(256'h2345C25314EF416279AE898A5B5B052CEF287DA4E7E2C0EECD809C685F5F1768),
    .INIT_38(256'hD46CB2DDDF0803E0DF72D7F606E7F82B6D085858DE0C06502BC7562CD20D4498),
    .INIT_39(256'h3BEF138EA154B43F7938A5CEC2EF5FCCB6CB0F3D10ECAAA8C7569FAA44CAC883),
    .INIT_3A(256'h2A968B4B220432C76F4A5962D3D0B5785B08ED00A19E84D5138E4E61348CBBD9),
    .INIT_3B(256'hE2507C8FBC5A13E5F89F8E7648BF4678F694DFE67EAABF8BE10766565ED7803A),
    .INIT_3C(256'h2E877476F905D8A288E6F3D8BA914A381582D379E344B446952F524D00F74B39),
    .INIT_3D(256'h8F19521BF362C83D4A985579114E17CFA0393BD2814426538EACF556B945BDF4),
    .INIT_3E(256'hC0C521FCB742BE33A758B3802F9FB6E322FE2DECBEE965C54724D58368663219),
    .INIT_3F(256'hE11AF49B9CF978CD2333697C83DD3EF3B27CB79E9D98DEFAED1850AA69A1655E),
    .INIT_40(256'h7CBF016ACB0524D5DA849CFA8912E85C573A24872D6794F8509458A9B6F5B615),
    .INIT_41(256'hECD3241FE3F809AFF8FA960EADD6A144A8648FAC7A16E586D8E6E153147298EB),
    .INIT_42(256'h0E795EBD202C92830FDD646E35B799F941CFA4EFE5B8B369E027379355C231E0),
    .INIT_43(256'h5DAA1B4345E4F355433DEFDFDFC423E8629B36920A5CFF163D76C2517B8BE465),
    .INIT_44(256'h51513F789C502675B14463EDBD6AF39CA6066ED457905A5055DED49E85A67356),
    .INIT_45(256'h62BE27ECCAA7B33CF38D27CDA5700AF6FF362F524B42DF700558A714EA8792F3),
    .INIT_46(256'h80108C0E329AE8843F49C35860AE41F05AA055746B71334B1827B2023C600B3B),
    .INIT_47(256'h909D7C736ABF375E35A4D49B9D14266BC30028C27E2D731D019CA939D3A46FA4),
    .INIT_48(256'hA8D31429BFB65070081483BF079548119B06BA24F692A630930A2564F7B983A7),
    .INIT_49(256'h39554060B9619D21062F3DC37C66981CFBA695F0736DF413F1FFCFB8DB30E53C),
    .INIT_4A(256'h7F4653AF6A05E98DFAC5492D3AA824D25FB5D4749DC44F5D07C3BE9A5B0B48D1),
    .INIT_4B(256'h987BBE699C376144B5C9A73A33E590CB9EE0A6B01E308580B10CA7C4C3B4940C),
    .INIT_4C(256'hA7480D6383225EF18CBB96D4BCEF883944C0748DA5640B28A97C47B4FB55C440),
    .INIT_4D(256'h2049C24A912BE58431F2582FFC2605567EA1532FD51F48E426F6F112059AFC10),
    .INIT_4E(256'h42DDC9BC7654711280A2676DB7FD54B2DA7DA402993858ABE2BA676B3EBB36A7),
    .INIT_4F(256'h6E7E44C606B94550157C0BC5F8D7E197F222FEEC0CA635CF31F17342E8F71E78),
    .INIT_50(256'h75719FC68BCAAC6D9487B956547F21915689AC751DF823A6C09E2CE9D847841A),
    .INIT_51(256'h1EE327EB328FCF5DE3A60A8BDF7D013159286E32AA20A2B479A72AF0FEA8DECC),
    .INIT_52(256'hF2651F39797E6178BB1C7FEE3FE628BCBA911FBD51AF752E214A0F23B9526DAA),
    .INIT_53(256'hD8EA9555BCED72A374F2A0F419DE0964E9B0B174E74A2E91172DCF3A7BF1B40D),
    .INIT_54(256'h3C525DAAD6BA557AE993CED8827245A95E8D8E1569921015E56504A66ED5F189),
    .INIT_55(256'h5419E57D95E6DDDFCFF7822BE3F5B631A88731308D2A5B116AFC880EBEA5DD94),
    .INIT_56(256'h921ECBF657F26D01F0891C57BA2137A057D9004A2D28D0A2D73D3AACF06D7222),
    .INIT_57(256'h7A6AEFAD036846BC2C46FC0AD42B41B93E0A1E99C55B179B762DF0EFD44A0A1D),
    .INIT_58(256'hEBF648697BAE35A04B4D39CE42C7E80E8D13F834CD8FE07445F02DBE358037F4),
    .INIT_59(256'h0006D8662BE8466A12804428453B08C82B9A906E43CAB0C3D4D384F5AD9148EA),
    .INIT_5A(256'hC071BDC2EEF37E8EEE611EFBBF3E61A0394E496784DDB1D650A4BFEC1320B6DF),
    .INIT_5B(256'hB56C440244A39F86C5252F364A10E8C65FA297E973F2E330B926FE139F04A0C3),
    .INIT_5C(256'h231ACEFB1BE694EB66CA84AECD18BA12E3F73E3030CD294FCEDD2A428DDAFFD1),
    .INIT_5D(256'h6ABD903D3405B267916DE271B6E0D97EB194A90D6CE375C00E9E40AD67B2ABDE),
    .INIT_5E(256'h616EFF455EC6472EAA4786FEC4654BF0015999BF615CFE87EEA0A38DC372DCB8),
    .INIT_5F(256'h080DA0673F0463C1C5AD9047E14C1E02F9C71ADD7E7B77A8FAB74DA35CFFD58C),
    .INIT_60(256'h21B03EF331ACE1C906AA6889E6797A9D1BD7479CD9C8B68BFE59789307D6B155),
    .INIT_61(256'h26105458113D31C200BC29F01AF268B05AF22D8590AFE81AAAD51F77E5D8DF18),
    .INIT_62(256'hFBE9A88D6018172AEC14C496939B0E6A694C0AFDE81FC1EC9F3C490B13C345D9),
    .INIT_63(256'h1FF2B3AFA02C8C8693BD8BE779E638609C3EDF059D9257F393463B15DB3446C9),
    .INIT_64(256'h04633812E678615DC8A4C2623782B4B2145565D394FFAF1B3D92F486C0BD5299),
    .INIT_65(256'hE1FB7A117907EDBC5EBFD550B3304A90AA1EE85D59FF9353C3D448D9D18BAE9C),
    .INIT_66(256'h8103CA012DC297CE37856AC7812619E00AC39CAEC0F58D6DF8D38B23DFDCCD8B),
    .INIT_67(256'hE8FBE680B36020CBE998C74A922FCC68EF1958BD01D5686346114CFCB1FABA18),
    .INIT_68(256'h3DB43D9318C27DC6CC4628AC51CD0F605E348C39EDB6675EA28A426A8C6BEB08),
    .INIT_69(256'h4BD53D31A8746A83A40C2E94F21323F33494E185DD972FB45BFA0D11F6998DC5),
    .INIT_6A(256'h6269E0B82AF9432D7DA126082BF9564F90A03D71C73C7E32BFF01615C7AA8EF3),
    .INIT_6B(256'h274E54AB29440033E5A5B0E85FB12648B6AA6AE2519E3E32CC2A703BA3A20D96),
    .INIT_6C(256'hA43E8067DB53A4EA43AD4CB63E779D25344CB71BE1B7B3D1B3E635F2A12E1FDA),
    .INIT_6D(256'h05E7ED65816525B1C8CC6E195A4DA2D77C2C62ABCA9A296AE1AA867F22D1C72B),
    .INIT_6E(256'h8220D196CD2B1CE9BB6152FDA23857B6A4336A578A9EB015C10609270385F294),
    .INIT_6F(256'h7D25D7E8CDC45D08DD48290FAB3C497590C3321C3C0A948628F737F9ACDF8950),
    .INIT_70(256'h98704AEC35234A589AC16F0AAFFA6177B5B21E0D524AC3BF0B6DB3094E4AC846),
    .INIT_71(256'hC6688B320F1F3355720EC332343A86B0605A7CF16A55B38A264D520A62858548),
    .INIT_72(256'hB5884F72F6F0740E474E63D75D259D112CF4B4203F46DED50CE8F5DCA2F2BB6E),
    .INIT_73(256'h06B926CAB613DF26A5D48ABD8B699F965ABA63B0A84617AB7383CC97F0EA59F8),
    .INIT_74(256'h80A48226D7FEAD6C6AC16C09A762CC078209D92A479CFFE85001E72EFD900274),
    .INIT_75(256'hBF8C1E846044E99346E60546CEE10B1A9392B435BF8C1C6E720F42B52F540D18),
    .INIT_76(256'hDCFDB1CF6158415ED63A87E4BAE604C08E071CB5D4ABC71E0E6C33A1E06332BC),
    .INIT_77(256'hF7A38E71C3336B5C47B1E5B38F29B8043BC8CDE71E23DCCB74ECAAC88824C685),
    .INIT_78(256'h402B607890413EE0EC84AD9BC33C61A69F4ADEAB052494E6D0172116489C21AE),
    .INIT_79(256'h4F4025C4FD0E4CB0AB1D78F896BC604ED50AF6CE889C6D7711E027E70C319E8B),
    .INIT_7A(256'hEA900649D81B5E1259034B1FEDBBC7B4DB7BC36B18AF07CC6B83FFDCBBC90383),
    .INIT_7B(256'h0C9987FCF27DBE3E6158EEF2392F697EA725E57CA8BB58961780DDCDD08D9B2E),
    .INIT_7C(256'h9667D0045F0A9683A367141F13782CFAB393143767132A57757573F68FC3709F),
    .INIT_7D(256'h2ACD2D18128BBEF247090A77047A03385CFF75120BFD51D615C3CB760082AB98),
    .INIT_7E(256'hEEF8879FFE7AD31E21E805051359C5EEAD859E0981EA71F4E5C43B76B21D4AA0),
    .INIT_7F(256'h2FA1CFFDF529143330F69BD061976274EF536B55A1C10ACE5EF14FDA705615B0),
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
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .INIT_00(256'h0A6AECF32D4444DD8DAB0CEBC7604BD6A65CE15772328B7CDBF01E831E7F7172),
    .INIT_01(256'h4AF0203732A4E5F5899A79D59D3FAA91247D545D5892806F5C024B481B1FD82E),
    .INIT_02(256'hC853AB970DC2FB489172BF693AF2907E90758BCA230B554C9C17E81B1B1EA5CD),
    .INIT_03(256'h22A46A1227AC12DBBF49CF5C285AD554CA1889B5B427286DD26D0C4599B948EB),
    .INIT_04(256'h8E1AF28BB40AD77D29FAF737C90C663BBA5FA53C37366E4F39434FE94DFF122E),
    .INIT_05(256'h2626345A4CAEDF0AAF5FE0AAB6DA4899EFFDE458662649BC166C8A3645880F52),
    .INIT_06(256'h5657EE85813AF6CFB5CC64395B6BAAA5627D51A21F401D2A8C109CB947F8A6FD),
    .INIT_07(256'h05E27E6FE3B73102E277B1FF29D42028D018B2673831724093DE1AAE4D180961),
    .INIT_08(256'hC4685C2DB8C18E37595E56B89DDFF3918EBE077EF6086D6E3B6B8ACE3432CEB8),
    .INIT_09(256'h50048A3C10418AF03B1F0D8C963CBFD14DF3CC5EB3BB2045B9A75D30B6742A82),
    .INIT_0A(256'h75288B0DDF47C0A1379AA203F74C9AB3AD25091CA6A22179757DAA3B7CED9508),
    .INIT_0B(256'h072C60DC766BF80B216B42E8B9E4547E68F68CD89B7A2FECDB4B38B513285ED4),
    .INIT_0C(256'hFAD08A87D11EBCF4F1E090B289EB640DA7FC7112086615400000000066D69FFE),
    .INIT_0D(256'hFFA0290A8B26847DA5C06298D5D9296E77179193C7BD1B7EC6D36F0BD341EFB0),
    .INIT_0E(256'hE6BB966081393D2E2CDECFD500278262B3C3A0D8484A8D4E43F0E36FF830F95E),
    .INIT_0F(256'h12782FE83DC9C640591C493DE3638C8D2E8C285462E4011084A64FE8DA5BA0BA),
    .INIT_10(256'hF3757F38D18FC25086BCA246C7D2BF697706E303878509FFC1E730E007C68617),
    .INIT_11(256'h440242587373C142BC1675910D62C5CB6A9AA30D6C2BB8871A1315F52B3E277F),
    .INIT_12(256'h1C1F14B87F723578FBE7DFFF1AB792D63FEB3F7F5DBBD85AAD8AE4C2AC270867),
    .INIT_13(256'hB26D10402907DD1EA26752536005CA1295ECB89E23019E33658127B146E7316C),
    .INIT_14(256'hE86FCA0DC9C57A17E1BF5F1143EF694CF9598C1242EEC159E631532A188724CF),
    .INIT_15(256'h0067468DFF943350E34D96F82303B98988D43E34BD0D975243EA2BEE72BE597E),
    .INIT_16(256'h9CCE481D24402610A5EDA0EE630622DC562FC4E5FABA2992A07DF6702818FA31),
    .INIT_17(256'h3F83FE2F8022758520C35771C628775135839C6DFF8C41C791727E28716F639F),
    .INIT_18(256'h63321C785033D55DC8AD2B08FB042E0C4F74F8E45E842FEA08EC8CC989125697),
    .INIT_19(256'h59A01787F25BC7757EF80EA91DB01107A1B8955AD9F50E37C02E58E6CBF9BF98),
    .INIT_1A(256'h9F3D7E117E6B40D869DA300CFD39F497EED93C52B5198FD9E80F83B93FF2E410),
    .INIT_1B(256'h77FA78FA61C70081F5FC8858A012A6986BC39EF45AE90A7B31DD23E7EE9B724D),
    .INIT_1C(256'hB39E3937B2F95CDD85E919D9EB4942D534657CDDCC15D4456513BBDFED35BCF7),
    .INIT_1D(256'h7E4839AE201D1F770A406DD3898EADEDC34A2A0595D274B4F95AEE467B9246A8),
    .INIT_1E(256'hC9C39A5EA03B55CE6544AD96DAC3737EC8B8FEAE0764ADF629A984647D72E745),
    .INIT_1F(256'h9FE2C5AD0D4C2277B7DB01CD90CC524AC120A6960553DAEC5B2FB85C4D991D23),
    .INIT_20(256'h561A487AD605F9A2CABB1669ADABE01C502FF95D5814817E1CE6376D143AD268),
    .INIT_21(256'hA55814A292D8333E40C34107849A1A4B14A4701E284E6742187FB9CC285B142C),
    .INIT_22(256'h9E9D1C5587577822E2831BEE7CE9E9AFCF6BF37B9752C8AA5375A38D0002B80A),
    .INIT_23(256'h9AD850989A0B8410F765B215CFF2378873E9CC3B7705E75479753A5AF1B96AED),
    .INIT_24(256'h2BC6FBE60E87A427E9F919DD3ED1EDA52B6BA958DB67CF592822D37B2973BD13),
    .INIT_25(256'h9635B69D07ADF18960DFDCD930C557B70C5D7421F889C05AF9D042A456AC62A8),
    .INIT_26(256'hDC773DD7D605E96FCAEAE60FA51A0F2CB40A0A1B135894823A2221806DAAD44E),
    .INIT_27(256'hEED1579B97BC3C8F63753143A3943F07D9E301CB28203029471EFA49AF5B14E8),
    .INIT_28(256'h47B3B7012A09E3D593877C66A92FF56EBD78F5823B35685E7E442D74B874786B),
    .INIT_29(256'h8516A9CC0C87BA79C2BF65D15C3C3BB12DB98E8FAAB9B53EEF24CB6A8C09DAFE),
    .INIT_2A(256'hFABC4F57A445073237BAE0C1E14585148E60120B62E7323C9AF655496689B67A),
    .INIT_2B(256'hB4119816367A1DCEAFACF9A8C1AA9D4B9C52AB4BDFA5F6A04C53B5A43A953597),
    .INIT_2C(256'h4B5C31A8D5C42B935E9F82B5FAA1638E076296BD3F0FD8A851E882D7803AD637),
    .INIT_2D(256'hB9CB47F39CD5A003F34B024EAF96D463B1D2C1AB9B2188D76BDF76B0768917F2),
    .INIT_2E(256'hE2FCE32962432E302B1386B1EB2FF56C568CA1097A9BA6D298F6F58B3C7DC7A7),
    .INIT_2F(256'h9886FDF03E44D1281A7A6FB8FD6F7210BEA000000000A26155876021A92F036D),
    .INIT_30(256'h9694A353DA915A33BF8ACBD2162F89FA14ACF1BCC494DC35C3926F164E4C4481),
    .INIT_31(256'hF4B09DB9104D8E047F805B2955ABE4D3249EF8AC3D91E1F9E64980FB21B5DB6F),
    .INIT_32(256'hFE381F1320444F97A2801F0598D0D85BF5E9DA2C3CB0A77DAA2F5C5EC5D2FDA2),
    .INIT_33(256'hB1B07FF2BBA21D88DCCD0B30F864521A5786338329F9234AD15C6173CE9439A1),
    .INIT_34(256'h9EEC503A5039BAE5D256C9FEFF74CF2A8E0FF402E4339910F2EE40A1F8D47704),
    .INIT_35(256'h4C0F30920E0BBC0D0764DD880000BFE678D9319EC96771048EA16DCF068652A5),
    .INIT_36(256'h69484ADE52B74D3E44E3506CB100915810D340E38510E639A4975779E07562C9),
    .INIT_37(256'h554F00A6813EAB7AA21E7A6A29982FCCBF4A5C4CC6ABD635CCF1148313DD042D),
    .INIT_38(256'h922AE0669DDB2F4C954A5C570AD356D106FDA668C67DBDB13E17397506D5251B),
    .INIT_39(256'hDAB86BF5D19566DAD50E15FCF495E85065AB1EA4B2B58F49495C59BE7BD3DD0C),
    .INIT_3A(256'hF7889D8B3E9F1FA3D7114F22FA35A4671BD8FA2936C5733DE36FF8ED43B15EC6),
    .INIT_3B(256'h35471CFF853C5975E145940A16BB75885A744A1FA33BDA21BC4219DFF2F85168),
    .INIT_3C(256'h7BAA3AC7B8B8F97D8FECDCF2BFB291EBA626560CAF7ED360E81145AC308B26F3),
    .INIT_3D(256'hF52237C9968E4F55A6285D300DC06972E38AC0814CCA63F88D4A518180A8E060),
    .INIT_3E(256'h5F991B6BAD966287FC94F4FE9C979CFCB91350C629442546842DED55E7035CA5),
    .INIT_3F(256'h7DB648216FDF8BED2D5649EEC0920DF187224542242194457D45A3D7B43FB088),
    .INIT_40(256'h623BBEF011617A7AAADCF565E81B634B69F25385B116F8B3C0A425426780EDCE),
    .INIT_41(256'hF543524CBA570594FB2A3B80539A9193A57EEBC33D79488A9FE7CAEC5DE4318D),
    .INIT_42(256'h7AD37E7CF3E76A4CC6A9F23694EDF56D7E755E87F8DC57C98487D3D6BADEC778),
    .INIT_43(256'h30435B87947C0F3E1CF277EE89157C6630AD35D1F51C2D4E86D8FD20729D91B6),
    .INIT_44(256'hDF0807C1EBEEA42039FA4276C056CE5AD4D4D52220BDD37FF68555C4F5B44274),
    .INIT_45(256'h201150CB580D7CDC967554B217FF21919094C1AB7053B278A6A7E2E33607FF8F),
    .INIT_46(256'h8159A0766B34CD592D41105EDC154B31098A05A2EDA6A9EB009BA7E163DB38D0),
    .INIT_47(256'hF351C111CE511FD75408310BD1978F87A3C93B58EB1A93CBEF67F014AFFD8269),
    .INIT_48(256'h1D650E2572AE294355E74E05F5B3BFFD40B4677CA873C0BFF39EE1E0F8F0725A),
    .INIT_49(256'h3FDDF846651D42B88BE97FC7DC25305908CEAB81C4C8FD1E832BA4436D418112),
    .INIT_4A(256'hF287204F4512C9FBF49732B364D736D126E2287AC8D5EB0AD66389AA5B7DA186),
    .INIT_4B(256'h90236147AA78DBCA80EBE3054FB60E1085C151B4EB7ABCCBA2374B8083C4008E),
    .INIT_4C(256'hA8EDE7868A42EA8C1B57001329F7144710DED3A080804A3999003A5A54029D1C),
    .INIT_4D(256'hDC98F6602E07C65531F3BD99A5C1E427F8D4B356EA9E117A2714EE1FE44ACE97),
    .INIT_4E(256'h3315DED9C43164EF65DC39FBA30DFCFFA0DFFD81CBB8261C26330B4FDFB11A12),
    .INIT_4F(256'h4A4E5F95D1A5529E5CBFC19064E776C483AB4DDFBEDAC5D104BC62319201A0A2),
    .INIT_50(256'hDCBD6FCD5F45CFF87EE3FD7D90F1A8769482ED92050E1B7F642A05E023619868),
    .INIT_51(256'h5A1A5798D25B4ACDC6813872A07278F78F8F8562E4040BE1C59A9BCB00F30E7E),
    .INIT_52(256'h532DBF36BB310BA994F24250B59FB6961D2C3F310AF966B0DE2B938D62DC551D),
    .INIT_53(256'hF86D5113204374EFA985A87D5C5A5489DF37F646FEB221221D2D5B017FE14748),
    .INIT_54(256'h3AA6F6DB513BDE936A7F47659B19627C68C399153FD1EA23E35BDA326DCBEBD1),
    .INIT_55(256'h6AF2533D3473417656E089A2D970CD22B5C5436B6F06C508A7CD6729C94997CC),
    .INIT_56(256'h9CFE95DA68D6DCADA35796AD89788F48476D3194B1A5460954F1C8F43C6EE5B3),
    .INIT_57(256'h51F10883F8CDA2F1290FBC7BF64EED0459F53D92F798C9FC3FC2F3C7F461170A),
    .INIT_58(256'h36AA63A5CC3FBB441CB214A2435C054B9AC243294E208781CB15448BA802AFF9),
    .INIT_59(256'hC33746BFB5CFE4D7CB54114DD770D2A63913FE4D511CD128252080413F04F40C),
    .INIT_5A(256'h1DAC36134B07F72B4966677F0613442CF467EBB8C677E7D1498058AA997FECDD),
    .INIT_5B(256'hF72E8D7799B481B74D8004A86C1785B63B50EFCFC8DC80A05E1B610E023F6E94),
    .INIT_5C(256'hFAB625932DAC88287A8BE6553D1653B75692B545B32300E9D040D95AC0C3AE94),
    .INIT_5D(256'hBF1FD017B0B95E2197B77D2E297D4DFC644D5084AB36141C4564A8465A6CF7C0),
    .INIT_5E(256'hDB0C73BB90CADEE1B6914E90BD0A362951527681C2431443A2A66B3F0D4AA15E),
    .INIT_5F(256'hB00F3A0CBED2EC9E7B30268422919C4A1C702256538A17EE469BE76366A36AFE),
    .INIT_60(256'hB767E4626A0F5C90FDAC4F1EE9A01BB2A9F6A0CB584900E905FFEAE3D2A8A5D4),
    .INIT_61(256'hC3FCB03140AA4ED3D8F34DC6CF044841CE52ADAFDCDFA8DF452A5FAEADE73B77),
    .INIT_62(256'h71BFDE4574939A50CD58139F78CAFEC3043F36D7C49A3FEA46FD469EF8DD34D6),
    .INIT_63(256'h393F4E82142ADCA8B922A134B0958216D8BF96FB0ECC61D676B5082C0FAAE104),
    .INIT_64(256'h8402698B57D7042E525D21D0F88F7590B169C0C4840382304A4AB1227DC0CD5D),
    .INIT_65(256'h3240F2C286830143750A2B9E5018B47AD562461571AC8C6DC8556531E9AD7782),
    .INIT_66(256'h40AA5448E59AB6B6DD40F6987906DE693293A1C2E07BB8CD6ABCF8596BDB3674),
    .INIT_67(256'hA2E373F74D90D124C80408EFCB86D0A38FD9C0D552D92F3D872B108E0B7A3BE5),
    .INIT_68(256'h6F2B35C435FC9887C89545A084855FBF2A0FE938347197093D0ADE8103B12BF0),
    .INIT_69(256'h47981DC7F0E8EF8D75461A345A862879FB64E905DA152F7C7DAF85850ACAF77B),
    .INIT_6A(256'hEE8FEE52BBE701F71799179E0D0E785B0B2140C6240F7B3E2DB4298D2B19246B),
    .INIT_6B(256'h3F29AA5045B7A67E8ED56570D80E3238525CF9435601C8428A3D5499A2AC7035),
    .INIT_6C(256'hD2944745E5E022DCD013BB8B8934EC24660EEDC88D3686D45AAF0C60AD3B3238),
    .INIT_6D(256'h8AFD2593BD3883CDFC6D8A5281B801B2A328E68CE9B6B30B997DB9B8EC4EE380),
    .INIT_6E(256'h6251F6F73241DEBBDE661490BEB7FC34AEA257A7F68D57589987B234CA8611FA),
    .INIT_6F(256'hCD14959F4109B252E168B13E5029654A487D3A95423D7CE53ACF90F80EBB837C),
    .INIT_70(256'hAFCFFD64AFA299DB065F83D31B46DB466BC8EF9204F0B3137B0C2F5144213DCF),
    .INIT_71(256'h8E7D79E1B61CC8D3D9F688AD2B6FA6B346C73B73DADD5FD86E15B4698CB4B7FC),
    .INIT_72(256'h854CE0EA15F00534EE13DFA3D59255F3D8EAAFE5460540DCA6157D78F3E831F6),
    .INIT_73(256'h249E19BE180DE7F54954737773C67AAD885283F1677F8CD6B3FC44031716EB6A),
    .INIT_74(256'hD678F196272B8DE12FF8B44412837E430E0488B9C0F37EA1273598224FC85173),
    .INIT_75(256'h0E14CC273E80158C2CD39095327EBEAE4DFB4620A1A325332C87513F1B138D3F),
    .INIT_76(256'h9F8756B15A924A711C21459D16C46BB7034CCDC6AE2A2D9FF8A4232CDA2D80A9),
    .INIT_77(256'h372E14B9001D191170FA2213A452EEC0FD4A5EB6784DC58656C3F32DCA6DF3F6),
    .INIT_78(256'hEC831189B3E1694B3E0ADE26F5888A70A3C3396DDB7A2E205E9531FB1A368128),
    .INIT_79(256'hD9C55683BD6D81651E50B16E3882C46A0060316D29E8BAAA1E63C84F45F51607),
    .INIT_7A(256'hF147177E2A3F1CD0FD6504BF7E94F87B2AB3B3F9D2A8A8CBA1497D51AE1AF884),
    .INIT_7B(256'h37C62562CF229AE7A0222FE0FAC62BEDA9EA46182963452F6B26A62DAC996793),
    .INIT_7C(256'hE41ABDFFB88A01753FD78DD71948327B0391EA39EE6E0832F5CBA1E2F86BC30D),
    .INIT_7D(256'hC36D575B88CECA889D5D70995C79E5058292A899CDDE7FCFBC7C41A63CFF85F7),
    .INIT_7E(256'h319C68B3E937CB48827D7DE697ED8D6C8D6759DE3E7223205941B0521156485A),
    .INIT_7F(256'h9814F1C6D6A53AC820CC79BE4855CE5EFF8209F9322DEFB0147A87D645CD04AD),
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
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:1],DOUTB}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized20
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[16]_0 ,
    ena,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[16]_0 ;
  input ena;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__11_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__11_n_0 ;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h7826FE20CCB019FE07381FFE08F8F0B0C3E3B48F6F89833FB3E7B7FF0F830FF0),
    .INITP_01(256'h33B60FFE326E3FF039F0FFE6476797C70F3F30B9DBE1E5F3C62FB7191E7981CC),
    .INITP_02(256'h0CFFF23FFC078CC03F601BF9DFFDCFFC07E1066386C786FF83C3C2E783838CFF),
    .INITP_03(256'h841FFF8001FFFE003FFC003FFF838E06087FFFC3CC0C00FFF800FFC007FE4467),
    .INITP_04(256'h0FFE03FF07FF0FFE0FFC03FC73FFC19FE1FFC71F867F00FE00FF00FF01FFFE1F),
    .INITP_05(256'hFF83FFFC63FE01FF00FF8FFF83FFC3FF03FFFFF83FFFFF80FFC1FF80FFF83FFC),
    .INITP_06(256'hF8FF807B8E39E039FF807FB041FFFEE7C4FFFFDFE001FF00E7FF00FFC038FBFC),
    .INITP_07(256'hDF30FFF7820FFBC3BFEC81BF7FE738E7FFE7FC01DFFF883F1FFBEFFDFFFFF01F),
    .INITP_08(256'h807BC3FFF8F9FFBEFBFFF3FE71FFFFF1C7FBC00FFFFFE71C7BFFFE0C73E71FF1),
    .INITP_09(256'hE0FFFEFFFFFFFF8FFFFFE3FFFFFFF9FFCC3FFF9FFFFFFFDFFFFE3CFBEFFFFFFF),
    .INITP_0A(256'hE1F0C1E3BF18709F358FFFFC3E3C79F3078FF878FFFF3FFFFFFFFFFFFFFFFFFB),
    .INITP_0B(256'hF1F66E4420213601100B0F8779483AD63C716441E327E5DCE220D2D8FFC30637),
    .INITP_0C(256'hC09FD0191A1E383043DEF8861C7E7CE022007B81F9800FF87FC588914200E79F),
    .INITP_0D(256'hE26DC249C64DC42084203430373C0730321E738E79839EC04F1033EE0DF9037C),
    .INITP_0E(256'h9E9C4870B1E3968D6F34DC4B3896B32D445B8C8D6B521E2C39495690F535E321),
    .INITP_0F(256'hC6879E0E6C3990C3C30F0E6C0190C3CF0E3C687091C2548F6F259CD861E3C70F),
    .INIT_00(256'h1A605D13E3D1BDCFFB2E4E2C0E0BEBEF1D545700B5877E918D99C8EC10456C58),
    .INIT_01(256'hE0720324B01C98121368FB4309BF5258DFE6981A67C950161C73C9D5B17053AC),
    .INIT_02(256'hA652527889255E9573FCAECF773FB10510D67A59883D880BD0FB7AC8F2E9B4AF),
    .INIT_03(256'hFBFC43C5DC3A8404038CFF6F780EA344877D485A8486F1C34D46E499E36644D2),
    .INIT_04(256'hCDEF7807F4207043EBB8745EC13C6D4ADE8042A48CEDA20B5BF007AF59763902),
    .INIT_05(256'hF2B46A2B0FA76FE15138C4A9E000011B494D22E7BBA6B2E4E5C1780F2176CD52),
    .INIT_06(256'hBEC97271DD35D6E341010273A52563BBE4BB53B42DBA9E1A9EBFCFE9E5E4FF92),
    .INIT_07(256'h12CB572E903F722C1B06D90DB74659E4FE8BB7CAE2B24FF090FED36DD0EE830E),
    .INIT_08(256'h629B60F17A71CA0F43DF6978B80D68076EEA471B354216E5B655D2C447E61F18),
    .INIT_09(256'h60EF77802DEA8AE7AFEEAE15F5D9D6E4FE89483160D195C22A4431CC0B7CB7A2),
    .INIT_0A(256'h831FF56DEC0AF2E1F8F1DA0A517916A09EB0E02EAA0B99AD4398F1FD181DE387),
    .INIT_0B(256'h5C6E2C17FD7F7AF6403BC55C462B61F47A4FD9DC153A66DD25C1E791EE6C53C5),
    .INIT_0C(256'h14FC4C8C71D85E1BD200A91D23E1A191A30CBA06B2F999A8B4DD3AA38AE394F0),
    .INIT_0D(256'hB95EFDC0F8493EDE6B3C3C7A047F770A8A71806E94DAE3A78691CD26A81D31C4),
    .INIT_0E(256'h5DBD0D15AD29F10C2EDC5BFB198DBD094325F3DAF9DE9997C8C7A3C40E5B7FAD),
    .INIT_0F(256'h3ECC49339E27BDBDE40FD846FC2EBF1E8BD7C02A7C50758C83859DCAA491E322),
    .INIT_10(256'hA91A5B888D4EF6A8A80988BB9038D69FBF0E4332E97DF6D736B5FCF4D3B3BBD9),
    .INIT_11(256'hBD1962B3EC97F38D5A8400435D3FDC9696D93181900A5AFF288FEC3939F8A170),
    .INIT_12(256'hA8069BE389E943E02AD82D6449E7C7BCD41760AB99E131FF2676C5F3EEBA8582),
    .INIT_13(256'h2E2E4E5C17B85500228AD82F644501D42EA2F7E132CC3D8CB670E93C5D17B880),
    .INIT_14(256'h610C6CD85832485B80898B87AAE65D085E24900E973D2E64A3CBEFF7F4F90B2A),
    .INIT_15(256'h2511EDF9EEB96E13F94ED2124D9EBEB9AE8C30A50FD853DCFED88D588F19AA33),
    .INIT_16(256'hEAAF714056C13D8394AA9B5C17D2A2AAE23D562FDD36E3E943DC324F64634127),
    .INIT_17(256'h1E3C6BC418009033D8BAC1D3C57B4B2F213061CF73E509F6971DAE8494CDFCFE),
    .INIT_18(256'h97B1A05519DF8C5037220D215188BF57F224D66C2CF409220BD55BDDD10E50B6),
    .INIT_19(256'hC9AC9ABDE50A343A42464D76885D2A09F2D29884947F453467AE0884B7CAB37E),
    .INIT_1A(256'hB96AAC0FB02BD3C7A78986BB33AD36A2BFBCD1E6D7903718F5C38154556891BB),
    .INIT_1B(256'h90B3B5E309EAA45E10C7899DDDE8E8E7E9E1D7D1A34D0E1650B20E5097E84BA1),
    .INIT_1C(256'h4B506496B699807BAE00437BAFE9112716DEAA45DC7105CD936E5470CB62F83F),
    .INIT_1D(256'h2200D89D6138292F3F56779FCFEE3390BEB0867A82856F4F2D09F7D9C8C09361),
    .INIT_1E(256'h1714121215180EF3D3BAA9928B979995886671ADE3F9F80C3A6481A1BABA8F53),
    .INIT_1F(256'hFE10170E07FE0815130E07F9D3BDBBBDCAD0C19A96ADD6F4F9070E0C0F272316),
    .INIT_20(256'h0B3A738F8E571EFBF0F8EACAA67B6396DAF3F8F6F5F5FB050C0A03FCEFE7EDF8),
    .INIT_21(256'h0D1D30393B3D381AFAEED1B4B5C7E2FD040507090B0D1004DB9A84AFE1F2F0FC),
    .INIT_22(256'hF904090703F6F70103F8CEAFABBCDFF4040F171507030A0BF7D5AD9BC2EAF601),
    .INIT_23(256'hE1F3FF111A1205FFF9F9FCFFFCD4ABA8BFF014190EFAEFF8080E07ECCAB1B7DF),
    .INIT_24(256'h05FBF3F80403F9F0CFBCD0EBF6F6F5F5F4F408191A1404F9FF0500FFE8C2B5C6),
    .INIT_25(256'h12171303F5F1EDE9EAE9E2E6EEF90617393D1C090302FFEDCFBFDEDFCEEE0307),
    .INIT_26(256'h010A100B00F3CDAFB1C0D1E4EEEEF6FE0A121611FCEDE4E8F4F8F8F8F6F7FD07),
    .INIT_27(256'h37361203FBF3E5CABCABA6AFCCECFC1118100E0D0906F6D1AFA6B2CEECF6F5F9),
    .INIT_28(256'hFFF2DBC4BDBDCDE8F4F9FEFEFE0205020100FBF7F2EDE8EAF2F4F6F8FBFE051C),
    .INIT_29(256'hF8F5F7FCFBF5E7D5EAFD0912161609F5E2E9F5F4E2D5E3EDF401101818171109),
    .INIT_2A(256'h0500FFFDF6F0F3F7FAFDF9F6F7FAFEFCFAF6EAE8EDF2F8F7FF060B0D15231202),
    .INIT_2B(256'h000503030600F5F1F6F5F0F3F7F4F2F7F9F8F4EDE6E3E6E6E7E6EBF2F8000207),
    .INIT_2C(256'hFE08090A0E0CFFF5F3F4F3F6ECD5E0F2FAFE020A0700FEF5E7ECEFEFEFEFEEF2),
    .INIT_2D(256'h091E0C08060B1913F9F0EDE9E9F3FBF5FD0A0C04FCFAFCF6E9E1E4DCD6E8F3F6),
    .INIT_2E(256'h0FFBFF090F0BF8DCCEE1F6FDFAEDF3010A0F100F15281FFEEAD7D8E9DEDBDEDF),
    .INIT_2F(256'hF7ECEAEAEAEFF3F0F40104050A05FDF9F5F3F5F2F6E8CCCBD5D6D8EBECF00414),
    .INIT_30(256'hD2E2060406050609201DE6E0F3050E0EE6C6EFFCFD05FFF9F9FCFDF9F4F60107),
    .INIT_31(256'hFCD5E21300D3DEB17BCBFCF9E7DDDAEF243429000320331BD49992CBEBE4D3D5),
    .INIT_32(256'hF6F9FA020800050B0C080201020103FBEEDACBDBCBDEE3DD1C3A3B3A39210606),
    .INIT_33(256'hEBFC010F0EFF0C0CF4F3EBD9CEDAEBEEF6EED1DCFBF8E9E4D9E203F9EEF8F0F1),
    .INIT_34(256'h24FE02012B3502F5F3F5F3F7DCA7A8D0E6E9D7C4E1F6FE06FEF0EE0000F9F0DD),
    .INIT_35(256'hB4BBCED5DAB88AA8F01A142A2F0F294D23C2A2C19B94C6BCDC04FEF5072E5159),
    .INIT_36(256'hED286C4AE2CBED2B3606B0BCFE0006EEC7C0FB1A0107020F2520F6D3EE0903D9),
    .INIT_37(256'hDCCBB6CCFA1F2F049E9DE5F2F6E9C199CC090B100A253A4012E0E2EEF900CCA7),
    .INIT_38(256'hF0EAEEF0FCFEF7F9F4F0F0EFF5FEEECCB8C7CFF02A1D070E131214FFDADDEBE1),
    .INIT_39(256'h020202F7BE8CC7F6F1EAC3A8D406F8EBE4D7F509F3EDF6FAFAF9FBE9D2F10DFF),
    .INIT_3A(256'hDFF104F8EDD8E2F0EFE1CEE7F0E8E9E9E70C3502EA2720031604F2FBFFF9F0FB),
    .INIT_3B(256'hD3E8E5E6E5E6E5E7E3E9DF3A45DCE4E4DCE8F7C3A3E10C3148260A1828350FE6),
    .INIT_3C(256'h02EDBFD9FDF3FCC7A4B6EE1D08D3B3E0040BF6EDFF0A2816D4B9E00806FCE5C0),
    .INIT_3D(256'hF900FDE8DCE0C7DDFCD4EB0BF3F40601F700080F0E080CF6F506FCF5F0D5CBF1),
    .INIT_3E(256'hFE0202152300EC010F291F05F2CFE5F6F3E9B5B2ED02FFF5BDCC01050C00F3F6),
    .INIT_3F(256'hFBFA02FFF9F9F8F80301F0F30004080CFAEFF2F0ECE8E9E9D8E5FFFF01FFFAF6),
    .INIT_40(256'h02E8C8D70418E3977E84D92F18E8D8DB083437F88B7FCBE8E3E6C5DE060808FC),
    .INIT_41(256'h0CF0D5E8FE01EBCECFE8F6F6F1E0DBDCD2EBFAF6F8F7F80D19163417EBFE0304),
    .INIT_42(256'hEEEDD7D6F4F9FAFDF1EDF4F7F7F7F6DFC9C7F32313FAF7FF0D2E22FDF9F8080E),
    .INIT_43(256'hEEF6010A0BF9D7F3E9DDE9DBF405FDF8F9F9070F0E0F0E0C07060E0DFBF9F7EF),
    .INIT_44(256'h04F3EFF5020702FBEFD0DDF2F0EBE9F1F1FAFAFBF9F5F1ECE5CDD3F20F1403EF),
    .INIT_45(256'hF6EFF2F5FC03FDEDECF9FCFBFCFBFCFBF9E2D3F61004F6EBEBF3F5F4F0EFF206),
    .INIT_46(256'hFCF7F4F3FC020500FAF6ECF2FC0204FDF3F3F2F2F7F2F1F2FD04FCFAFBF9FD02),
    .INIT_47(256'hFE0A05020203080D0AF6EEF5F903FEF4F4F400141204FCFAF9FBFDFAF7EEF1FE),
    .INIT_48(256'hF3F9FF01FEE6CDDFF2F6F3ECEDEFFCFCF8F4ECF4F8F2EDE9D9D7ECF5F5F6FAF9),
    .INIT_49(256'hF9FAFBFAFBFBF8F7FBFDFAFBF6F4FC030907F6EBEEF80003FFE4DBEAF802FCF3),
    .INIT_4A(256'hF6F3F3F6F8FCFDF9F9F9F8F9F9F9F9FAF9F9FAFAF5F4FAF8F7FD00FCFEFEF9F8),
    .INIT_4B(256'hF6FE0803FEFE02060806FFF7F3F8FCF8F6F2F4FCFDF8F3F4FC0405FDF9FAFAF8),
    .INIT_4C(256'hFBFAF4F4F9F9FBFCFBF8F0ECEDF3F9F8F5F2F3F8FB0204FDF9F9FAFAF9F6F3F3),
    .INIT_4D(256'hF8F8F8F9F9FAF9FAF7F7F9F9F9F9FAF9F7F6FB000001FDFAFAF9F9FAF7F0EEF4),
    .INIT_4E(256'hF2EFF4F9F9F9F9F8FCFDF9F9F9F9F9F5F1F2F1F1F1F3F7FBFF010200FFFDF9F8),
    .INIT_4F(256'hF8FBFF0107040404FDFAFAFAF8F8F6F6F9F8F8F6F7FBFF00FFFCF8F9F9F9F7F4),
    .INIT_50(256'hFAF9F9F5F2F4F6FAF9F7F7F9F9F9F8F8F8F8F9F8F8F9F9F9F9F9F9F9FC00FDF9),
    .INIT_51(256'hF8F8F8F8F8F8F8F8F8F9F9F9F9F9F9F8FAF9F8F4F1F1F1F3F7F9F9F9F8F9F9F9),
    .INIT_52(256'hF5EDEFF7F9F8F9F9FAF6F3F7FAF8F5FB0200FCF8F9FBFBFBF8F6F7FDFDF8F8F8),
    .INIT_53(256'h0220444519DEBFCDF6294224D79B93B6E9FCF4E4FD48808F3F9F3A49BE21280C),
    .INIT_54(256'h1005E0C6CFE4F907100CFFF4F8FF0A0F08FEF3EFFC0502F5CCB1BAE30300F9F7),
    .INIT_55(256'h2DE5472C9E76E11557075718DFE5F6F4F8FBFFF9FAF5EFDDCFC9C1D8F2FE0C11),
    .INIT_56(256'hFE01E4A551358EE0345F2AF4EF0E363B07BE9AD227BFEA5AA8FCE67EEEE8D1C2),
    .INIT_57(256'hEDAFB21489B151B61B4569AA6E591206F7F40A2C432B0AFBDBDDF6090D03FEFF),
    .INIT_58(256'hFCD6B5AFAC7F6374A5F126473F12FBFE2047534B1BDAF34D8D55F772F70573E7),
    .INIT_59(256'h886DCD8CDEAB8D9430271B19644C4FBE231395647D7B0209290830E0EA0F0B0F),
    .INIT_5A(256'h8219EDC7A0C69A10CE00F70D13F0B1AFF0FA83BEAA59684E801246A572AC3814),
    .INIT_5B(256'h44059B594FD6A3BC6AF9C1C052B03684EE28FBD9A29AC4467DAE683E3943B84C),
    .INIT_5C(256'h1DFBA5769B2FCA20661D73791E309D5760C70B200D1604B906C4A829585D7102),
    .INIT_5D(256'h6F3A9FA7A6AF5E49243E8E838AE1228513A39A2AD3783131B882CDA63EC69DCA),
    .INIT_5E(256'h731DE53FD0FB08A356A43210F8B50DFC030CA71FEF53D82667917F86BFB01F23),
    .INIT_5F(256'hF3C39DD02A763EC8633597F908D0B236D1200256DD94F69364CBF85161799DCE),
    .INIT_60(256'hE4E1E2450677DCD8AB39397192AD884BF7C6E81110ECBFA0B30B2DF0D8CFD9F6),
    .INIT_61(256'h2ED3937A76B2F8F5E4F34190E40093F1D107525AB8D83C350A61FB25D9527E01),
    .INIT_62(256'h8B84B2C8E10C25FBF609062343350C184D4E2D09A2351647A5E5F7DCCB055671),
    .INIT_63(256'hAF3C8BD896C55034C7DAC2EBD67D461210FFFCCE47ED086CC510382E131809D0),
    .INIT_64(256'h1848F46596E1113DA84A6C2917351C991FE4B79469197C883899F038727C76AD),
    .INIT_65(256'hC9AB2437549C0EADF24A3DAD441CA50CF5B4ADE2F448814BD916CDED7BEE3E68),
    .INIT_66(256'hFCE8FE0A0586BDFB50299D0771E7E10756BF437A7DED451128127C12870D081E),
    .INIT_67(256'h7305E3AE612711402132FB8ABCBCD8CDDE5855949B2E32435E6FBB2CC86FFA2B),
    .INIT_68(256'h9A545DA30C94471EC4F2C17B209640AED04E3861AEF536C98C1880D6D1469920),
    .INIT_69(256'hEA611AE8599CC652F9A71256E78137588FDA3ED12AAA47ACB96B0C7DF58724E7),
    .INIT_6A(256'h9006283423E547DD61D8824C78E475C6F734AC2B6C8D3C8BF287F593A4C9EBEF),
    .INIT_6B(256'h64CC142BFC2A49E2AD9DDA4AADCEEF1A9118666FF356BE5409F2D4C71474EA21),
    .INIT_6C(256'h5DB61C24A0F26D1FE1D93DBCF3F9275065789BD390DE5025FCD9169F20252847),
    .INIT_6D(256'hEF2AD0F1257BDB535CBC8C6499684D65699117206B99EBAD99AF48F73D212C43),
    .INIT_6E(256'h6677168E66E51E8685221CF545027CF8CCEE71C14962A15658CEB292EAD69D28),
    .INIT_6F(256'h212BCE62D290ACF7CA25E6AE2A2960A45F751BC6BE1C45B6AB2421D106BC48DE),
    .INIT_70(256'hC22011B8A02FB4B9EDCC1EAFA623B0F67463D14DC4B8EE38DBFE952EB8D03398),
    .INIT_71(256'hD12279034515B8167475EFDBA679E7118368EE3B100835ADBCCD8F301CDAE458),
    .INIT_72(256'h8C0F183B57D10BFED437855B86785C59F1ED2B522260DFC0FB437BD900A32DD1),
    .INIT_73(256'hC34A34DDCAE7E36EA68CE3985139212DBD68CA7FEA126FBEBE90FCAAC321E696),
    .INIT_74(256'hDE083A33C275AD6890C4E6966C1D17607AF039E86C84EC1AA8F5F0FF894B643F),
    .INIT_75(256'hAF645BB6B82937AB5257BB22D24520D071303266129343A95D7D914A0D28224A),
    .INIT_76(256'h35D635EE94A53F930B39D497DD56B33B64019D17AFB705C5603E8F7CF120FCA8),
    .INIT_77(256'hED380972061BE3BC06F4609E79E65E93155DDCBF8424C3E12CA166E88AD8C824),
    .INIT_78(256'h14A7B425657F18833A65DD4C744DDD4E33B7528652DA70870FA8F596DA400966),
    .INIT_79(256'hE75E2F6B741B78EC64357EE3AC61632546CF1B8185EE414EE20FBD24D86B9362),
    .INIT_7A(256'h489ADEE0B1AF37BE436448EFEC1D27A6D9D3B02BDAC2E2C46F60DDABEE4E50FC),
    .INIT_7B(256'h5A9077008971B8499058FDA47BC5337D469309DD69238DB9326F238122AADD47),
    .INIT_7C(256'h804E2107427358E619ACE38204566929EBAF4BD26A048E4483EF1403C0808DE5),
    .INIT_7D(256'h64A603443408D3BA06676F11A6605ABE3A8B933ADAC0E02B22D15DEC1DA23091),
    .INIT_7E(256'h37EB229900D787E2E187F6C7F74455E145DEF27D0F586E2FF2F2196D8D5CD762),
    .INIT_7F(256'hA9C9196D80DB12D44E1B95BD75E4726CD32B2CEF610D70119DF0AF2BB36AB217),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__11_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__11_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h20000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__11 
       (.I0(\addra[16] ),
        .I1(\addra[16]_0 ),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__11_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__11 
       (.I0(\addrb[16] ),
        .I1(\addrb[16]_0 ),
        .I2(addrb[12]),
        .I3(addrb[13]),
        .I4(enb),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__11_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized21
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[15] ,
    ena,
    \addrb[16] ,
    \addrb[15] );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[15] ;
  input ena;
  input \addrb[16] ;
  input \addrb[15] ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__10_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__10_n_0 ;
  wire [13:0]addra;
  wire \addra[15] ;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[15] ;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h7878F9F0F1E1C36387898E1F1C3878F0C2618CDE1C3CF06223258F1E1E7B7931),
    .INITP_01(256'h7FF081879E7FF803FF803FF19FCCE38E390E089E007C3C3C3DA43D2E793EF83C),
    .INITP_02(256'hFF81FF00FC03FFC7801FFFF8007FFFE007FF80007830387C7E001E7C3061F000),
    .INITP_03(256'hFFE1FFE0FF00FFC3FF0FFF1FFFFE7FFC01FF01FFE0FFE0FFE0FF81FF8FFEFFF8),
    .INITP_04(256'h0FFC03FF007FFFE601FF19FF81FF18F00FF10FF00FFFFE43FFFF1FFFFFFFFFF0),
    .INITP_05(256'h1FFF1FFFF800FFFFFFFF63FFF81FFEFF1FFBC7F80FFF87FE3FF23FF63FF00FF8),
    .INITP_06(256'hFFFF98C67FCEFFCFFBFCFFFC00FFFC3FFF007FFFFFFFF807FFFFFF307BFE3FF0),
    .INITP_07(256'hFFFC03FFFFF8CFFE21FFF9867FC67FF8FFFF0FFC67FFFFFFFFFF9FFFFFC618FF),
    .INITP_08(256'hBFFFEE7FFFE67FFF0DF901FFF83FFFFFA0FFFFFFEFFFEE77FFCE3FF9FFFFDFFF),
    .INITP_09(256'hFF3FFFFFFFFFFEE00FFFFFFFFEFFFFDFFE0FFFFDFFFFFFFFE001FFFFFFFFFE3F),
    .INITP_0A(256'hFFFFFFFFFBFF384FFFE7FFFFFFF9FFFFFFFFFFFFFFFC7380FFFFFFFFE79FFFFF),
    .INITP_0B(256'hFFFFFFFFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFF3FFFFF),
    .INITP_0C(256'hE3E3E1C3E3E3E7FFFFE7FFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'h758E739C738A39C71CF3C78F142AA056A70E3E3C78F0F1E1E3E3C3C3C3C3E3E3),
    .INITP_0E(256'h666666666666666666673333331999CCCC66433398CC66311CC66319CCAB3DCE),
    .INITP_0F(256'hDDB26D9B364D9336CD9376CD9B366CC99B3264CC999322666CCCDDD9BB333726),
    .INIT_00(256'hC698378D1077FE6B6BD45C3ABEA61A2EACE4758DFC3431A3F3C70CCE87A350E4),
    .INIT_01(256'h78D3A63E813AF9E20FA00FE61E58E814B8567C48B61924AE78F9BEFC5773FE78),
    .INIT_02(256'h909F40AF64A8257B7B31DFC1CFFF4544CD45178E399FAD5E14CDB11C7656BCEC),
    .INIT_03(256'hCBAC036C7E0264E0B63AF9568F950A99CB83F58EF044B7E56BD50DEDBB8EA51E),
    .INIT_04(256'h293B05B582C464C2B62E995693267FA86ACA5961C8416D209B3662CB35B4942C),
    .INIT_05(256'hA853C8F582D27173E272AF66AEFED542E268B76BC361982BCDD650C4340431AF),
    .INIT_06(256'hF9C1B4F7384026D07F5DA93A8E9A51ECC0D31C779242B010F95FE5605F009F5B),
    .INIT_07(256'h0FC17EB5FD3C8A7226B3546DC0296B4BF8A072AEE80E2CF376023AD556AEA554),
    .INIT_08(256'h24D2897DB141FE46F45290161669DC10FAC0A3C4E1359AA169079C688DE53C44),
    .INIT_09(256'h9B46F17B23B09108047CB8F9BF6D33959C29893868EBA611EF7499FF0675FC3C),
    .INIT_0A(256'h5771614C3D47534920E2B36B72D910414410DC7B499C11ADE45BE9621D930671),
    .INIT_0B(256'h7CC7173516D24CBBFE739CF76EB4E103295B99F305E07B0273FDE72A849BD01C),
    .INIT_0C(256'h66F74AD69280A5B1904BF5D8016E0DB92A3A19E69832E18B30F5C1C31F7CDB3D),
    .INIT_0D(256'hA8B6A08757284D93D02587C0BE9E59160002E2A97C502D3C5A92C3CB0F71F765),
    .INIT_0E(256'hD42ABB38803D0FB331D99A928C7D4A19091E4E89E947858EACC5A59F7724C08D),
    .INIT_0F(256'h02E7BB9B5A120B1C38576FA21C8FB9F304D1A375685C3BC643C994BBD74F96B7),
    .INIT_10(256'hC1EB1A19FEE39B5208B95DEB956DA20D62A5CBF6448BBCC7BC9956221822271B),
    .INIT_11(256'hFE62B8BEC3D3FE2A62B8E6F6C9A2792B1F1A0AE4AA5F0AE6EF2D7A8688BD0F76),
    .INIT_12(256'h20C78F915DF2A8A79BBA44AB014769B5E5FB253D0EBA641301C87F5A2D0CF0E7),
    .INIT_13(256'hC0D3D3B245D584554233190A213369ADDC0123333454696C6567748ECAC7A372),
    .INIT_14(256'h57454B5B747D663B04DCB29395958A7B63627392BECEC7B9C4DCFA39717F90A9),
    .INIT_15(256'hFC14394B411C162C373F21FED49F849CBDB8B6A5A2ACBDE5FCFDE3D3E2022348),
    .INIT_16(256'hFAF9EEE9EDF5030D12141B1A1A14FBD6A8928F96A3BBBAB9E0F90B0D02FEFCFB),
    .INIT_17(256'hF9F4F1EFF0ECE6E5F100080F130D01F7EFE9DFD1CCD0E8FB061018302F1A0D01),
    .INIT_18(256'hFB070900F3F0EBEAE0C3B4AFC8E7F600FEF9F7F6F5F7FBF9F7F7F8FAFE070A04),
    .INIT_19(256'hD1ECFC050F0D0600FCF8F6F7F5EDE8EFF4001216100701FBFCFAFDF5DBCCD5F0),
    .INIT_1A(256'hF8F9FD050B0A0704F8F8F2F0F9FBF6EDEBF0FF0B20271301F3EFEFEFEDDECBC5),
    .INIT_1B(256'h171817120E0D04F4ECE7E8EBF3F7FAFF00000509090800F8F4F0F0F0F0F0F0F2),
    .INIT_1C(256'hF9F3E0E3DAD4EEF7F9F9F5F0F2F9FC0202FBF3EBE3E3E3E4DDC9C6D0EBFE0312),
    .INIT_1D(256'hF7F7F7F7F7F7F7F8000C0906FFE9D4D0E0E6E6E8ECF5F6FC070702FCF9F9F9F9),
    .INIT_1E(256'hF6F2EBEAEBEAECF600050809080B0E03EFEBDDC4C4C3C8DEF2FB00060603FBF7),
    .INIT_1F(256'hFBF3F3FBFCF9FBFBF9F8FE0A0A0E09FFFDF4F0F0F0F0F2F3F5F6FC070B0A0C03),
    .INIT_20(256'hFCFEFCF1F3F9F9F8F6F4F2F1F5FAFEF8EDE9EFF8F8F8F7F8F5F0EEF0000A0F08),
    .INIT_21(256'hF5EFEBF3F5F0F1EEF1F7F7F5F0F0F3FE050501F7F9FCF9FAF4E6E9F4F0ECEDF6),
    .INIT_22(256'h0B101004DEE1F6F5EFDBDEEEF8FFFAEAEBFAECEBF5EEF90801FD01030506FFF6),
    .INIT_23(256'h1B321E00F3EEF2F2D5C9DAFD0D0201F805111202D9DBE6D7C7D7E3F50C060807),
    .INIT_24(256'hFE02050603120CF4F3E8EDD4AFA6B7F2151A0CFAFF060F12FCEBEBF502000104),
    .INIT_25(256'h0F2B2404080B07F6D9B4ACC1CBC9DAF7020B08FDFF0203FDF4DBCBDFCFA4B8ED),
    .INIT_26(256'h020E2A463E280C0002F9EFEDD6C3C2D1EDF7F7F7F7F4EBE7DDCFE30102FEFD05),
    .INIT_27(256'h1E3F4321F8EEEDF0D0A1A1B7E5FD00173447260A0E05F3EED1A18F8990AFDEF6),
    .INIT_28(256'h110BFAE8E5D4BBB4B6B3D8FB00122F4748514821FEF1F2EDD6BEC0DEFB000105),
    .INIT_29(256'h1C09F8FBF0E8E9D098B1EEFB0904FF040B11FDEFF1EBD1B8B5B3CFF700FDFC0A),
    .INIT_2A(256'h0D0C0D01F5F3E9D1CACDD0D7E4ECEFF8F901030002F6EFECF4FDFCF5EEF4FD0B),
    .INIT_2B(256'h051002F5EDF2F7EEE5D5CADEF501FEFAFBFC080D09FCF5F5F2F3F3F3FB04040A),
    .INIT_2C(256'hF0FAF8F9F8030F140E0701F7F5F3F8FCFBFCFEFAEDF6FD02FDF2F9FBFCF7F5F5),
    .INIT_2D(256'hF7FCF5EEF3F8F5F5F3F4F6EDE9F1FBFC00FEFC000800F1F1D8DDEBE7E5CFC7D5),
    .INIT_2E(256'hF7F8FDFCFF050604030A0E0400000407FBF1E1DBD4E7F5E8E6D7E0F8FEF8F1F2),
    .INIT_2F(256'h170D00F6EFECE5E0C6B9D6EDECE8EAF6030A07F9F6F6F6F1EEE3D6E7F4F5ECEE),
    .INIT_30(256'h07FFF5F2FB00F7EDECF3FAFBFBFBFB0E1507FFF8F3F6F7F2F2F3F3F802040B14),
    .INIT_31(256'hE4D1DAE4E0E1C5B6B7CCE1D4CFDBECF6F8F8FAFEFAF8FBFB0204FCFF0101070A),
    .INIT_32(256'hF1E5CCC8EFF9F7EEDAF2FDF9E9D0CEF1FBEFE9D3F11A291A0A1310130FFEF4EC),
    .INIT_33(256'hD0CAE0DEECEED1E40009120F0E0E0E0D06ECD1E4F8FAFAFAFAFAFFFAF3F1F1F1),
    .INIT_34(256'h0F0F0F1021230F04FBEEEBEAF0F4F4F4F5FCFAFEFFFC06080702F6EEEDEDEEEB),
    .INIT_35(256'hFFFCFBF9FE05F7EBF1FEF9F4F0F30102FEE3D3EBF5EEE5D5DBEFF5F2EDF90309),
    .INIT_36(256'h06FBFBF6EEFAFAF9F2F70600F3F3FB05F9DEC9CFE7D7C9C2CBF30000FEF8FAFD),
    .INIT_37(256'hFBF7F3E9D3D7F1F1EEE1D0E5F5F5FCF8FA0200FEF6010900FCF8010D07FAF800),
    .INIT_38(256'hFBFAFAF9F9F8F9F5F1F2081200FBFE00081407FBFE050A01F9F6F9FFFCDFD6F0),
    .INIT_39(256'hF2F3F8FFF6E2E6F5F9FAF9F9F8F9F5F6FC0508FCF7F2F8FDF9F7F5F8F8F9F9FB),
    .INIT_3A(256'h00FDFB0000FBDED6F1F7F6F1ECF3FCFDF5F3F8FAF6F5F2F4F6F7F2EAECF4F7F3),
    .INIT_3B(256'hFAFAF9FAF6F2F1EEE1E4F7F4F7FAFBF903130906FFF3F6FBFBF8F5F1EDFA0C07),
    .INIT_3C(256'h03FBF2E5F0FBF5E2DEFD0F0F04F5F70302FCF5F1F2F2F4F3F3F0F4FBFD07130A),
    .INIT_3D(256'h0103FD041D1806FCF6F8FBF4DBD5EEFBF7ECEFFCFC0409FFFD0912150BF6F908),
    .INIT_3E(256'hEDF5F9FAFBFAF9F5F2F2EEF1FA000F06FDFE0402FBF6DCD0C9D6DBCAC6D3F502),
    .INIT_3F(256'hF2FBFBF6F2F4FBFAF7F4F5FAF9FA020D11170F030504FFDFD7EEF0F1EEEAECEB),
    .INIT_40(256'hFAFBF8FAFAF8F8F7F4F7F6F1F5FAFAF6F7FA08FFF1F1F5FCF4DEC6DEFCF8DDD9),
    .INIT_41(256'hE1FCFDEAE7F5F5F4F5F80006F9F6FA010E01F6F0F3FAF9F8F6FCFFFBFC0605F9),
    .INIT_42(256'hFAFCFD00FCFAF9F9F9F8EFDBE6F5F3EFEBEDFD03F6F3F60405FBF9FC01FBECD6),
    .INIT_43(256'hFD02FF040D040301F6FAFBEFEFFBFCF9F9F9FBFAF6F3F2F3F4F6F3EBF4FAF9F9),
    .INIT_44(256'hF0F5FCFAFD05070B1004F3ECECEAECF1EDEEF2F1F6F4EEF3F9EBEAF8F9F9F5F5),
    .INIT_45(256'h01080300FDFE03FEFCFAF5F3F70603FB00071015100501F5E8F8FBEEEFF3F2F2),
    .INIT_46(256'hE2F6E7C9D0EDF4F6F3F6FE0503FCFC0305FFFAF7F8F7FBEFE1EDF4F3F2F5F9F8),
    .INIT_47(256'hFE00F9FBFEFDFFF9F6F6FAE9CADDEDE9EBEBFA01FCFEFF0706FCF8F9F7EBE3D6),
    .INIT_48(256'hFCF5F0D9E1F8F8FAF8FEFBF7F8F0EFF6F5F5F7F2F6FAFD0A0901FCFDFFFDFBF9),
    .INIT_49(256'hF5F6F60006000206030E0F04050600F9F7F7F7F7F8F4F0F7F8F9F8FBFFF4EAF5),
    .INIT_4A(256'hF7F9FEFFF8F3F7FEFAF7F4F1F6F9F4F3F5F8FAF6EFF4F4F3FDFEF9F9F8FAFCF7),
    .INIT_4B(256'hD0F0F8F4F5F8F80B110D0D01F8FCF5EDE9EAE7C1C2D6DAE9F0F4F7F9F9FF03FB),
    .INIT_4C(256'hF6F2F4FDF9F8FF00F9F8FEFAF6F9FBFEFEF4EFFAFFFEFCF6F3FD05F3DDE6EBCD),
    .INIT_4D(256'h190A0401F7F1F6FEFAF1F2F7FAFCF6F3FDFCF8F9F8F8F9F2ECF7FDF1EAE9F0F7),
    .INIT_4E(256'hE4DAE8FCEFD4E1F9FEFDF9F7FFFFF3F1F1F6FAF4E0D6F103F8F1FF130D010817),
    .INIT_4F(256'hF7F9F3F0FBFAF8FA0106FBF9FCFEFFF0EAF1E9E4F3F4EAF2FBFAF9F8F2F5F7F0),
    .INIT_50(256'hF9F6F30006FFFAF9FD0004FDF7FAF8F7F8F8F7F7FAF8F7F8F7F8F7F8F7F8F6F5),
    .INIT_51(256'hF7FBFAEEEEF7F4F1F3F6F3F3FBFDF7F7F7F7F7F7F7F7F8EEE9EFF5F6F6F8F9F9),
    .INIT_52(256'hF9EFE5E0F4F3EAE8E7EEF5FAF5F6000E0DF8F4FD0C0BFCFCFE05040200071001),
    .INIT_53(256'hF7F6F5F6F5F6F5F6F5F0EBEBF3F1D8D3E9F1EDE5E7F8FFFBF7F7FDFCF5F6F5FC),
    .INIT_54(256'hF8FAFAF6F3F8F9FFFDF8F8FAFF0100FAF8F8F8F8F7F8F5EFF1F8F5F0EFF2F7F8),
    .INIT_55(256'hFDFBF0F3F8FBFFFEFAF9FB050CFFF6FBFDF9F8F7F3F5F7F3EDECF4F8F9F9F4F2),
    .INIT_56(256'hF7F6F3F3FA00FCF6F6F7F6F8FBF6F7FC0304FBF9FF06050702FA0004FEECEBF5),
    .INIT_57(256'hF8F8F8F8F8F7F8F7F6F4F1F1F3F6F3F1F1F3F8F8F8F7F8F4F3F9F9F9F6F0F0F3),
    .INIT_58(256'hFAF9FBFEFCFAF9FE0701F8F8F8F7F7F4EBEDF5F3F3EEEDF5F7F7F6F7F8F8F8F8),
    .INIT_59(256'hFAF9F8F8F8F8F8F8F7F6F5F6F8F8F7F8F8F8F7F8F8F7F7F6F4F1F2F0F3F9F9F9),
    .INIT_5A(256'hFAFAFAFAFD0402FFFFFFFEFFFCFBFEFDFEFCF9F8FBFCF8F9FAF9FBFFFAF4F4F5),
    .INIT_5B(256'hF5FAFBFFF9F4F3F4F7F4F4E3E0EAEBF4F3F0F2F5F8F7F8F8F8F8F8F8F4F4F9F9),
    .INIT_5C(256'hF8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7F7F7F7F7F7F4F1F1F1F0F3F6F5F2),
    .INIT_5D(256'hF8F8F8F8F8F8F8F8F8F8F7F7F6F6F3F1F1F4F8F3F0F5FCFEFEFBF8FCFAFBFDF8),
    .INIT_5E(256'hFAFE00FF00FFFEFEFCF8F7F7F7F7F7F7F7F7F7F7F7F7F7F7F8F8F8F7F6F7F8F8),
    .INIT_5F(256'hF7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9),
    .INIT_60(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F8F7F7F7F7F7F7F7F3F4F4F5F7F6),
    .INIT_61(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_62(256'hFCF9FCFBFAF9F8F8F8F8F8F8F8F8F7F8F8F8F8F7F8F7F8F7F8F7F8F8F8F8F8F8),
    .INIT_63(256'hF9F9F8F8F6F3F1F3F7F8F8F8F9F9F9F9FAF9FDFBF8F9F8F9FCFDFBFFFBFD01FF),
    .INIT_64(256'hF8F9F9F8F9FAF9F5F7F7F7FCF9F3F1F4F8F8F8F8F8F7F7F8F8F8F8F8F8F8F8F9),
    .INIT_65(256'hF6FAFBF9F9FAF9F8F4F4FB0402FCFBF5F7F9F9FEFBF8F9F8F9FEF9F7FEFBF8F8),
    .INIT_66(256'hF1F4FE080C02F3EEDED0F20E1005FEF7DFE4F7060EFFEFEBF0F8FCFFFDFBF7F2),
    .INIT_67(256'h85A2EE3B6019C6B8BED9F822380FF4FEF5F1FC0F2E1B01F0F0FE01252A0FF9F0),
    .INIT_68(256'h9DCF04526409A77E9EE7093B4B08CEB6B4BBF431410CBBB4B4C2F53B6A1DDBB8),
    .INIT_69(256'h94BCCA6ED164E4755B7BF6AD980ED4A6A4E70D6A7D0DC58C9CCC025E5504D3A2),
    .INIT_6A(256'h83CB182FDF46A43C977771EE799A5D089F6387F8749129AC8085C5076B5D02B2),
    .INIT_6B(256'h68401B8F149C178A15DDC309761BA549D59ADFAECEC4F5588249C58D7DCC59B1),
    .INIT_6C(256'h535013DADB3738E8F01820BC81DE413C6ACB3614FDEB01F970757129F4FB16FC),
    .INIT_6D(256'h25891AC596BC494CF4896DB54E59FDBC88B02B8231D2AAA3E046815DFD5A7EF3),
    .INIT_6E(256'h2D740ABFA3A4963D773AA269A2F9BD4F91136233A37F8BD1257A49964FC283AB),
    .INIT_6F(256'hF8CF56665D14768F5F30D7949B51FA8076BB35D77184D1A7EF49CBFB5F77257F),
    .INIT_70(256'hD4C43F313F1A23B1F611CD18197A844F3B7CE18456ED7EBF438655D8C074A06F),
    .INIT_71(256'hFD5671F7674F1B41A23A45790C6CCF9822CA4729D267AF3F475A1596204D95E8),
    .INIT_72(256'h333793D43823932B469F8363A13707C89A49482161DF7D1C3439A9503630177F),
    .INIT_73(256'h9B6E46B3C92C01941D4FA08A755B47609C6DAA05E602206D458A7E1E5359F03D),
    .INIT_74(256'h6799863C3697D8591FF02646BD969F5A1B5883936858BCC12FD46049538FC6A0),
    .INIT_75(256'h66A38F4359AC964A68A4811F8CEA7BFA6D474051537A703871967C457DAC8963),
    .INIT_76(256'h71A1B26D5FA1A0691E86E0626084AB861B7CC93B2E9690705FB4A73954967D4F),
    .INIT_77(256'h35C3C0455682766464A4BD8B788483353AA4B17060968E424E8C74727F968B5E),
    .INIT_78(256'hB52FFBBAE62D9CA81914C3BC230AC6D02417E1E521FDD2FC111CEB0E35DAAB1D),
    .INIT_79(256'h1AB4D813EFCA2D3CC2CC371FB5D31B06CFE702F5F7FF02D6B0F41BB6BB3A4296),
    .INIT_7A(256'hE40004B9BF2E19D7D15B05984E47AEB7521A8C15952D6F005DA1BA645F899B4D),
    .INIT_7B(256'h8C9A437EEF688A22303982DC911B791D73948C6E349D0738DCF218209AB95E04),
    .INIT_7C(256'hDF392995D2278CB4661897E970DDAE7F5488EB9CF8B993667ADE6E0598416E58),
    .INIT_7D(256'hE3C4915A70F8648BA5812F8D2A499BC850BB41F22085AA51DFAF302B99BC21DC),
    .INIT_7E(256'h272299E337CAD6772B8E132D8ABD44CAAE1617BD1D67BFCA2A1589F33D9ED347),
    .INIT_7F(256'hB1D40AF9F6F305C5E11EE6E60604F5191CDDEA04E5F131F3C61514C0FE3FE6D0),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__10_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__10_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00010000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__10 
       (.I0(\addra[16] ),
        .I1(\addra[15] ),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__10_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__10 
       (.I0(\addrb[16] ),
        .I1(\addrb[15] ),
        .I2(addrb[12]),
        .I3(addrb[13]),
        .I4(enb),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__10_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized22
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[15] ,
    ena,
    \addrb[16] ,
    \addrb[15] );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[15] ;
  input ena;
  input \addrb[16] ;
  input \addrb[15] ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__9_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__9_n_0 ;
  wire [13:0]addra;
  wire \addra[15] ;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[15] ;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hB6DBE96DB6F24FB4FF7DE6DB4DA4FB6DBB92EDA6A2BB26D566C9DEFE4DB26DB2),
    .INITP_01(256'h92D2DB5B7B6D6DA5B69692DB5B496D24B5B6DA596D25B6F7FE5A6B2CB0925B2D),
    .INITP_02(256'hA52D7B7BDEDBFABDB5F4A14B5B5AF6DA4A5B7F6B6DBFBDBDBE929295B6B5B4B4),
    .INITP_03(256'hBEDA77F6FFEDBA5FF93DEBB7BEEED2C25BEDED7DBDB5BD7A4A5F52925B5B6D24),
    .INITP_04(256'h2DB7FFFF6DB7BCA6B6F7D61FE7DB7F09BC37A7F7F3FEBB6C356492DA567936DB),
    .INITP_05(256'hBDB6D35A4B6B6DEDB6D65B6F6DBFFDAFBFB6DBDB4B6924B4F6FEDF7FFEDECF6F),
    .INITP_06(256'hFFFFDBEB49FFEFBFE5BFB5FEF7FFFFFFFFFFFFFFE73BFF7FFFFFCA7BFB4B69BD),
    .INITP_07(256'hFFBFAFFFFFFFFFFFFFEFFFFFFFFFFFFEDF7B653FFFFFFFFFFFBD87DFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F7BCFFFFFFFFB7FFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFF7FFFFFFFFFFFFFFFFF7FD778FF9FFFFFFFFFFFFFFFFFFEFFFFFFFF8F3F),
    .INITP_0B(256'hC78E1C71F1E78F1F5F3E3CF878F8F1F9FDF9F0FFFFFFFBEDFFFFFFF7C3F8FFFF),
    .INITP_0C(256'hDCE759CE739CE7398C631C611CA100E728150825EAE51CAB9552AEAAEA8A28B1),
    .INITP_0D(256'h9999CCCCC66673333999CCE6733198CE667398CE67319CC673BCCCE63B9CE739),
    .INITP_0E(256'h6CCC9BB333766644CCDD999B9B33333366666666666666664666666777333339),
    .INITP_0F(256'h6C9BB66D9B264D9B366CDBB26CDDB266CD9B6ECD993266CD9B3366CC899B3366),
    .INIT_00(256'h0AAE1A43B4E022FDF42DFCBC3A2EB71952F3EC04F4FB01E5F301FFFF0000FF00),
    .INIT_01(256'h35F78D453890F30BB6E23100BF1718E6FBFF00FEFE96C90D97D7F4BCE6F2E20E),
    .INIT_02(256'hFC02FD031F0FFB03FD01FCC2EF09D6F4230DE2140EC0EA01C5E606FB03FC03FF),
    .INIT_03(256'hFC0AE3F9FF01FEFA830116A20410FA04F581CA0DB8F109E1ED06F2011CEDE201),
    .INIT_04(256'h00DD1D09B1ED2CBFEA48C82477C6032DBAE8FC81DA348BD20385DD16BFE818BD),
    .INIT_05(256'hA4E8F777DCFC7BCA15CCEFFA91E415BAE8EAC84E30A4F70AC2F719A2DD1EB3EA),
    .INIT_06(256'hE165FDC450DFFC5AC6E8FEB9430773200987050280E6F57ADB06CAFD10B01C49),
    .INIT_07(256'hDC6CDEDE5BC1D57CAFFFA3C6E2009EF6E95DFF027926249A13FC7E09F6E037E4),
    .INIT_08(256'hFE48FBF078180C73CD0047B94958B423009B18F37C0DFA7F46009F3DE4FA5EBF),
    .INIT_09(256'h62F0EF9CF3F2BC5202D64CBFE068CB063FB7EB03CC06DC742803721DEA972815),
    .INIT_0A(256'h0CD5E774E0F253D03756CD3720C121D8940DC0963BD7992D87A1FBED378CEFEA),
    .INIT_0B(256'hE14CD8F946EB05DFAD18EE910EBB9049C4AC3BA2B91EB6200EA10CCA900A04C6),
    .INIT_0C(256'h02A507D8A316AC9B2FCC121DB12A06AA0FF4B20ED2F473E2155BB31E2DCB6622),
    .INIT_0D(256'hD654DEE640B3F22AC13E25C01DDEEA42DC1B58E9181DE11AE7AF26C7BD2880CF),
    .INIT_0E(256'h4AC5D2FEA408DD8820E19718ABAF06B821FEB81DE5AC0BD3D848D10A2AB226FA),
    .INIT_0F(256'hDE2716AF2A06DC4FEDEA5ACB122FCF07ECDB11B1B73FDAE70ED626D78E12B7BA),
    .INIT_10(256'hE906E3DA07E7FE0EE10FEFDF05F90FEED804F1E707F42B0BC41CFACF0CDB044E),
    .INIT_11(256'hD406EEEEFFF7F901FA030AFF0000FE02F40E24F20F1DFA06F7200DDF0BFC01FB),
    .INIT_12(256'h02F7F900FBFA00FBF506E2E5E4CDFFDDD807E5E7F5EA09CABE0DD5DAEEE009D7),
    .INIT_13(256'h37F02F05D70CF13A05CB0CE7F707F0FF04FAFCFDF5F8FAF703F2FA04F405FCF3),
    .INIT_14(256'h05F300FCF402F8FA00FF00FFFF00FE03E4E7EFE509D4D509DADF04F3F205EA1D),
    .INIT_15(256'hEE04D6F705F702FCF3FAFDF603FD0D05F506F727000B2BF21FF50A26EE15FEEC),
    .INIT_16(256'hDCC811B3CCE7B100EDDC0AD7E305E5E9F9F0F6F6FC00FF01FD03DFEEF4E609DC),
    .INIT_17(256'hEA0AE0351BE01CF02628EC1DF4E307FA04EAF3ECE80BA9DB07ABE8C5CC0FB8E7),
    .INIT_18(256'h14F904C6D60CB3EB1DD403D5D30CD3EE06EBF202F2F504E20315DD0B1DDC1D12),
    .INIT_19(256'h16D9020AFA02F10405F601FDFEFFF9FA01FE01FF0000FF01DF0410DB0E14D904),
    .INIT_1A(256'hEE04D2E8F3F104B8D809D4EC03FD02B1D00BD8F5FEFB01FE02E4F2E3E907D302),
    .INIT_1B(256'h24E265FFEB0AECFCFDE6E601E0F102DAEDEEF203F8FD00EF00E9CCF2E3ED04DE),
    .INIT_1C(256'hE009D0F1FEB1D80AE3FAFE00FDA7D30ADBF401EA3B26F64DFAE453050A17D168),
    .INIT_1D(256'hFAFFFFFFF60A02F80A02FCFDF7FB00F2F3FEFF00FF00FEE3F003C2E703CDE9CA),
    .INIT_1E(256'hE3EAFEEEF9F6F5FFFEF0F900E2F601EFFA01FEF5F503FC0103F805FFF9F6FEFF),
    .INIT_1F(256'hFC01FDE6FFFBF900D3F30BE1F502FF0000FDDCFD07EDFDF6FDFDDDF201E1F70C),
    .INIT_20(256'h00FE01FE02F6A10D0EA6ECFCBC718AAD25199AEE1E9BA932E2F222EAE808FCF2),
    .INIT_21(256'h0A07FAFB02FD01FE01FCEF2B08C4370889180AA71C0DD013CED21AD2EF03FE00),
    .INIT_22(256'hD9FCFAE91708E0FDE5CCFEBEA8F6FF01FE01F8B7F416B0EE30E3FF37EDF41701),
    .INIT_23(256'hF40CCFF9FBEA1706010ECBFC20CCF4FEEA12E80F23C9F4FBD2FDDEF31AE3F6FF),
    .INIT_24(256'hF9DAFA0000F8CFF9F9D714F5A609D9AA12DDF7F8B5F6FADD0203021AE10531CD),
    .INIT_25(256'hEA32FCED24E8EC09F3FFFCEF07EEDDF8FBFD00F302F5E126070418D5F2FBE4FD),
    .INIT_26(256'h00FDF801FBF701F6E404E8DB27E7E4F6F109D6FEF7E30303FD02FC0A15CFFA09),
    .INIT_27(256'h171CE704EAD305ECE304EAE203F1E9F9F2FAFCFCFFF7F8F5F1F9F9F4FEFBF8FF),
    .INIT_28(256'hF9FBFFFCFEFBF701FBFA01ECEFF3F001F8EF0303F3FEF9F102F7F707FBF6FDEF),
    .INIT_29(256'hF7FDF9F303F3EB00F3F5F8EFFEF9F302F7F502F7F9F8F6FC00FAF3FAFAFAF8F9),
    .INIT_2A(256'h04F00702F405E9E201FCF803F60A1EFA1821F11511F41201F80BFAFE03F41016),
    .INIT_2B(256'hF802F5F3FBF3FDFBFA00FBF604E9E004EDE505E7DE00E1E8F0E305E7D908E0E2),
    .INIT_2C(256'h03EDE804F2F302F6FC01F8FDFDFCFEF9FDFBF7FCF7F801FCFF03F800FFF6FEFB),
    .INIT_2D(256'hDE05EBE706E5EF0EEDFC01F203FAF50000FE03E8E205EEED02F6F601FCFBFCF8),
    .INIT_2E(256'h09FB1A1BFB08F9F204E9E704F503F1E506E7E605E7E406E6E8F8F005E7E406E1),
    .INIT_2F(256'hC90CCCDDF7DD00E1E107D9DC06E6E408D9F823E30413DBF703F606FEFA00FF06),
    .INIT_30(256'hF9F4FCFCF807FEF902F90604F803EAEA06E1E603F6000AE9EB05ECF7CCC70EC4),
    .INIT_31(256'hF9F9F8FCFEFBFEFDFAFBF2F6FEF1F5FCF6F70101F801FF0000F7FDFCFC03FFF8),
    .INIT_32(256'hFEFEFD0702F8FEFD0005FCF2F901FDFFF9F3F5F4F8FEF7F400FAF5F8F6FCFCF8),
    .INIT_33(256'hF7EEF0F5F1F5EDEEF5F1F8F5F0F4F5F5F5F6FBFFFBFCFBF8FDFBF9FAFAFCFBF9),
    .INIT_34(256'hF6F5F9F804FEF4FBF7FAF6D9E3E2E0F2DBE8FBF6FBEFD1E6FFF8FEDBE0F4E3EF),
    .INIT_35(256'hFBF9F50301FB04F5F603F9F6F1EBF8FFFB05F6F603FD06FFF7FCEFE4EADBE904),
    .INIT_36(256'h06FD0509FA0100FAFFF2F1F7EEEEF5F8F7F8F805FFF4FEF6F900F5F5EEEFF9F6),
    .INIT_37(256'hF6F6F6F2F4F4F1F4F4F2F7FAFDFCFAFCFDFE03FDF801FEFAF7F1FC01FF04F3F3),
    .INIT_38(256'hF9F7F7F7F7F6F2F4F6F4F6F7F7F7F6F5F3F5F3F0F5F6F4F6F7F7F7F7F7F7F6F7),
    .INIT_39(256'hF4FFF4F7F9FAFDFAF802FFFCFDFD05FBF605000005F8F0F9FBFC03FEFBF8F3FB),
    .INIT_3A(256'hF3EFE4F4F3EFFBF9F8F9FBFCF7F5F6EDF2F4EBF2F5EEF2F4F3F4F2FBFEFEFCE9),
    .INIT_3B(256'hF4F105FDFBFEF9FF03F9F8EDEB04FFFC02F9FB0901FF02FF0B01F9FAF4F1F2F1),
    .INIT_3C(256'hF6F8F0F2F4EEEEE9DDEFF3EDF1ECF7FCF3F5F7F4FAF7F3F4ECF0F4F4F9FBF900),
    .INIT_3D(256'hFAF9FAFCFBFBFBF9FCFCFE00F8F6F6F6F6F6F6F6F6F9FAF6F5F7ECE9EBE1F2F8),
    .INIT_3E(256'hF7F5F3F1F8FCFAF8F9F8F9F9F3F7FAFDFDF6F7F6F5F4F3F2F2F8FAF9FBFDFBF9),
    .INIT_3F(256'hFAF4F2FCFAFAFDFCFD01FCFAFEF9FBF9FC02FE02FFF8FAFCFAF8FAF8FBFDF8F6),
    .INIT_40(256'hF0F2FAFBFCF1ECF4F6F6F2ECECF4F5F5F1EFF7F7F3F6F7F7F7F7F7F7F7F7F7F6),
    .INIT_41(256'hF7F7F7F8FBF8F8F8F8F8F8F9F9FAFAFCFBF6F6F6F4F4F4F2F4F5F2EEECF9FDF6),
    .INIT_42(256'hEEF6F4F2F4FAFDFAFAFAFDFBF7F6F6F6F6F5F1F3F4F2F8FAFE03FCFE01F9FAFC),
    .INIT_43(256'hFBFDFCFEFE010802FAFDFAFE01F9FAF9FE03FBFAFAFD0403FCF9FAFBFBF2EFED),
    .INIT_44(256'hF6F6F6F7F6F7F4F5F1ECF2F1ECEBE9F0F8F3F1F0F5FEFBF5F6F4F6FBF6F6F5F4),
    .INIT_45(256'hF8F8F8F8F8F8F8F8FCFCF7F7F7F8F5F1F2F1F6FEFBF7F7F7F7F6F8F4F3F4F3F7),
    .INIT_46(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAFFFCF9FBF9F7F6F6F5F6F8F8F8F8),
    .INIT_47(256'hF9FCFFFEFEFFFCF9FDFFFFFDF9F7F7F7F7F6F6F6F6F6F6F4F3F7F8F8F8F8F8F8),
    .INIT_48(256'hF9F9F9F8F7F7F4F0F3F6F7F7F8F4F2F6F3F3F7F4F5F8F8F8F8F8F9F8FAFEFCFA),
    .INIT_49(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9F9F9F8F9F7F7F4F5F9F9),
    .INIT_4A(256'hF9FCFCF8F9F8F7F9F8F9F9F9F9F8F8FAF9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_4B(256'h00000000FFFCF9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9F9),
    .INIT_4C(256'hF4F4F1F6F9F9F8F5F7F8F8F8F8F8F8F8F8F8F8F8F8F8FBFEFFFFFF0000000000),
    .INIT_4D(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F9F8F8F8F4F3F3F5F7F3F2F5F3),
    .INIT_4E(256'hF2F3F7F8F8F8F9F9F9F9FAF9F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_4F(256'hFBFBFDFAF8F9F9F9F8F6F5F7F8F7F7F6F8F8F8F8F8F8F8F8F8F9F9F8F7F8F7F7),
    .INIT_50(256'hF5F6F9F8F8F8F8F8F8F8F8F8F8FBFAF7FD010001FEFEF9FD0702FEFBF8F9F8FB),
    .INIT_51(256'hF9F8F9F8FDFAF8F8F2EFEFEFD4D3F401FEFAF1EFF6F1F5F6F3F7FAF9F7F3F1F5),
    .INIT_52(256'hFBFBFCFBF7FDFBF7F9F8F8F8F9F9F9F8F8FEFCF9FAF6F0F4F8F7F6F2F2F7F9F9),
    .INIT_53(256'hFF0A01F7F7F3F5FCFCF9F9F8FEFFF7F5F4F7F9F8FEFFFCFAF6EFF1F7FAFAF9FA),
    .INIT_54(256'h00FBF4F7FAF9FAFAFAFD00FF02FCF9FE00FFFBF9FA000601FBFAFBF9FCFCFCFB),
    .INIT_55(256'hF7FAFAFCF7F2F7FCFBFBF3F2F9FAF5F2F1EBF1F8F8F7F3F1F6F7F8F7F6F5F5FC),
    .INIT_56(256'hFBF9FAF9FCF9F8F9F9F9F8F9F8FAF9F9F8F5F8F9F9FAFAFBF9F9F7F5F7F9F9F5),
    .INIT_57(256'hF7F9F9FAFAFEF9F4F2F2F9FEFAF8F8F4FAFCFBFAF4F8FAFE00FFFAF9FEFBF9FE),
    .INIT_58(256'hF8F602020104FDFEFBF9FFFCFC050600FDFBFCFAF4F7FAFAFFFFFBF9F8F8F6F3),
    .INIT_59(256'hFFEFDCEAEFF3FFFEFBF8F9F6ECF1F8F4F4FDFBF9F8EBECF1F7FAFAFF00FFF8F8),
    .INIT_5A(256'hF9F9F9FAFAFFFCF9F9F4F8FAFBFCFEFBF4F2ECF2FB00FFFBF9F5FE00FFFF00FF),
    .INIT_5B(256'hF4F9F6EDF8FF00FEF1EDECECFB0300F8EEF1F3FA00050600FCFBF9F3F9FDFAF9),
    .INIT_5C(256'h05F8EBDFF909373BFFD7C5DFFE0A0A00FEECD9EE020304F9F1F6EDF2FB0106FB),
    .INIT_5D(256'h02FC03F2C1B9D9FB0209FEF0D9D4FB132202E7C8D3F40420FFF2E6D9FB090813),
    .INIT_5E(256'hF9B8C8F50E2307F1B8A5F93237F3BFBDBC023121F8B8C5FB110B01E2C8D0E4FA),
    .INIT_5F(256'h5A9840AD66D06E72AC43BB53E66B891083B92AAD5D892F6435DFABDA0F2707FC),
    .INIT_60(256'h9A5CBB790B5147D44281F65EA6F14E4AD1999CE0414DE0BDFEFF0EDEB0E9177F),
    .INIT_61(256'hCD48E998C48E80281B00E2AEDE9FB5E0108B43B991239E66015B2BE5B9A711A6),
    .INIT_62(256'h1B35DC99085912B921067EA0CFA5FC3071F6BA5C1CBB94DEA0FB0B3814784441),
    .INIT_63(256'hD1BB78BD4C319D60F2F72800CB50D3AF9AE61BDB422FA468EAC5BBD6D866E49C),
    .INIT_64(256'h2BCA9B5900C8DBDED4ED71A0D310E55830A156FBED01CDA0623BFE999E6406C4),
    .INIT_65(256'h8D0E4160C3B026555A737F2E726C611E05CD81AF5EC7D6F733244C6DD24EF518),
    .INIT_66(256'h8D5C34B565687A4EC173ADD545C37382A858C4727E7027AF393B9E2DB3658EDE),
    .INIT_67(256'hDCE23DDA53B64E4C7533BB3850DA4E9C88102769D541B1E666DA3B527170E17A),
    .INIT_68(256'h8056AFD6FE3AF755B2455DCB348BAC84A075AD9D7CB0B9DB77679C7FE69224A3),
    .INIT_69(256'h6EBA82B38251913CE632D2B45EEF3C05C5C16036FDFD5A51B4DDFD6893C4A10C),
    .INIT_6A(256'h6D5C20127DDD43935D24CA71098D014D8FA351FC6D896024B0570D6112A5A7B4),
    .INIT_6B(256'h2D7D6A304EAC70156AFF6CB0A758C753DF871C81535F810CD1CBCC7B7665C7A9),
    .INIT_6C(256'h50C352CEBE4274B2A999A7650A873A4C9B6F2A8F5C197B23A18C8779A998DD50),
    .INIT_6D(256'h7093BF67D683405587884A6A4E2290F13FAF7F34A5962A4DB948DE3A09898890),
    .INIT_6E(256'h8F5953C72C54E18F1F3EA5C6484D8B90C8CE2EEA822458AE782687C46522B5B5),
    .INIT_6F(256'hF0AE2F7FDBC9526B9B513A5B876372C53EE39A1A3FAAA43147B7B242608B5384),
    .INIT_70(256'h61B751FF6AE443D39A0A52E080347EB0914F828E3F3F9BAA3032E765DBA31E64),
    .INIT_71(256'h34B60BA6418EFE883669ABB67672753336899D6A47B895184BAE8E25539549F0),
    .INIT_72(256'h6880ADAD56659C66456FB59A7684967836A7C8B5B980844F2E85C6883B7FAE5B),
    .INIT_73(256'h77EB8104B5F1470B62CA93018FC85B343FD0CCA298AC853C637C917C48689870),
    .INIT_74(256'hE6910783EA2F8043297290985207344C3B3861C38A14427B641654C785184BED),
    .INIT_75(256'hC1765456A9B24B37A0EA70F061E063F07116A5FD68246CB4BC6655B9F670FB4B),
    .INIT_76(256'h224575CCA82490EC40E25CEB94EE883352A2A85C177DDF9E186A067313A6107C),
    .INIT_77(256'h1C79EE4DD64D074C9CC56F0E80C96B00660662D47827E759F05EEE741A72CD78),
    .INIT_78(256'h951AB719960362E270152399EE95F6391267B18E382E8DFA7AE1532069ACE0A6),
    .INIT_79(256'h85075FCFC359EE830A43C07D252A90E258E96B0B35AFD92AE1810784E3762421),
    .INIT_7A(256'h5215589CC39C23A30564D08A2F04C9277BE5C03C0891DA56F5A41B4FAAEE71E4),
    .INIT_7B(256'hB7862F21B3D83BDF8F3D578DB87AFAE775C48926FC99CE51DF611D60D0E76DD4),
    .INIT_7C(256'h3CBDC52ED29D224AC2BE1AEA98FA22D8E004D9B03C47CE0C42C18E3C1B7BEE51),
    .INIT_7D(256'h4218BADF0FAB9D5856C8D337A37E372788EF68B08F33FA8EFB2ECCA8453FC10B),
    .INIT_7E(256'hB24955DBFA34A2823C02BC2D32D1CD7E3AC53140C3C134D9AB3A4DC9F251AA88),
    .INIT_7F(256'h41A29119968D3438D00F59ADB207D58FD70F98A623D8811741E3FB29ACA443EE),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__9_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__9_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h01000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__9 
       (.I0(\addra[16] ),
        .I1(\addra[15] ),
        .I2(addra[13]),
        .I3(addra[12]),
        .I4(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__9_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__9 
       (.I0(\addrb[16] ),
        .I1(\addrb[15] ),
        .I2(addrb[13]),
        .I3(addrb[12]),
        .I4(enb),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__9_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized23
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[15] ,
    ena,
    \addrb[16] ,
    \addrb[15] );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[15] ;
  input ena;
  input \addrb[16] ;
  input \addrb[15] ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__8_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__8_n_0 ;
  wire [13:0]addra;
  wire \addra[15] ;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[15] ;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hD5BB676B59B366DB56FD9B6ED9B366D9BB26CDBB66C9B366CDB266D9B26EC9B2),
    .INITP_01(256'hBB3266CDD9B366EDD9B3264CD9BB264DD9F64D9326CD9336DDB3766DCADBB66E),
    .INITP_02(256'hC9B33366CCC99BB37666CCDD9B33666CCD993B26ECDD93B3266EC89937666CD9),
    .INITP_03(256'hCECDDD999999999999999DBBB3B33333326664ECCD9993336666EECCD99B3766),
    .INITP_04(256'hE66673339B9DCCCC6673333999998CCCEEEE666773333999999999D9D9DDD9DD),
    .INITP_05(256'h673398CC67339DCC67331DCCC733399DCCE733399DCE667739DCCE67731199CC),
    .INITP_06(256'hE731CE7398C6739CE6339CA6339CEE67B9CE63399CE73199EE7399CE673398CC),
    .INITP_07(256'h8C739C738E718E718E739CE71CE318E739CE718DF39CE339CE739CE339CC6B18),
    .INITP_08(256'h18E39C71CE38E31CE39C738E31CE38C738A31C639C739CE38C71CE318E718C71),
    .INITP_09(256'hE3CFEF3E78E3871C79E38E3C71C71E38E38E3CE3C71C718638F38F38E38C71C7),
    .INITP_0A(256'h71C71C71C638E3CF3CE3EE38E78E38F3CF39FF9F1C71C71C79E38E3871C71C70),
    .INITP_0B(256'hFFF1E38E3C79E79E73C71E38E3C738E71E3CE1E71E1E7EF3C71C71C79E79C79C),
    .INITP_0C(256'hF3E1C7FFC78E3F7F7FC71CE3CFDF3E71E3E7C71E7FFFFFCF1C38F1E3C7FBDE39),
    .INITP_0D(256'h0F1FFFFFFFF1E1C3C78F1E3C71E3C7878F87871E3C78F1E3C78F0F0F1E7CF9E3),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFE7FFFF7FFCFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7),
    .INIT_00(256'hE365E2B65242A91C55C2C433EF64FE2EBDC84118BE575DADC34EC2845D0F9E1C),
    .INIT_01(256'hB2B9491F96F638A6A92DC6B22424BE016ACAC021119CFF52C2CD2FFFC35860A8),
    .INIT_02(256'h2EF8CD564CAFDE4BE0C25041D9042994944EF0C3312BC5FE8EE6B7232496AD26),
    .INIT_03(256'hDD05FDEAE608CBC31C08D9051AB3C024EBB71C35B8DC13DBE02DFD88F12ACAD4),
    .INIT_04(256'hD6DE21E7DB382ABBEE1DD8D70517BDD818E5CC0A1BE0EB05DBE306E0E90D0BD5),
    .INIT_05(256'h00FF00FE01E1EA04E5D9F2FEF2F406FCF90503F9FA02E7EF02FFF802FFDAE905),
    .INIT_06(256'h01FD20E3DC2B12DFE72EECDC3E23BBE224D2DF1C10D0EC11D3E903ECF302F9FD),
    .INIT_07(256'hF4FB00FF00FE01CBE106FCE4EA06E8F600FBEF0005F5FBFF00DDE905FC01FFFF),
    .INIT_08(256'hCFFB3413FC02FD02C5ED0ECBE902EEC7E506DDF002E5F12211E2F102F1ECF702),
    .INIT_09(256'hD8E41FF9CBF60AD3ED03EDF01910D9F102F6FDFF00DCEE2F15EAF700C4DF10E1),
    .INIT_0A(256'h310BE82B1B94DA35C1DA4C1681C70A6EC84917AE346FACD13C10B5FA18DCFA0D),
    .INIT_0B(256'h5FFB6190A9782CC3EFFB46D67BD4BA7E317D3951BAF173D1AE621CB55987C0DD),
    .INIT_0C(256'h67E240CEBA2D157FDC27AF59FA1071DB681D7F08426CC8851E91131C84DE48C4),
    .INIT_0D(256'h7DD655EDC4511FB8F425D6750A2DA3CF6420910B0679DD6916A64C46AFE83905),
    .INIT_0E(256'h79F539CFDC5E11A0EA20DA973A1788F065EEA449135AB242F787F554DDE238F7),
    .INIT_0F(256'hEA3BF16CFA5BC7B96A4FA1EE69048F2736ABFF881CA0F93EB9733C0C97E930FA),
    .INIT_10(256'h0586F9C932ED71E34AF6941273E79919218AE848FCBB160262D94EF79C0036C8),
    .INIT_11(256'h45038C097AE57926379DEC68F29CE83DE57E310C8D0580068E32277692370774),
    .INIT_12(256'hE9639443EF963C4FBEA93AF57FFF74FDBE4D05AF0027BC59FB56AFA23C207596),
    .INIT_13(256'hD2AC23099BFD47F5AB1186E3B23E1BB30C89FBB2F52CE4A0390194116CE6B128),
    .INIT_14(256'h9D1240C4E550E681044CD39E294DB6B22CDF720178EAB4461FB8D436F57F105A),
    .INIT_15(256'h1FE4A8FB1CF0C71370EBAC1110C2F95DF8C6012BE18C182AC0EF41F07CE13BDC),
    .INIT_16(256'hFDBE1257E6A5061CCDFC540BD10323E6A70521C1D720F5A2D025F9C01B55E7D1),
    .INIT_17(256'hE7A9221FD51E3AEBE31CF8D01A49FDE70720E6A70B1AC9E824F0BE0D17CCC909),
    .INIT_18(256'hAEBC35D9AD233BBBB7250CA9CE38C5952155C1A416EB96C81CCFB42F42E4D219),
    .INIT_19(256'h1EE9D45874CCCB172CA8853E3A9BAE00EF78A252D494FB2DAC73273CA0C55631),
    .INIT_1A(256'hC1BA2A078CC523BA95194EA79A2F1EC3BC4516AA031EB89B495BB8B3233FACBD),
    .INIT_1B(256'h4117C5ED4B10CE1B1FB0A2373ABDBE1925B0BE4011AE0339D69AEF30D2C4505E),
    .INIT_1C(256'hFA3EC8B91A2DBA83F21FCEB71930B5A5172ABAB93840A3A13730D8D1453DB6D8),
    .INIT_1D(256'hA33B2BC2C9262A8FA64B2DBDDB3419A8A5362BC3D0FE0A97C357E78FFD34C77F),
    .INIT_1E(256'hA31014B18E2748D4B91543E5C3253CD1CD2634CEC32119A9AB4131B8C3201E9E),
    .INIT_1F(256'h6DBB5615B7E0FF059EAA44009DCF20DF75C025E997F643E3AB0047F2AB0C58D5),
    .INIT_20(256'h8FDC3DD8B3134AF08DE333F59CEF4DED80C15EE6700950F274D272FA82C329F8),
    .INIT_21(256'hDF21149CC03019B2D01D0EB1A32B2AB1930628A5992D39BDB9F918AA953538DA),
    .INIT_22(256'h43FBAAEA3E17B0D13F22B7BC2223CAC6101CF8B8C8240AA7F44806A9CE400FD3),
    .INIT_23(256'hBC5CDB2FCE88E834C876C84AFD6EC152287DBB5827A2A53228BAB33150A76DF1),
    .INIT_24(256'hCC591F9BB5552B8EA13D45A46C1662D29B14740480CE683185C85C29AABC3547),
    .INIT_25(256'h288CD24D1797B80C15DFADE7532098D445158DCB5019879E0F3DDD7ADA220C94),
    .INIT_26(256'hD3531181D165FA79DB6425E0BDF325E6B0DF47118AB16865AC9E2E3C9471279A),
    .INIT_27(256'hC1BDF5280AB3EB5E1BA1A10642AC710A3CD452CF7A2272B85835B7A13A46D883),
    .INIT_28(256'h28FE86DD6744B4A02E5609B10776118CDA4626A6B14951E09FF0601A8BE05314),
    .INIT_29(256'h2903FDB8D81703B07BE724D97CE733079CAB381BED7ED75408A5D15015C3BBF0),
    .INIT_2A(256'hA81F58F791E553FE81CC602CDD98F47A128CF0690F7EB75049E1A0E724F9A8E6),
    .INIT_2B(256'h6BE30301EC700F58FCACF25B22BDA3FF5B035BEC7B0C88B4634BE191F64716EC),
    .INIT_2C(256'hFDC0044612E774F36F04A5F93706C9EE4B16EA98F15A22B58E2657E399F655FB),
    .INIT_2D(256'h0898B05834C17BF95A06D2C52C35DD9E005507BBA2F628F281C94701B4D22B1D),
    .INIT_2E(256'h00B39D2E81F181F7520DA38C0E4CE078CB3313E187F755FCB087023BD3780668),
    .INIT_2F(256'h1CD5AA1B89F876D45B1DA1830856F684D15A0CEE9E198E0EB0BC5830BD7F0161),
    .INIT_30(256'h4AE689116EEC6AB85E14B3941157FB8EB34E48E79607610D7E8E4448D8A60759),
    .INIT_31(256'hC3A7FE3EE1AEB50917F1D1C8241CEBA7F36629D9AD0E3EFFD9D72E36F9A2C75A),
    .INIT_32(256'hD92270EA9FB91E5EE5BBC61A1AC8BDE84919CBB51A4A0BE4AC0F53E7AB0739F5),
    .INIT_33(256'hE728E9D8C9182FF1D6CE2D23FDDCF84A46DC8E18590DB1AE2E51E794E94C11DE),
    .INIT_34(256'h882AAECC4164BB8ED02844B67ACB1A18C5B6F418E4C8DF1416DBF90917F7D5BD),
    .INIT_35(256'hC2D1F02307B4E9054A28BEC31B40C58EC33852C2AEE33043F30DEB7087A0BB2B),
    .INIT_36(256'hFC2631DDD4145312A5CF09490877BB3246A66BCD2439B89BE61B2BC9A0D52C30),
    .INIT_37(256'hA3A0DD616FAA94D54677BEAC05283CCBC9F3293BBFB8F02234B8A7E42F12A4DC),
    .INIT_38(256'h6867C19FE663707D40BD1E2D86910E11308A9014EE1490970E0D328EA2034963),
    .INIT_39(256'h65B7668AD294E14769B975D33262D990D35C75D391BE7582D693C56DCF0455CC),
    .INIT_3A(256'hF3A2B6F417008E9BE2483EBD96C57679B963BC427F0080D21A38DA5A9D1C41C5),
    .INIT_3B(256'h3929A28DE23D47D986C06763BA9AB94C8CC457B951460EB6C41F55469DC109F9),
    .INIT_3C(256'h1F3616D398D1314FEB7ACB2E631FA5BF0A70448A9F2A7C3DA86EC05C3EA98AD3),
    .INIT_3D(256'h714BCF317275FBBA7FB534CA8D3C7F5CF67A8DD73EB34970DF42B84649EF7BAF),
    .INIT_3E(256'hA11C5D24A372CF303CEB436C096A024795178F229663DEC84D9B29A83E810E0A),
    .INIT_3F(256'hAA57CE416E600A6C3FA85ED2696BB664D26679F56B892A88327853D04646BD5A),
    .INIT_40(256'h80125E35AC72DB435CAA4BD85C8B25819B5AD647605E008E61A83AA459922BA5),
    .INIT_41(256'hDB678423967814811B8B84ED4082249DA0ED4C1DBA82D7495C1A7F962F7F2683),
    .INIT_42(256'hDBBD69911D9233520C1B4CF1AB66A454699186B8148F797FFB76AF29A36ACB89),
    .INIT_43(256'h6291DA5E8B1FBF2961FCC049821E226329BD357E33C783962125754BA9264236),
    .INIT_44(256'h6C0366AA399C248293F59F7CD75DBC7397188581F05B6508A49F2183228546D2),
    .INIT_45(256'hDF7CA60ACD318E64E39CAAF48DBB02B323674FE46447FD5197227C158A84B03E),
    .INIT_46(256'h59EE9979C8429E047C636E49EA5662015964F463780998861E8E418E41E46296),
    .INIT_47(256'hAC99004A3929B96B9240BF78C10B4C5BF65D6BC452920E8150B054D8498C1760),
    .INIT_48(256'h7A70F36C8D0A6F44F49CA20362593ECD83B13AA020AE1E8263A4327E325844F7),
    .INIT_49(256'h5D5DFCA7B90B6F53F79E8EEB6170FC9D670FB073B44876E4AB42764EB9466E47),
    .INIT_4A(256'h33F47589016557F77263048F80FC78722B896FF57F9606584E0A5F6B0089A500),
    .INIT_4B(256'h9A62D13F7226855C910E6443C8697607746CD7897CEE8E5BE95E7E067771F74D),
    .INIT_4C(256'h4DB45B96168B61C5677758B474D262C5238864E88B9FD8519D19707DB8329B11),
    .INIT_4D(256'h6CF08370E8656BF6746FCC266C1FC796B0175D37E85B51025868F0868BE32F5E),
    .INIT_4E(256'h27FCCF939E22855CD5539A0C5969E6868F239D7C167B4D917BC23ED05CBD4599),
    .INIT_4F(256'h9C8ED6334D15E2B9CFFD070AFFFFE0AECDF8FE01EFA69DDF2126FDCCA8CCF92F),
    .INIT_50(256'h2374379D59AD5F8A4F901EA17FB833E2B0B8115F41AD467A48D4769A0660640D),
    .INIT_51(256'h66C64E83DF415FF38660AD41842BA341A24AD0779D4B783DAA66E26B7B0871A7),
    .INIT_52(256'h262700B083E5506F23986ACB59AD4E6C148C6EC64C9038A573D8709B24843A9F),
    .INIT_53(256'h97EC303AF39CB5EF2D26CCB8E50101FAF4F3F6FFFFF2CBB5E60906FEEAE0E0F7),
    .INIT_54(256'hA18ADF454CE2978CD34E6516B7A0E0264009BEA2D91D452BCB8B90F13F26DF9D),
    .INIT_55(256'h0F1EFABBBAD81211EFEFF60B0B04FDF2E5E9FF04E6C6E41E4915BB9DDE677715),
    .INIT_56(256'h96E93E601DC2DB143727E1BCCD07352BFAC4D70F1E14FCCEC0F32B23E9BB9CCF),
    .INIT_57(256'h1D9F90D12F4211C27BA0237433934ECB4380278261BE576212B87DC9396D2CB0),
    .INIT_58(256'hF14C52FCAEACEB3432F2A39AE61C1EFFE0E3061916E4B7C0ED1223FEA7D3224B),
    .INIT_59(256'h9BCE39420AB9ADED30580DA99CE9383104D1ABD40A3D4BE6A3CB175134D0919F),
    .INIT_5A(256'h0E150CFDF8F8FB00030906F5EBEEFC0C0CFFF4EAE9F1FF10F1BDB8E62836F4B7),
    .INIT_5B(256'h0B3938E097B1E3091A06C6A9BDFD3122F3C8C204332401D7E6F9FE0A0EF4CAE7),
    .INIT_5C(256'hA58CCA284614D5C1DDFE201A0CEFCDEA2609C7C9F4161D01B2ADEA2E1AAC77A6),
    .INIT_5D(256'h50BE73AF2E6DFCA29AF4524806B9B9E30D3113C4A1B4F03246029A74D653792B),
    .INIT_5E(256'h7E60F4AD9BCD1E663BC3706BF77D84F46571DD7A87FE747EF53E59F37887F25B),
    .INIT_5F(256'hC3E3FAF9F7F0F3F9FBF3EDF7040805F8EDE7F3061917EAB8BD106F6EF89A9E05),
    .INIT_60(256'hC9F3090E09EDD0DEF1FEF7EEFE01EDD4E3FE02FDE5D7EF050D03E1CDEE070EEC),
    .INIT_61(256'h020B05F6EDF502090900F5ECF7040A0AF6EAEBF80A130CE8DAF1FE000201F7CE),
    .INIT_62(256'h05FAF5F1F2F9FBFBFBF7F3FAF8F3F9F7F2F4FAF9F9FAF5F1F3FB060CF2C7C9EC),
    .INIT_63(256'hC6C2F0121D0AE9D7EAF4FA0B05FDF2EFEFFA111304F0E9FA0E1610FCEAECFD0A),
    .INIT_64(256'hF0FC0802F3EEEDEFEEF707FEE3D4E2F90709FEDDCDE9FF0E0EE9C0C802392BF5),
    .INIT_65(256'h02F8F5F6F8FEF8F2F2F7000801E3DCEE0C0F00E0C9FA160BE6CFEB09180BF4EB),
    .INIT_66(256'hD7F80B1103DEB9CCF9304B14B694D0102816F2CCCAE5F7FF01FEFAFBFBFFFDFF),
    .INIT_67(256'hF1F5F3FC0906FEFBF5EEF505130F01EEE9FE10180BF6EEF5FEFBF9F8FDFBE6CE),
    .INIT_68(256'h1A1908E7CFE9F90F16F8D3CBECFD0A0DF1C7C1D7FC1208EAD1E1F2020702FAF1),
    .INIT_69(256'hB4E41B3515F0BFB4D6083C2AEAC1C7F109090A00FEEAD5EC02161903DAB6D1FF),
    .INIT_6A(256'h6C22C17482E63C552ADA9BA9D725480EC996B8F5254D2AD59EBDEE285326E2AA),
    .INIT_6B(256'hFA0A0E04F4F5F5F3F802090902F4E9E8FB0F222105CAA5D51B5B51E98885DD49),
    .INIT_6C(256'h1DB95FA3255932CA7886D5142F13E8B5A9DB163522E7BDC2E406141F11E3C3D5),
    .INIT_6D(256'h95E54C6E2BC58FA2FB65681AA4668AFA6363239D3E7CE0304F18C3818FDF314D),
    .INIT_6E(256'hF9FAF9F9F8FCFFFAF4EFF3F9040B05F9EEEAED00121A02CFBADB08353505C88A),
    .INIT_6F(256'h00070700F8F9FAFF000307FDF0ECEFF9FFFBF5F1F5F9F8FCFFFBF0EEF7FAFDFB),
    .INIT_70(256'hD2DAF2FF03F3EDECEFF6F9F9FAFAF9F7F5F80304FEFDF5F6FDFFF9F6F5F1F6F8),
    .INIT_71(256'hFDFFFAF4F6F9F7F7FDFBF6F5F3F5FD0102FAF2F6FBFEFDFEEED7E3F2F9FDFCF1),
    .INIT_72(256'hF3F2F5F8F9F9F9F9F9F8FCFFFBF9F9F9FAF8F6FBFCF9F9F7F5FBFBF7F3EAECF6),
    .INIT_73(256'hFBF9F9F8F9FDFFF9F5F5F2F5F8F7F7F1EBEFF8FEF9F5F3F5F9F9F9F8F9FAFDFA),
    .INIT_74(256'hF2F5F8F6F6F3F1F5F6F5F5F2F5FAF9F9F9FCFEFAFAFBFE0405FEF8F9FCFFFEFE),
    .INIT_75(256'hF7F8F8F8F8F8F8F7F7F6F5F5F4F3F3EFECEBF3F8F6F1EBEFF1F4F6F3F2F4F5F4),
    .INIT_76(256'hFAFCFFFDFAF8FAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9FAF9F7F8),
    .INIT_77(256'hF7F8F8F8F8F7F7F2F1F2F5F7F5F3F1F4F7F8F8F8F8F8F8F8F8F8F8F8F8FAFAFC),
    .INIT_78(256'hF8F8F8F8F8F8F8F9F8F9F9F8F9F9F9FDFFFEFFFBFF0601FEFEFAF9FE00FCF8F8),
    .INIT_79(256'hF8F8F8F8F8F9F9F8F8F7F3F6F8F6F6F2F1F1F1F6F7F6F3F5F8F8F8F8F8F8F8F8),
    .INIT_7A(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F8F7F8F8F8F8F8F8F8F8F7F8F8F8F8),
    .INIT_7B(256'hF7F8F7F8F7F8F7F8F7F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_7C(256'hF9F9F9F9F9F9FDFAFDFAF9FDFBFCFAF8F9F8F8F9F9FDFBF8F8F7F8F7F8F7F8F8),
    .INIT_7D(256'hF8F8F8F8F8F8F7F6F6F5F4F2F1F5F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9FB),
    .INIT_7E(256'hF4F4F9FCFCF6F0F0F6FDFBF8F7F7F7F7F7F7F7F5F2F2F5F3F0EFEFF5F8F8F8F8),
    .INIT_7F(256'hF8F8F8F8F8F8F8F8F8F8F9FAFCF7F4F8F8F8F9F9F9F9FAFDFEFDF9F9F9FDFCF6),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__8_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__8_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h01000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__8 
       (.I0(\addra[16] ),
        .I1(\addra[15] ),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__8_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__8 
       (.I0(\addrb[16] ),
        .I1(\addrb[15] ),
        .I2(addrb[12]),
        .I3(addrb[13]),
        .I4(enb),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__8_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized24
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[15] ,
    ena,
    \addrb[16] ,
    \addrb[15] );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[15] ;
  input ena;
  input \addrb[16] ;
  input \addrb[15] ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__7_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__7_n_0 ;
  wire [13:0]addra;
  wire \addra[15] ;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[15] ;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFF3FFFEFFFF3FFFFFFFFFFCFFFFFFFFFFFFEFFFFFFFF7FFFFFFFFFBE79FFFFFF),
    .INITP_01(256'hFFFFE71FFFE7FFFFF7DE7CEFFFF7FFF1F79E7FFFFFFFFFFFCFBFE39E7BFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFF80CFF9FFFF87BFFFFCFFFF71FFFFFFFFFFE630FF9CF7FF9FFF8F),
    .INITP_03(256'hE3FEFFFFC7FFF00FFFF9E7FF0E7987FFFFFFF7FFFF7EC60E38FFFFFFCFFFE7FC),
    .INITP_04(256'hFFFFFFFFFFFC0FFFFFFFFFFFFFF1FFE1FFF9FF3FC38E30CFFBFFCFF8C6F9F7FE),
    .INITP_05(256'hE00FFC01F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'h71C1CF0873C301BF18FBE11FCC0DFC00F7BE007FE106E7E60DFC03E38FFF03FF),
    .INITP_07(256'hDEF047230700F8FFFC00FFDFF804F9803F30F3FFFF0F000F0F983F84303BF31F),
    .INITP_08(256'h0CC22743EF333733F3091999FBA67EE67EE1CFBCC05E1FF3DF8B82187C303662),
    .INITP_09(256'hE7A083A1E3B181A0C1D0C1D985B9849184B18CB70C3F0DA30DB31F667A669E86),
    .INITP_0A(256'h6F21B694696906F41A7EC91F3D0F3C871E878F478747C346C743C761C76187A1),
    .INITP_0B(256'h8C0918088C09181110123011103130119008980C99044C863E03270093804A50),
    .INITP_0C(256'h40D64EE6C0FF0725A929C54FDED25F4B1DEDB311372298C8E1C7C387870D9C09),
    .INITP_0D(256'h8F0F3C78A9456F3B7DE1E3878E962E91528AD454E2879C1637537B8EDFFA715A),
    .INITP_0E(256'h8833B271FF807FC03FF07FE00F9E0E3E1F9C371F078F071E1E2879F0E3C3CF0F),
    .INITP_0F(256'h83BFF8003FFF838E078007FFC001E1E78763831F8C38C0CF9C19F1C11E3E2007),
    .INIT_00(256'h05FDF4F4FB0404FEF9F8FAFEFEF9F9F9FAFDFAF7F7F7F7F7F7F7F6F8F8F8F8F8),
    .INIT_01(256'hF6F6F6F1F1F5F6F5F1F1F4F7F8F9FAFAFAFAFAFAFAFAFAF9FC03FFF8F8F9FB02),
    .INIT_02(256'hF9FAFDFBF5F6F3ECF2F8F8F8F8FCFBFE02F7F0F2F6F7F5F1F0F3F6F7F4EDEAF1),
    .INIT_03(256'hFCFDF7F5F4F1F0F2F8F9F8F9F8FAFE00FDF7F6F7F5F5F2F3F9FBFCF9F8FAFAFC),
    .INIT_04(256'hFFFFFFFDF9FAFEFDFAFBFCFDFBFEFCF4F4F9F7F0F3F6F6F5F4F9FBFBFCFCF4F3),
    .INIT_05(256'hF2F6F4EDEBF2F6F6F8F8F8F8F8F8F8F8F9F8F9FAFBFEFDF9F8FA0104FCF9F8FA),
    .INIT_06(256'hFAF6F3ECF4F9F9F9F9F9F9FB0204FBF1ECECEEF5F2EBE9EFFBFCFEF9F2F4F7F4),
    .INIT_07(256'hECEBF3F6F3F3FCFF0205FFFCFBFCF6F4F5F4F4EFF1EDF0FAFDFCFE04FCFAFBFC),
    .INIT_08(256'h04FDF3F2F804FFF6F7F5F5F3ECEAF2F4F6F2EEEDF1FBFDFBF7F7F5F4FBF8F3F3),
    .INIT_09(256'hF0F30107FDF4F3F3F800FBF3F2F6FAFAFAFAFE070D05FAFAFB050AFFF9F7FD05),
    .INIT_0A(256'hFBF9F7F7F7F7F7F7F6F4F6F9F5F1F4F3F6FCF7EFEAF1F4F3F7F4F2F6FAF9FCFA),
    .INIT_0B(256'hF1F2F1FC07F2D3DCF50007FEF8F9FA0605F9F7F7F7F7F7F3F4F8F6F5F2F5F8F9),
    .INIT_0C(256'hF7F7F7EEDEEAF5F1F5F6F7F901FBE6D3E2F3EFF3DBDAF4FAFDFCFDFC010808FA),
    .INIT_0D(256'hF6F3F6FF02FBF5F5F3F700FBF4F6F70203FBF9FAFBFF0500FAF9FF04FEF8F7F7),
    .INIT_0E(256'hF2EFD8D9F4F6F8F7F8F7FA0509F9F2F3F2F3EBE1CAD5EEF3F4F3F7F2F5FBF9F6),
    .INIT_0F(256'hF9FCFEFCFDFCFAFBFBFBF7F6F6F6ECD9E2F1F60201F9F8FA010304FCF8F9F8F9),
    .INIT_10(256'hCAE4F8FFF4E5F2FCF90002F9F4F3F4F3F4EDE9F4FAF9FAFAFA020700FAF8F8F8),
    .INIT_11(256'h0300FDFE040D2518F6EDEAF5EFE7EAE8FE0C02FDFBF90105F6EBEAF801F8F0D6),
    .INIT_12(256'hEEEBF1FCFDFBF6F3F1EEF0EEE5D4E3E5D8D6C1B9C7EFEFD6E5F4F90307FEFD03),
    .INIT_13(256'hDADEF9F6F3F4F3F701FFF9FA010604FEF4ECF0F4F3EFECF4F7F7F6F2F3F7FDF7),
    .INIT_14(256'hFA01FFFEFEFEFEFDE7CFE4EEECECD4CCEAF3F1EAD7E90102FFFCFEFDFEFDF6F2),
    .INIT_15(256'hF9FDFAF8FC0203F9F6F7F5F4ECE9F3EFEAEFF1F7FAF9FCFCFD04070606FDFCFB),
    .INIT_16(256'hF6F7F5F1F1F5F6F6F6F6F3F8FAFAFCFAFA0005030E120501FDFC090BF6ECF6F9),
    .INIT_17(256'hFEF6F2F7F9FCF7F1F3F8FCF7F5F5F3F2F2F2F2F2F2EBE3E0D2E6F2EBDFD0E1F0),
    .INIT_18(256'hF2F10304FCF9FBFDFBFCFFF6F3F7F8F8FAFDFB0004FFFBFCFDFCFAF9F9FA0505),
    .INIT_19(256'h0907FCF7FC040403EED3DCEFF2EEEAEAEAF4FFF5F3F9F7F6F6F0F0EFEFE5D6EB),
    .INIT_1A(256'hF6F7F6F7F6F7F6F900F7F4F6FAFFFF00FFFF011211F6F402050F1305FBFCFE00),
    .INIT_1B(256'hEDF0F5F7F6F5F4F2F6F7F7F7F7F7F5F1ECECEDF903F7ECEBEAECF4F5EDEAF0F6),
    .INIT_1C(256'h01010000F0D9EF0601EDE7DAE01922FCF9100E0303FDF2F5FCF4E9E9E8EBF4F5),
    .INIT_1D(256'hFAF7E6E5E4E8F8FBFAF2EBF3FC0401F3F4FAFE0501F5F3F8FAF8F9F8FAF6F1FF),
    .INIT_1E(256'hF9FD061718F9F8FDF5EDECDDD0E9E9E8F4F4F3FE070C14111113130AFFF7EFF0),
    .INIT_1F(256'hFEFBFE010200ECDFF3F3E8EBDFD4F900E7CDD2F0EFF3EADEEAECECF1F0F2F0F4),
    .INIT_20(256'hF1FC060704FBFD00FAFBF5E3EB0501F6F5F5F7FF02E0D1ECF8F5F7DFD5F0FF07),
    .INIT_21(256'hFBFAF4EDF801F7F7F4F2F3F9F6F2F3EAF0FD0004F7DDDDF0F7F4EEEFFD050800),
    .INIT_22(256'hF8FA00010D09F0F4FE070701DACFF6030F00F8FF16291204F7FB0400E6D9ECF5),
    .INIT_23(256'hF3F9F9F1C9BDE4FBFBF4F4F5FE0300E3D5EDF5F8F9F5EBF00204FCF6F3F4F8F8),
    .INIT_24(256'hF8F8F8F4F0EFEFF9FEF8FBFF000406FEF8F8F8F5EEEAECF4F8F8F9010B0901F5),
    .INIT_25(256'hF7F8F8F8F8F8F5F5F9F6F6F0F2F9F7F9F5F3FBFEFAF8F8F8F8F8F8F8F8F8F8F8),
    .INIT_26(256'hFFFFFCF8FCFBF8F9F8F7F8FDFDFE060605080300FFFAF8F8F8F3F0F0F4F9FDFC),
    .INIT_27(256'hF3F7FAFAF7F5F3F0F1F0F1F2F3F3F6F4F4FEFCF9FAFAFAF8F6F5F5F2F4FDFFFF),
    .INIT_28(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F6F7F8F8F8F8F8F8F8F8F8F9F9FAF9FAF7),
    .INIT_29(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7F7F7F7F7F7F7F7F7FBFEFEFCF8F8),
    .INIT_2A(256'hF8F9F8F8F7F7F8FD0101FCFCFFFEFBF8F9F8F8F8F7F5F1F3F8F8F8F8F8F8F8F8),
    .INIT_2B(256'hF7F3F6F8F6F6F2F4F6F7F8F7F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F9FEFFFEFB),
    .INIT_2C(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_2D(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F8F8F8F8F8F8F8),
    .INIT_2E(256'hEDEEF7FF0506FEF9F9F9F9F8F6F5F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_2F(256'hC4D0ED08222D333318130F02EBC4B6D4E8EAECEBF1F5040F09050205070600F7),
    .INIT_30(256'hF00D0C02F9FAFAFAF7F2F6F7FAFEFFFD050C10110E03F7ECD7CAB4A2A6AD9DA4),
    .INIT_31(256'hCAD8A654CD40F8138CB2775B90FD75DDCC5D1117575CF179282FB9293107DDD4),
    .INIT_32(256'h9FC1F43D633F0DF52B818C4A0EE6FA0DFAC527DAD905434A5D8BF265DC260DD1),
    .INIT_33(256'hA55065FE36DE74210AF82C83B2CAE61E75B5AC784442504411C88E92C6EBE5B5),
    .INIT_34(256'h2376029F0613D59A97A26C0A9023F71A86AD5C06066E1AA5CC9D6CA3FFED7E12),
    .INIT_35(256'hDC640FB30A3F3AA7083B52A7FF703FD3C26F13E4FABF31729522754A661A1003),
    .INIT_36(256'hD31042AE006B2CA6A523E9FCC84CD43C79283479A8A8E340A93D2AB7C0C0480B),
    .INIT_37(256'h5D219C6EBA2614EBB11872170A41F2A9D1C526F27FB8B27FF3A7A43C9BF58C92),
    .INIT_38(256'h5431E158BE4B1D1975E30969F9983989967E6208994FE856E09BCC54B8D7C5F3),
    .INIT_39(256'hB87E97AD1464A4CDEF63E31C14F8B29D9D61F7843B314A92E00C2857CC08DE95),
    .INIT_3A(256'h8C95A8D9FAE2D6E20B27190AF8E9EEFC22432A0A23527A9E915B2204F1F6D151),
    .INIT_3B(256'hA34FB5624D707B40CEB735C96BBFD9F4082D62288C24FBE9E0C18C6A3B1C3A73),
    .INIT_3C(256'hF8F5C995A114788E4B0B1565E124CE218073B6AC52D1BF23C24D7A3F020C5196),
    .INIT_3D(256'hB8EFCEB7C7FE42687D6F5F8CC3EDAC22E7ECF4E5BC8A514EA5F809C05831489B),
    .INIT_3E(256'h078BDEC44BCD99BC042024070D2A3011E2C2C0E2FC080F0CF3DED3D4B8837271),
    .INIT_3F(256'h27A603DE5D08895B30B6AB178C84E3F65C8DDB87D75F943D996C010D9242E4D2),
    .INIT_40(256'h7C84F1B5660FBED5D480EB52EEE8F8DACCEE3FB4690138D62CC7E3669C4768F7),
    .INIT_41(256'h7720458F0D2E748074ECA3D65D61397D4ADCCDCAA92474B8497CE24E159741F3),
    .INIT_42(256'hA00FE1D5E2D79195C8533618A28333EAA85B13D37C30100B101A16600CB35892),
    .INIT_43(256'hF4141430250EA7B574B875D7320C1FECA139EEDE2074A4C5C7431496AE7FEA39),
    .INIT_44(256'h9F6B26279C590251216DF9031EEB44BEAB4DF6FEDECAE7A483D065B940C83EDE),
    .INIT_45(256'h56747FBF43FD5D28B84B1E047EF5CE540432007B6F0CCC4E3DC51BA94CE6DD4D),
    .INIT_46(256'hBBAFF3A654BE8413B151EA349C86129F280A60881E13C8B4EF33A921D0CF3243),
    .INIT_47(256'h0B0C34930C08BA4DE164F47F51CD92568A47EF13CE7CA6111C5FC04355C23A94),
    .INIT_48(256'h19F7CDB4E0B533FF36C594CE9A08ECEA46EF0088FA0C9DF6E1E97990F299FC15),
    .INIT_49(256'h1DA2C020DBF88C42367DD562D89F1FEB8CED81951FF455A2B1C22F90710AC205),
    .INIT_4A(256'h165A6E45EFD942C2EF548F481D0228BA4CC9D228C3BC502727474BD3BBD00895),
    .INIT_4B(256'hC33A7B7925D22CF868CDCB33E4DDF151CE18433FF2C432F162BCC736EB1050AC),
    .INIT_4C(256'hC3001A3708D31901A1E6E44D0BD6D253D029516227F921DB65D6124ED1AEC53A),
    .INIT_4D(256'h8AC01E87BFB6E078AF0D1856B3312CFEA8C9012D33125C36D66E215C08918A1C),
    .INIT_4E(256'hC2D2F034A8F62D572460A00F87214D3FF736565D6695FB98799392CD761626EA),
    .INIT_4F(256'h78A3F636EB7AB9BF1D2169EA6D1337FFA7196E7D9FD549AA86C69DAE547FCD5E),
    .INIT_50(256'hDEDC3394DD287081E3FF38B65B247E3BDB439892B01270C354382081314BDF66),
    .INIT_51(256'hFBDE4590C8036D572F309A3D50B329C1EFEE69C2F1266C79DAF611431B65CF85),
    .INIT_52(256'hF11D4C486952E93A1D5BB4AEE64CD7E2CDFA5C767FB942314159913D6D0B9F00),
    .INIT_53(256'h1984C31B8DD66BA7CBE56B70D83B2A3596007ACB28B0CF28185EE5A2C6205489),
    .INIT_54(256'h68FC3589E57D9DD8DB607FEE321E5CE185FB337ECD9DE1133157217AC8011868),
    .INIT_55(256'hE2A1FA611B4C527851038AA31905E7AB3018E9F818D13AC0E45571137B5F61AB),
    .INIT_56(256'hCF5312313ADCE6760DD013C13F1AC910F1CFECAF30A10DC905858A2BFD5907B8),
    .INIT_57(256'h6EE34DFB0081FB97EFF37723B1AACC3557D2FE50C024CC05839F6E559707C668),
    .INIT_58(256'h568391401F53C34A8A5FF5DC8BD5E87F090C6891563FE9C6626AC416E9C3CCCA),
    .INIT_59(256'h25DCBFF2DF8B9544DBDF5F7DC794FB016784360353D16AC979F3E58667CBA118),
    .INIT_5A(256'h42326CAF7121DD2EB12140AD5683DA7097683127C6A729D626C9598149F57580),
    .INIT_5B(256'hFD4F16E22B9AD4BA7D927E105EB57EF6DA3C16C3EF83D7BC6379A27FFC38917F),
    .INIT_5C(256'h717022F53989A4A1BCA0FA55BD67B57E351DCDE647B8C89883AE68C3FA5E701B),
    .INIT_5D(256'h707F23E8257568686B59047CEEAC44067846EAE45BD5A05142683A97A143BDAA),
    .INIT_5E(256'hEA9E770EF0F205214C786E3DABEFEB9C53832EDAEB39602511552DA0D058E2C9),
    .INIT_5F(256'hB250831DC9E41A5072B1AC2376EAE7683C8D29968D16574C304460318AD089EB),
    .INIT_60(256'h47019AB424AD8CC142BCD051A306D444E35F4ED0B6EC1C2E33588E5DA8F5A801),
    .INIT_61(256'hDA5F7915D7FA31692A960E311BFEDC9673BF5BBF7E04D9CADC11658222C36501),
    .INIT_62(256'h3CEC5E0F5F912DC2898190581DD3C2C00FAB1D9AA12DBD9BE037C0C9A274B974),
    .INIT_63(256'hB0D7021182205FC62942D937E31DAA32F0810217C52AB8C726351D91EFB8FAB7),
    .INIT_64(256'h99F715DCD1E0D9570F506C3E99CBDB7E86CBF10EDC14CA7F636ADAD8AA1EF456),
    .INIT_65(256'h580815F2ACA2B9E5E187367F44F7222D25FBB0B1145BD045520CFA50EBA97162),
    .INIT_66(256'h23F9A2D988321C06BBC3EECA8B523C820A98F9C5175A2EA24B5A9DD1C0BBF2BF),
    .INIT_67(256'hEFF2A6CC0FD6FF467094AB79C610D46C6F9AB5F7F33B848C80015C1166F923A9),
    .INIT_68(256'h003CB5FC877199E5F49B3840D2982DFF367A2DA22164065AFD301C1B40948CAB),
    .INIT_69(256'h63068446254273222D08EA621E53C81AE2FE0C530B356D3180013902712A6402),
    .INIT_6A(256'h422585054C0967EF6659FAEE01361E95FE3C3DE5887E0AB7EEB0295EE9039D50),
    .INIT_6B(256'hF1D0F882EF0830CD440069011E944CBC80543729BC0D19B982BED90F5C35FE10),
    .INIT_6C(256'hBC318353E086976D06F03C6DFD04A996DB2612D1C81391B8A2E9F0A780C62632),
    .INIT_6D(256'hA2FBA090BBF907D18A73A7188F872FDD888DE00F1E10C589AA13716E1AB4837C),
    .INIT_6E(256'h42CB50976AFC145DE850205D215AC12F763B1A6D9C2D38E9632991012A2A1E3E),
    .INIT_6F(256'hFB0B0D12E9A293C961D7A830A32853E8536CF8321BC890FD98E872378628711A),
    .INIT_70(256'hECA5C8004956C5411F6F40DBDC6DF0D0CFFB4026B54F32820C566638FACCC8EB),
    .INIT_71(256'h9CA42CBA84A5EE4782316AC9170DADBD6BEFB9C6F91C1BE777151AAC28888D3F),
    .INIT_72(256'h0205020405E9BCD0F82C4010CEAACAE800273C2E15FAD3D6145B3AF0B17FB627),
    .INIT_73(256'h411E0DD1968193C8F71105DAACC905363E0FF8F703FAEBF2010B0AF4B89294C6),
    .INIT_74(256'h958B731DAE625887FC4D37E25D48C54A7B6D3E01C39AC9021823F9C0BAD6FF38),
    .INIT_75(256'h6F13AD725D7EB3BA93685EB4258ED2AA57FCD7C5C0BB906D67ABF40303062B76),
    .INIT_76(256'hEF9D683A183675B2C5036FD1FFC0531C01E0C9B19D84758BC6FD153F70838B8B),
    .INIT_77(256'h56F18484330380BFD8F51E16B143A63003EA1904E1E9671C8D013D36E1741FFB),
    .INIT_78(256'h0E82EF28311004DB8209A376675A069367CE8A1273ADBCD6FDCC815112E9CC9C),
    .INIT_79(256'h129E2BFD9F0FB96F424A8F0A9F00791A665F2822DD6F22B3642BF5A47A89EFA1),
    .INIT_7A(256'h1DDCB9EB52AD013C82BD184D33F3880DD172EBA999C4BDF85EB956D42760795D),
    .INIT_7B(256'h13C57C3001A63608FB0101EFE5F946A3F43772A3BEE80A11E48C33D9977B5142),
    .INIT_7C(256'hBFF8052440698293BFBF896E62470CCA894811C7A3AAEF477CB5E254D5305A48),
    .INIT_7D(256'hA583799DF050AACCFD679EA4CBFEF4B283501E0E0CF698543D3C50687B74666D),
    .INIT_7E(256'h1700FEFAEED3B28156455477766081CBEE012A87D0FF3F461BD89925BB732EF2),
    .INIT_7F(256'hF50019342A0DF4EEFC05EA924128386D9ABADEEEF90F3C617B8063535E675337),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__7_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__7_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h10000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__7 
       (.I0(\addra[16] ),
        .I1(\addra[15] ),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__7_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__7 
       (.I0(\addrb[16] ),
        .I1(\addrb[15] ),
        .I2(addrb[12]),
        .I3(addrb[13]),
        .I4(enb),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__7_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized25
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[15] ,
    ena,
    \addrb[16] ,
    \addrb[15] );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[15] ;
  input ena;
  input \addrb[16] ;
  input \addrb[15] ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__6_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__6_n_0 ;
  wire [13:0]addra;
  wire \addra[15] ;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[15] ;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hE31FC63CFFE7FFC03F807FE3FFFFFC79FFFE0FF83FF807FC01FFCFC01FFFFFF0),
    .INITP_01(256'hFF02613FE39E7018FFE037CFFB0FFEA719FC033E71DFE0FFF00FFFC00FFE1FFF),
    .INITP_02(256'h3FF08CFFE007DE71FF28FFBFE01FF003C67DC01FFE00FFC071FFF077FC03BFC0),
    .INITP_03(256'hFFCFFBFFFFCE3FFFFFC21FFF80FF8107F843FFC8FFB4FFDFB4EFBFF0FF718791),
    .INITP_04(256'h7FC1FE0FF01FFFFFFFE03FC03FE007FE007FFE01FFFE01FFF01FFFEFFC07E3FF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFE1FFFFFFFFFFFF1FF03F83FF0),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE03FFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hBCB9479B2D9873ACF0FF2ACFAD73FFFFFFFFFFFFFFDFEAD7FFFFF83FFFF873FF),
    .INITP_0A(256'hF86F8C711E38639E79C79651E69879E78E38D69873A71F0FE0F0E59E1D679D3C),
    .INITP_0B(256'h83C1E0F0783C1E0E878180F8747E8E87D1F0FE2E1E83E3F87F1F8561CC3F0CE1),
    .INITP_0C(256'hAB8543F0B15AF87E343F1F5F86D3E160F17A7D3E5E0B4783C1E0F0783C1E1F07),
    .INITP_0D(256'h1D9D9C9E3C638F2C279F93C3C9E1E4E469E56DE6F2F3F079F8BC7C5E3E2F5687),
    .INITP_0E(256'h3CFCFC7878787C7C7C7C3E3E3E7E7474767E7E3E3E3E3E3E1E331E1B1F3F1F1D),
    .INITP_0F(256'hD970597ACA61B5F1CF36B8B4CFCF279BF198C0E0E17178F8F838F878B8B8B83C),
    .INIT_00(256'h322005FAECECEDF1E9D6CCCACACAC8C3C4D5E6EEF5F7F8F8F9FAFCFD00020600),
    .INIT_01(256'h3F4F4A401C0B07E9B782728CC5DFC9C9DEF10509FDF6F2F1F5FF11190F02091D),
    .INIT_02(256'h0700F8F6F5F5FDEAC6C5DAE5F106090B0B192B1907EECEBBA48E98ACCAF00016),
    .INIT_03(256'hEFEBE9F2FDF4DFCEE2F5FAFBF7F5F80A1A1E1507F8F5F9FAF7EEE6EBF8020A0B),
    .INIT_04(256'hF6F7F7FAF7F6F8F8FAF9F7F5F4F5FAFDFEF9EAE9F3FB070704EFD6E9FB0402F8),
    .INIT_05(256'h1209ECBBABADC2E8FC061423353118140CEBC8D0E9F4E4CDE2F2FE050003FFF8),
    .INIT_06(256'hF6EBEFF2FAFEF7F4F6F4F80204FFFDF7F4F9F5E2CCC6D4E7F9FE0004070D1218),
    .INIT_07(256'hF0F3F9070B07FEFF020506F4DCD1EAE1D6FC07090CFEF007230CFCF9F7FB0206),
    .INIT_08(256'h0C172D10E8C18E88B5E8ECEBF0EAFC1011140FF6F1FFFEFBE8CBC8D5E9F1F0F0),
    .INIT_09(256'hD1E8F2FA1A3727120D040B07F5DCC8DAECECEBEBEEEEEFEDEBF9081411080205),
    .INIT_0A(256'h0AFFF1FD1C270EEAC9DD08E7C3C1D2FBF6EAF71E442E1301F7FCFDEECBD6F4E0),
    .INIT_0B(256'h0A0A1AFADC0508E3D5F5E8D8F2FB040701010F141710FAF50001F1EDDBCFED05),
    .INIT_0C(256'hC5C3C9D0CE01F8F0152D2114E1B6F0FAF1E3C0A0C0FFFF02FF02FE0A1CE6D8FB),
    .INIT_0D(256'hFDEEBCCBEAC4BCD0FCEDE20E130F140D2030FEFC05F8FBF0D2DF1C09D1DBDCBB),
    .INIT_0E(256'hD1BBD222573EE4E4FD1325C8758AD80103F4E9F505040A0E08140EDDC9092308),
    .INIT_0F(256'hDCE1FCFAEAF1DCD3010402060007FE1623EBF2060E2B1DFF0414E79E94C2EBE5),
    .INIT_10(256'hAEAE9BD0E2F01643391140370A0EF4A7B004DD96D8EDDBFFFEFF001524040D09),
    .INIT_11(256'h2DF9F6F1022628F9DEF4F2F5E9D2DAE7E7E8DFCE083F3A2B04F9F3E700E1AC9D),
    .INIT_12(256'hCE999491A2D9EE01251F4189693C3615F2EFB381A5919ECBD5F605050A171A36),
    .INIT_13(256'h9FE6030007E4D0272CD9D2DAD9EA01DEBEEA070B0C080009253B26F8E2E6D9DA),
    .INIT_14(256'hC1B5F00003000813272108FDC1C5EECDD1F0E4F10F0B1D41250103010300FEBF),
    .INIT_15(256'h83B3EFE3F3AA64CB342BFF08FD2F6D55FED6F6F1F3F4D89DDD12C0B9D2B0B2E6),
    .INIT_16(256'hCDD3DF0E0E2A4222130E070A01FCE6C6D9F702FEE9D8EC2426FFF8F5011006C6),
    .INIT_17(256'h001EF9E5ECAC9FD4E5AD98F31B17171BDE127D32D9EC0A04FDF2EBB1C4EFBCA9),
    .INIT_18(256'hFAEEF0F0D4C1D1EF02DDCBCD0D8477FCEA0F112509AF84CBDC0230F008553EF4),
    .INIT_19(256'hFD0BA9D010FE1A32FFBEF103F4EADAD7ED0AE5BAD2DAC2E6E4CDEFFE080C060A),
    .INIT_1A(256'hE4EAF9F5E1DFE5B8CC0EF6F101BC0542FAE5E7E6E7E5C4897AF946E7C9EEF0DF),
    .INIT_1B(256'hF4F9F4F5FD03192608FE2E381710F2D9E0E0BBA4CBD8D4EDFAF60409EB0E6643),
    .INIT_1C(256'hF212302401020F08F8F0E9D8F5E6D5FAEE0B431E0C240EFF0301030202F4C1C4),
    .INIT_1D(256'hD8DDF0F5F7F5F5F4F4F402090100FF02152907DDC2BBCBE4E69BA9EBEDEBF0F3),
    .INIT_1E(256'hF2ECF3F9FBFAF9E4D4EE0202FEF9F50A280EFAF4F6F1D6E6F4E4D4E2EEE7F0ED),
    .INIT_1F(256'hFCE3D3CFF4FCFAEED5EE0303FDFBFBFBFAFBF7D1DE00F9F3F4F5F2F8F4EBF4FE),
    .INIT_20(256'hF9F9F8F8F6F917200805050604FCF8F8E7D8FE0C0909E4D0F2FBF0EDE2DCD2F1),
    .INIT_21(256'hB9D0DEFB080B1C2416130BFBF4F2F2F1F0EFEEEDEBEAE8E6D3C2E600F5EBECF8),
    .INIT_22(256'hF2ECEFF0E1C1B3B5B3AC9895C4DDFC42626B84733D3214EAE3CE9C8076798E9A),
    .INIT_23(256'h32272A3175B0813F09E6C1988B88919094B1CCF0FBF5FD1E4349615F372C18FF),
    .INIT_24(256'h5F33FEE3B3968B867983EA233580A1978E796C470ABB7561617D7D716D80D01C),
    .INIT_25(256'hF9F7F8F6F6E4C3B9BBD0F10010110D0D0E0AEEDDB197969CB3D50B2D525B707A),
    .INIT_26(256'hB3C8D9FA13253C3F2D1603F6EFE4DDDAEAF3FAFEF8F8F7F4F3F2EFECEEF8FAF8),
    .INIT_27(256'h01F8EFE2D9D5EDF9F8FD030C0B0E0AFDF2ECEAEAEEF1F9030C0B0F06EFE2BFA9),
    .INIT_28(256'h020511140D04FBF6F5F4F4F3F5040C0D0B00F7F2EFDECBC5C8E1F3FD03050407),
    .INIT_29(256'hF2EBECEBF1F9FBFEFFFEFEFBF7F4ECECEEECEEFB020404FEFEFCF8F6F2F1F4FD),
    .INIT_2A(256'h020102FAF2EFEDE6DDEBF1F4F9FAFCFAFDFBF6F6F3EAEAF0F2F8F8F7F7F5F2F6),
    .INIT_2B(256'hF9F8FBFEFAF8F9F9F9F9F9F9F9F9FB01000301FCF9F6F3EDE9DCDDEBF4F7FA01),
    .INIT_2C(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9F9F9),
    .INIT_2D(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F9F9FAFAF8F9F8F9F8FBFFFFFFFFFFFCF9F8F8),
    .INIT_2E(256'hF8F5F1F1F1F1F0F4F8F9F8FBFEFAF8F8F8F7F6F6F3EFEEEBECF1F1F1F3F6F6F8),
    .INIT_2F(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_30(256'hFBFCF8F8F8F8F8F8F8F8F7F7F6F7F8F8F8F8F8F7F6F5F6F8F7F8F8F8F8F8F8F8),
    .INIT_31(256'hF7F7F7F3F0F4F9F8F9F8FC00010202010404FEFEFBF9FCFFFCF9FBFEFEFEFEFB),
    .INIT_32(256'hF7F7F7F7F7F7F7F7F7F8F3EEEDEDF0EFF0F1F0F2F6F7F7F7F7F7F7F7F7F7F7F7),
    .INIT_33(256'hFEFBFDFBF8F9F8F8F7F6F2F3F7F8F8F8F8F8F8F8F8F7F7F6F6F3F0F0F0F2F6F7),
    .INIT_34(256'hF7F6F6F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9FAFC),
    .INIT_35(256'hF8F8F8F8F9F9FDFBFCFFFEFFFEFAF8F8F8F8F8FCFDFEFFFEFFFEFCF8F8F8F8F8),
    .INIT_36(256'hFDF9F6F6F0EAE9EAEAEFF1F4F7F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_37(256'hF8F8F8F8F8F8F9F9F9F9FCFAF8F9F9F9F7F7F3F1F1F1F1F1F4F6F2F6F9FCFEFA),
    .INIT_38(256'hF8F8F8F8F8F8F8F8F8F8F9F8F9F8F9F8FAFCF9FCFBF8F8F7F8F7F8F8F8F8F8F8),
    .INIT_39(256'hF8F9F9FBFF00FFFFFFFFFEFEFEFEFEFBFDFBFAF9F7F8F7F6F6F7F8F8F8F8F8F8),
    .INIT_3A(256'hF8F8F8F7F6F2F2F1F0F0F0F0F0F0F1F1F1F2F5F6F7F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_3B(256'hF8F8F8F8F8F8F8F8F8F8F7F7F7F7F7F7F7F7F7F7F6F2F0F2F5F2F2F7F8F8F8F8),
    .INIT_3C(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F7F8F7F8F8F8F8F8F8F8),
    .INIT_3D(256'hFBFEFFFFFFFFFFFFFFFFFEFBF8F7F7F7F7F7F7F6F6F6F2F1F1F1F5F8F8F8F8F8),
    .INIT_3E(256'hF7F7F7F6F3F0F0F1F1F1F1F5F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9),
    .INIT_3F(256'hF7F7F7F7F7F7F7F7F7F6F6F6F7F6F6F5F6F6F2F1F1F6F7F5F7F7F7F7F7F7F7F7),
    .INIT_40(256'hF8F8F8F8F8F8F8F8F8F8F8F9F9F9F9FEFEFEFCF8F8F7F7F7F7F7F7F7F7F7F7F7),
    .INIT_41(256'hF8F7F7F7F7F7F7F7F7F7F7F7F7F6F7F6F6F4F1F0F2F4F2F5F8F8F8F8F8F8F8F8),
    .INIT_42(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9F8F9FAFAFAFAFEFFFEFEFEFDFAFBF9),
    .INIT_43(256'hF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6F5F5F5F3F6F6F6F8F8F8F8F8F8F8),
    .INIT_44(256'hFEFAF7F7F6F7F6F7F5F4F4F4F8F9F8F8F8F8F8F8F7F7F7F7F7F7F7F7F7F7F7F7),
    .INIT_45(256'hF7F7F7F7F7F7F7F7F7F7F6F6F6F6F4F3F7F7F7F7F7F6F6F6F2F4F8F8F8F9F9FB),
    .INIT_46(256'hF6F6F4F4F5F2F1F4FBFAFF04FEFCF8F8F8F8F8FAFEFEFFFEFFFBF9F8F7F7F7F7),
    .INIT_47(256'hF6F6F6F5F5F1F0F0F0F0F0F0F0F0F0F0F0F1F2F6F7F7F7F7F7F7F7F7F7F7F6F6),
    .INIT_48(256'hFCF5F6F4ECECF2F2F5F2EEF5FB03040504FEFCFC0300F8F7ECEBF4F7F7F7F7F6),
    .INIT_49(256'hF8F8F8FBF8F4EFEDF3F4F2F5F9F9F9F8F9F9FAF9FB0001010303FFFFFFFFFFFF),
    .INIT_4A(256'hFEFAF4FAF9FAFAFAFAFA00FCFAFAFCFDFAFDFF00FF00FF00FEFD00FF00FDFCFD),
    .INIT_4B(256'hFAF9F8F3F8F7F5F9FAF8F6FDFAFEFAF4F9F8FAF9F9FAF9F9F9FAFBFAFAFAFCFB),
    .INIT_4C(256'hFF01FD04E6DE04FB05DEC6F40705F8FAF9F9F8F8FAF9FBFAF9F9F9FAFAFAF9F9),
    .INIT_4D(256'hFDF3A7B422240202F0EBFDF9FDFDF8FB0405FF00FF01FE03E7DE0E0DFCF5ECF6),
    .INIT_4E(256'h1017F80BB5AD0DDEEB4821C9E703074C23D1F8FB222FC7ADF20BFC04E6E01211),
    .INIT_4F(256'hDC0AD3E9D7A44439F30698E3FD3314C813D63AA33CF0BC98EF341BE8E901FFFF),
    .INIT_50(256'hA9312AB21CB908FC01FFD872EEFC88914A2ACCF163CA08FB5A37BAE5ECEE5201),
    .INIT_51(256'hF9D2FE3D17264511C3899BE81D5C6815FD83755E3EF12FBA9A8551CEF88A4509),
    .INIT_52(256'h29644F5C57C5F944BC0FF9872194CDAB09480EFDA7BCC0A72C563B0A88C3BFA2),
    .INIT_53(256'hC59068121128E03BC43FA411A94238147C8E3F0C61E5C8FFB5C74DC0F40145DC),
    .INIT_54(256'hF4C7F29030F5F9FAA88D1DCDEB0703CC67D9F27CD27EC7EF7FE96506D2E87556),
    .INIT_55(256'h7BEA5728F5A13B9093A708B06AF7CD41DDBB1BE5036BDEA333F402AE1BA602BA),
    .INIT_56(256'h0804B00EFC72E515E1B07E43A0048719F81FE597F52D8839765F83CD4C4DFCD0),
    .INIT_57(256'hFCFFF46553053B813294E406FDF23235DE16C44B87E20D533B5E69E961E93DF0),
    .INIT_58(256'hEBFE0C254CBC52498819DEFBDBF59A781B1F6C61B0EE0102EB31780E2E6513DC),
    .INIT_59(256'h10C7EBBEEBD8F7FE18B738B5EAA0F7E677051F4854FC0AF407AE792A34C5B294),
    .INIT_5A(256'h48BFADA3478EEF05FB020CA0CB13976A7154F031219FFBF4C67ED365EC331CA0),
    .INIT_5B(256'h88E80CF02ECE7BF5C7953ADC6D248349E5C6B6B5B0FEF81C8627E401EE8A8823),
    .INIT_5C(256'h81A3B9AFEAEB51099906C84B8C32CB2FFD27E099B6F157CEE8421BCCF2894AA8),
    .INIT_5D(256'hE2B65286E79A2B9D6D0C752A22A4218480E8FB0F767ED6225AB98A3BF7310E58),
    .INIT_5E(256'h226E5B854D126E148A8CB45F32042CDB80846E943690831F8F052188F0A358D9),
    .INIT_5F(256'h0E2DAB7387196D383E6C4F974270062C2A634733C96D954087819E6A3DE9987F),
    .INIT_60(256'hB856343B676979B03F58117649638C8EE1483ADD3C15657534921F780E7E9324),
    .INIT_61(256'h506943C676454BAE0B3A5E3CDD8D893B58152D434DC94E8D4C4121427F4AAB8D),
    .INIT_62(256'hCCF90EB61585AC17E6EA5A13A6EA259A3B10BF5C4B8D12548E0ADAB95678B421),
    .INIT_63(256'hBF0A48C351FB94F810AD288EBE55189F01F1701EA3957F10210DBA012CB8B163),
    .INIT_64(256'h841193EA61E563C664ED70358D01D93643B4DBA2E8291490B62AC634EDD82007),
    .INIT_65(256'hF260E155A6371577D961C1C9F49870D82CDBB1F6F44929D24C0495FEF6B9883C),
    .INIT_66(256'h5F813ADE2BBE8EF60C9DEE87F26E0B6FFDEB5A088A2F86D258ADD8A7B4ECBB71),
    .INIT_67(256'hD6491EB8F20DAB147A0532E09FF01384C96F21C4FF47A79D9F5F99EB9DD32618),
    .INIT_68(256'hBF0ECBB74097E341D280F40B9B0EAEEC942344CA19764C1BE096D81C01E43819),
    .INIT_69(256'hD3C67DBDCE2A9826E009C57393CB78D51EE7D95CA1FC56A735F90D943193FA7A),
    .INIT_6A(256'hBED6F4E34441F705DD9895B03167E2EBD2AFFCDB3474141F348340B9D06866A8),
    .INIT_6B(256'h20ACB809F92233FBD3D7F68116BA10F40AB28713FBCE1BEAC2DDDE58609FAA02),
    .INIT_6C(256'hA6D8612CF7411DC7E7A8C965284194FBDDCC922732D91618E0F6E20F19F61E1F),
    .INIT_6D(256'h9294DF231EC8ECB0FC5211FFFFD5CAC1AE2847E0030DA8B894C963040D19B4CB),
    .INIT_6E(256'h6F0FF9896AE205401C79D358A02E658EF61F350AD1E76FD47D02F301DBF00302),
    .INIT_6F(256'h29D649E35AAE1571E49C68FA76AA21E3F7531CC146968B39F4300AFEC033BBAC),
    .INIT_70(256'h7F2F0CA6ACF768D88A42FE8F68D57C93624208C559BF7B5FA69C1DEE48B11388),
    .INIT_71(256'h61690778D1BDB5575A10F5AA150B4ED42F570C75D2E37E0D70261591C80D82EE),
    .INIT_72(256'h9E58B798E299ED94915E7D6CDC81E2738764A853D4AAEEA8826CC574DB94A441),
    .INIT_73(256'h9DF92ED00099EF0646F423ACF57AEC3B4AF33ED0FE6FF28790518EB9F375EC8C),
    .INIT_74(256'hC91F81F2B761E44571FD4BDCD17AF23F80F846D7019F027495F53CD1039A007B),
    .INIT_75(256'hC4FD68A299AE32939FD27ED6828D0684C3047FE29F6FED55AF1076EEB48BDF29),
    .INIT_76(256'h559DA9B8B12B476C5990A9DD85106574608474B78DF2326887B079B78DF24287),
    .INIT_77(256'h0809D23DCBFE1684FBD5D24FC9FE168DF7B4D86A9EFA0F7A1792E2A9AA2A2A6D),
    .INIT_78(256'hFC0ADC92EF0C2B52FC0DD477EA11496BFF0BDB84EE094290050AD048ECFF1C92),
    .INIT_79(256'hE8FCCCB7CE23A2730200CEACD51A6837FFFCBEBCF319674601F9ACA9F30F393F),
    .INIT_7A(256'hD41C4E05654A0CF411BE3195289A45E604E5798AFD456E00E2FBC4ADC7259745),
    .INIT_7B(256'hF5DAE5FA103038D07F062BF6E70E51016477092701000D4BBD03691240030B34),
    .INIT_7C(256'hBEE44A39D3D5E5C4FFFD0F278B65FBFD100F954282EFE7957F3078D5E75FE0B0),
    .INIT_7D(256'hABFD0B29E3C8F6E30E1DF3D509DFF357FA17FA3D98542D01FE03E9C104F81D32),
    .INIT_7E(256'hDDA82615BF03FB11097DB6240D3418B8ED33F3DC05F70DBB46B1FFFE000916B6),
    .INIT_7F(256'hDAB711EFC50E17FC07D18BFD2D0602181DFE00FFFE0814FD05DC9AD8FD02FD04),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__6_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__6_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00020000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__6 
       (.I0(\addra[16] ),
        .I1(\addra[15] ),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__6_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__6 
       (.I0(\addrb[16] ),
        .I1(\addrb[15] ),
        .I2(addrb[12]),
        .I3(addrb[13]),
        .I4(enb),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__6_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized26
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[15] ,
    ena,
    \addrb[16] ,
    \addrb[15] );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[15] ;
  input ena;
  input \addrb[16] ;
  input \addrb[15] ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__5_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__5_n_0 ;
  wire [13:0]addra;
  wire \addra[15] ;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[15] ;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h7A863F7F8E0780CBBC07E0C797B7F7E99C3C3E3E2E1F2F470F278BD5A6C3E1FA),
    .INITP_01(256'hC02E013189845E02601FC0BF87F07361F0B8F318D8E73C70DCFC021C103F3F3C),
    .INITP_02(256'h7F246144004024112191189329175C08C04804C0660320D9008806403201900C),
    .INITP_03(256'h824849090120260240CC9FC97024C2404404C0DE53CF10510110113097477476),
    .INITP_04(256'h739C639AE71CE719A628CF39C65392629CB31C4501C078091140480D03604C0F),
    .INITP_05(256'hCCF01E07E1CE7B9EC719E27D8E73DC731C639CE31CE71DE738E719C639CE33CC),
    .INITP_06(256'h0E6781E8F6792C0D23D064BA3C976681A0383C8F63B1C47B0CC731EC7F3DC731),
    .INITP_07(256'h9B59CCEED6633B95CACD66B3B95CAE56572F93CAE572793C9E4F23C1EC72393C),
    .INITP_08(256'hE36331B1B9FCD8FC6C6E7E3E3F1F1B198D8DC6C6635331B198C8C46EED643533),
    .INITP_09(256'hAD8787C7C7C3C3E363E1F1F0B0D0DCDCFE7C6E26373F771B9FDF8DCDCFC6C6E7),
    .INITP_0A(256'h72333B1D8C94C6EB6B636131B1B8F8D8D8DC6C6C6E363636B63F1B1B190D8DAD),
    .INITP_0B(256'hCCEEF673399CDCCE6333B3B1D8C8EC66363339198D8ECE466735B190C8CDEC66),
    .INITP_0C(256'h70F87C6E3E0F07878343C0E0F8F8080F076731D1C8ECF07839BCBE0E5F331399),
    .INITP_0D(256'h19E9CE31C39C0E1CE7287387871C7FE243F86553878EED40FCE271A32B7E3487),
    .INITP_0E(256'h394B8E18E5C70C78E3871C33CA9E38E1CF1CF0C78C5A6786787F87F8CF0CF1CE),
    .INITP_0F(256'h1C7871E3C7BD3CBCF4A3D58E1476E3851C3CF0B3C28F1E7AD1C71CAC71238F16),
    .INIT_00(256'h8309F52A4ECDB405E5D4020C4021FECDCBECC632430F0EC8CCFAEFE8FE02FC06),
    .INIT_01(256'h05383E08F2CCB6D00100FC213FC478CFFA111202FB06DBB8EEFD02FC05F70EB3),
    .INIT_02(256'h4116F104E0A1CC0A4F5A17CE91C6E5EF212BFE00EA98BAFE04F81C1909B972DA),
    .INIT_03(256'hCC2424FDFCF318290903EADAF7FF07291E00E3A1A1DFFE0B0A02E7B49FD6FD19),
    .INIT_04(256'hF46377ED10B592E6FA13F6FB0BFCDBD3CDE2FDFF01FAF3F8F4D2E103FB234CF3),
    .INIT_05(256'hE201E3A9AAD0011E20224D8C45EBCF9B7F7DBF476E26845E74A51A9E6BB2B4EA),
    .INIT_06(256'hB703411BDE6D750E31336C6723D48AA0EB000D4C7A742B02A963284DF10FA680),
    .INIT_07(256'h86F08CD0E706FA06F67BFA9E39B4AE286B31F9EF9384BCE604E5D9E8CFBBB4AB),
    .INIT_08(256'h828404A9164B3A8ADD6ADC8341C0DD6384202391D7F870D38D99FC6F74CE1F4D),
    .INIT_09(256'hBB2CF9188DDF193CF3FAF29B7FA00072BFA941151D00DD1BBFD34AE19CCA4171),
    .INIT_0A(256'hEA45EB32F6C1DC68ED949A223EB284A51C0B792B53F68F930C9724A37D702409),
    .INIT_0B(256'h6A786BD436665E00FB17F2C3C917653BA8AEEDE20602DDF9527045A26001726A),
    .INIT_0C(256'hD62B553B01BD97B4801541DC4169A1B4478B3BCF300BFFFA05F3EB268CBA4D97),
    .INIT_0D(256'hCF6ACF1C7E96241188E19EE84558D4D2C2E8001E75E5D03055C44EEBF9FDD7AB),
    .INIT_0E(256'hF258C57F48A4D190FE30737332F54FBC8090F52ABBF8F50E2012187CE8836EAA),
    .INIT_0F(256'h32B82D91BE7F386C84226BF456AEF5578C67070A548A0028847C39B2265635F3),
    .INIT_10(256'h263ADD47E7F06A0777B2B7904B5F66F6268EBC702990B77C2E1E617FF045EAE1),
    .INIT_11(256'h2EC7FBD99D424441D7FC73A46050C7C06327214E74F843D1C7470E9ECBD68715),
    .INIT_12(256'h15F53EB7C34EE0265771815F242CDC07A0D7935CC4F4D351EDE503F9498B9A67),
    .INIT_13(256'h23C345BBD5541B4759B5CDB23E0393DAE37610655966A6A743FE574D4C503A0F),
    .INIT_14(256'h2BFA5DE4A874641E0C5124C31E2685331515E213449F097EBA965E3FD2DF99D3),
    .INIT_15(256'h83BB867DD3C149DAF56477BBF099F3D4AA9226E9FF6ABF543989B4A5688EFEB0),
    .INIT_16(256'h9046223F8607FC8AEAB34D8755614C1F2D3D94807C3B1C6C514C24FE3775555D),
    .INIT_17(256'h43BE9B7D25318FD961E615CB2E52C7D6D955FA1E3470BE05925C554FF3931C7F),
    .INIT_18(256'h29162B1D7A60B3627382FDCFE43B9BBB45408340A3AEDBB4E8125CE1A0404BD9),
    .INIT_19(256'h58F2C953258F757CA3408A7F84D8EA843E9994C1D94F786450FE62175D565C17),
    .INIT_1A(256'hDC1ED0C4F6D43BA99FC70795216A08CFCE6BC28D22455849AD38F4E8C5287973),
    .INIT_1B(256'hEDF6B781F9CE3B28132BA4C62E43A39623E82C2A56BBDB66A60FF13A97C0E34E),
    .INIT_1C(256'hD430A9D603283D9BFCADC9DC9048153CFDE047B8D1551D71AC884D4A302388FB),
    .INIT_1D(256'hD18E05437995A060FD66CCB44EF739A90CFE6EB141538E9DA7DE47AE18F53D54),
    .INIT_1E(256'h5B89523BA2EE8D7D875841459CB66B6FD9C3F3F78D0DCD557E6C738E9F2A67C6),
    .INIT_1F(256'hF70A38ADD54975CDEA9E0E03DE27B6B71A64DCD8901309FC34AFC27157697A5B),
    .INIT_20(256'h3E6F51497D63EC38E734E5553B4478812080E7CF57FE5C6D63545D1591381983),
    .INIT_21(256'h578D0EE7468A2D20C5541A8A9833379851E0F08559249197331E7F4EAD03DF9F),
    .INIT_22(256'h3E9F521B3A836AE7224B0484A4190F717CF654085145A9610D1F9E6193DFD59E),
    .INIT_23(256'hA75D97F15DC1644C61ED07EE8F1C9DB67190053E0ABB69A012D21D7E4573FF44),
    .INIT_24(256'h064939BF327DB03D9CD5E2A190BDF06AE6857384D1EDD29068CFCE71882246D4),
    .INIT_25(256'h2BFEEDDF93A65A249E859BF56031B80363976DB3FD6106CED6C2ED6EFF8F4483),
    .INIT_26(256'hBE22843B7FE02A9698CE1A4B06D9863DA370F69681A80C835BA8022D806776C2),
    .INIT_27(256'h128743B8442FB15DE38352CA49641694217DDF76BC2C7763D4863884622A06B4),
    .INIT_28(256'h4B06AD74EC987FF5BCF8480D9A63A20F3B23A7E9563CCF5CA1FE62199AC72560),
    .INIT_29(256'h5F47F6537D21780F626BEE4B0A9356E69E9015B0F72A0FEB577620771573A029),
    .INIT_2A(256'h2D71086560D45B36EDB5E95B1CB7729B0E671BA4ABF36AFD3F39CB7C3AD8B2F8),
    .INIT_2B(256'h056438F16767286318AC9704680D9067A4595FD795E55A2FF2ABB64A7411E1FE),
    .INIT_2C(256'hBF2762298965E03135FFBCE87463FC876BF22DFDC9E14E710AAA80981221B89F),
    .INIT_2D(256'hF6A10C7324A57EAC127026DCE52954F88D69C73E4600E6273BE6AB9DB6FB19D8),
    .INIT_2E(256'hF2FCE2107A802EB75C940204AFB0F54D27F6A28AF820F0AFFA1B01FEE7D2EF2F),
    .INIT_2F(256'h999D434AF5CE2A49F48C6ECB1F1D05024259039D3783FF130308546908FAB076),
    .INIT_30(256'h00FC9B74F3FAB3BB526AFDBA7FCF0FF2ABBE443A03BB9AD92220C4CC0E3106F1),
    .INIT_31(256'h2B783D0FD4880C3FCDB7347B50EB817B1127D7DE1D5407ED8A84F703F3F35753),
    .INIT_32(256'h17F4F1797C01FB9F6F00DE9438E792EC899A1E951D950D5F4DFAA2327629E2C3),
    .INIT_33(256'h76D8543E190F3E69260FBC4AEC20095EA762E690539A012AF03A7F06F3A445A8),
    .INIT_34(256'h4D2FFDF28ABA6F58F7337AF415A002A301EBE64534D925FD7751D920192A03ED),
    .INIT_35(256'h334AD62A6D2DEE7A3ED733F822523544094E8E5311CF0D1FFB08CA62CE17E10A),
    .INIT_36(256'hF8914CB364F0FC684CEBCC74B25322FA3169F11694322E3F00134E33EA57BC33),
    .INIT_37(256'h0A4EA264EE7F625383D3C3142EDEA42A8D8052066B8632C64B44F427C2368062),
    .INIT_38(256'h7C4BBA34DDFA3F3B06B75EDD9E28F5445520ED7F6B454FE32E3DF4B37091506D),
    .INIT_39(256'hF71B22FBEC686B4B55F7191DFEED7F712242F52D5023E2A447A75A17306A36D5),
    .INIT_3A(256'hCD61894E4FFA03FC04CA4F7E525BF4252AFAE53B455F62F7191BFEEC81702B49),
    .INIT_3B(256'h53F803FE00EA8983303CFB02FFFFE873804D44FB0100FEE65A806341FD02FC05),
    .INIT_3C(256'hFF03CA7AE88B49FA04FB07B47AF84824FC03FB07A33ADE622FFC02FE02D8C058),
    .INIT_3D(256'h4ED24800F402FC05C1B75043E0E903FB06C3B7574CE0E905F80D919B562EF0F3),
    .INIT_3E(256'hFDDC07F908A9963743F6F3001218B49C3A3DE6F6FD18EA7CB92D23FB02FE01C1),
    .INIT_3F(256'hFC2928B1C518F8F005F91FC9922931E6F5FF161BB2BF2010F0F4FF13EC91F264),
    .INIT_40(256'hF37CCD05EBF103FB05ACAF1F12FE00125C238BE21BF706F84337B2B01A12DDFA),
    .INIT_41(256'hB33F1AC1EF021905A0DE5A1AFB010251DAA8140800FE032F0F678915F7F9FD31),
    .INIT_42(256'h21C3F7014827B2E108FA04FE317EE2960C07DDF3052C0A64CB22AFE306151FAE),
    .INIT_43(256'hEA08350B98E915B4CF00013EE78F1BFCACEE07400F98E82DDAD9032F5DF2BC47),
    .INIT_44(256'h1F3C9C7CFECEB5F308500A73E0FCA7E70B4945ADF266ECD2012572E97F2411A8),
    .INIT_45(256'h0686D80CB1EA05204BBAC822B8A7EC0F46F08EF3EF7DDB0E280055BAF086CB03),
    .INIT_46(256'hAE0ED992F4303AF069E0FFB2F7FF231381E4238DD11C153FF9AFFBF0A9E5103A),
    .INIT_47(256'hEE7DEF1D21129EDE0CA1B3161D25F0AC2105B8FA002813A3F126BCFE3A3A60DC),
    .INIT_48(256'h9EFC2961F696F4F1AAF20D6376CAC015D3BE122C5DF8970BD18AF0072AED6EEC),
    .INIT_49(256'hF50632E05FF3E165F1FE05E06BF2EA8EE0203A1592D83B9E9CFC0756E89528CA),
    .INIT_4A(256'h2C59F1D634BEA9F51658F08EFFDC7FEF05FCFCD305DF7BBE18181CCDAF08A07A),
    .INIT_4B(256'hE162DBD57FE1FE1453C69BE18694034759F4B800E286DE2A3942E41B408FA717),
    .INIT_4C(256'h8B05D0780A5F6D57B7E119970C212F87DBBA16BE9FF11944F29E0AC865EE0D26),
    .INIT_4D(256'h0BBA5003312FD654C6D2920323373592B2CD5FB900395FF1C6F9B6991A2C4E02),
    .INIT_4E(256'hD7A8323F39F677E3D4871D4D603697DAE3AF0E214F67CDADEF8D9D223E55D168),
    .INIT_4F(256'h7A05F411B55E07CC8123555C158ED8E19F09595335B595FFC5D03D2828D47FED),
    .INIT_50(256'h174D3FD3952619B91636563899B010CAEA413A4FC7840ACF9C04F70EB6590CC1),
    .INIT_51(256'hF410B4730EC79B1E4138F2A4D3F4BBFD553C24BFAA0BCFB72F4D41CF9318EBAB),
    .INIT_52(256'h17E3C51DF090F9313A21BCF526B2B62D100BC28F0EC193213D25C58C13AD7309),
    .INIT_53(256'hCDAD0EC09E263A32FFBA02EF8BE8412A1AD0FF4DC5D7432824DBCC30E4B60C1C),
    .INIT_54(256'hDA40DFA6233139F8C40AD195ED2E2009C2C8FA91AC170623C1BA32B3971E2C1B),
    .INIT_55(256'h1962800DF212A1A234A994352E04CCB026F9A40C470D05E70A52A5B33E3A2ED8),
    .INIT_56(256'h99332503CFB3500E70083FF40DCE0F5DAEAC150609C9C007D282D922F807DFF8),
    .INIT_57(256'h24EB99996935A31A4C11D6A8214D98913D36DFAEBC39EC991D2100DA93E32DA9),
    .INIT_58(256'hC4D39A2FAE242004B59B2E42ADD523F6EC6AB36CD9AC3B2507ABA03B4ECEC546),
    .INIT_59(256'h41BDCE372FD497BC491275D51DF40E9DD56DEDCC433200B5A66457CC08420E03),
    .INIT_5A(256'h953A0F0B7A855FFAB0101001A63EED3CB1C3402DDF719272478E035003E28701),
    .INIT_5B(256'h0E0693C669E0C75854169B952A2B9ECA783CE199AC721DAA275424ACC0251F88),
    .INIT_5C(256'h79E32882AF3E19029FB26029B8164403EE94FCA2FBC34A370AC39C2F4592B829),
    .INIT_5D(256'h3B7FCD2A0100A572191EA0EC190BF49BD668FDE45F21CE91CA0C9A840C350ACC),
    .INIT_5E(256'h2C16F091B55B0F60D54910F47DDC9F22A1FB0FF9FFB21B8CE4A4090AFADA810A),
    .INIT_5F(256'hB0F2690C8AE32301D380EA69FCAAEC04F7AB65EC6CD090220AFDB48D4B38B4DF),
    .INIT_60(256'h17E402F9E9D1A0F3700FABF00002F29F076609F73114F5E7D82864EBF12B07F8),
    .INIT_61(256'h7715F29CA9503CEEF703F9CC74C84213F904FCFFBD62EB6612023B05C99CC349),
    .INIT_62(256'hB3B0381BCF20420FE982AB2FFACE3610F7C17AEE2C010D4F29F4A58FFF54142E),
    .INIT_63(256'h060154A707897CBC3CCBE6745AC7618C0649BAA5180001BC81E604D3126C17F1),
    .INIT_64(256'hF9C3959DFC280201FEFA9A2680275F0A0B563305FE0957750D063405EE4B20E2),
    .INIT_65(256'hE63B6D5F2904BB1ACF88282F484EF1A17968057529374905B364AB465B21292E),
    .INIT_66(256'h7E61FA721288E60565A771117D0E9CE249B8CBBC7CCA1A98F657D7912ACB0C19),
    .INIT_67(256'h02F2DAF2184C5202C0D3E4E0EA217A7A1AA9A7F1E8D60F4E48CC22F159849D1D),
    .INIT_68(256'h0C3A83F45F6E52434F88136BE9E6FD39916AF94FEC933F41FD055E7E3DCC85B8),
    .INIT_69(256'hF5B1A9CCD3F0364AF0C5EE081E0FF3070BFCDBEF419A85EC1AA167609522A696),
    .INIT_6A(256'hFA2DA2CC56C31E14E0B0F75DC5B7D50EFCB7863A21215243D54E1D3800010C12),
    .INIT_6B(256'hCA9892ECBB4292307BDCCFB8E818445841EA5FD4F9DEBD0084A0D3884B2DBB86),
    .INIT_6C(256'h82159A9340CE99D44378084D2CBD5D9A67F7ADC9F4F1DCE8F2EAF42E3B1EA4DC),
    .INIT_6D(256'hD1C5F82714B699F9846696F73F37D9C87BB325A43043A43CA051C9AD44C8785B),
    .INIT_6E(256'h1C4E17F2C7397125C43927F2B5C22E59453733048E51AB3EC2C32F9380E01006),
    .INIT_6F(256'hD6B90A93C7455CB65740937A15EA074C3DCD2708D076A09AEA4067141BE0819B),
    .INIT_70(256'hE2BE2D60F2704A8A158C6B29D6D12A239B244BD084D6749F45C32B18BC748134),
    .INIT_71(256'h3ED649037B67FAD22BB2BBDFD894685EA178FDA60E7E86EBF0E1D8D7D62E692E),
    .INIT_72(256'hDE5E9C38A9DA639B223BD63DD39C1AD60D6FAB404684377FFA8FC8890992941E),
    .INIT_73(256'h4FD88A6CB22C3ABE6DCF759D2A712A6ED3362BA72FA39C1471692A98428F4E78),
    .INIT_74(256'h1D6208F52F686FFCA26E79F56B4DCD62BA8ACA4E96208F5482083713C3E3396B),
    .INIT_75(256'hC65E9D51721142016740FBDB213C31D196C52B600F9590FBA00A75A9455CE054),
    .INIT_76(256'h921E530BCA139BC239B9839305485BE561D79B14634A34D88890051CB67CBC4B),
    .INIT_77(256'hEB11651CD23E1D8EFE621DEE1B9ADB083F67C14A67098C4BECC92354571EAC64),
    .INIT_78(256'h0B9D5DB16AE68D9FEFFEE6AD8C149C4CAE4BC38DBA4E3FFAD5C81632B403D7DB),
    .INIT_79(256'hD220EA7E28602DA876F1B2C3409C3E942D6925A151780CD60EA2A7F54EE2838C),
    .INIT_7A(256'h78C86EEEC00B4AFF773B9A61E7735DBD5FF5ADC6341DD07230BB5351F68E24E8),
    .INIT_7B(256'h2C8B167744943CC1EA8CCF2D2CA80419EA9672C043E8E61679E226FE5E58FCA5),
    .INIT_7C(256'hCFC12862E17F7AC012400F61532707487709570572145F1F7650F7E22239E15A),
    .INIT_7D(256'hF38084CA620CEE5D86A20B027B77F1414BE1A1117D9DF500D0ADC33085166C2F),
    .INIT_7E(256'h76D45D8B1B8B213BDDA53500F51BFD813D4FF78336771CDF1070831872FE4756),
    .INIT_7F(256'hB5C323A8484A29B17BE64827AF63EDD9245A036A0A9266E3764ECF80D883F07E),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__5_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__5_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h02000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__5 
       (.I0(\addra[16] ),
        .I1(\addra[15] ),
        .I2(addra[13]),
        .I3(addra[12]),
        .I4(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__5_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__5 
       (.I0(\addrb[16] ),
        .I1(\addrb[15] ),
        .I2(addrb[13]),
        .I3(addrb[12]),
        .I4(enb),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__5_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized27
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[15] ,
    ena,
    \addrb[16] ,
    \addrb[15] );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[15] ;
  input ena;
  input \addrb[16] ;
  input \addrb[15] ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__4_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__4_n_0 ;
  wire [13:0]addra;
  wire \addra[15] ;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[15] ;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h16668CDB92737E6FEDFCB793FB7F6FE5FE1FC06862866873873973DB9CB5C20E),
    .INITP_01(256'h9AF63FD5A1EC2C1B02C0F01204C1B0360480F94C0493F27EDFCD39A724E490B3),
    .INITP_02(256'h190483C110D834100906413048340B1041B14C12048136FED205C360F87F0BC3),
    .INITP_03(256'hE0E0F078340E0F0683C1E1E07038341A0F0783E0B0D02C1E0F04C34120D37C1E),
    .INITP_04(256'hAC2E562F2F9B91CBF6E4F23359583C1E0F078386C9C0E070783C160ECF0793C1),
    .INITP_05(256'h998CCCDE6F773B2D9189CDC466F6B23999BCD64E7727AB959BCAC5E673B339BD),
    .INITP_06(256'h1D8F8EC667E3A3B399C8E0EFFC733F399DCECEC76733EBD39391C9CE6C63331B),
    .INITP_07(256'h763B3D1D8F46C76333B199C8CC6C76333B1D8F8ECEC767233381E5E1EABA3B9F),
    .INITP_08(256'h38E71B8FC6E2E3F1F978CCAE663F1785CFE7E0F0719D1C8E8F16639399D8E4E4),
    .INITP_09(256'hE1F1F8B87C9C7F5E071F8B8BC7E3E351F89A7C7F2F07838FC3E3F1F0FCFE7E7F),
    .INITP_0A(256'hE3B038F83C3E0F0787C2C2E078783C1F0E170783C1E3A2F8387C3C1E1F0787C3),
    .INITP_0B(256'hC7E2F178FC3C6E0F178DE7E3F1F8BC7E4E370F8789C0E1F8FCBC3E1F1F838EE1),
    .INITP_0C(256'hD7E1E0B138BC5E3F1F2F87E7EBF1F8FC3D7F0D1F8FC7E2F1B8BCDE6F3B179B8D),
    .INITP_0D(256'hA3D4FA353EBF1F9FC7C3EBF1F1FC34129A1F0787C7C7E3F5F2FC7C7E3F1F1F83),
    .INITP_0E(256'h4F8653A990FAF43A8D6F8359A8F6F8243E1B4787D7C9F4D6F8753E1A178FD7C1),
    .INITP_0F(256'hADF2CB7C9A1966572934CA259A9F4EB743E1F4F87D3A1F6F8643E090487D3E1F),
    .INIT_00(256'hAB5C6CC833590DCC2DD1E005E9A304E592832A9FDFDCF2FEA7FD0A70F28AAE36),
    .INIT_01(256'h590CBBF46C842FA04B4491004522CF06A3D136690171EF2220CA94150607311F),
    .INIT_02(256'h47D2B21057003DDE7B4FA8BE3D979D0A55FB3FE06142D3E259B189DA424BB12C),
    .INIT_03(256'h99A1B06C2E70FB91FBD653EBF9F5822E59C7379CC065012633ED66E556208A9E),
    .INIT_04(256'h20666094EF87474D7C932A24402D54E78410065FE49B89681613865CF50099FC),
    .INIT_05(256'h6A80C74F2150BBEF39054D6B6FB14AEC4DF1C70DD8228D4D6312EE6FFE044900),
    .INIT_06(256'hB90BAF2DF50A40E5FD5767A00AC06A2F648008135077D01A954260B293010752),
    .INIT_07(256'h1D71F14E9EC00A68F3A6FD328B273CABBEE494FBA3E450FF490B6FA012FC3B97),
    .INIT_08(256'h319009E356A8DCBE57CDFD37A604D11329A4BD72191648DA3CCFE710B5E65EE2),
    .INIT_09(256'h1B60ADD951177EC67C8204C95C212635B5EBADD9E10C9120278A73C7B141BEF6),
    .INIT_0A(256'h605E61671559B1A3664CEC3BF565B75B505376A92CBE00C141CE8A776748773A),
    .INIT_0B(256'h254FC9DB1A2D9DE6A31B586E827568279A1A0E7FF14AC32AC6C0E5AC21BF1345),
    .INIT_0C(256'h264EA1D2659CFEE364DF1A4E99D896F939D528B8061A3DB4DF5BB609FD82EF2C),
    .INIT_0D(256'h271A489DB9556CF1149E1C25559DB246891B128900343B6DC9B41138B6FFAC07),
    .INIT_0E(256'hFD06D30BB6CD53A72F41D51AE4F256D1B60845F75FDD0E1151B491ED43E625CB),
    .INIT_0F(256'h800D0FCFECBE2697CF3235D020D6E3499A64B35B3FA3E9C7D2F8B90A4F4DD56F),
    .INIT_10(256'hD157114DC12B92CB84F696636BB3EDF071ECBB1E49FF4BA4C2D333BFC91F782E),
    .INIT_11(256'h8E97842E6ED1CF6E2F48C7B9334EC90B94F83C96C083D304C83AC40B50A3AB51),
    .INIT_12(256'h3E75DEF86582BB9A37057B90AFE06F86D098028D400738A9CD371C8B9D63BE8E),
    .INIT_13(256'hD5B3566FA0D999ED1AAB0EB83593F114918ED3C745D02C93E6F56A59A6C48317),
    .INIT_14(256'h110E85D79D3574BFE68AD942C92B035C8BC7BB4885EA048B2464B50FCE12F56B),
    .INIT_15(256'hFDCB8D1D42A39F5C073B9CFFBDF32596B87F1161D7EF5D7CD3C12ED34DBFE197),
    .INIT_16(256'hFF80E7BD214A6D4FC20FBC10E283B3B2A43DAA10EBAA48979157108AD7E432FC),
    .INIT_17(256'hA3B565C322CCF1962E88997C177CEFE0A92875EDEC68B4291BAD3682C8E3B1F5),
    .INIT_18(256'hA3D89C59876D7046DD32F48131BF0A11A6FD831E41EE85ECF9A814620A5AEE52),
    .INIT_19(256'h8EC6C04DA507008D3EBDFBC9053FC9EC71EC1B323808A50AE45316B8F3BF092E),
    .INIT_1A(256'h4FC315F76A8AA288F741E118005D4D8384046BFE05D672B9E6AB26931121C748),
    .INIT_1B(256'hA2676158E369193F0F85978739CE400E9D3779949058EC631053F3618BA88105),
    .INIT_1C(256'h11790655297D546D50017E065013A07B6B61F353D71B1F9D757468E131EE382B),
    .INIT_1D(256'h797A6C151902C55757B80D2E71AF46AE2501B97A673439F6AB4E5703523A6F80),
    .INIT_1E(256'h1F47E46CF84E416A3D5F73147E2999719A526145F8841C6F0347646823A713D0),
    .INIT_1F(256'h9275E439221A230BB35970065D3B1A15ED9552730F5E2E394CE67F4080286E2C),
    .INIT_20(256'hEBC34F84EA6F29977062152928D69E6BC8812EE7374FE2534AF194600B231EE1),
    .INIT_21(256'h1AF67645AC1D2626605CF65B29C05C687EA94E6EC30AE07040224614CB6A9D1F),
    .INIT_22(256'hABCC491EF0101AF6936700622E2A3210D57D883F6E14102902AB62852A420A14),
    .INIT_23(256'h32274F34FA7319913441041124F8764BE73D072D5828CB588C3B5B1406F1F101),
    .INIT_24(256'h05F60FAF91573EFE03FB08CC81198F370000FFF59E823C6E13061DFF914FA12C),
    .INIT_25(256'hB29DEEFD01FFFF03CE3F69394DFB0B0FFFE386E15122FA131109C99D2E43EEE2),
    .INIT_26(256'h1611FF01FEF18C6ABE2D37FEFE04D77B81244EF6181507BE3F7F4864F707ECE2),
    .INIT_27(256'hE904F80DAA8A405B1501FD04EDD8F26254F806F909C3A53A5D1DFE01FEF4A4A7),
    .INIT_28(256'h50B060DF8F36A9DBFD05CBAD6375C2C90200D8729D3F3DAEBF06F9F99CD94FFA),
    .INIT_29(256'hA03531DDF412FEDF88C4492BFB04F80D926636812BED04FDF3B4B8341ECCD142),
    .INIT_2A(256'h46E4F5FD03D37DB6160EFC1715E99482F716FB03FC04BC30968152F806F70CA9),
    .INIT_2B(256'hDF0000D7B23D63CDCC07FAF6B5C54D44E1EC04F80CA2BF4202EF1511EC9E9737),
    .INIT_2C(256'h04B1B54C34D7E502FFD192FD30BFD405FA0797691A2CE9052213CFA3CB5E36AC),
    .INIT_2D(256'hA44320FA1A0D03A294477A0EEB1D12E2A1E99959B7D403FFC8A34F9201E21A0B),
    .INIT_2E(256'h29C7DF04FDBC5DE938DFD5F400E993BC5434E7FAFC03BD8B1D35F406FDFF0593),
    .INIT_2F(256'hE6110AD6E43522A6C90A0B13B6CE5616B2E70000CBA7192AB7D606FBE685BD44),
    .INIT_30(256'h1099C20CE3A80F7A1FC2BC12881896F82E0DBBD05E3577B0222E22A6E24CCB96),
    .INIT_31(256'hB5501EFA220CFF8F803028F704442ACA6CCA490EE50C5AFE62985D57B9AFE423),
    .INIT_32(256'h12BCF63E2CFA7F8E2D0BC9FA4528AE6EECF0BB07FA02736AE7FF02FE2D14C655),
    .INIT_33(256'hFA4833F07FE945FFB4F63105B05FF61CADFB4337F488D216E6E73B4F08C982E9),
    .INIT_34(256'hF9A88DECFEBC0B6A13B768D36B029CEF0002EE92E9FCA8E4614BFA91B06F42AD),
    .INIT_35(256'h882C15A1FD6165F551B64012F61133098D38EA66050A180CE88DF548DACBFAFF),
    .INIT_36(256'h108FFA282FE96EB3FBF2AE469A1BD742DB5EE205323FE53D841EFEF45848FD9E),
    .INIT_37(256'h137137E364CA5FF8B502321AD0A1F8ED9B08553AE55BA939EF8B034504B57A18),
    .INIT_38(256'hA2D1FD00FF01FE02FC06E8ABD802FA0E2A02CC94ED6AF7BBE50E47F0ACF9EFA3),
    .INIT_39(256'h2190FBE6332BFD95694E6A0401093ED556B4FD0521FD07E187CAFC0E471806E8),
    .INIT_3A(256'hA8F35648F1758D29F3BB111C0ED16BE14CECCE2A24FDA2813F229A1A4510CC58),
    .INIT_3B(256'h5F3AF8C1AC07C969163509D874D6079B94393A10CC83FAEDAB264F10CC5DE414),
    .INIT_3C(256'hCC930E43CEAF5C6D12C0901CF17A247653D07ACD05DAB6746D0ACE630B2B9BEB),
    .INIT_3D(256'h0708ADF76222E5719940CF9122380CC9821A1190F45D2CF19EC2610CB326694E),
    .INIT_3E(256'hB11F220CB42AAFF60BED3F5A11A65212FFBA34834BDB84D237E3B2304511B97A),
    .INIT_3F(256'h1CD272CC32D2B560580BBC7AFB17E2C81321EF9C6CF812BC117E4AD96D9C03DE),
    .INIT_40(256'h732F35C7EC3222EAABB908CA8C576D09AC30FC9B2DD1222FF5AAA40C07E6294D),
    .INIT_41(256'hFD1A512FE05826EF602001FD04E2D0141DD7AF53AB44BC19B55C18FB1B22EE79),
    .INIT_42(256'h18ED996F34A52DABAD254ADC69C816F5325B27D184AE3543F81C3315E1A1C902),
    .INIT_43(256'hBAC27F99C8B8E5FFEB73813F3AD7E8FFED9675135A0D0100FEF08B972E460C14),
    .INIT_44(256'h73BCCB0102BA5301750AD8ECFFEF879552B45EF607E1E4CA9D7A900D04FB06DB),
    .INIT_45(256'hDFBD8885CB433FFA00EB7372D482E23BC5D50E11D0BB1421FA04FB05CC82DA8E),
    .INIT_46(256'hC1FD9FA60DBCE204E8CEE739A847E309E4CDE33EAA60D2E0F0BA868843A314C5),
    .INIT_47(256'h5B5F7D42A11D6F37FAF4EE1612D08A7B0DA269DDDC03E7A6C54CB86EA8C4E9C2),
    .INIT_48(256'hEFEDBD9EDBFC6557CED4F1D58585EE8540C3EBECBFA6D05A65F0C5D3CCAADFFD),
    .INIT_49(256'hADE164DE9317AE599FC4DD95E561F2AC89AB91B6A7F54AE7D9C0829F30A17D0C),
    .INIT_4A(256'h8E7EF80ADAA983CD95DB660E01A7250B562769121C2FF6738941D95FF1E4595B),
    .INIT_4B(256'h9F9AB2C3E6367A31F901009E846205B825FDFFE99CAE33A143D4C6BB8C1D74EA),
    .INIT_4C(256'h49A476D73BB2BEF9DDCBEC809D22FDFFD661790A8142C3EB0085EF132AB82EC6),
    .INIT_4D(256'hB537404E19D782C95D7F2ADBD488555BC654380CFC01D56CA03C8736F405D465),
    .INIT_4E(256'h0DFFFAA46F811161F83817B4767C40B361F1ACAAF0D1DAFA00FF00FEBF97965D),
    .INIT_4F(256'h3B59D2AFCF3B08F4C4632FE698C13DFDFBA26159FAB78A14FA01C0627506B886),
    .INIT_50(256'hA9790EF7DBC39B8A12B2972E09A94433634CAE4810F2D07E4C880DA58833F55B),
    .INIT_51(256'h1B01C58E9749C26F0CF5CA7D54B25C883A28FFBF7A7B04B9EC3F00F588436407),
    .INIT_52(256'h52FC919E1A2753E86247AA2F3805FDF97DE736148C39F70CE3975C50FA9D7017),
    .INIT_53(256'h03054E2CAA1F090BDD8F14F40CDA6D91176C090B32FD9945A50D4B0B304FF972),
    .INIT_54(256'h2ADE5649B881A00703F0AA41241CA2350101F39535C1553500081FFBBE546AF2),
    .INIT_55(256'h952ACC7408F4CEB2357B9FCF4509F800925811CED730FD04E770610D7C6B0507),
    .INIT_56(256'h0500F1AD90B81FA97E09F2CA8DA1AC01CB780203F3B97B8833D56A0302EB8D5E),
    .INIT_57(256'h77217D506521EFE6ED01E5AC246D421D0001E67BBEA4C051FBDFCC7E9C108176),
    .INIT_58(256'h6CAB34D7D9E8D3A0B11C380F371E9521414FD3279DB7FE00E0406F4D826E2EDC),
    .INIT_59(256'hEA998CC573ECB45EFB08F6FC6B5223BF9B02FFF7A9517040AC4303F3C88577E1),
    .INIT_5A(256'h811E6648FA1C34CA2B5D2478540A4D52BF195B2EA7BD29A980CAE3E1F04C9B17),
    .INIT_5B(256'hA7FC0005CA5E8669E842D8E603DC746221C7671EE091985E9D716C1703EEA239),
    .INIT_5C(256'hBE914FAA7BE385E8E7DD6B71ED86C01ACE01F1A9A0C65CB223C7E8CF7A68A9AE),
    .INIT_5D(256'h3C7041FD00F08B49802BDA7AE4E104CC484DEB9565FCF3B69283A45CBE45FFF4),
    .INIT_5E(256'hDCDBC38A5C9561CA893EB13A4F9D72D747FFFF02C529401BCAC03B03D77859BD),
    .INIT_5F(256'h919D149356ECF2F2C8999731B458FA02ECA8A4D364BA3BFD04E3A546717ACA2B),
    .INIT_60(256'h9E66DBAEDB0ABBB3375725FB04CE676AE27669E9DD08D4AE9417B661EDDE05DD),
    .INIT_61(256'hFC0A771FDD77B344FC00E97A62C95B82EEE102ECB6B5DF5A66C0D306D4925FE5),
    .INIT_62(256'hDA92B632EDF1C78494D66BB137E6ECE8AB81C44DD56FF505E27C3BD08EC84DFD),
    .INIT_63(256'h4B29F45F27B6C64392B1B2EBEEB46BAB44615641EB2EEEAF88F449A9ABA47E75),
    .INIT_64(256'h8C54530E0377B6C1F1DD7C971FA861E0B15F6B76D29FB41AB197BBAE76E77FA5),
    .INIT_65(256'hA4E22BC3DCA53B5502E40413A9F2C2465939F8D105A3B5814050CA9093E1CBE1),
    .INIT_66(256'h3E0B994ABCB4C520FB2DDA4B32ABAEF314C812D1401DB9A9F451C2D0A55652B7),
    .INIT_67(256'h45AA91018AE8946776C2FD8CA13B1BF69B12413BC088330195F925FCDCDF0DF0),
    .INIT_68(256'hCB29B9DBE4AB64B993B302CEFF92045B47CD5EE1D9D7A45C5F3CF8850D01DC79),
    .INIT_69(256'hE5BE56520ECB224677CECE7B54E7D7D806B1D2853B6B22F2BBD692BEBABDDB61),
    .INIT_6A(256'h53E1C9E843F6BB1F189C4CF078DBBFBF6F39B670E05DDCECBD642C85991E86FB),
    .INIT_6B(256'h14861DBC2FFB5215B78827FEBF5F1F4E20FACD461BDD5C1E965BC59725C76C36),
    .INIT_6C(256'h643F62DA469B7AFFC8E0DE9361AA8CE95D029D06DA6073E56D1C20C8F0AE94CA),
    .INIT_6D(256'h37E1B0CE1AA8C1BD502A06DCBC1DEEFFC64E413031FDD692DBDCACB579E786CF),
    .INIT_6E(256'hE815C36F0516AE981678FDE973175AEFA2F54EE0DA662626BEF8C7FFE7E8E066),
    .INIT_6F(256'h12C24342F698F1D79F28E66A9438B50BD6830E09A88D25BE150CE445F3C2D451),
    .INIT_70(256'hDFB71CE304C85821DECFD34DEED8C25954F4C8124DBBA6865AAA45D6CF4E13AF),
    .INIT_71(256'hECD66F02150ADB9410CDA53CF55B4B1BDB187DA4DD76750B95BA6FDA2CC61925),
    .INIT_72(256'h13FDEA0B8BFBC895132E1FE7067312D5742463ED950E720ECA36CD1717171837),
    .INIT_73(256'h5404F6CB69267136D5BD3EF978ED3AD9A7006214018B243FDC98D57729D65E02),
    .INIT_74(256'h24D13F6F0BC1572CD3480D6A6D1E0372BF4F1B42C275A671632DC0FCD7D1C0D2),
    .INIT_75(256'h0DEE6A0E9C3FE0548A450B41EDB03C1D9645E6E35216BF3AFB2B2345042B01AF),
    .INIT_76(256'h93F7D8AA7CD8AA28FCAD2900765402AFFDEF9A03C94C50C5C058F8A922F95B3D),
    .INIT_77(256'h2E27EF30D18854157F5BDBF496EF41C9DF8B8318D353E5791BFD92841ABF08D6),
    .INIT_78(256'h3781E1D76B62C95718F4D59A24667B25C231F2A35046BA51C9B110C4A6756381),
    .INIT_79(256'hB94ADFD358E43CABF0F3ACB44C0AF6C461256303A8F2D7251697F7D4887E6B8F),
    .INIT_7A(256'h1AF6B46A54993C05F648F9911BE7786CEDD64BE4925F29503D141F77C75D2846),
    .INIT_7B(256'hF39054CAD85FF38D20258A4DDDDC86F7690A1DC79207BA2BE5711C5BFF92EA9E),
    .INIT_7C(256'h0272019611DD6F6529FE13CD850516A26502D441FDA81FED5B534D325ECE6F04),
    .INIT_7D(256'hC3FBE0F12C750D95FBC50CB4D55BBE23B860FFE381C345D54A099BE5EF99B851),
    .INIT_7E(256'h029421A01ADA1A0AE5F469F78FECAA293D01059737CB42D0E7D5AF30BEFBD35C),
    .INIT_7F(256'h38D57F7F111D6BDA7731137141DD2D95C966F1B74940191943FAA9190D7522D3),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__4_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__4_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h02000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__4 
       (.I0(\addra[16] ),
        .I1(\addra[15] ),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__4 
       (.I0(\addrb[16] ),
        .I1(\addrb[15] ),
        .I2(addrb[12]),
        .I3(addrb[13]),
        .I4(enb),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__4_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized28
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    \addra[15] ,
    ena,
    \addrb[16] ,
    \addrb[15] );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input \addra[15] ;
  input ena;
  input \addrb[16] ;
  input \addrb[15] ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__3_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__3_n_0 ;
  wire [13:0]addra;
  wire \addra[15] ;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[15] ;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h4B2436330CA7D121966C21D10F83C121D0487E3609048241A0904412994C8753),
    .INITP_01(256'h82609048320906C124D064120DB481A5B02C36184F86C1209068140B078440A0),
    .INITP_02(256'h7E9324C93248320C836098241B06C13058260903C130F83E1F24C320D8241A04),
    .INITP_03(256'h1983606C0D8B60581F07ED30369F97E49926098260C8B60D8360D8120F8260D0),
    .INITP_04(256'h03202606C0C81880F83F166CC5998130228CC19012666C8B326640880903604C),
    .INITP_05(256'hE71E31E23E07C048C70DF81F03F03E06C2780F81F31E31A1BE0440D81F819813),
    .INITP_06(256'h0FFC38CD863C03F8F109806CE7A67C41BCF1C70C7863C638C6847C1F01F71CF1),
    .INITP_07(256'hFF001DFC0073FFC707FF073C7871E18F0E7E01EF1C31F0DFE38BFF083FB83163),
    .INITP_08(256'hFFE0038F1E1FFC21F8FE4CCEC706B7FB63E3A65E48E3C3CF0E7E3870FFE1C10F),
    .INITP_09(256'hFC01FF003FC1FF813FF031FFCE1C7FF00FFE01FE03FF1FBE0FFC1878F9F1FF00),
    .INITP_0A(256'h0FFE003FFF007FFC007FFC01FFE00FFF007FF003FF007FF003FF807E61FFC01F),
    .INITP_0B(256'hEFFFFF3FFFE3FFE00FFFFE7FFFFC61FFFFFF001FFFC003FFF000FFFE001FFE00),
    .INITP_0C(256'hE60EFFE1E7FF87FFF07FFC01FFFC00FFE007FFF863E7F807FFFC7FFFFF387FFF),
    .INITP_0D(256'h20F7980FFC61EF99FFCE3FF087FFDE3FFF8FFFFBE7FFF807FFC07FE107FC3FFF),
    .INITP_0E(256'h07389F3CE6C0DFD80E389296FEFBC03FD823D3DF006ECC1DFCC03D893DB003FE),
    .INITP_0F(256'h25C429C365FB2847FC2009F1C8601F26F8ABFF803DC3FF003CE0077F83DF01F1),
    .INIT_00(256'h07AE32D765EBE2BDA427C912CC56DAF38E6CF3D355F7AF2DF3566B3EEA40D29A),
    .INIT_01(256'h1AFA981D7AC8DC7695D9F093427E96CD93F4E150E5FFCFF0AF580277CDF1ECAF),
    .INIT_02(256'h8ECBC02F50D5F88F40BBEEC328196FB3963674BDCE1D39C3C67D3D9FC98B1AB3),
    .INIT_03(256'h7501EEB582A492461095EEEBAB9BFED339D6A57A6078EC7FCE62F734A636D746),
    .INIT_04(256'h96BB7232F2A16D7BCA0453A18C1A77074ADD68ABAEAA2451BFECC398D48241F9),
    .INIT_05(256'h2CDBE7AA8F373DC564D12BEB31E5AAE9992A9BD86DDE253295284F9AD294F7CD),
    .INIT_06(256'hAEEC994FE635BBF9CAB60ECA61FC6E0124FAE12BDC730A56D4D9966AEDCE1B8F),
    .INIT_07(256'h096AC7D08F9B2E29E1458AF9DD8273E3E75B9C1FDA30E596CD79F36DB95913F8),
    .INIT_08(256'h62C5F0D3225F0447E433609779C0F697E2A306308CC187011BBF5C069C884552),
    .INIT_09(256'h4E7FAB7549B3CDA34FD227D6460B9AECBE7C0F0BC46B0B87AEB28C0253D315C7),
    .INIT_0A(256'hD322AB00C29F72488535EBD26BEF20DE46CB3379C4A72589E6CF4D1EACF5DE45),
    .INIT_0B(256'h2DBB00F96C94939D7E0232A510E1ADF2C75FE34BF135EB89A68259ED35B2F704),
    .INIT_0C(256'hEBF5B452C228CE18D7A01111A4A3BEBA54187C9CAB9A269013E08F61F80B84CC),
    .INIT_0D(256'hD9EA7C55F30DD685CC03B82616AAD3CD89D00BA9EBCC8198794B007D939A7A43),
    .INIT_0E(256'hBD7DD110ACD4855CC4BFB42F43B2B4461594B3AB5EDB2A9F14E275C4B7BD4E62),
    .INIT_0F(256'h8D35B5C47E3BA5DB910DF191DEDA7C0176ECD87640C4FE9929B4D8B9722B96C0),
    .INIT_10(256'hB212D419D07ABCD6CE5B589AC88135B5EFC753C629BB180FB7E7BC530073C7E1),
    .INIT_11(256'hC9C745C9501F429214A90BFA5D58C7DE5CE87AEDFA84B02193BCA63392EEF56A),
    .INIT_12(256'h06AC237EA0733FA2F6D63CC34ECFE176AD2C1953B530B3FBEA47A4434492D649),
    .INIT_13(256'h0B5CDF0190066BB4CA87CBFCD207811F7CDEEF6869A89A443193C1CFAD449F07),
    .INIT_14(256'hC5DD87D45AFC11A83B7AB4CA83E016D633CA46A6D6C75597FDAB20F55087E6C6),
    .INIT_15(256'h9B7DDBEBD78AD51BB803B750B9E1AD43B1FCF35EED75B1AE712787CA8F48238D),
    .INIT_16(256'hEFD317CC87E917D6104DEAD4511CA9E4EB7DCC2F92D7B44BB2E3C871ED20A2CE),
    .INIT_17(256'h78E97B1E0B6DEE7F03F8669CF4B9028918B211F75F90E9AD0DB835AA18D51D78),
    .INIT_18(256'hDCFBB5268C29104DAC0084EFC04C98C7C447CD4AB8DE9E339F1DE5400097FEF8),
    .INIT_19(256'hAD44ADC1A150C02BDF04860E6BDADC37B717961FE2468587A1991E6BD0EAAC6A),
    .INIT_1A(256'h9916DE4C9FDACD77E14CF1F89C54C4EF00789511CF0CB34684C7CA63CB1FDB20),
    .INIT_1B(256'h4EE2E14BBB29A605EB4A85D7AF45F055B3E0952F86DDE229BB52B6EDC9568ADA),
    .INIT_1C(256'h4726A00AF772D88008ED70D6742E4679CD45C01E8FBF45062F7ABA14D234E825),
    .INIT_1D(256'hD4B21F700F0748D64992DEE241952A35878ED36F1F5CC5C6E59F2AC00D65AB7F),
    .INIT_1E(256'h89E3A924B71AEC73E9408DE51577C42BF242C62A2378E3900281ED089A096BA7),
    .INIT_1F(256'hC4BB92F129BEE164FA738295AD4EB025E613A8185D7095B748A310F464EE3C54),
    .INIT_20(256'h86696B0D569EB87723BBF9CAA2358400D01DB44FD0C2AEC03F629B852FF883C3),
    .INIT_21(256'hF373F5227F8D3200C54138CD5BC40ABBF49E26A8F2C88954D0D270E7A93998CE),
    .INIT_22(256'h877D194B97852707C03B3B9517D337BAFB5FEBC4585EBC14328068F2DA731C65),
    .INIT_23(256'h8645A6F8ABCED0D603D48229D757C2B024EE9DEDD89C50D865C1A86F34A5CEAE),
    .INIT_24(256'hEF4FB385D2A4751D46E92FA0105A7E3AC84BC4EDD29B292C5E640ADA65CCE8B2),
    .INIT_25(256'hB96B3971D051D2F0C964D34E062187E2208AE305BAFC55DA9F07D97F0640EC54),
    .INIT_26(256'h219B23D6F3A77B3DC011BCF48648B9B4553328FC9EEC8BFEE882B980584D370B),
    .INIT_27(256'h3B6B7982AC7DE536C1D3703493BB9B6D440C9CF1CA2BC159BFD09F6A1EA623D4),
    .INIT_28(256'h773A1EE78F4D174ECE1D64887D5C44F04EDCED8FF82C6A85726C3B6CD1C427D0),
    .INIT_29(256'hFD0DE8721014C24AB2F4D5953194D07DF9B7329AD5B36736D932E82C98127696),
    .INIT_2A(256'hB6584DA92327F7F61D5C4BE8511A80277129E9EA396E54F049F175357D8A37FE),
    .INIT_2B(256'h16C576DA9122FD191DD65A067141A9A554051107F3C06443983276785C380CEA),
    .INIT_2C(256'h1373B79E523BF674274391D8276C7C715A2AB3392B73F03A41392E4942DD5BED),
    .INIT_2D(256'hEEEC2C561AC07F98197C8B29DCE906FCC0753561D857AD77240E0BF792200F7F),
    .INIT_2E(256'h5F55DD592055D03A68715C5535E15F2057E2545C53597B5E2D8EC4DD8635551B),
    .INIT_2F(256'h3E5FD82521F4E1FE588137B03337D23A4706ECEC54B023940B1ABB396126F90E),
    .INIT_30(256'h061D24313F381ED6907BA1F306F8EFFA0F2012C48DC10F11FDDDE1F74DAE67C7),
    .INIT_31(256'hB4CB0B3436D40CDD6C0A524F12FC4D814BD85C1F79F02654391100CEAA8581C5),
    .INIT_32(256'h4DB43F40AD1D53461EF5EC0D2D14B96A67BD1D3A23FAF53131139C51CD1A4209),
    .INIT_33(256'hE111F8C2A6DB1109DBAAC1FE30491CE1CACE5291125548D51A534F17D8E52F6B),
    .INIT_34(256'hC497E33A1AC0815EFBCA09E04ECEC503029C2C3389EC44622DFE133653410CD4),
    .INIT_35(256'hDC8160CF645106CF0477AC4985F2DB34CB39617248578C86197819F322BB2917),
    .INIT_36(256'hC724695D09CEF1477552F1A1B6F90508040F2F210F08ECD9D5BA99A3D4188078),
    .INIT_37(256'h2598CC4EA04D4EB1EAC4958EB8FF5E7F5405C2C5FF709F30BAC7233DD53CD423),
    .INIT_38(256'h2E08D2AF8166AADBF301EEDBF73158614005BBD42E7B1E4BEF27D64E6127DEDF),
    .INIT_39(256'hDCE8FC354416FBE7E91C6BD60485DF7946839E5B27225DD35D9D5600F00A424F),
    .INIT_3A(256'h1A30019FA0DE2D9A8012CCCD174845C57689A8F355634011CEF308E98810006B),
    .INIT_3B(256'h080A140DF7D4F02419E9632D7CBEF5336A787E785E3F01916C9DF518E0A081D2),
    .INIT_3C(256'h34FAB1A7D615555D068E9CFE5FA83A7A1B3BDE84B08824A8980587489D4F70DC),
    .INIT_3D(256'h03455D4D1CC8BCF3FBCD83566EBFEBF6345C3A0904FAEAF60E1ED8653E840D4D),
    .INIT_3E(256'h2F4F878F4D0C172001C6B9F83C32EDA562506693E2E6B39AA6F189E180F8B8C1),
    .INIT_3F(256'hD7BEBCCCB16C487801665007124566ABC99017665BE20FF8B1655B3636B81B34),
    .INIT_40(256'hE9AD8C9FC2B0A2B6A6A1DF4BBD9E31AC93EC346F360707F9163568136B517FC6),
    .INIT_41(256'h2390EE88E1638B192BE8571C4172BB277E55CC7EBA24765110FEE7E8146B9451),
    .INIT_42(256'h0559C6F79B529758FDB1D2365A33D054439524968A30BB789BE8120FDB9788CC),
    .INIT_43(256'h3A857C03988FF5600E3ABA6FD14A6C0045391FF91C566D26E81F8BCB7785FB52),
    .INIT_44(256'h0482228F39B08CE1397CA69300A9E1751BBDF232C213A6DDC7954A40BF98532F),
    .INIT_45(256'hA1C0CDB2CC052A1EC57E8E9F776BC30C0AF3119E20119D25D0E20803F7BC48D8),
    .INIT_46(256'h192910F9E3D5E644ADC575A51863EAF2A36F7AC1E9ED479F8E35ED1B708012A8),
    .INIT_47(256'hE5D2B57747538DA8A7AFE3427F6D270C224332031605D1A0B60D534CBC5464BE),
    .INIT_48(256'hD99183BFFA0100FFFEF8E1F2425D24EFAD94BACFCCB5A5C0054F86B3C7812806),
    .INIT_49(256'h687B5C15BC80788CACA7867076C12D8A9D4E0DE2D824563C04C99BB8F9305A34),
    .INIT_4A(256'h585122010308E49D9AB2BED9E8ECF4FE040301F3CFB7D2F8FF02FDFAF4E9F830),
    .INIT_4B(256'h7E614315C4928A969FA1A6A9A5C1F156B9AC701C074037D67F5E81B8C3CCEE2E),
    .INIT_4C(256'hE2FF0904F7EAFC3B707433FFF5EB08201DF19F7077A4BB9C72719EE346A2B795),
    .INIT_4D(256'h0207EFC9A9A09FAFD8F0F5F70527494C3A13F6FD0B1309EFD2C7C3C4D9DAC6C5),
    .INIT_4E(256'h481CA1375394B1BDCADA0A60814D18FBF6FFFCE0B0A1B6D9F1000A08080504FF),
    .INIT_4F(256'h39072273BEFB4DAEC4BCAFA1906C1894552F2F4034456BBC1775C9E19A453D4E),
    .INIT_50(256'h00FFFF050B0C09EDBEA2B4C1B284749FCEF7457F86888387918733D5946D6A5D),
    .INIT_51(256'h506167552E01D5B7A18A85969DA2B9D7F50C2631324E60471BE1C0C8DCF2FE04),
    .INIT_52(256'hA1897E7D7B98C2E1032F423C445D78632BFED9B5947462667C9ECAEF0E394D48),
    .INIT_53(256'h193449657B7E5E2809F9DBAD7F7676707894CFF6072F44434F6366481F03ECC3),
    .INIT_54(256'hB9874F3A3E4168ADDFF2FC14446B818977522B02E4CDB9A7897B7C94ADBDE3FE),
    .INIT_55(256'h2E414B3E373B220F08FBF9E9C9AE896C6E8AB3E8F7EA0D507D9EAD814A2713F2),
    .INIT_56(256'h3C2E3E5B81B2DFF5043A7896A18D571E0EF9CBBBAD8C818799C0E4F4F8FF0918),
    .INIT_57(256'h38180803C68B63362C3B4A577FB9EA1A4F727A7E80817F795B1FF3D3B2978063),
    .INIT_58(256'h355A809DA49A815F3B1800E9AC72553C333147678BBBE20A3C78949B9A90845C),
    .INIT_59(256'hACC1DEF4103343536976645D58472403FBF8E8C2A0836C6060738FB4E0F1F510),
    .INIT_5A(256'hBAA1887E88A1BDE4F6F505193447545D697154341900EDCFAD8E7C6F616C7788),
    .INIT_5B(256'hE9E8E7E7E8EDEEF1F7F8F8F9F8F6F6F8000911120D0502050C1100F3F3F6E9CE),
    .INIT_5C(256'hF6F7F8F9F9EEE5EAF0EEECF0F5FA030D09FCFF08080301FEF8F8F8F9F9F6EFEA),
    .INIT_5D(256'h3B281407FDF9F9F5EEE9E7E6EBF2F8F9F9F7F6FAFEFFFF0101FDF6F7FAF6F6F6),
    .INIT_5E(256'hF2EEE7E6EAEDF1F4F5F8FC010501FDF9FAF9F3E4CAC3C4D1E9F2FD0A0D0C142E),
    .INIT_5F(256'hF7F6FC01FCFAF9F3EEF0F3F3F3F4F8F2EDF2F8F8F7F6F6FB0101FDFAF9F5F2F2),
    .INIT_60(256'hEFF2F5F3F7FBFDFD0406FEFEFF00000100FBF3F0F0ECF2F6F1EFF3F8F9FAFBF9),
    .INIT_61(256'hF6F2F2EEE9EAEDF4F8F8F7F7FBFF000000FDF8F8F9F8F9F8F8F9FAFAFAF7F1F0),
    .INIT_62(256'h02FAFE060D02FDE6DAF0F90401F0DDCACDDDEBF2F9010A0F0E0F0F100AFDFAF9),
    .INIT_63(256'hC7DCF7070717211D32361F0D0CF7D6CAD0D5CCB2A8B6D1F4F8F7F6F1F80B2B25),
    .INIT_64(256'hF3EFECEEECD6C4D5E8F1FAFCFCFD030E2B3F270D07010503F7E0BFB0AAB2BBC1),
    .INIT_65(256'hF7F7FAFE01090C0904FCF9F5EDE9E9E9E9E8EBF4F7FB030B0E0F0C08080503FD),
    .INIT_66(256'hF1E8ED0307DDC2D7F2FCFCF2E6ECF1F3F9010C0C04FDFAF9F9FBFCF8EDECF1F4),
    .INIT_67(256'hF3F6FA0303F9F701090B0903FAF3F400FFDBAEA5CBF4FAF4EDEDF80711120BFE),
    .INIT_68(256'h05131B1802D2BFDFF9FAF1EAEBF91432290AFEF4F3F6FEFBDAC3C8DAE8EDEFF0),
    .INIT_69(256'hC8C6C5C4D0E5EAF0F7FC050B0E0F141001F4EFF1F2F0D7C1C2C6E303141704F9),
    .INIT_6A(256'hF6F8FD0403FAF2F2F8FDFFF7EEEBF4FAF8F8F7F9FF090F121108010200FFEFD1),
    .INIT_6B(256'hD2CFE2EEF1F3F0EAF2030A03FBF8F9FAFEFCF2EBEDF7FBFBFAF5F1F4FD01FCF8),
    .INIT_6C(256'hFF00000300FBF9F5EFEEF4FBF7F1EFF4F9FD00FFFCFAFF030401F8EEEEF5F8ED),
    .INIT_6D(256'hEDEBF8FAF5E6CFDEEFF40307FBF2F3010D13FFE9E8F1F8FCF9EDE9F308150F04),
    .INIT_6E(256'hD4B1A9ABB7E202130AE7ED2E7A6F18DECEC8F312F7C394B7FB3D28F2F7040EFE),
    .INIT_6F(256'h2201EA036AA37931E0C4D1F004B44857CD1411FFF409252731444216F9F7F2F0),
    .INIT_70(256'hC348D59C9BBD03C611DC3CEF6D310D334076B0A65801D6D1C9A78F622554DF2E),
    .INIT_71(256'h99590F0768D90A17FAEF33ACFAE890230414FDB76D2BFC29D84D501AF865DE03),
    .INIT_72(256'h1F2830337EB9AB560ED6C507E28A1DEA54C60E0FF3F41A91DBB84FE3D8F600D7),
    .INIT_73(256'h9934FC6CFE719D552D02FF4F895FA83F80F512EC031CEF8E7FDE1BFFA75563DD),
    .INIT_74(256'hAB06EF823B52CB00D06F1C2B8A01FDB07BE18CD4DEB19C8B8A67FE8431283C83),
    .INIT_75(256'h20365945D4B2F64F7732E8D7F069C5689FD5F3D2691A5AF4330ACF264D2C5090),
    .INIT_76(256'hFAC120AAEA2D05D927DB7ED9DD8E6BB6385FB6A91B79D2A95B09FF34AC061F26),
    .INIT_77(256'h0E41887513CEAFE72239E679840CA02662F5F554663220DF9CF2544E1800D55D),
    .INIT_78(256'hFA2370887B33FAD08D31F81C468DBDEC194289AD964A06D6AB85A8FA130D00F4),
    .INIT_79(256'h953EBB4F110CFEF631528F1195C58D788964282F36F6C1E102E7C7B9B8C3CBE7),
    .INIT_7A(256'h6547D181ADFA15F8B7AF1D91BE51D6B7BBC282474157ACE906497EB3B0806881),
    .INIT_7B(256'h318D0CF34005CACE85C2667514558C4C558F907873B2F1E5E4053A5B5C320D3C),
    .INIT_7C(256'h9AFAAD590A32A93285E6B61A5415196AC2B362CA3533644BCFEA803039B6DA42),
    .INIT_7D(256'h516357404A9333BCCB52EC43C0DAA54E15268F90DAFDEDC0FB6308F0D1A939B2),
    .INIT_7E(256'h18F9103B85BC24C47AF5118F0318D7FB6F5773BA144B9C4407FE081317D47748),
    .INIT_7F(256'h2B4BABB9CD9E0DA018D56FA973F90529F69C407452DE81E799A61F4A440CFCF5),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__3_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__3_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h20000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__3 
       (.I0(\addra[16] ),
        .I1(\addra[15] ),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__3 
       (.I0(\addrb[16] ),
        .I1(\addrb[15] ),
        .I2(addrb[12]),
        .I3(addrb[13]),
        .I4(enb),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__3_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized29
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2_n_0 ;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h58F701DAE65930315CD6C980C43A885387B8FA3BF02A2FB1EA7C2760ECE7F881),
    .INITP_01(256'h0FED053F6480930EE03E1C81203747A37F43309A0FA4FEFF81E63B82FE7907C3),
    .INITP_02(256'hB25783879FA2780F8CED271CEFF76A71FA5F523CF0E0F87D848FDD3708130E0F),
    .INITP_03(256'hE1C7870F0F0F1C4AF78F0F1E27139E1F1EAB578F838F1AA47383FC76B07C739C),
    .INITP_04(256'h79A29C71F3C71C3CF1FC708F987FE3C3873C73BE3C78F1C28D12B6385F20F123),
    .INITP_05(256'hEE381C79E38E3CF1C71E78AA17A9838A7FFC739E79E30F9E3AF1CF1CE3448BA9),
    .INITP_06(256'hA29DF8E70EF6BC3871D78CA3C7384373C7D4777CE01D78F031C71C71C78D703F),
    .INITP_07(256'hBCD79861CF1FC431D71E78F1E3C71A8E38E63878C78838E3871A3C63C51CE33C),
    .INITP_08(256'h31AF3CF1E117DF9CDC7777F8D3E8FE3C71C71E38E71E31A1B8C71F184F7AF2BC),
    .INITP_09(256'hE3CF8CA8F3F83FFBD33C79C7347BBC715F1471C3C708F3BF071E3F871AB32EE6),
    .INITP_0A(256'h8FC638E3F3CE043FF2623E78D499CE1B53F30F8C71CE397BC718FF9C71CE3C70),
    .INITP_0B(256'h8807DF387C6F8C05FFF071EFC79E1864FDE381CFFC043C58C487CF1891F31E7F),
    .INITP_0C(256'h07F3EC3C3E18E7FCC003EFF8E3FFB01FFFF1C07FF002FFFE3BD83C7FBD6D8FF3),
    .INITP_0D(256'hF9E31F3C3519CFE01FFF9435BEC398E3C39E71C619BDFF8F9F1870FFFC01FECC),
    .INITP_0E(256'h0E7BE70B5CF9C60C7BF61C31EEC320F8E1879EFE0C77CC03ECF81AA7DE30C79E),
    .INITP_0F(256'hC007DF3860E7E1FE1E77E3880F3BC2387BC5871CF926A23EF8639EB8C2E3D9E7),
    .INIT_00(256'hBD469105EBD9417FDFC2FF1112994A4793ECF4BDC2269574F8237EABB25204F8),
    .INIT_01(256'hEBAAF93DADF0277A96C0434195D8095B5001F72B0F885BA006E2CB368F89855C),
    .INIT_02(256'h1F3293FD404C3B352F10FF00FF00FE194B2AFC04FBDD190FD101E3ED8DCA54FD),
    .INIT_03(256'hC911293016E8CBD3EF02ECD2E0489733F2A2A0F5FC03FA2D8887FFB8E704CB59),
    .INIT_04(256'hA596155D3DF705116645B722691E4D7827A0BF24F9383D306B2FC9E5B42F2D57),
    .INIT_05(256'h01FF01C33A8D2F24CFF7D40562CDD307FAD2DF8A612F4BC4D1246A560B021227),
    .INIT_06(256'hF9E5CD8876B2C7504CEC1458326CA2C3F8EA3DBC152E5C734C13E3E3132212FD),
    .INIT_07(256'h0480D630CF34571BFEECC7E402FFF6F41A352530350D00E6C6E603D854ED8E0B),
    .INIT_08(256'hD54E5CC0E0F7F80001DCD7DDE6160DFC4888420305C5BCC9A2F37B915C1BFEFE),
    .INIT_09(256'hD11C407D530900E17E75D73522ECF5366928CB83C309E190B824214B662CFA01),
    .INIT_0A(256'hCC894F49A2393A12A711F1A86CE83A16FFFEC137EB481941E4DBBD8295AE8175),
    .INIT_0B(256'h38FD8D36BED639A710F62E434A1DBA54C6AF58EB669F6A28F80102629816F364),
    .INIT_0C(256'hDDC6D1EA8A3457725111FC89FC2939B80EF9A3E138D06219B60AFC01416E0312),
    .INIT_0D(256'h35E7FE02185C7F6E5715FCDA6E7EEA83D46F15FCFF5AA8F4BF6A2E209BCF433C),
    .INIT_0E(256'h5E0335DD2517737A9A7D7E754CC7D8284FACFAE87428CFF100013C1EF6AD14B6),
    .INIT_0F(256'h39858547E583281082BDC851306DC8B6A74CF83373CA3D18A32FEB4016244AC5),
    .INIT_10(256'h04B719D6B331490D377961BCEBC026D372975F06C2B5DC225D7C8C4BDB886DC4),
    .INIT_11(256'hA576D355AF97AC32C9546F23D766383B4CFB941D6C142141C5AF46DEA14A740D),
    .INIT_12(256'hE969479011775A10F2F3F9236578350BFDEFE7E9F62753611792AFC973521F6A),
    .INIT_13(256'hC9BD8A719D5303E44984E40CFAE56B9B6855FDB18385656D8809F2EEF3FD0811),
    .INIT_14(256'hFFEDF300FCFAF5FBF9E6CFD704EC95712901407B33D3251C87EBBFFA181B04DF),
    .INIT_15(256'hDA34693BEABB3E70EC3D282747777B082472969F6ABFA3D1185230F4F4F20E1B),
    .INIT_16(256'hE8302CE9FAC23E33B6B56C1DA0A12032C0E1426EC50B4B664A26070AF1CA9B9D),
    .INIT_17(256'h9BA70EC2DCF35964A894980D4F96689BF83164573314FBCDD80F505D18BB8BC3),
    .INIT_18(256'h2AEA01A417032B3A13BD7F9BC9F1274128F7D9F01225FFBEDC3D15CFC3EE7193),
    .INIT_19(256'h288080D01610FFD2D6355F280504FEF7D3E4FFDCB9CC09604298203D5A612917),
    .INIT_1A(256'hBC2E8D9C4608C389CD0C2217BF74A3FC5E9E5BBC03B23D947AF790708E4C41D2),
    .INIT_1B(256'h073344EE651C775803A597F5392E05014B56F0B131FBA49AF42F5F3DD5866072),
    .INIT_1C(256'hD76259A2CCEE4F9230EDB62B2B82D592D70B08F3D6C1D8042A6358E5A87AA2F3),
    .INIT_1D(256'hA02658CE0CF8BEADD4287D70FB6346B00B2F3210DEBDA9EB8FAE0A7C4C4DDF8A),
    .INIT_1E(256'h28756123D48F83BF33959F54AC3C57C84470208C1B7437C2F3FCE9C29FC137B9),
    .INIT_1F(256'h5CA0D464DBAE53862BC690F843761A56DA044C4F16D18FBB58AC6D3FAF5195C5),
    .INIT_20(256'h4F68A008F81A37F5F1995E7CD6B6652DF6672CAE73D15887ECEFA499D44AC45D),
    .INIT_21(256'h4853DEAFFE0EE8B275FD8295B499BDA741DCE250FF4BEDB5F3539335A650B2B4),
    .INIT_22(256'h7B37F1CC9CC200302FDA665AD660C351740158E195F97CE6293805ABA5086EE7),
    .INIT_23(256'hE7395C4D0AA677F95411761041F4828422B9CBED0604EAD5F818FDC692ADDE3F),
    .INIT_24(256'hFE100BFCF803131F0FF0D1E2FDFEFFE0B3A3E134410EBC9CB9EE4B754C12D8B1),
    .INIT_25(256'hF36467FD7EB45BBD8AABE2F3EDFE233A01AF9FD803050805F6022C17D9DAF1F0),
    .INIT_26(256'hD0DECDD30A0EDBA792EA847A0EAA9DEF30380BAD599E1069AD37834351D86B6A),
    .INIT_27(256'h2E807497F65755CA08EA8695EF1F30E3E0DAACDF163A64D13DD1CBE3093200CF),
    .INIT_28(256'hFBC3D60F425EF91DF6742BEB79599BD4CDC3FF381EC2A602A1ECD3DA1D1EF52D),
    .INIT_29(256'h8A37883FE2A605A4B32748F484A311A7ABEE542EBF8880F26C5E047462D18E9C),
    .INIT_2A(256'h52F96953B54A4CDA692AD0A9B7328C6A26DCC34AE18164BDFB391AAA3C078C34),
    .INIT_2B(256'h3DB75DADEFFCE8C5C6D5CDCCD8FD526C12A682C9473DF6D4F47778F8766FC914),
    .INIT_2C(256'hDF17EC64C4DC4F10A89107C7CCF3DD23ECDDD30AF1D6F4528B00A34F5EC728B9),
    .INIT_2D(256'h7B872AB592B531720B8A87F36867E58D88F56323AE95C1315ACA1F4E217F415A),
    .INIT_2E(256'h6384F458630D7F49D7427F22A991E76A744BBB366EF65312C07332DB6AA57CE7),
    .INIT_2F(256'hF2FEFE00E3BCF0093E238E9CE10B2A05030F05E0CCD5041C0EEC7B86F92107C3),
    .INIT_30(256'hC8F82A342CC4342FEB93CE102B294219A6B219923C6C2A092208FBE3BAAAD2FB),
    .INIT_31(256'h0100FCF51A1C04EBADC9032535E586B31A3504A9AEF654660FBAAEEF2C552AF5),
    .INIT_32(256'hFAD2AA025A2303001E270EF0E1FC02FC06E6B2B3C30F360BF4E0DCF3031C3418),
    .INIT_33(256'h62E555752B6A19E52629462FF8BC46BB56E9DDF900CFB1CA04FBFBB096E10611),
    .INIT_34(256'hD8D0102229C683ED474FDA637705441B02FD0D352401F7EE01F6DBE30E24E26E),
    .INIT_35(256'h39DABAEC16390DB881C000FE00FAD6BEE5040800FAEF010FFE02FD0C2617DDD7),
    .INIT_36(256'h2B6D3500F0C9E61CD8C1F4F403EFE601FE00F7C39EDA08416520D8A9C6155963),
    .INIT_37(256'hFC03FB1A421AF602FC090AF9DCE002FEF6C49C5EA10C530642ACF63873E88BAD),
    .INIT_38(256'h8FDF10301BFD02F6033929F2D6D02A0F8A77AE3F7409A2A80A45E27CC1EF1D29),
    .INIT_39(256'hB6165B5D54C534C0163729BD49F86F37A379B8695EDF855521CC9813BE8AB25C),
    .INIT_3A(256'h9F5F2AE3C7D2211FD4452B09FF0108322F1CBC8CA81E632D8D109A35804CC879),
    .INIT_3B(256'h8C57CF24486F6321A283DC687FB7CE17473EF099C1040F3018E4AA588F27100A),
    .INIT_3C(256'h6E46BD261A02B12725CE8EE06FA562D36F5607E4DC07FB02FE166140B8275B00),
    .INIT_3D(256'hB1D604FD01E895A61C2511C692C9FF4F40F0A0ACFD185E2FFBF3BDDB167176F8),
    .INIT_3E(256'h2D8F683CFBBA429E5E761BD6CBDFF4F8F6FB060C06FD1E3A3716F5EE0B382AEF),
    .INIT_3F(256'hFC1ADEB2F3FE252A5C8A15F23FF60520C1745C8B8C1082A69676701B2BB44EA4),
    .INIT_40(256'h0AFF1D3BEEA2A5E303FEDDB9E702FE01DDB6D4F90706FE01FE01D3C1F5FD130C),
    .INIT_41(256'hC12AFCE2F62D51018AC655B1508A219E48572C866AB9E0FC0B3C1FE7F4306B42),
    .INIT_42(256'h9F3BB86148CEA7BE3BA96EE03F5FE385991E78842570A0FD15E6A35C663E139C),
    .INIT_43(256'h4DBE68C80B71458832A8AFB972D3083624A438D1798BF01F360F7821B9B4D22E),
    .INIT_44(256'hE4E700FE0D04FFFFC8BAF101FF1B1B03CCC3F4F1DAEFF207591DFCE7A1D7235C),
    .INIT_45(256'hDEFC0ABEA8E83D6442F8E4F804FCFAFE00FFFAFC00E4D7D4DBE9D4E2FE0E2112),
    .INIT_46(256'hCBF3FF05080100FF021D15FF01FEF2DAC4ED03FBCBC5F6D9F71203F6E9E51023),
    .INIT_47(256'h3D12CF8B0E6102E2F602FE01FCCCAEED0C00D9C8E3EC0C08FACA99EA42470CC1),
    .INIT_48(256'h3D930A19C1B40C3D0F9EB209E7045FE52810F906EF5FDD33F4ACB6430AACCB1E),
    .INIT_49(256'h101E0D0818F8CEEC0E4835F79BA1F618320AD9A3B5D8EFD9D6053A5806D7C1FE),
    .INIT_4A(256'h99F23278108C52A31D330403F919C68BFB8B2B802C30C8C6EA01FEFFEECFE9FB),
    .INIT_4B(256'h06F807F8FE8155E15A4B0F75EDC8529742C9769A97994267068F2F8E3200F790),
    .INIT_4C(256'h1E44E5F802FF1D3E0BFDFED4BB1DF57EF12DE2ACF4FF072D08D1A5EB0C220DF8),
    .INIT_4D(256'hECFF04F6160EF3E0023BFBA68EBE358F4DC3A4C1EE2D11DA8770076624FDAB61),
    .INIT_4E(256'hEEC3D3FA1E14EFEBEFF9FEF7FA0204020402F5D8BFD0ECF5F8FEFDFFFF02FEF2),
    .INIT_4F(256'hA75DE99BDB3B891C20E08B91FA8C92B3EF0C1A28BB780AEF184B50EA6E227B55),
    .INIT_50(256'h27DFB2DF261C05F9F4F9311A8C3EAA2443099A5F71C027602AE5959D1CA9CE5F),
    .INIT_51(256'h4CA4298C3DC49ADC4C7B4EE0E31D1E08FFF6F7FEDCD0AD72C8110FC46DAB1858),
    .INIT_52(256'h0FBA84C3447C31E9ADC70806F6E8E82F6B2CF9F4F40908FF09EDB9A4D911D360),
    .INIT_53(256'h4D25F2B54A62AA8FEAF3EFF01111D6CC18658750F2A06679C714341CB98D0C43),
    .INIT_54(256'h89995A10E484B7F9EC8B57FEE20C01D596C20C05AD79B6003C55016A93561D1F),
    .INIT_55(256'hE0C996CD2501EF2F18CBDB0B4931F4152614EBB499A5D52425B9797FC55C7A13),
    .INIT_56(256'hA89E74D95826710C71EC504DE1BDD723615D4E3107FA040B0F0EF3BA909BC8E0),
    .INIT_57(256'hE52D2300F2D3D9DDCDE7223C11B7CE302F0CD7C7F35E9144EC72C1462919C180),
    .INIT_58(256'hE5FCCA6F425204C4E1EAD7E6151AF2FC133528D8BCDBEB2D2FD699B1F9FAD6BE),
    .INIT_59(256'hA98B04BDCABEDAAF8951754E10FEBD8EBEFD5257E1525AC72B602CD9C54B9F93),
    .INIT_5A(256'hE3F2DDD8D5E003100314342E05ED04448D3DAB4A65CD207F597EDF11CB92D36E),
    .INIT_5B(256'hDCD0986B96C80BEC635CD050814EE9C8ED295B36365A38EBCCEE1206AE505DAC),
    .INIT_5C(256'hEFF1173510CE778ECF6294F6672CAD21686001C8BB176E4602A9B33923FA1C02),
    .INIT_5D(256'h96687BC2FFD78A70ADF4FCFF1069AD7D1BDDD6F6040104DAAD99DD06F3D2ADD0),
    .INIT_5E(256'h218D84B2D9F8070206CAC600D0AB9495EF100D04DFFD1C163C51535C1FFB02D8),
    .INIT_5F(256'hEB05221DFC00070D0C0E24261EF7AC81AFFF1EF8A8B8CFE73C14EFF8F23A869D),
    .INIT_60(256'hC206C26E5297A8152D7E6782571B3FB3E782D62AA07EBDC9B6CBCBE3000EAC95),
    .INIT_61(256'h952D9F76F132E8ADA4E74BF1BB183257672EE5BFB0F373A548A8A6ECE8C1481E),
    .INIT_62(256'h7667A2FA0D0C0D125C9078683F0BFF01F6F1DACEDCDDD9997EC6DCB5A6A3CD61),
    .INIT_63(256'hF4F0EDB19BC7EEF8EFAE95D5101C00F7F9FE86E06A29312E32E6697F9799D4AF),
    .INIT_64(256'hB2ACF6255B1EDBD7ACA9DBEEC690BED9EE03F7F80B11153E503B05DFC0E3F8F0),
    .INIT_65(256'hFAF800050C08113B4D3910051E1AD7BEA19AF80ACDBEBAB9D7DED4A8CE19251F),
    .INIT_66(256'h2A2BE3A8BFC4C716272821C6E35D7849CB73E26D61D85168C4E6DAA791CA090A),
    .INIT_67(256'h7B7D8E832CDFC4E9F1DFDADE050CE4937FB5ED0BF1FD4A655D25B5ABBDD02530),
    .INIT_68(256'hE0C5B8DCD5FB2A3A747424225D6334DFBBAEB5CEDBB918C72FC43327E1FA274E),
    .INIT_69(256'hD91627D5A8A9B3EA22371FD4C50E465918AD91C30E272C07BCA0B2BFC7E7E4D3),
    .INIT_6A(256'h857914B9C40912C9CE18DBA2A9C110E6938EBBF4F6F2F7E8E8133428C6A1D2D5),
    .INIT_6B(256'hCEB50FB7A534C0ABE31912B1245FF71119F6767F135757F2A0C250A91DA5A107),
    .INIT_6C(256'hFF01F0BA796DCD11E4CB174566067D91CF0A18FBDC2A4714EBC9ED050507F5C5),
    .INIT_6D(256'h011B26FAE0DBC0FAD59F82BACF8CCDBFF43E1EFD04F7306F6D62D8CA01FE01FF),
    .INIT_6E(256'h1B09CFDA0BFC02FE000813F0ED0001E08BB30A0CF6E5EEEDA2BDFE225C0D0E23),
    .INIT_6F(256'hFFEFADA3ED9179EEB6CEF3546501D0C1001113F5A3787FAD2F3AF0B9A0E01A3C),
    .INIT_70(256'h7DF116FAF59BA147803EDBDD1AA9E432554639CB6BD19CD3FF1F38BB799DDC00),
    .INIT_71(256'hAEF2FE02E9CE1E27C8FCFCACF820175D350314D4D403FD01FF00FF0000EB8939),
    .INIT_72(256'h95817335E2EE117860AB4AA606FFC34D66D40C19C0C70130631F0B240E03D790),
    .INIT_73(256'hA889DB32792E05AAA869FECA128088DEE73C2DD8CABCE607C3B7D2C8B1748D19),
    .INIT_74(256'hCCC6EC01F1B5CD08ECF0364B1A10D0B20116FC0E23093C3FC7CDDFB3D7022533),
    .INIT_75(256'h3CC9CAF7FD19FC8F588EEEF90A786331726B24FDE0B708A7A619B6C1064336EE),
    .INIT_76(256'h00FE01EABCDA2438F38B372CB74B2EE8AEB60E5071D3910C45384629CFCC0564),
    .INIT_77(256'h1A321C06F2C7DE1605F0B9B4EA02FFDBCCF7FE1C1A9A9EF2303C2414FB01FFFF),
    .INIT_78(256'h8EAA18381D0AFC03B2B2F8419E56C7B9EDF60FFAE41B16FCD393A23136BDDAFD),
    .INIT_79(256'hF4D2D5B8E6032F521AB9B51B72666B25D33448E49CB1EC03FC02996AD81C4A01),
    .INIT_7A(256'hFFFE8391F86E7B83CAE4B4722FBCD902FC02FE022E1CF8305E25BB7D93A0D52C),
    .INIT_7B(256'h368687F4FC02FB9D4AA91F4013FA0194AB78C76D17AF64C973D54E833DB64711),
    .INIT_7C(256'h0F0E120C8C4B97F31308A36EE621FAD4E2EF0A40710ACA2E738EF290F35C8275),
    .INIT_7D(256'h586467CA4FA9F65C22B3BCF006E9E2DD7A52A7077D66FAB3EA12060EF71F3614),
    .INIT_7E(256'h09FDFF1D71391A3EECC0F60B05F6C8B99E93E11F3D5B19B3ADE9FBF5F9F4FA1B),
    .INIT_7F(256'hADC5134650180C191F37180B0EDF916191F206AA5E4FA0FB0C05A284F0435E46),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000100)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2 
       (.I0(\addra[16] ),
        .I1(addra[12]),
        .I2(addra[13]),
        .I3(ena),
        .I4(\addra[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2 
       (.I0(\addrb[16] ),
        .I1(addrb[12]),
        .I2(addrb[13]),
        .I3(enb),
        .I4(\addrb[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3
   (\doutb[1] ,
    clka,
    clkb,
    \addra[16] ,
    \addrb[16] ,
    enb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]\doutb[1] ;
  input clka;
  input clkb;
  input \addra[16] ;
  input \addrb[16] ;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]\doutb[1] ;
  wire enb;
  wire [0:0]wea;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

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
    .INIT_00(256'h4DDFA5AD3C3280B97366EB28CA382F9D285B313602178FCEE31B9A3ADFE37266),
    .INIT_01(256'h10FE7BAD2666409C3912A18F2D75BD2361D6A443AA3B21A649E39EA21558CA9D),
    .INIT_02(256'hEEF0644DAAB6CEAC411560AF6AC068CCB022F3FB6D5059BB7623CFDB849E6DDD),
    .INIT_03(256'hBBCC3DF03E80DDD280BD5B28439D0C420564E15C8B4A536A77DA09EFE96A47D8),
    .INIT_04(256'hDD4FF66221A3BF6754DEC98565BB21A3FCD5775889E26DB10EB00F034CF5A4B2),
    .INIT_05(256'hBB63394E56E4DAFB3ACC8E8C6B31020A154E560AFAC89C23B3734EE1F79B6F86),
    .INIT_06(256'h3F4BAEC39A7A4F7B14F000ED3C1361508A679DD7C649593B44BCE4EBDBA39E7F),
    .INIT_07(256'hD6343A715BCFBFE54C0DEF608007DAEBE24BBC08B06F9159B75DC57F8AE6C9A9),
    .INIT_08(256'h6DCB423849A75CB9B4DD15A99D2D7B2DE3929B7A6CA3A3ECC15B817D444DBCC3),
    .INIT_09(256'h41A7A828F99027513E1A6FF9B78B83E556FEF15B75AD1EDF0DC6515A8E6968E3),
    .INIT_0A(256'h9496CA73BC682AB4E7FCD3CFA573E62C4527228B34BE3B9F32CFBE55AB9D5719),
    .INIT_0B(256'h21401B651CB4BA820687F8F2D62D055C20651B1195490A2269A3BA8E75B72EBA),
    .INIT_0C(256'hA293FEF400A9C2D0E29233AC9F7D06AD91A0674A940DF35A3179E34B83E345D6),
    .INIT_0D(256'hA1EB12AE5DE19358400DE570C74F8211165CA665380BE2F40E79DD555BDC68AC),
    .INIT_0E(256'h3E61CFAAB0D65A9BD605628F55059630295478292413C103B0C4A0B6CD17045D),
    .INIT_0F(256'h3CB0655BAF3F61D93D12435756E4C145A2F492FA8D1983EE7DB87BEDE8BF8E01),
    .INIT_10(256'hB8526559FE720263899079DB454D935A7DB65D559E1AF53C2310CE339D5129D6),
    .INIT_11(256'h344479B2E50CE844E5D937991FAB8B40E5A469D8439B798A0850897728E2138A),
    .INIT_12(256'h04C06EBF8696E214F961DAE73A94F2F868C4E16E0012BEAE2495F8F879E39691),
    .INIT_13(256'hB33DDA82E69EDE14A49DD58A9004A52F96ADE49D44266665769278BD3C933450),
    .INIT_14(256'h55247A55CE1E5AFFBE8998E94B3591FAFFD3BDA0602AFCA2C22840F087C2AA15),
    .INIT_15(256'hBCE97FB6C18D4290BEF1273E56D196608AAFB3A2CB0E805AF872A710A7A31700),
    .INIT_16(256'h8385B0F8313FCEA9849AA33503807364ABF3F4CD37154EA1D4B37CE59268B38B),
    .INIT_17(256'h3C345719ADA25AC696E5D49E30BDE342EFDD8E58161686A1A384C30C79CC8014),
    .INIT_18(256'h2BFAE220F7D6046BFFA4053942FD4294AA875166DACE48CA71EAF17D8FAEF4AF),
    .INIT_19(256'h463C51A3F8A79A7FB2C3BE5301441995F916771D01194102677737A7396D68FA),
    .INIT_1A(256'h79A00EE4C38DF3B919C2FD66D88FDDF090B04B43DB70F694B2DED705CD394EFD),
    .INIT_1B(256'hB6732617D5DE85D294E02B4C2ADE89C150B7FFE85227B4A97F5386F7733B8FD7),
    .INIT_1C(256'hB8394764C2CC41747A1E85506AAAB11D05D028CCFEF4EBACAE8555ED3F7803F5),
    .INIT_1D(256'hCAD908F9F57D43A4731CD70129A848440EEFD7353A180D1B1269E0BFA51CBAD4),
    .INIT_1E(256'hAAD1A590FA00000000000621C35500000000000003327640B9A49131E08F1321),
    .INIT_1F(256'h0000019C6B6CBF9E4CCC999931B26264C651FB265500000000D9AEE46BBFAF5E),
    .INIT_20(256'h521CDB2661B66681000000000000000000000000000000000000000000000000),
    .INIT_21(256'hBFFFFFFFFFFFFFFFFFA6FED0280000000000127C71664C23A780000000033335),
    .INIT_22(256'h06E3D57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9D5485FFE60AFFFFFFACFC50),
    .INIT_23(256'h004000544BCD0A00000000001529F000AADF54C3CBD0C05FFFFFF7E71AF7DAB0),
    .INIT_24(256'hF80000000150055884B34AA00000001A4CF0B0AD799540016421AE6B0B0E5500),
    .INIT_25(256'hD89F085FFFFFFAAA7A77C2FFFFFFFFFFFFFFFFFF5799332CBD5FFFFFFFFFFFFF),
    .INIT_26(256'hF38E1000000000000000000000168310118BC000000000058BFD55A0F924E2A7),
    .INIT_27(256'h7503210B558BB718F1A2833BE676BF321D2EE0ABF1FC3E2F480C9276A3AA9751),
    .INIT_28(256'h3DDCF32CAA05DCE7E424A26A1E341E20E7BEE7EF6CAB4F94696912C8EA0DC5CA),
    .INIT_29(256'h8C786BF089F4A07C74576C01B312D0E0CB9F20EFF2D740DFA2BCAE8FACFF11CF),
    .INIT_2A(256'h05BE9E45C80E5E6982BC5A1B88BF9348D591DC32ADD1CA2C36831F4E4AF44468),
    .INIT_2B(256'h351FBCAE54CD1B5E52DB76DBC589C01D92C9562F31CAC74380DF491941640DCD),
    .INIT_2C(256'h679C137496226117A7AD3E5B5848613DC3EF91ACA6D211933CDE91DA2C30F349),
    .INIT_2D(256'h0CEC39D36189268882071DFC7D70686DC2E40676031084F21208AD390EA223DF),
    .INIT_2E(256'h38C0B4561CE531367D060AE558A87839F61111F959191980CE63EEF56EC03581),
    .INIT_2F(256'h906AED959C2E15589F98B330D469C62FF5885AA3A3D117732C272DC223E3A8B1),
    .INIT_30(256'hCC69C3B8B286FEEC8CE25B0FF19368C394D8941C59603DC4B46651289C6543CC),
    .INIT_31(256'h9E4918C3CD0986B8F906793DBB743325071536F20091EF133FE80651493E6DFD),
    .INIT_32(256'h73E4A3E25837797A1C12CDDE3A1C790C26D3D8FC16F2E086D04DBBA1BB1C23AD),
    .INIT_33(256'hF9CAE192FB1B7B9FD07234259006E1F9F97640F30D674E854311ECFAB410C389),
    .INIT_34(256'h2B55EEA7C07CEFB1B402368340E9C8E330CBDBCFD94268688976950A158720FD),
    .INIT_35(256'h4B6257F7D712E5534D18EABB12D74A23011D3C7E2C0255195BB1F2DD63AC56E9),
    .INIT_36(256'h5EC564A1765A4C417E459AFF1186F315BB813744C763DA270F7FF024527B1406),
    .INIT_37(256'h870C960937E24BE55C3293DA9736A170AE84BA1B6779F6D4F3716DAA5DA33B3F),
    .INIT_38(256'h05E8BE6B29261AF0EFCB3CBA07A353FE6855AB04FAC0D7252C6CC340BEAD1086),
    .INIT_39(256'hC55E0509E6711AE6CD203C67F9E0310777AB8AA58EFE09EB5C635B019FCA6C36),
    .INIT_3A(256'h94A3E2B5C3213889BEB85677381DB057A58CDB6BCD6F050BE91C9CE17B02915E),
    .INIT_3B(256'h17FE91F17B8651AE12B2483EE83787DF152834143566168B1408C7BF830ABB4E),
    .INIT_3C(256'h9D6AADEDA01C3CB158EDE7379DCB4B180E0F1E9208B57030127C6D276B641919),
    .INIT_3D(256'h68910188E56FC7CC5A075E9443B46A98548176B02FB8DB5EB78F7B6AAF868868),
    .INIT_3E(256'hFB1630F6767463F9F80478EB33B1C60F0CD8427343720797699FE31CA632A57E),
    .INIT_3F(256'hF8B14E465954A1AF8D590F085D11E60801E12070BD2FC086FCA534B6482F0242),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:1],\doutb[1] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\addra[16] ),
        .ENBWREN(\addrb[16] ),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized30
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1_n_0 ;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h1FFDE70FFF38E7CE7EF8878F3F280C61BFFC03CFFE1471CF7CE063FF313F9F71),
    .INITP_01(256'hC3C7FF01C7F036E1DAFF73E0FDEF0C51E3E7873C3F3FD47801EFE203CFE0458A),
    .INITP_02(256'h1EFFE3971E7C583CC703FF833FE83FC987F0FCF1C71E38E3C61FF0E04FE7E73F),
    .INITP_03(256'h18E3863C7E8786FFBE38E3C7AFB9F50E0FEE319E01F1B86F8E1CEEF9F3FFE3CE),
    .INITP_04(256'hDF39C2675D51E34E1C79E39C95EF7AB0C3871C3D53C8E707BCE1F79E31CE2BCE),
    .INITP_05(256'h1C7CF3E7FFFFFF007FFFE38FFE08679E71CF39FF3CE5D3E5CC975F5538FFB8F1),
    .INITP_06(256'h71CFB8838FFCF8E31F9F7DE671CF718E7BE39E78E38EE678E431F1E3C38E1C7D),
    .INITP_07(256'hFF00F0C73F831FFCE30E79F9F5C1C71E3C7FFC73DC63BFFFFF1CE38F1E7FFF18),
    .INITP_08(256'h1CDE60F1FF1F8F1FE073C638EF870C7FFFE066BF7FFFFC3FF9A78E348F7F0C3C),
    .INITP_09(256'h3DE1CF3E7DA31E7C7161C60E7C38BA3CF29FBE59C63E70E3CD1C3967FCF39F1F),
    .INITP_0A(256'h3FF98EFBFB8E78E9CD7FC628F3F9F3DF3E18A6FE71C0F7FF831FF00E79C718C7),
    .INITP_0B(256'hFFFE3C71EF827EFFCE73EFF3C7B9CF5C71E5CFFE33BCF318FE3CE2E3FBBBDC6E),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFF9CFFFFFFFC7F1FBFFFFF7FE9707BC7FFFC7BFF3),
    .INITP_0D(256'hFFFFEFFFFFFFFFFF078FFFFC37FFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'h581DA8DC156200B50030FDC8C9E5EFD1D42236EBDDFFF4EE01B49FEF0F2822EA),
    .INIT_01(256'h0BBDA9B9DEF40D09FCF4FE343413131006F3F3041E1EEDBD5F8CE0EEE3B29BAF),
    .INIT_02(256'hCBE8B997DEFCE70341C09A81DB6087E3B1A531BB9AE942BF40F16E11B75E6DE8),
    .INIT_03(256'hEC1CE2B88690EEC7989090C9C8B7092A1A343E44776FF2C2C3E23304CE9176BD),
    .INIT_04(256'h0005D6C8F1B399E70D2258E54715C95A02050803E7F81F1501E5DB1B4E6452F7),
    .INIT_05(256'h0DEFE2DBDCD8FB1AD4A8D1DFEB2F6329F6091F3D26FDF7E3EA123945EC87B2EA),
    .INIT_06(256'hF2F7EDFACB9EC8F63021DFC8D4499A1C7058EE3D26E1CAF0F6FB0003EFEAF10C),
    .INIT_07(256'hD48E0AA3E1DB8CCEEE778FE593A319F8C4BED94A59E8AAC1182B0D00F6F7F4F6),
    .INIT_08(256'hA7CC3537EAB9A3DFF7DAFB333438508C423A75CA2308CEC7A748E8B660DF0D11),
    .INIT_09(256'h153A2938665D27DBAA73B604B4BBD58284B2BD023902F03827605B258639D2C6),
    .INIT_0A(256'h78296763D7F0F2F40406F4D8BFE8F5DAACC001F700EE01351CCF7FABE51A4519),
    .INIT_0B(256'hC6EAFF131501D28EA0EBFF0B0AD9BFC1EA002C5B21FCF8E00B20F9F3BDDE4E65),
    .INIT_0C(256'hFAF0F0F3FAF801FBD9CFDD0DF9D8D6F455A0BA44E8E71254207DF25307390BC9),
    .INIT_0D(256'h3DB629ECDA03F703CDB4F2F6DBC7D6F910E488AE1D21FDF6FBF6F11118060906),
    .INIT_0E(256'hC1CB063D04C1DCF1C2A4AEE107020336A5619422E54EEF1DFADDD448E67A35CE),
    .INIT_0F(256'hE3FB213C3715F3D7E1FE040311FAA08587A8C7A4BDDDC3E12A482806264126E3),
    .INIT_10(256'h10F1090B9999D4D9C7597D2141D79079B0E2F9350BC3A1D8615AFAEDE8EADBCA),
    .INIT_11(256'h81DD64AB26B3DC38618C1EB4A8A0B8F9C0707E5D04A29639CECFFE080731372E),
    .INIT_12(256'hB3E433551DBCB0E1439170EC8297CD868703BA75D04B8044CE82A0307B086526),
    .INIT_13(256'hBD090A0E10B6A5F4FFD4AEFF4815010FFBF4CDB0AEEF3709D6C6D6F60C2302BD),
    .INIT_14(256'h120DF4F5E9EDE9E9E7D6EC00FC133C4A6D2489606CD0FCF7BECF764AFF390D9C),
    .INIT_15(256'hD9FC568D83C95AAF1A14091B2313CA9182BEF3F5F6E8D0E7F90855521502F1EC),
    .INIT_16(256'hBD8502AFA4C9FA373ADA736B8AD923443E67E752FECEA1143D37F9C8B0E00E1A),
    .INIT_17(256'h8F6A1DF98F72F836C8949CCCF2F7D882625DDF665817D4BBFF66D906076565EC),
    .INIT_18(256'hCBC0E6FD0D16FEF9F8F7E6DFF2F9F5BC8276E030576EFACFD4FD411CA680B90F),
    .INIT_19(256'hE4335215897DDF2670792ECE7FC82708EDEAF20FF8CCE401FED3C4CCE4181FFF),
    .INIT_1A(256'h0F112E1A114045E4853720E97C500B8ACA3ED3B1FE14355F09C7FA04F0E2CBBA),
    .INIT_1B(256'h2E1E3103A48A99A9D3FCFE01FAD6E6081102DEEF20150CF7FB300CD1BAD4F108),
    .INIT_1C(256'hF704FB05EE82B1F7FA02F1F4FE1D00C8C8B9CBF702FE01FF235E5501A0C0FF21),
    .INIT_1D(256'hF503F9E3B6B9F9637C19F2D1C4406412C388E6285A6AF1D68F9249741AD4BEDF),
    .INIT_1E(256'h02929CE8FFFFFF00FE0A524E1FF89DA7F3072A2602F8FE00FEEFD5FAF9C3B1C6),
    .INIT_1F(256'h356F1F47651D4833EA6976077049D18BD002388500756C006C0FF6982498446F),
    .INIT_20(256'h870DF3C31CE68CD6B1C10058D6158D172D0AFB03FF14F4BDD1E80A49FEBED504),
    .INIT_21(256'hC60ED59BA0D95626C9BDED08353205FDFFD3B8F406F0C0A8BA1327C5BEACCD82),
    .INIT_22(256'h01FE01FD0923EF8B6AE61909F6152811CD399A2746FEDAFF0D120A2300EFFEDC),
    .INIT_23(256'hA8900659743ADE729018556109C089B21555178414452D572F03D2F1F8F400FF),
    .INIT_24(256'hFF0000FE02FB07D6B4F7FB05DBA6D1ED04E8AFA2D801FE02FD04F2F00543590F),
    .INIT_25(256'h835532C98CCD121205C76890D7090FE1ABBEF840571BF7D4E10001E5A5E05538),
    .INIT_26(256'h01FC06CA93D901FD03FC04F91D2D18CC8BB7F8434A0F889507FB142DAB56B040),
    .INIT_27(256'hB6E80CF3F4EEB3D20003DFCAE63F5BB08CCB14470D04FA263BC5C50004CDA2E7),
    .INIT_28(256'h384B9A6BD6103B34B483A2B2EBFFFCEFF909F7F2F41B3A18FFF2D0DE0D0603DF),
    .INIT_29(256'hCED84348BFCB1B15FE0001FC06BF9CE901FC06C3A8D3CCED01FE01FD02FC04F9),
    .INIT_2A(256'h8865FAAAB9F9375CF4C5EA0000FE02E8C4E103FE0001E8E1FCF9EA171FFB02F1),
    .INIT_2B(256'h2ADABAE363CB1C6B4EB89078F6CAC6EE0505F7E8FB090BCD84B3DBE7D2A8A6FD),
    .INIT_2C(256'hFDFEDBBBC6C4E1051626130CF80E707A3598A85848F1CED1E34816541A31F373),
    .INIT_2D(256'h0CFEF7F8F6FBFFF2DACECDC8DBD2B7DBF1EDF3021D10F3EFED033724F5F2EEF9),
    .INIT_2E(256'hF7F9F6F2F6F8F4F1F6F7F6F2F1F7F9F7F5F8FAFDFDF9F7FF0907050606172C1F),
    .INIT_2F(256'h0B565AF3A3EE3A6D209094D3E7FE2E43DF7676BD1E1AFFF1E1F3FF0B07F7EBEF),
    .INIT_30(256'hD2F8386380048159D6187387A246720B5F4F165C16A3375204A62761F4F803E7),
    .INIT_31(256'hFB7D8D0006E11E473323E4D7051213FBD4A976B3060B01C49BBFED051A26FCEB),
    .INIT_32(256'hD2B5B8048428A7BDFD48540CA593F82EDD9FFF3D11B2B70406FDDDD9D5051D17),
    .INIT_33(256'h02DFCFD2F30EEDC4D6DEE81C2608C8B3F3222AED9477E74401DBE1B3A3205A1C),
    .INIT_34(256'h1AF7D8FF261305A27AE01A1EFEC8BEF70FE6C6E2256142FCF3052429DBBCF916),
    .INIT_35(256'h013A34FFF0F1D5B6E73B49F5552CAAFF06FDF8DFE3F90CFEE0D9DC2E04BEF618),
    .INIT_36(256'hF3174D1D8E99EEF9F8F8F6F5D1CD0318F3BC9FABEA353206A929C38D9E4ACFCE),
    .INIT_37(256'h26D0D8EF0A0E0BC476B54631C6E7F0CFEC22F7CCD5043402EE082727180DF8EC),
    .INIT_38(256'h073416F2F2F2F3060FFBEEEFEEEEF1F2F7F8F8F6EAD0CBD90B2E02F3F9145A7E),
    .INIT_39(256'hFEFFFEFFF7BBADB10B7178BC42E04159C12467175332E981E64B3C0FF6F4F3F3),
    .INIT_3A(256'hE4F801EF9C9C0D5730EEE7106767FEC4EE05F8F5F6F3F6E68F83CBFAFFFFFEFF),
    .INIT_3B(256'h4715ECC7A1B60D4920D3CEFAFDFEFEFEFEFEFBE1E0E7365533DD60B63E52FABB),
    .INIT_3C(256'hE7CECFFD18FA07E6B1F509012C3724DB7694229049C4657C26B46ACD5A08E288),
    .INIT_3D(256'hFFFBFF0C2D25FFF00A3D4627F6D2D70A1EEEE8C9C30507E7EDEFBDCBF70103F1),
    .INIT_3E(256'h0405F9FCF6FFE9C6D41B4824181CD9AC144115D7B8B3C5F7F2E4BDBBD2EE0D08),
    .INIT_3F(256'hD4A2CAF5FCF3D7E1070B0E0C0D112B20F4FBE7DF020D2519E5D50C250CF8D5DF),
    .INIT_40(256'hFE194725D3B5ABE319EFFBCA89CBE7E200040F14DCD6030B171FEAA5D3FF243A),
    .INIT_41(256'hE8C59C99E4A16F9C1DA285FA99E19C42A6417E349C46A3386D59EBDD02FE0100),
    .INIT_42(256'h11FDE5CFD9F0F0EFECF5F8F9F8F9F8F9F8F9F9E9BED80A001507E2E5E4E3E5E1),
    .INIT_43(256'hDCF9F4F7F7DCB5D9FEF2FD080B0526370AD6DA0808FFFF00FE08FFE7C8BECAE6),
    .INIT_44(256'hD6AEDC03F6EED9B8E7100A1000FDD2D315201E15AA9E020E07FBFCFDFCFDF2D4),
    .INIT_45(256'hE1DFF90C1D080A342EEC99CD2E22F5C4A4DB120613D0C1325C3AE5BFD71C3E12),
    .INIT_46(256'hB783D9FEFDF3E4F6223303FAF6F9F8F6FB16B277BA926EC33A2601DFB3DDFCF0),
    .INIT_47(256'h416518CBB0CE181FE2E905FFF9F8F90514FEF2061C153452EB4F32A31C9D68F7),
    .INIT_48(256'hF7FFFCF9F9F90107FDD5BBE00502F4F2F10016FFDEE7D8DC16250EFDD7C1D7F2),
    .INIT_49(256'h6AF2829CDE27DE5748664EA04D7F1CD0C7264174F81919FD01F9F90809FBF5F3),
    .INIT_4A(256'h87D32B2305EEF5012E21F7E5C1C8E496D7902DDB19736209DC66B962C07EB067),
    .INIT_4B(256'hE6C2CBF11311FB02FE0000DEE3F4D8D3F400EECFB2D5FF0B09FD01FFFF180EC2),
    .INIT_4C(256'h5CEED3EBF6FB00000A06D3C6F1103518FA03E1C6E805FC2B360FF2D8C5ED321A),
    .INIT_4D(256'h12A49AE395DD738EF335D3537441068B6DE2305E21B3E1051E7B7E1C6B3ED366),
    .INIT_4E(256'h15CFB3D8F0F701C2E605FC032712E1F8225340B14F8FF04A22F4CF4153DD8BC5),
    .INIT_4F(256'h3613B19BBBF500FFDA9BBC030F1D06CED5FA2C18FFEBD7F40D01F2CDC1EFF628),
    .INIT_50(256'h55EABFC2FDBA3CAB439B67A82D6050993D6100C0E023301EBCD742602CB4B4F9),
    .INIT_51(256'hFA1A06012307E0E912433BEBA3BCF6FFDBAC82BA2C500B010146761EF07FD650),
    .INIT_52(256'h46BB2C6B3ABC3D9CB0F2040A23060006F9F2EBF902FACFBFF5FDD5EDFAFDFFE4),
    .INIT_53(256'h2106FEFDCBF9FB0D4C7124719812851923BCD5FD228DE604FEFEE2D7D3ABFA61),
    .INIT_54(256'hFAF2D2FD1118F8C5E6E8D1D3FE3301C2D7FCFFF60C0DFCFBF9FD0DFCE3D4C8F9),
    .INIT_55(256'hB9FA3631FBFA03FC03F6C6BCF7CC92DFF7C1004209FFFE082E0AFC00E908390D),
    .INIT_56(256'hF4FCF1FFFD03F1B4BD0D5719D2D7FA221AFEA390F02A3F29CA9BF210ED083FFD),
    .INIT_57(256'h383BF19EC4F7FBECDBDFFCFAE82208CFF801031DF8D2F100FFFCDED7FB00FFFE),
    .INIT_58(256'hFCF8D3F5FD00E7D6FF13FBEBFC01F8DFFEFD05E26CC7340D01F9EA0CF6CAEB1C),
    .INIT_59(256'hFBFEF6EFDECDF604080FF8D1BDE90121E6AFF81C1E06FB01CDB5FC303102D9D6),
    .INIT_5A(256'h1006F1E21527F6F6F50FF6C6F5FC1F24CBB0ECFA0B21DEE300343BD7DB162811),
    .INIT_5B(256'h09BEB0EB14211EE8C8F4FA1C06C520ECBBFD0409E5B197BAF2FFFFF9D6D3FF13),
    .INIT_5C(256'hFBFC010002FCF7F5FB04F8D4E40A08FCCEE01518FED8C7DA02F705C893F3232C),
    .INIT_5D(256'hD4ED5227CDDFC03570CFB5ED0B0DFCDCD4CEE408F9E1DED8B6D1EFF70F07F1F2),
    .INIT_5E(256'h589CED13FBE8D8D8F6020B091108F60313FEDAC8B5CFFE02F0D2D2D8E0ECE8EB),
    .INIT_5F(256'hE8F4F7FCF8F5F4F3EFE8E5D3E0F2F7102908E2E6DFF8213316CA97D5322D0297),
    .INIT_60(256'hE7F2F1F9FDF4EAEBEFF7020B01F4F1EFF702F5E7EADCE8FFF8F5F9FC0703DACF),
    .INIT_61(256'hFF0000FF01EEDAED0106030406FFFCFCFB00FFF3EBF3030A08FBEFEDEEF2F6E7),
    .INIT_62(256'hF4F6F5F2EFF6FFF8F1F4F4F9FEF9F6F6E8D2DDF400FCF4F6F2F7FCFBFCF7FB00),
    .INIT_63(256'hDFF6FCF6EEEAF5FDFCFC050C0DFEECF5FFFDFAFA021004F7F9F7F4E8F303FAF2),
    .INIT_64(256'hF8F9FAFAF90100F8F8F90202F8F7F2F1F4F6F7F4EEEAF5FCFBF2E9EDEEE4D0CB),
    .INIT_65(256'hF7F8F8F8F8F9F8F9F9F8F9FCFAF7F7F7F5F7F8F8F8F7F7F6F6F3F2F6FCFBF9F9),
    .INIT_66(256'hF8F8F8F8F9F8F9F9FAF9F9FCFFF9F4F7FAFBFDFAF9FCFEFDFAF8F8F8F8F7F6F5),
    .INIT_67(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9F8F8F7F7F5F7),
    .INIT_68(256'hF8F7F6F5F7F9F8F8F8F9F9F9F9F8F8F8F7F3F0F6F8F7F4F7F9F8F6F2F7FAF4F5),
    .INIT_69(256'hF5FBFAF7FEFEFAF9F9F8FAF9F9F9F8FCF9FDFFF9F7F8FBF9F8F9F8F9F8F8F8F8),
    .INIT_6A(256'hF2F3F8F8F8F8F8F9F9F9FAFAF8F9FEFFFAF8F8F7F5F2F7F9F8F1F0F8F9F9F8F6),
    .INIT_6B(256'hF8F8F8F8F8F8F8FAFAFBFCFAF8F9F8F8F9F8F8F9F8F9F9F9F9F8F5F1F6F9F9F6),
    .INIT_6C(256'h0B07FEFB00FAF8F7F2ECEBECEBF0F7F9F8F8F7FD0606FBF3F5F8F8F9F8F8F8F8),
    .INIT_6D(256'h0000000000FEF8F7FD020202F7E7EEF2EFEBEAEAE9F0F4F8F9FAFAF9F9F9020C),
    .INIT_6E(256'hF8F8F8F5F2F2F6F8F8F8F8F8F8F8F8F8F8F8F8F9F9F8F8F9F9F9F9F8F8F8FAFF),
    .INIT_6F(256'hF8F8F8F8F8F9F8F8F8F8F8F9FAFAF9F9F8F9FE00FDFAF8F8F9FBFBFCF9F8F9F9),
    .INIT_70(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9F9F8F6F7F8F8F8F8F8),
    .INIT_71(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_72(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_73(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_74(256'hF8F8F7F6F6F7F8F7F8F7F8F7F8F7F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_75(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_76(256'hF8F8F7F8F7F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_77(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAFBF8F9F9),
    .INIT_78(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_79(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7F7F7F7F7F7F8F8F8),
    .INIT_7A(256'hF8F7F8F7F8F7F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_7B(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9F7F8F7F8F7F8),
    .INIT_7C(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_7D(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_7E(256'hF8F8F8F8F8F8F8F8F8F8F8F9F9F9F9FBFAF8F9F8F9F9F7F8F7F8F7F8F7F8F7F8),
    .INIT_7F(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000400)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(\addra[16] ),
        .I1(addra[12]),
        .I2(addra[13]),
        .I3(ena),
        .I4(\addra[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1 
       (.I0(\addrb[16] ),
        .I1(addrb[13]),
        .I2(addrb[12]),
        .I3(enb),
        .I4(\addrb[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized31
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0_n_0 ;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'h3C3FFFBFFFE3FFFFFEFC3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'h9F07FFFB873F8787FE3C3DFC7E7C1FFE783FFC3E0FFFE01FF87FFB1FFFE0FBF8),
    .INITP_09(256'h9FF1FDF1FFFBF8E1F0FC71FCE1F1DFFC6FFFFBE1C1E1F9E1E3E1F1FFC07FFE1F),
    .INITP_0A(256'h7C787CE5E3FFFCFFF0FFFFBC78FCF8E1F9C3C7FFF3E071FFFFE1F1C7E187FF07),
    .INITP_0B(256'hC7871F3C70F1A3B98F3F7870F1C7C78E0E3C70E1F39787FFF9F1E187C7CF1F3E),
    .INITP_0C(256'hF86787FFFFCF38F3C38C2CEA41F7CE019F3FF0E70F3CF0E24ED437FF9F3CF8FF),
    .INITP_0D(256'hC38C4CD48FFBFFFC3FFFFFF0EF3C70C48B087DE7E0FFFFFCF867C63C624EE41F),
    .INITP_0E(256'h89F1BF1DE4FF8710F0121E3F1F9EF11E3FF8FCC739F12A1FF9FF80F9CF7FC0FD),
    .INITP_0F(256'h07C3F0481FE7C3FF3BF83C07F07C1F0123F8FFCFFC67CCF81FE1FC7C008F39CF),
    .INIT_00(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_01(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_02(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_03(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_04(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_05(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_06(256'hF8F8F8F8F8F8F8F8F8F8F8F9F8F8F9F8F7F8F7F8F7F8F7F8F7F8F8F8F8F8F8F7),
    .INIT_07(256'hF8F8F8F8F8F8F8F8F8F8F7F7F6F7F8F7F8F7F8F7F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_08(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_09(256'hF7F8F7F8F7F8F7F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_0A(256'hF8F8F9F8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7F6),
    .INIT_0B(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_0C(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_0D(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9FAFBF8F7F6F6F7F8F8F8F8F8F8),
    .INIT_0E(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_0F(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_10(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F8F8F8F8F8F8F8F8),
    .INIT_11(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_12(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F7F7F3F3F5F3F4F2F6F8F7F8F7F8F7F8F8),
    .INIT_13(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_14(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_15(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_16(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_17(256'hF8F8F8F8F8F8F8F8F9F9F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_18(256'hF8F8F8F8F9FAF9FCFFFEFFFBFCFFFBF8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_19(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_1A(256'hF6F6F6F6F6F6F6F3F0F0F3F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_1B(256'hF8F8F8F8F8F8F8F8F8F8F9F8F9F8F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7),
    .INIT_1C(256'hF7F7F7F7F7F7F7F7F7F7F6F6F6F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_1D(256'hF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7),
    .INIT_1E(256'hF7F7F7F7F7F7F6F7F8F7F8F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7),
    .INIT_1F(256'hF8F8F8F8F8F8F8F8F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7),
    .INIT_20(256'h05FEF6F6F7F9F8F8F8F9F9F8F7F8F7F8F8F7F8F7F8F7F8F7F8F8F8F8F8F8F8F8),
    .INIT_21(256'hF7F7F7F7F7F7F7F7F7F7F7F7F7F4F6F8F7F8F8F8F8F8F9F9F9F9F9F9F9F90003),
    .INIT_22(256'hF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7),
    .INIT_23(256'hF8F8F9F9F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6F2F4),
    .INIT_24(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_25(256'hF8F7F6F5F6F5F2F5F7F7F8F7F8F7F8F7F8F7F8F8F7F8F7F8F7F8F7F8F8F8F8F8),
    .INIT_26(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F7F7F7F7F7F7F7F7F7F7F7F8F7),
    .INIT_27(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_28(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_29(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_2A(256'hF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6F2F5F8F7F8F7F8F7F8F7F8F8),
    .INIT_2B(256'hF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7),
    .INIT_2C(256'hF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7),
    .INIT_2D(256'hF8F8F8F8F8F9F9F9FAFCF9F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7),
    .INIT_2E(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_2F(256'hF7F7F6F3F1F0F1F0F1F1F3F6F6F6F6F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_30(256'hF8F8FAFAF8F8F8F8F8F9F9F9F9FBFDF9FBFEFCF9F7F8F7F8F7F8F7F7F7F7F7F7),
    .INIT_31(256'hF8F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_32(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9),
    .INIT_33(256'hF3F7F7F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_34(256'hF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6F7F7F6F6F2F3F3),
    .INIT_35(256'hF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7),
    .INIT_36(256'hF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7),
    .INIT_37(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7),
    .INIT_38(256'hF9FBF9F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9F8F9FAFBFAF9F6F3F6F7F3F5F5F7),
    .INIT_39(256'hF9F8F8F8F8F8F6F7F8F8F8F8F8F8F8F8F8F8F8F9F9F8F9F9FBFBF9FAFBFAF8F9),
    .INIT_3A(256'hF9F9F9F8F6F2F2F4F7F8F8F8F8F8F8F8F8F8F8F8F9F9F9F9F9F7F3F5F8F8F8F8),
    .INIT_3B(256'hF9FAFAF9F7F2F1F4F7F8F8F8F8F8F8F8F8F8F8F8F8F8F9F9F8F8FDFFFFFEFAF8),
    .INIT_3C(256'hF7F9FAF9F8F8F8F9F9FAF9F9F5F3F7F8F7F7F7F1EBEAEAF2F8F9F9F9F9F9F8F9),
    .INIT_3D(256'hF9F7F2F2F6FAFE00FFFEFBFAF8F800060600FDF9F8FAFF0401FFFAF7F2EAE9F0),
    .INIT_3E(256'hF3F2F2F7F6F1F2F3F7FAFF040501FEF7F1F2F1F2F1F1F2F8FBF9F9FEFDFAFAF9),
    .INIT_3F(256'h3C12DB9FC1EC00141409FCFAF8F9FAFAF9F6F4F6F2F2F7F9FF00FFFDF9F7F2F1),
    .INIT_40(256'hCFCDD0E5F8FBFAF6F2F2F8081E373011F1CBB4BDEB00FAE2BDC0BECEF5265860),
    .INIT_41(256'hE9E5E9F3FA070E0800F7EEEAF1F9FFFEF9F9F8F8FA01FFFD020806FCF6F6F7E5),
    .INIT_42(256'h14100703FFF9F2F1EFF1F8F8FAFDF7F1EDE9F60A0F11140F050001FBEFE1DCE6),
    .INIT_43(256'h00FBF9F9FD1346583900C9ADBCE4FBFEE9C4A7ACC6F12360835AF78B79AEEB0E),
    .INIT_44(256'h02F2CAB3B7D1F10000FCF4EAEAF4010F18180DFCEDF3FEFFFCE1CACADBF6FE02),
    .INIT_45(256'hFCFDE5CAD1E8F5030F0BFFF6F8FF0810100BFFF6F9FE00FDE9D0C4D3EDF90001),
    .INIT_46(256'hEA16392D1AE3C6F00304FDEAC2B8C7D6F8235A6035E59899CD112D1500FAF8F7),
    .INIT_47(256'hED0506F9EEF0F7F90322332815E6BFA9C3FAFDF3D4C0C3D1EFF9F7F5FB01FBEA),
    .INIT_48(256'hDEF201090A03020501FDF9F9FAFAF7F7FDFCF9F3EAEAF401060300F7DCC2C2D3),
    .INIT_49(256'hBFB9D8020705F1C3A396C40D4B6D3CE48D66A4FD353C15F5E8ECF0F4F5DEC7CA),
    .INIT_4A(256'hEEF20F2E3D270CEBBCBBD7021C1204E4B8B2CDE6FC0E08F3E3E5EE0C36422BEF),
    .INIT_4B(256'h00FBFA00FFFFFCF6E9EBF7FBFEFBF7F2F0F2F6F8FD00F4DDC5D1EE000B0B02F7),
    .INIT_4C(256'hE5BEEA2167A358E66E3D9BF91C2000F4F6FB01FCF7ECE8E8EBEEEFF1F3FD0804),
    .INIT_4D(256'hF1E8EEF813271F0EE3C7DCEDF5FC050E04EEE8F710271EEEB4999FD6F6F60805),
    .INIT_4E(256'hF3EBEBF4FAF9F8F5F8FBFCF8F800FBE3CBD4EAF3FD050702FCFAFD01050500FB),
    .INIT_4F(256'hE90209FDF3EBE8E8E6E8F0FC040E0AFEF7EEECF3F7FD01FFFAF7F7FE040101FE),
    .INIT_50(256'hA8C6FA24331F06EAED1C4B5119F0C6A9B2AFE0F9F4EAD7EC1171E1DD4EC26A8A),
    .INIT_51(256'hF2F0F4F7F9F7F0EFEEF0FA02070A09F2CBBEDBF90E1901D4C5E5030A07F7DCBB),
    .INIT_52(256'hFBF8F7FB0100FAF7F5F7FE050708090501FBF4F5040F06EACDC9E0F3F8FEFDF7),
    .INIT_53(256'hD4D1CDD0E00103D0BFDB2B8F962EAD6A87DA273612FBF7F8FAF9F2F0F1F5F9F9),
    .INIT_54(256'h0DFAE0CDE407110DFDEFE9EAF6FF0502F7F2D7E1FD0A1B04CFC5ED0B180F00ED),
    .INIT_55(256'hF7F3F5FA03020203F7E8CDCFE5F0F4F5FEFCF8F4F3EFEBF2F802FCEEE8F5131B),
    .INIT_56(256'h391CBC343B15FEF9F7F9F8F9F8F8F8F9F7F2F0F4F7FE0501FBF9F9F8F8F7F8F8),
    .INIT_57(256'h0FFBE6B8B1F03E5218F1E7E3F711282E09BF876791F31E1FFABFCD2FB80796DA),
    .INIT_58(256'hE0FA0B0B07F3C8BBD4F30000FAF0EFF8152819FAC8C1EAFF0F0BF5CDAEC2F115),
    .INIT_59(256'hEAE8F0F6F90001FCF7F5F8FD040500F4D5C6DD031E1B07EFEE00070502F0C0BA),
    .INIT_5A(256'h895A6EBE1D35FFA49E2AE60D91EB2425AB08533107FCF7F5F0EFE8EBEDF1F8F5),
    .INIT_5B(256'h090D0C04EAD4EC03160BDFB8BCE9000C01DAC7DB0334380DF2E7EF0A3A4120E6),
    .INIT_5C(256'hEAC9C5EA1E3015F3D7ED0F1B11DDA495C1FB292802D5C2D2EE060C07F6EEF401),
    .INIT_5D(256'hFF6B4C15F2E9EAFE0B0FF7CCC5D5E7F802FFF7F6F908161202F4F1F2000D130B),
    .INIT_5E(256'h2BFED4E11F627235EEC9C8D8306D3DB80CF458006346C76DDEBB6A20FFE0B042),
    .INIT_5F(256'hF3FC060C03F5E8E7F90C181402F9F0F80D1D19F2BC9BB9FB332DE39C9FC8154B),
    .INIT_60(256'hF90100FAFAFAF7F90207FDF0EBF4050BFEDDC2D2FF1B1907F3EEF4F7F8F2EBEC),
    .INIT_61(256'hE3A12C28CC96AB3554253E56CF6D05453F0DFAFF00FEFCFAFCFEFEE3C2C8DCEA),
    .INIT_62(256'h05414201AB768FE10904E6B2C1F72728FEECE9F5203D3A13D9BADD418B244ED5),
    .INIT_63(256'hFB0708EAC0AEB6D70009FBF5F9FCFFF8DCC6D1F202070901F9F2FB090EFFECE7),
    .INIT_64(256'h8A4A3A792C1002FCF4F1F3FB04FAD6BFBFDB0004FAF5FD05080904030C0B02FB),
    .INIT_65(256'hB2DC1F472706E1CBF3305C21E7D60C81A02B50C4029B409FEC86D7996FF9CAB7),
    .INIT_66(256'hF8F9FBFBF8F3EAE1E4FE170DDEB6B3DE0C0DF5E3F410281ACE7B86D41633F3B1),
    .INIT_67(256'hFDE4CEDEF701111002E4D7020EFDE7E4F11D472D09F0F5F7EDDAC3CAE1F3F6F7),
    .INIT_68(256'h09E2EA58B764A0E6B34A1557EEB1CD713D09FDE4C25E2396652504F8F4F4F9FE),
    .INIT_69(256'hFDF7F2F3F8113B2F01EEF50910FEA975A8E51A2601D1D71E4F33E0A7B0F23632),
    .INIT_6A(256'hEEF4FB01080B0A05FDF8F9F8F0D5C3C8DEF5F9FBFAF9FAFBFAFAF4EAE7EC0006),
    .INIT_6B(256'h8A474D02A311107985F879F3E386843A00DAC6C8E0FE05FEE9E4EB040EFFE8E1),
    .INIT_6C(256'hEDEBF904F6D7DBF70D0FF9E7E2F6293F15CBA6C7064C4C04D7F557801854959A),
    .INIT_6D(256'h1901D0BBD9F5FCFAF8F9FDFFFEFFF2DEE6F6FDFAF3F2F4F9FCF8F1F6051A1901),
    .INIT_6E(256'h9158AF66FFCDBFD0E4E9E8F3FD01FBF8F3F7FDFAF6F0F5F8F7F8F9F9F5F1041A),
    .INIT_6F(256'hEDE80A4C5111D8C4DF1A2204E7E0206C60AFF7CB24E14F20C7C9681DC5B3B4A9),
    .INIT_70(256'hF3FB0B09E6BFC4EA00FFFAF8FAFEFDF7EFEF020B07080805FEF9D4ACB9EF0DFD),
    .INIT_71(256'hFAEFE6EBFB0D0CEFE1EEF9FEFAF4F3F6FB01030301040701F0C9B2C0E60001FB),
    .INIT_72(256'h0916E8D7F5454EF478201B750C4917D728DE174804A1652D5D3801EEE5EBF7FC),
    .INIT_73(256'h0E01FAF9F9F6F2F4F9FFFDF7FA00070AF6D6BEB4C7F10B06F4FD374E25DDA1BA),
    .INIT_74(256'h010402FEFAF8F3F0FE0B11FDF1F3F800ECC5B0CD071D02F906100CE1ADB5EA0A),
    .INIT_75(256'h511442A5144F39164BBCA7BCCE81723E492700FFDCCFE8061209F1ECF1F7FEFD),
    .INIT_76(256'hCCDFFA0D0CFE0F1CFCAD90BFE0E5E3E6F70D3A5531C5487703230BEA2C735902),
    .INIT_77(256'hF80C1110FD0205FDE9C4D9F70B1102FBFD04F1D4D9E6E4EF041608EFF3FF0BF3),
    .INIT_78(256'h5A2B4CD1FF1AF7C881206D46FEEFEDFD0813ECCEF8170EF8E9F20605E4CDDFEC),
    .INIT_79(256'h050A00E8CCC0CDECEBE3F21D4C4914BF8389C9F3F8FF25737AEF551F449A0164),
    .INIT_7A(256'hF3F0EDF0F2F6020E07FCFF0403E2B0A8CFFE1009FDFC0A07FBE8DDEFFD0C0E01),
    .INIT_7B(256'hD4F3DE6B4F17F2C9C6ECFFF8EE011817F1D0CDD7EAFBFCEFEAF30C14FFEFECF1),
    .INIT_7C(256'hD3CBDAE60C46766517E4B09DCBFF0B070E313CE2784F6BC61220130F318987AD),
    .INIT_7D(256'h0206FCF2F905FEE3D2EEFCF7F9020A050502F2E5E6F50303020B120F04F8F4E7),
    .INIT_7E(256'h0E0D00E0C7E0F7F5EFF4FF252BF0C9B6C3EE05171101FCFCF5DCCDDFF7F9FAFA),
    .INIT_7F(256'h33718E650BA45E7CD5DB10668F47882A298CD4E5104379B2A0E6EC7C222A8D41),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00000400)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(\addra[16] ),
        .I1(addra[13]),
        .I2(addra[12]),
        .I3(ena),
        .I4(\addra[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0 
       (.I0(\addrb[16] ),
        .I1(addrb[12]),
        .I2(addrb[13]),
        .I3(enb),
        .I4(\addrb[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized32
   (\doutb[13] ,
    \doutb[14] ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    \addra[16] ,
    ena,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [7:0]\doutb[13] ;
  output [0:0]\doutb[14] ;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input \addra[16] ;
  input ena;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2_n_0 ;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [7:0]\doutb[13] ;
  wire [0:0]\doutb[14] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hA921F9F1ABEED2F2E0F87E6470F8FF3FCC7C7D7C3F8FA0A3E0FC7FFF9C73C6FF),
    .INITP_01(256'h387AF102F1DF33FEEF8E2578318FFE3A9C15AF8E29BCA99DFC2E67E9F2F0EAFF),
    .INITP_02(256'hC38EF3CE7C71DCE407C4F1D756BE38FFB8587ABCF7EBAE1EDE26F775786FAFEF),
    .INITP_03(256'hFFDCFCFE3E38FE0FFF1FEEEF3E38F87879E3E1C3C78F8E1F073E387E70E1F1E1),
    .INITP_04(256'hC79C247EF873E33DE3C3783C71F0FE3E7E1C0FC3E37F87E1CFC39BF870E3B1F1),
    .INITP_05(256'hF879CF07BE9C77CF0F87DE3FFBFF861FF8F1F87F87FE3C79E1C77BC7879C3FE3),
    .INITP_06(256'hE1F1F87FF3F0C7C7CC3E0FF0F83FC7E638F0F8E3879E7C3FF0F0C3BE3FBFFF3F),
    .INITP_07(256'hCF0787C70F3E71E3FF8FC7FFFF83C33FC3E0FFFDF1FF873F7FF1CC1FE0F83FC1),
    .INITP_08(256'h0E7F1C1FFC1F3FE01FFEFFFF0F1F023E7E1C1FF87C7FFE1FF0FFFF3E70FFFFC3),
    .INITP_09(256'hC7CF0FFF1C3F87E87EFC7F7CC1FFF1E0F1E7E3C1C7C1E1F7F1F0F8780FFFBE0F),
    .INITP_0A(256'hFFC0FFF03FDE07FC1F0787F1FFC3FFFF8FFFFC0FEF07F787C18FC18F87C3C787),
    .INITP_0B(256'hF03E78F8F879F8F07FE4F1F1C1E1FF8EFFFC1FFF0E3F3C1FF83FE3C7C3878FFF),
    .INITP_0C(256'hFBFF80CFFFFE03BF0FF0F8F1FE7CFFFFEFFFF7F07FE1FE079F831F1F3C3E1FFC),
    .INITP_0D(256'hF878F870F3E1C1DF078F9F387FFE0FC7DFBF3C38F860F3F1F9FBFFCFFF7FF81F),
    .INITP_0E(256'hFFFFFC78E7CF007CF9C3C7FC7C71FFF3C7FC3FFF8607DF3B0E38F07C7F7F9E1E),
    .INITP_0F(256'hFF0EF3F79E1FF9E3CF387BC3CF3FDE79FFF3C61EFFFC71F3F9FE3FFFF8E37CFF),
    .INIT_00(256'hFB0901F0EFFA070801F0EBF80A09F6DDD3F2080A01F9FB00FFEAC9B5ACC4E3FD),
    .INIT_01(256'hB8BCD906232D0D00FBF0D8D3EEFC0C140BFEF5F0F4FAFAF9FBFBF7F5F9F9F2F0),
    .INIT_02(256'h7559FB9C82AEF5FCFB203C17C3796FB0E704EB1082DDB5181D8B797E9F36DDC0),
    .INIT_03(256'h8BE3291CD6C002413CEDBDB8D3FC222A03F0D9C2DAFC02FC00FDD6BBCEE80D4E),
    .INIT_04(256'h30FDF0FB03080705FFECBDB5DF0E1907F5F4F9F9EDE7ECF90400FFFAFBF9F7BA),
    .INIT_05(256'hDEB5DE12305B682DCEACCDF5FC1B4B4008A97F7676A2CD49FB5B1703C4112656),
    .INIT_06(256'hFC01FF00FF00F9E0DEF3FE04FCF8FE00F8F801FF0000FE02E5E2FEFF0000FF01),
    .INIT_07(256'hDA7427DAE1C5D5C12D2CF702252006E6C1DAFDFFFE1712FED4ACD5F4090901FC),
    .INIT_08(256'hEFEFFCFF0000FF00E2B8B8E9175B7020EADBF102FE01FE01FFE8CDD0C4C2B8B1),
    .INIT_09(256'hF7DDCDE0FBFE2C2F0401FE01E4C0E32112EFF2050DFFFAF0ECF6FE00FF0403F9),
    .INIT_0A(256'h0F07FD01FF0000E7F002DDA1ABEE33C8246743F9AD4A2EE6E40405FAF7FC00FF),
    .INIT_0B(256'hFF1F11CDD7F7010A0C0E04FF00FF00FFFF00FF00DFB9A8CCF8357229D8BDDA0A),
    .INIT_0C(256'h78151710609219D3DC060A05F2D8C6CFE8FDFFE6D6C6E8302304C5A6E802FE01),
    .INIT_0D(256'hF5F1FB01FEDFBCCBF30D2416FFF8FA0D1005FF0000FF00FF00FEDCC4F1033799),
    .INIT_0E(256'hFDDDBCC6235D19F7B1D012FEE2BACDF3120BFEFE0D0BFAFDFBF5F7FEF9F6FD00),
    .INIT_0F(256'h5142EDADEA3F4F3508FEE7DDF801FF00FCCDB4F44AB682ACACDB59790703FD01),
    .INIT_10(256'h01FBCAC4F9393D1701F0FA00E5B5BEF6FF00FF01FBB79FC7E9FFFE01FCD8B4F2),
    .INIT_11(256'hFFFF00FBD1C2FA46A3AFBCBCD3DF20DDD1B4E5FA01F9F6FC07FFF2FA02FE01FE),
    .INIT_12(256'hECEDF5FE00FFFFF7EEFDFF01FE01E9CEF105FB04F8E5F31085820ACAB8E0FB00),
    .INIT_13(256'hFA01FBD4CC0380CC5CA4FC44ED318B930B9BACDDFA02FD02FD02F8C5D3F40200),
    .INIT_14(256'h00FE01FF00FFFF00FE01FDFFD8C1F53A8369FA99B626603CF1D7E7FCD1BCDAE5),
    .INIT_15(256'h54E02A7A11D5B9B3C6F1000C0BFC0005F3C3B8E60F1605E8E8FA02FD03F6CFE8),
    .INIT_16(256'h02F9FEFFFAF5030C06F8EEEB103D03BFAFD018D780BB1C50EB719719F84031F0),
    .INIT_17(256'h799F083C2F0BDBA8C6010C02F0F1FE0BECC1CAEB0309F7CECEFC150EF7EDF305),
    .INIT_18(256'h0AE18F960C84B34BA27DCA03271B02E7CCD5C5D502120AD0A2A2CC1F6E8F31B3),
    .INIT_19(256'h0804010403E5D1ED0C10E9C2CFE5F11A3408DBBFCD03130E07F2CBCCE5E7EF02),
    .INIT_1A(256'hB0DD3A6F20B8A1D1FF0E1513EEBECFF0FD0F150AEDB9BE0C3F4E33ECA695CCFF),
    .INIT_1B(256'h17CA8BB0F82C36E1A4C7F8090602FAF6F0EAF80A1B1D0EEDC7DC02090D06E9BD),
    .INIT_1C(256'h303AFEC490A0DB286214BCAFE7040100FBFBF8F0EC13414E2EF6A88CC718594E),
    .INIT_1D(256'hF8F3F6FBF6F2E9EE051407F5E8ECFCFCF8F2FC03FDF7F801FCF3F904FDC0B4F8),
    .INIT_1E(256'h8F5FE3665A99FC89CF76DB6AA41A2607F6F7FAF6D3BECA064B53360DDFC4D8F3),
    .INIT_1F(256'hA2CBF4FDFCFFF5D6D7F800FAECF31A19F0CFE1F4F0FE1413FEE9D9D5BDC2E544),
    .INIT_20(256'h35C1619E00333E0FDEC5E0051F0DF6FAFE00F2F50E3B34EEAF8C91D01D402BD2),
    .INIT_21(256'hB6DC0A0CF3D2D4F0F2F606293C18E3D2F00607FAFA08FDF6E8C2A39ABD036783),
    .INIT_22(256'h5D9BE40D1104FEFF00FAF2EEF2EACFCBE618666E1FDAC3C2C3DAF90F191502D4),
    .INIT_23(256'h02D5BAC7E9F3F61946592AC4ADE1020A03080E0BF5DED3C6B8BC0764955FE680),
    .INIT_24(256'h0CC7B9DF090F08F8DDC4C1ED2D92A134DFC4DAC2A8C0ED3E5422FADBC8CAE10B),
    .INIT_25(256'hCAC3EE4C7423C28F9CDB162C1E08F5EF0BFCAB87C301558E5005AB80A1DA2640),
    .INIT_26(256'hF4D5B5BAE768A86E159BB2F40205FCFCF7F7F5020D09FAF90200F5CCC3E607FB),
    .INIT_27(256'h4BA3104139FFC8BFF91513DC6F912DB1E7A2D4F1F3AF55804EFFD1D3E7F4FB08),
    .INIT_28(256'hDB0A2A2405F5EEEDF40409FEF8FD06050301FFFCFBFBFEEDC6B5D71D6755DA71),
    .INIT_29(256'h9C8DC222978C1BB377BB0E391CFDFDFD07EECBBEEB02E7BFB6F2487754FDA39C),
    .INIT_2A(256'hEF0D414F1EEFCDB9C3E3F9FCF8F2F9091A11E2ACADDD1C4A2AF3C0BBF21208D4),
    .INIT_2B(256'hE8A46371FDBDF86BE51E24E32A310BF2E8F4F0F2FC0B171A12F0CDC6E4F4F3EC),
    .INIT_2C(256'hFFFEFDFEFE01FFE1C2CAE7F4F8CC95AEF547815D11DBE30525391BF6C5B8C9F4),
    .INIT_2D(256'h09211703E18A5A79C50B312D13FDEEF0F2F903FEF1EDF50A180FEBC8CAE5F9FF),
    .INIT_2E(256'hFA08FBC88F93E9A534F02E50129010461EF1E6F807FDF6EDEFF5020CFFEBE0F0),
    .INIT_2F(256'hF8F3F6FEFF0C1A1001E5B0B9F5110DE9C2CF0B18FEB977B52D81763210F4D3D7),
    .INIT_30(256'h5233F7B4A9C1CFE4F403FEF5F6F9FBFEFFEADBE2E9F0F9FD0205FFFAFBFBFBF9),
    .INIT_31(256'hA06672D544827311A26880CC1839300EF8F906233011F4FAFD00F1C4A5B7FC3F),
    .INIT_32(256'hCA0754632EE18476BD172AF5C9BFDD0D20F9B9879AFA61957D2AE7B2C5FAF8E2),
    .INIT_33(256'h150CF4E5F2070E08EABEA4C6041E2216F1C5CCEBF90C170BFBF6F9031105E7C5),
    .INIT_34(256'hD93731BAFB1D23170D01FBF9F9EFE5E3EBFE0D0C09FEECEBF2F6FB0206FCF708),
    .INIT_35(256'hCDF71204E7DF05355340F8AA7C9FE81138513218FDE7CCBAA67A6EA536C1C157),
    .INIT_36(256'hC5D1E7FA0F09FBDFC7D7EAF90E1A1A07F2ED00100EF7C9AFBEE91F3514E6BCAF),
    .INIT_37(256'h548EDF0A161709FDF5EFEBF4020D03F6F2F0F2F4F9050C0B04F6ECEFF6FDFDE2),
    .INIT_38(256'hC4DFFA051319170FFDDCBECAF01B3F463108DBB6ABA9A8A994B82ABCE08E127C),
    .INIT_39(256'h01FEF6F2F1F1F0F0F5FAFCFE040904FCF7FB0302FFFE040D141501E2C9BBB2B5),
    .INIT_3A(256'hD5BCDBFB080C02F8F0EEF3F8F3F4F5EEF100080500FBFCFF0105FCDAC4D4EDFA),
    .INIT_3B(256'hB0DF46A8B357D87B5DAFF7171E181609FBEFF1F0F3F5F4F9FBF6F4F7FBFD00FA),
    .INIT_3C(256'hFAF3F3EDD5BEC2DAF704070E1204F5F2F3FA0E352A06F9FA070BFAD6C6CBBFA3),
    .INIT_3D(256'hF8F9FAF6EDEBE9E9F3030D02F4EDE7E6ECF6020804FDF8F9FAFAFBF7F3F3F9FD),
    .INIT_3E(256'h0422200CC7AEDCFD3034FABB8F9BDC0A07F5E9E50A2202EFE7EFFE0B0E03FAF5),
    .INIT_3F(256'hDEF80605EDD6CBE9084D8B6712A77996CC052C2604E2C6C2C5E7141502F5F2F3),
    .INIT_40(256'h06FFF9F6040F0F04F8F4F3F7F8F8F9FAFAF9F8FAFBFBF4E9E8F204101410FAD9),
    .INIT_41(256'hF1F5F4F607252416F8CEC4D7E9EFF7F9FAFBF5ECE6E9F5FE0302FBF9F7F8FE07),
    .INIT_42(256'h55E4A2A9D9FB131306F6CFB4D1EFF7FDFBF9F6F3F6F6F601070907FEFBF5EEEB),
    .INIT_43(256'h06E7A2544F87F57DBC9729D8C4E92A4E594406D8C6B6B7B4BCBAB2C2EF337EA3),
    .INIT_44(256'h04111202EDD6E2FB070D03FBF8F0EFF6000910100E07FC010F0EFEF3EEEDF301),
    .INIT_45(256'h070005FFF9F9FCFBF4EFEDF5F6F5FA00F8DFCED0E5F2F7FFFEFAFAFBF9F6F4F8),
    .INIT_46(256'hD4AA7A4E6EC82380B89E49D061559DE90805FBF0EBEEF8FBF6F1F50109111816),
    .INIT_47(256'h021F2D13FBFAFC0003FAD1AD97A2C7EE060D0EFDF5F60C35443515FAF0F4FFF8),
    .INIT_48(256'h07131304F8F7F9E1CDCAB7C4EEF7F5F7FC02EBCAB9C6F50B090F0D07E6CDE6F5),
    .INIT_49(256'hC7E7F9FC010801F5EDECF2F808191F1BF8BEB8DBFE2C381C06F3EAF1FA020304),
    .INIT_4A(256'hD3EA0B1602DF8A6C78BD3A859E64019B5380DF1338340FF6E8EAF4FD02FAE5C8),
    .INIT_4B(256'hFAEDF0FC091615F1C3CBEF090BFEE5C0B0C6EC08160DF4E5E3F40622575321E5),
    .INIT_4C(256'hF5F80714160E00F7F1EEDED5E9EEF4F8EDE9ECF8000200F6EEEDF401121C180A),
    .INIT_4D(256'h02FBF6EFEDF3FD00FFF8EAEAECF3010703FEF7F3F1ECF1FA00FDF4F0F3FC0905),
    .INIT_4E(256'h041113FEF2F50B1E1907E3B7ADC1D1D5E22F69612CBE809EDCF7FE03FE03090A),
    .INIT_4F(256'hD2F7101E1AF7D6C1D7FF0900F8E0D3F00D1F1A06EED2C6C2D2EAF2F8F2EDEEF7),
    .INIT_50(256'hF324422C07E3BFBFCFE40E382707F4E6F1FD090B04ECC2C6EF07131003E4B7B3),
    .INIT_51(256'hC3F60C10110900FBFB030703E8CFCCD5EAF6000C0E0A00F8F6000703E7B9A0BA),
    .INIT_52(256'hD2F1FD01F6ECE6EF04232C160DF8EAEBE3E2F2FF08E9BFCAF465BD7E1FB12E51),
    .INIT_53(256'hF8030501FDF4F0EEF0F7F8FAF6F3EDEEF3F0F0F2F7FB03232F1C1204E9C8B2B2),
    .INIT_54(256'hF8FBFCFBFBF9DEC4DAFF2C3D1D07E6C9DDF1F3F9FEFAF5EFF3F8F7F8F5F1F2F4),
    .INIT_55(256'hA78719AB6F669ADD000601090EFBEAECF0103C4424E8BCA4B7E0F6FD070E02FA),
    .INIT_56(256'h1709F1DCC3ABA3B8E1FE07FFF3EEF1042334251100F1DCC8B9AAB8C2CDEA277B),
    .INIT_57(256'hF2F1F5F9F9F9F8F6F7FC000000010101FDF8F3F1F2F1F1EFECF1F8FF06091119),
    .INIT_58(256'hB7E82546350FDAC4E303121F09CAA9C5F2090F0AFFF9F9F9F8F3F1F1F0F1F3F2),
    .INIT_59(256'h95A4C4D9EC349AC19332D87E69B4FBFDDBDAFB161907F2D9D1F93D5932ECAC9A),
    .INIT_5A(256'h01151A0AF6EFF9050701DEAB98AFD9F70404FAEEE7F72138361802F9F8D5A6A1),
    .INIT_5B(256'hFFFAF7F8F8F6EBDEEAF7F8F7F7FD060C0A0301FFFAF9F9F2EBEEF8F8F0E7E9F4),
    .INIT_5C(256'hE3DD0743432B08AA7AA8E80E272304F1E7EAF5F5D9C0C0D9F2040F04F8F5FF03),
    .INIT_5D(256'h02E6D0D5C7B4916C556ECB57E61ACD29A0495DC4082810E8CDC2D0F22D380FF5),
    .INIT_5E(256'hF3CDA5A8E1112F2001EDD9E4FE0D0EF9B87779A8F04B622AF5C7C2FE6097742A),
    .INIT_5F(256'hFEF1EAF10010160B0601ECC4BEE6FF0C05EFD0C9EE060C05F9F2F1F2F7010507),
    .INIT_60(256'h3A41FEC4AEC90D66702BE8885283CC10494715EFE3EEF5FFF5D2C0C6E1F90D0D),
    .INIT_61(256'hFD0A07EEB48C8EACE50D2C2A0F01F6F8040B07FDF4EEF0F70F2405D0A18DA9EA),
    .INIT_62(256'h0DEBC7C1D5F0F8F3EFEEF8070E0700EBCAC7C0A7AEE3FD083B64664119FDF0F5),
    .INIT_63(256'hF6F9FE00FDFAFBFCFDF7E6E6F2F8F8F7F6F6F6FB00FAF8F8F6FAFCFD00071317),
    .INIT_64(256'hFBF8F4EEECF3FE0601E3BBC4E9FD0803F9F6F8FFFFFAF7F0E9E7EAF1F8FFFEF8),
    .INIT_65(256'h3743290AF4E9EBF2F9F8F3F600030100FCF6F0F2F7030B06EABDC9F80F160BFE),
    .INIT_66(256'hB0C4C3C9CFDCE3D4E9FBFDFCF7F9FB052E526D6C4405CCCDE800F7CC8A82BEFE),
    .INIT_67(256'hEBEBF0F8FE00FCEFC5ACB8BED0F2F8EFF603081736301303FFFE0300FAE8C7B2),
    .INIT_68(256'hF8F8F6FBFDFCFAFD04F0C8CEE6F1FCFEF8F0EBF1FA0D3334211602F9F7F4F4EF),
    .INIT_69(256'hF0EAEBF5FF0000FDF8F8F7F5F901FEFAF7F0EEF1F8F9F8F7FAFE0205FBF3F0EE),
    .INIT_6A(256'hEAC18E8AC001140D05F4F31C52643703DDCEE6FF0E09F0C4A2A4D5FA07160DFD),
    .INIT_6B(256'hF9FF01FAF1DFD4E9F801FCDDBDC7E4FA0D07FDF2EDFB23351B04F0EAF3061A07),
    .INIT_6C(256'h05FFF5F6FDF7E8CBBDCDE8EFF1F5F800080C0501FEF6F0F2F3FB081009F9F2F1),
    .INIT_6D(256'h14698E6C2AE9ABACE1173A1CFACF91BCF50C0FF8E0D9EEFA0407FEF5F8010A0F),
    .INIT_6E(256'hE4B7CCFE1615ECBDB1CFF911150A00FBEAE40338654002E2D7F801EBB38070A3),
    .INIT_6F(256'hFBD9BDBEDD000A1208D69C8FC402272EFBBBABC8F409101207F3EFF906100801),
    .INIT_70(256'h09F9EBEAF0F3F7FD04FFF4E4E0EAEFF2F90202FFFCFAFD020A0C07FCF7FCFD00),
    .INIT_71(256'h0A131B0CF1D1E0252D07AF89CA283B0FC14D60C31443474723E6BBAFD4FF171E),
    .INIT_72(256'hF801090903FBFF070E0A050401FDFAF8FBFD06EEA78FC9FC0802EAE9F702FEF9),
    .INIT_73(256'hE2F5010A04FEFDFCFDFAEFE5E6F21A453A0CE8CAC9E3F4FAFAF9F5EEEDF4F5F6),
    .INIT_74(256'h0FF7C0A2CAF822290CFDF7FC000001FEF9F4F1F5F9FAF9F2F2F3F4FA0304E2CC),
    .INIT_75(256'hDB9F86A7E80D02F3DDE01B403615F4EBEDF705140AD8BFD8EFF6FEFDF4F30111),
    .INIT_76(256'hFFF7FC0501F2D3CCDDF40601D2B9D8F70B140900060E100C05FEF7F3F4F90200),
    .INIT_77(256'hFBF7F2F4F2F1EFEDEFF7FBF4F0EAE7EFF7FAF8F7F9FE040500FCFDFFF9092513),
    .INIT_78(256'hFDFDFAEBF2081B05D3DDF5040D01F9FA01FDF3EFF3F90712FFF2F3F7F8F5FBFC),
    .INIT_79(256'hECEAEBEFF90101F9EEEBEBF3F4F4FA020A07F6DAE4F5FCFFF7F7F7FDFCFDFEFC),
    .INIT_7A(256'hFFF5EEEEF8FBF8EEEAEAE9F0F6FD090E05F6EEF707150FFAECE8EEFC0603FAF3),
    .INIT_7B(256'hEBEDF5FBFAFBF7EFE9F0F5F80101F7EAE8F8070600F9FC18372405E9D2EBFE03),
    .INIT_7C(256'hBBFC2B23FBEDF4FE0400F2F4FEF6ECECF5FF05FAE2E2FA1817F2CBC1EA0501F4),
    .INIT_7D(256'hE2F30505E9C6C2EF0C05F7E6E802141200E8DAEEFB00F6BC92B50A505409B598),
    .INIT_7E(256'hF00406FFF2F1FA080F1007FAF4F0F2F8F5F1F2F6F90509FEF1F3FC08100BEDD2),
    .INIT_7F(256'hF3F8FEFEFAF5F1F809151506F9F3F800FAF0EEF80709FDF1EDF1F6FF01FBE4D5),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[13] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\doutb[14] }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00004000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1 
       (.I0(\addra[16] ),
        .I1(addra[13]),
        .I2(addra[12]),
        .I3(ena),
        .I4(\addra[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2 
       (.I0(\addrb[16] ),
        .I1(addrb[12]),
        .I2(addrb[13]),
        .I3(enb),
        .I4(\addrb[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized33
   (ram_doutb,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    \addra[16] ,
    \addra[16]_0 ,
    \addrb[16] ,
    \addrb[16]_0 );
  output [8:0]ram_doutb;
  input clka;
  input clkb;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;
  input ena;
  input \addra[16] ;
  input \addra[16]_0 ;
  input \addrb[16] ;
  input \addrb[16]_0 ;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1__2_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2__2_n_0 ;
  wire [13:0]addra;
  wire \addra[16] ;
  wire \addra[16]_0 ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire \addrb[16]_0 ;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire ena;
  wire enb;
  wire [8:0]ram_doutb;
  wire [0:0]wea;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INITP_00(256'h71E7CF3CF83F9FC7F1FE0EBFFC7F9FFFFE0FFFFE1FE3FEFE3FF3CDE78FBF9E7F),
    .INITP_01(256'hE7FCFFFFFFFFFFF1FFC3FFFFCFFF8FBFCF3CF3FFFF3FC79C7FFFE3FC79EFFBDC),
    .INITP_02(256'hFFFFFFFFFFFFFFE7FCFCFFFF9C61E7FFFFFFFFCFFFFBE3FFFFFF9FFFFFFFC638),
    .INITP_03(256'hFFFFFFFFFFC7FFFFFFFFFFFBF3FFFFFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFE7),
    .INITP_04(256'h000000000000000000000000000000000000000000002AA555FFFFFFFFFFFFFF),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hE8112614F4D7E7FBFF01FCFDFAF7F3F6FC0509E9CBE5FC0001F6EEF1F8F8F9F6),
    .INIT_01(256'h0B01F6F2F6FAFEF9E0C6CBF60D0CF9EBEDF40202FAFA03FAEFECF81212FABDB3),
    .INIT_02(256'h080A07F8F4F4F3F2F2F9FD18331BFEE7DEEDF3F7F6F5FB00FBF2EDEDF1F5F901),
    .INIT_03(256'hF7F9FFFEF9F9FB0106090900F9F9F9F8F8F9F4F4F8F8EFEDF7FDFEF2EFEFF002),
    .INIT_04(256'hE8F8F6F3F0FC0C1005ECDBEAF3F7EFEBF9040AFEF1EDF2F9F9FBFAFBFDF8EDEF),
    .INIT_05(256'hEDF1F1F907170AF1DFDCFAFEF8DBD4001C474004DCD6F200FF01FFFFF4F6EACE),
    .INIT_06(256'hFCE7DEEAFC0407060804F9F7F7F6F6F5F70403FAE8C6BAD1ECFA0C0D00F3EAEA),
    .INIT_07(256'h24F0CADA0F4830EDA7B7FB2B28FAE2BCD4FB0C01EEE9EAFD0302F3E8EAFD0D0A),
    .INIT_08(256'h0DEFBFC5F50B02E9C5DAFF04F9E4E8F9F9F4EBEEFA00FCF0F1F803FDF7F10026),
    .INIT_09(256'h0CFEE7DFF3F9F9F8F3F2F3F7F7F6F6F4F1EFF2000600F7F7F6F7FCF0EBF4030D),
    .INIT_0A(256'hFDFAF9FAF3E6EDFD0905FBF5F7FCFDFCFCFB032423E6A99DD8140CF7E0E10411),
    .INIT_0B(256'hF8FF0605FEF7EFF70E0CFAE5DCF00709FBF8F8FE0702F2EBEBECF4F3F3F8F7FA),
    .INIT_0C(256'hEDFB0303FAF5F3F8F6F5F3F6F9F8F9F7FA010100F8F2F0F4FC01FDF6F5F4F0F3),
    .INIT_0D(256'hFBF8FAFDFBF9F5EEF0F6030C0D05E8DFEEEFF3F9F8FAFBFBFBFBFAFAF9F5DBD0),
    .INIT_0E(256'hF8F9F9F9F9F9F9FBFDFAF5ECECF0EEEDE9EBF3F6F5F5F3EEEEEBF2FD010A04FD),
    .INIT_0F(256'hE5CDE3050DFCD5CADEF8FCFAF9FC0404FBF4F5FAFAF8F8F8F8F8F8F8F8F8FAFA),
    .INIT_10(256'hF4F4F4F2F1F4F9FBFDF9F5F5F4F3F0ECF2FD030600FBFF080C07FBF6FA030C00),
    .INIT_11(256'hFEF8EFD8D9F5FBFEFBF8FAFAFDFAF5F4FB0401FBF4F0ECEDF6F7F8F7F7F8F7F7),
    .INIT_12(256'hF8F7F7F6F6F1EAE6EBF2F1F6FE03FFFAFAF9FF050602FAF4F2F4F3F2F1F3FAFD),
    .INIT_13(256'hF3F1F0F7FAF9FCFBFDFFF9F3F3F1F6F9FCFEFEFCF5F3F1F2F5FE0502FCFCFBF8),
    .INIT_14(256'hF30304F8F2F8070C01F5F5000A0D02FAF9F9FF0404FFF7F2F0F5F6F2F5F7F6F6),
    .INIT_15(256'hF9FBF4ECECF80202FBEEEAE9ECF80304F8EEECF5F8F3EEECF8FCFBF5F1E2C3D2),
    .INIT_16(256'hF4EFEDEAF1F8FAFDF9F6F7F5F2F0F2F7F9FDFFFDFAF7F8F6F3F7FF0305FEFAF9),
    .INIT_17(256'hF9FBFDF7F4F2F1F8F8F9F9F9FEFEF9F9F9F9FDF9F8F8F8F8F9FAFBFDF8F6F6F5),
    .INIT_18(256'hF4F8F8F8F8F8F8F8F9FBFDF9F8F8F9FCF9F8F9F9F9F8FBFDFDFDFE0A0AFDF4F4),
    .INIT_19(256'hE9EAF3F9F9F9F9F9F8F8F6F7F3EBF2F6F6F4F2F1F2F7F7F4F3F6F7F7F6F6F5F2),
    .INIT_1A(256'hF9F8F8F7F3F2F9F9FBFCFBFCF9F9F9FAFAF9F9F8FB0304FDF9F8FAF8FAFBF4EE),
    .INIT_1B(256'hF9FCFCF6F6F8F8F8F8F9F8F9F8F8F7F6F7F4F5F8F9FAF8F8F8F8F9F8F8F9FAF9),
    .INIT_1C(256'hF9F9FAFC0303FCF8F9FDFDF8F9F9FBFBF8F8F8F8F8F7F7F6F4F1F1F4F9F9F9FB),
    .INIT_1D(256'hF0F5F7F7F6F6EFEAF2F7F8F8F8F8F8F8F9F9F9F9F9F8FBFDFDFBF9F8FB00FDF9),
    .INIT_1E(256'hF9F9FDFCF9F9F8FAFAFE020302FAF3F2F6F9F8F8F8F7F6F6F5F4F1F4F8F7F7F4),
    .INIT_1F(256'hFDFBF8F9FBFEFAF3F5FAFDFFFFF9F1EBEEF3EFECEAF1FDFDF9F8F8F8F8F8F9F9),
    .INIT_20(256'hF8F8FAF9F8F8F8F8F8F8F8F8F8F9F9F9F9F9F9F7F5F3F0F6FEFCF8F9F6F4F2F6),
    .INIT_21(256'h00FF00FF00FF00FDF5F5F4F7F9F9FBF9F8F8F8F8F9F8F9F9FAFAFDFFFEFFFDFA),
    .INIT_22(256'h000000000000000000000000000000000000FF00FF00FF00FF00FF0000FF00FF),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[10:0],1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb[10:0],1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:8],ram_doutb[7:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1],ram_doutb[8]}),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1__2_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2__2_n_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1__2 
       (.I0(addra[11]),
        .I1(ena),
        .I2(addra[13]),
        .I3(addra[12]),
        .I4(\addra[16] ),
        .I5(\addra[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2__2 
       (.I0(addrb[11]),
        .I1(enb),
        .I2(addrb[13]),
        .I3(addrb[12]),
        .I4(\addrb[16] ),
        .I5(\addrb[16]_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2__2_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized34
   (DOUTB,
    ena,
    clka,
    enb,
    enb_0,
    clkb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]DOUTB;
  input ena;
  input clka;
  input enb;
  input enb_0;
  input clkb;
  input [15:0]addra;
  input [15:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTB;
  wire [15:0]addra;
  wire [15:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire ena;
  wire enb;
  wire enb_0;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .INIT_00(256'h07871F1F0F0F0F0E0F1F8F8F8F07078FE7C3E3F8E0F8FFFE1F1FFF61D9FFF838),
    .INIT_01(256'h38E3DF7CF18E38F3C79E73861E70E78E1F9F8F0C383E7E7C70E1C3C3E3C3C787),
    .INIT_02(256'h8E71C639C739E71CE39CE38E39C738E78E318639C71C738E79E71C738E38E386),
    .INIT_03(256'h38C639CE738C739CE71C6339C638C631CE71CE31CE71CE738E718E738E738E71),
    .INIT_04(256'hCE7398C6739CE739CE6318E631CE7318C7398C739CC639CE7318C739CE739CE7),
    .INIT_05(256'h4339CE67398CE7319CE6739CC6739CC6339CC6739CE6319CE7398CE739CE6339),
    .INIT_06(256'h73398CEE63339CCE67399CEE3399CCE7319CE67319CC67339CC67399CE7319CE),
    .INIT_07(256'h8DCCCC6666333B199DDCEEE66733999CCE6733199CCE773399DCEE333999CCE6),
    .INIT_08(256'hCCC4EE666773333B9999D0CCCC4E6663773333B313998998CCCCE62673313B98),
    .INIT_09(256'hEE6666E333313B9999D9CCCCE66E6677731399898CCC4E6666633339999D9C9C),
    .INIT_0A(256'hDC0DFF4EEF47DCCCDCC06FFCCECC46E66666276763733333311B999998CCFCC4),
    .INIT_0B(256'hEA6FEA376A66F622772377333B3337667F773777377626F6467FC67FE01FD81D),
    .INIT_0C(256'hFA13662375137B11F7113B313BD81B989F988DF895F889DDCBDDC4CEA66FD46F),
    .INIT_0D(256'h6EE84CDC46EE46EE0776237623FE237911B911FF913BB13FA91B913FA32FEB1B),
    .INIT_0E(256'hE66EC437663662373333331BB199D88DEA2FDA87EE676E44FC677EE6EEE4FFEC),
    .INIT_0F(256'hB227F407F322FB22BF627F707F941FCA2FEA0DF945FD44DD40DC84DCC4EEC46E),
    .INIT_10(256'h311BDA07F88DDD0DF999BDDCDDCCDFD4DF9899F8999999BB93BBB37FB0373237),
    .INIT_11(256'h733F3013989DDCCCFCCCFFC46EE237313FB81DD98DDCCEEE666E627672333113),
    .INIT_12(256'hDCC4DFD00FCC0DEF42FFC4DF606FBC17B4037703BBE9BFA89BDC4FEE46EE8677),
    .INIT_13(256'h26EE26EE66666666FE46E666EFCCCEC44CCE4DEF459BCCDFD49DDC4DDC4CFCC4),
    .INIT_14(256'h517FF0BBB89FFA0FFA81BFE03EE80DDC8DFE80DDC4EEE86EEE6EEB2777666FA2),
    .INIT_15(256'hDD89DDC99BB99BBD99BB93BFC03F70377C077B137FA1BFF0777037F4177703FF),
    .INIT_16(256'h7F2667713F991B373333113BB89998CACCC9D9E89DCCCDDCC9DDC8D8CCCDCC8D),
    .INIT_17(256'hFA27FF27F7703FBC377713BB99BBB99B9999FE4D99E4CDF66ECDCCEC666E6666),
    .INIT_18(256'hA037FD00BFE085FF1017FC013FE80BFF00FFE00DFD05FFC05FF80FEE06EEE46F),
    .INIT_19(256'hF001FFFF800FFFE8007FFC8067FFC007FF0000F7F4037FE203BFF2037FA2337E),
    .INIT_1A(256'h9FFFFFE6EFFFFF7FFFFFFFFFFE6FFFE77FFF3FFFDFFF811FFFF00BFFFF8007FF),
    .INIT_1B(256'h39FFFC07FE61BEFFFFE01F9F0FFF18FFBCFFFC03FFEE0FFFD87FFE03FFC01FF3),
    .INIT_1C(256'hF88FFFAFF39CFFC00FE6F00FFFFC23FFFE67798C6FFE781FF7FFF03FDC7FFFFF),
    .INIT_1D(256'hDFFFFFCFFFFFAFFE7DC7BE5FC1FF33FFFFE39FEF7FCF703F87FFDBFFFFFDFEFB),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE70FFFFFFFCFBFFFFFFEE3),
    .INIT_1F(256'hFFFFF9FF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'h3C3C787C0F9F1E1C78E1F1E1E3C7FC7C79E38787FF0F0F1C78F9E1E71E1E3FFF),
    .INIT_21(256'h7E0783079F07C783FE1FBCC3FE0FF8F5F1F07E61F0F8FF878F9C1F3C379F1C1F),
    .INIT_22(256'h0F8F8003F8783C3E0F81C787C3F1300F9F83078F87C030FF0F078F83E0F8FF1C),
    .INIT_23(256'hEFF03E3E0061FC01FFF81FF381F7F01FF81F0F9FC0007F83C383F3F070FE1F1E),
    .INIT_24(256'hF803FE00FF007FC01FF007F803FC01FFE03FE007F001FFF00FFF81FFC03FFC07),
    .INIT_25(256'hF01FFE07FF81FFE07FF81FFC0FFE07FF01FF81FF81FF81FF81FFC0FFC03FE00F),
    .INIT_26(256'hE3E3C1F1F0F0F83C7E1F0FCF0FE0F7E01FFE007FC1C3F0F07C781FBC07FF80FF),
    .INIT_27(256'h3C7C10FE7C10FC0C3F8C1F1E0F8F07F083FC70787078387C3C3E1E0F070F8783),
    .INIT_28(256'h87C1C7E1E1F0F07C0FF0F0F0F0783C1E1F83E1E0F8F8607CF007F8787BF83F30),
    .INIT_29(256'h3FF0707C1C3E1F0FE0FFF87E0F8783C7E007E3C1F9C1FD1C1F8787C237C781EF),
    .INIT_2A(256'h83C1E1F8FC1F1F07C363FF201F03E1D3E7C09F83C3CFC3E0EFF0E0C7E1F07EF8),
    .INIT_2B(256'h7CF8F86FF0F87E3C3E03C1C3E1E0FEE07F0783DB83C1CFC1E1FFC0F0E3F23F0F),
    .INIT_2C(256'hE27F47F23FC3E0FC1FC707C77207FE3E03DF3E08FE0F07C787C07FC3C391E1F0),
    .INIT_2D(256'h0F0FCF07C0F703E23F03DF3F19FC1F8FF07E7C3E23F03F1BE0FDF0F0FFE0FEE7),
    .INIT_2E(256'hC3DC9F9F0E0FEE07FC783FBE3F18FC1E0FE0F878783F387F07C3E1C1E1CF81FF),
    .INIT_2F(256'h0F83E3C1F078F07C1F3C1F878707F3E3C1FE0F07C3C3F1E1F9BE0F8787877B07),
    .INIT_30(256'h007FE007F801FF01FFE0FDF07CF07CF07DF07BE0F7C1FF073E0FF037E0FE0F3E),
    .INIT_31(256'hFF803FF03FFFFF01FFE07F80FFFC39C07FF000FFF0001FFC005FFC00FFC007FF),
    .INIT_32(256'h1CF1C03CF01FFE00FFE01FF80FFC3F3FE06FE61FFFF9BFFE83FFC7FF8787FFC3),
    .INIT_33(256'hFE807FF003F8433FF803FCF0FFFC073FE187FFFFDF7CA0FFF1C7FE1FFE1CFFC4),
    .INIT_34(256'hF9FF80FFFF9FFFFFFFF07FF801FF003FF803FFC01FF87FFF15E70EFFC30CFF03),
    .INIT_35(256'h0F1CCF3F1E7079FFC61CFBC3C7FD7FFFFFFC3FFF07FFFBFFFFFFD1FF80FFE7FF),
    .INIT_36(256'hCF070F1C38870FCF9E3E0001FFC6061FFE01FC3C1E7FF870FBCE1E3FFE1879F7),
    .INIT_37(256'hC79E3CE38F9C3CFC3877FF838C7C70FA3C3CF0E3E7FDFE1830C3CFCFDF0F0707),
    .INIT_38(256'hC3C7E3E11F0FC1E63F03F9FC1C3FB0787F871CF83C0FF1E1C1F8F0E7E1C1E3C3),
    .INIT_39(256'hF0060FFC03C3FE1870F7C00F0F7C01E067F00F03FF07FC7087C70F1FE783C7FF),
    .INIT_3A(256'hFE001FFF8003FFE000FFF000FFF8001FFC000FFF001FFFC003FF00007FC0083F),
    .INIT_3B(256'h83E7F38083F3C1C3E0E1F1E1F1C1F1E1E1C3F1E1E1E1F800FFF878307FF0007F),
    .INIT_3C(256'h7FC07F81BF03FF00FC31F983E1C1C3C3CFFF9E003C78787BFBC1E383E3C7FFC0),
    .INIT_3D(256'hFF01FFC1FFC0FFC0FFC07FE07FE07FF81E7C1FBE0FBE0FFC1FFC1FF83FF03FE0),
    .INIT_3E(256'hF03FF03FF83FF03F703FF81FF81FFC0FF80FFC0FFC0FFE07FE07FE07FF03FF03),
    .INIT_3F(256'hF81FF81FF81FF83FF03FF03FF03FF03FF07EF03FF03FF83FF03FF03FF03FF03F),
    .INIT_40(256'h000FF80FF81F8C0FFC0FF80FFC0FFC0FF80FF80FF81FF81FF81FF81FF81FF81F),
    .INIT_41(256'h07DE0F9F1F8C1FBC3E383E407EF8FCC078E1F801FFC1F003FA01FFF38007FF83),
    .INIT_42(256'hF3E1F3C1E783CF07DE07FF07FC1F7C1EFC3EF87FF078E0FBE1F181F7C3E787EF),
    .INIT_43(256'h07C1FF81FF03FE0FFC0FF80FF03FF00FE00FC07FC01E07FE067C1CF839F071F1),
    .INIT_44(256'hC0FF81FE0FF81FF07FC07F81FE03FC0FF81FF01FE07F801F01FE00FC04F80FF0),
    .INIT_45(256'hCE0FF07F81FC0FF07F81FC19F0FF83F81FE0FF03FC07E01F07783FC1FE0FF83F),
    .INIT_46(256'h787E1E1E1F0F9F0FE1E380F878F07FFE3C00078E0FFFE001FFFFC003FF003F80),
    .INIT_47(256'h0F87C783E1F0F07C3C3C1F0F0F07C3E3C1F0F0F07C3E3E1F8F8F07E1E3C1F878),
    .INIT_48(256'h3CF878F071E1E7C10F063C08F073E08F87FC1DF07FC3DF07F87BE0FE047C1F1E),
    .INIT_49(256'hF801FFC00FFE00FFC01FFC07FF03FF807F081F1E1F1E1F1E1F1E1F1C1F3C1E3C),
    .INIT_4A(256'h0B8FF37FE087E3C0FFE003FFE7FFE07FFF80063FFC007FFC003FFF800FFE003F),
    .INIT_4B(256'h3C7FE107F8007FFE3FFC007FE03FF87FFF8018F03FFFFE0001FFF0003FFE01FE),
    .INIT_4C(256'h7FF01FF003FFC007FC03FF007FF807FFF00FFFE1EFF001F7F807FC7063FC1FFF),
    .INIT_4D(256'hFF00FFC30F83FF40FFFFFF000FFE01FFE003FF00FFF403FFC03FF70FFFEFFF80),
    .INIT_4E(256'h1FF01FFF021FFE77FFFFC7FFFFFE03FFFFEFEC37FF7FE01FFF0FFF1FFF6FFF0F),
    .INIT_4F(256'h727FF21FFFFBE7BFFFFF9E3F23BFE71FF786FFFFBFFFC7FFFFFFFC39FFFFFFE4),
    .INIT_50(256'hC0700007FFFFFFE000F9E20FFFE38003F019FFF0000FFFF0003FF80FE07C0FFC),
    .INIT_51(256'hE3C3F03C3FC1F03F01F0FF87C7F83C1C7FE03E7FC3DFFFF81FC3FFFFFFF7FFFB),
    .INIT_52(256'h0E1FFE00078FE0F83E7C3C039F80F83C3E41F01C3EE0F8F0E3FC0F9BF038F9C3),
    .INIT_53(256'h3E01F007C0FC43F00F0C3C21E387C71F1C7C60F807E00F00FFC073C3F03079FC),
    .INIT_54(256'h079E1F07FC1F07D83F0F807C1F08C70F181E1F1C1F0F9C1F0780390FC0FC0FC0),
    .INIT_55(256'hB0700F81F00783F007C1FC07E0FC07E1E31C7E03F07F83F07F07C07E07E1FE0F),
    .INIT_56(256'h7E07F83FC1FC0FF078C0FE30F839E0FE1FF07F03F83FC7F81FE1F3877C6DC19F),
    .INIT_57(256'h7FC00FF80FFC03FF81FF83C3E01FC1F1FF83E07FC1E3E01F007C03F83FF03F80),
    .INIT_58(256'h03F81FE1FC07C7FC0F81E7FE03C1FE0F807F1F807F1FC03F1FC01FFF00FFBF00),
    .INIT_59(256'h07E9F03FC3F87FC0FC1F30FC1FF80FFE7C01FF0FF0FF9FFFFF87E01FE07FC7FE),
    .INIT_5A(256'hFF83C3F9FFBCF78FFC70FFC3FE7C07FF7807FC387FFFFC3FFFE1FF8FFC3FF9F8),
    .INIT_5B(256'h1F7FF07F07FC3FC7FE07FFE31FFFE39FCC307FEF7E3077CF3FE0FF31FF8FFC03),
    .INIT_5C(256'hE3BFFFFC1FFFFF0FF0FFBF79F807FFF03FC1FF8FF1FFFE3FFFFFFFF07FF03FE0),
    .INIT_5D(256'hFFFFC7FEFFFFFFFFFFE3FF0F9C3EE3E3FE7FFFFFFFFFFFFFFFFFFE3FF0FF8FBF),
    .INIT_5E(256'hE60F9FFFE3FFFC7DFFE7F7FFC7FFFFDFFFFFFFFFFFFFFFFFFFFFFC7FFFF87FFF),
    .INIT_5F(256'h0FFC01FFF010F81FE3FC047863F7E0C7C03E3FC19F807C7F800FE00F8FFFE0F7),
    .INIT_60(256'hE207F807FC03FC03FE01FC01FF00FF007FC01FF007FC03FE007FF007FC07CFF8),
    .INIT_61(256'hC38F9E1C38F1E1C3C70F3C0CF871F0F3C3EF831F1E3C3073F1C3EC0FF803F007),
    .INIT_62(256'h1C3077C79C0CF8E1C1FFBC307FE38605FC71E18F8E1C18F1E3C38F1E3C38F1E3),
    .INIT_63(256'hC0DF86383FF0C207FC30E1FFCE007FE00E0EF87183BF08387FC70C1FF8E383FF),
    .INIT_64(256'hFF807E70F9F0FF38F0F9E1E3C3FF870F3E1CF03FE04F807F007863E3860FFC39),
    .INIT_65(256'h001FFFF800FFFF8007FFE003FFC0007FE003FFC0007FE00FF007FC03FE00FEC0),
    .INIT_66(256'h0FFF0FFF83FFE1FFC1FFC7FC1F207FC1FF8FFC01FFF7FF883FF1FFFF007FFFFE),
    .INIT_67(256'h10FFCFFC1FFFFFFBFFFFFF0C1FFC0FF83FF8C7E7FFF87FF80FF81FFC01FFFFFC),
    .INIT_68(256'hEF18FF8D5FFF847FFFBFF007FF1FC31FFFDF9C7F807FE07FC0FFA8E3C21FF1FF),
    .INIT_69(256'hF3FF79FFDF7FE3FFF1C4FFFEF1FF8E78F7FC3FE1FFF7BFFF38E3879EC7C3FFE3),
    .INIT_6A(256'hF7FFFFFFFFFFF0FFC7FE79FFFFFFF07FFFFFFFDFFFFFFFF807FCC3DF17FFEFBC),
    .INIT_6B(256'h9FF0FBFFDF8C7FF7FFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFC3FFFFFFFFFFF19),
    .INIT_6C(256'hC1E01F0F0678F0078E7863C780781E3C01E3E41E1E1FF3C1E7FC3C7801FFF807),
    .INIT_6D(256'h8C3DF00F03D83FE38E0C78C3C78F00FBCE1C71E01E1F83E07CE3C71C3CC3CE3F),
    .INIT_6E(256'h07FC03FC00FF803FF00FF803FB801FFC03FF803FE01FF007E780FFF00F803FC7),
    .INIT_6F(256'h03F073E3879C1CF8E3FF03FC01FF80FE007FC0FFC01FF807FC01FF003FC03FE0),
    .INIT_70(256'h7820FFE0CF801FFE07381FFE08F8F0F0C3E3878F0FF803FF83E787FF0F830FF0),
    .INIT_71(256'h03BE0FFE027E3FF039F0FFE047E787C70F3F3039FBE1E1F3C7EF871F1E7801FC),
    .INIT_72(256'h00FFF03FFC078FC03FE01FF81FFC0FFC07E107E387C787FF83C3C3E783838FFF),
    .INIT_73(256'h841FFF8001FFFE003FFC003FFF800FFE007FFFC00FFC00FFF800FFC007FE047F),
    .INIT_74(256'h0FFE03FF07FF0FFE0FFC03FC73FFC19FE1FFC71F867F00FE00FF00FF01FFFE1F),
    .INIT_75(256'hFF83FFFC63FE01FF00FF8FFF83FFC3FF03FFFFF83FFFFF80FFC1FF80FFF83FFC),
    .INIT_76(256'hF8FF807B8E39E039FF807FB041FFFEE7C4FFFFDFE001FF00E7FF00FFC038FBFC),
    .INIT_77(256'hDF30FFF7820FFBC3BFEC81BF7FE738E7FFE7FC01DFFF883F1FFBEFFDFFFFF01F),
    .INIT_78(256'h807BC3FFF8F9FFBEFBFFF3FE71FFFFF1C7FBC00FFFFFE71C7BFFFE0C73E71FF1),
    .INIT_79(256'hE0FFFEFFFFFFFF8FFFFFE3FFFFFFF9FFCC3FFF9FFFFFFFDFFFFE3CFBEFFFFFFF),
    .INIT_7A(256'hE1F0C1E3BF1870FF078FFFFC3E3C79F3078FF878FFFF3FFFFFFFFFFFFFFFFFFB),
    .INIT_7B(256'hF1F60E7C21E13E01F00F0F87787803C63C71E7C03E27FC1CE3E01E18FFC3063F),
    .INIT_7C(256'hFF801FF803FE003FC01EF887FC007FE03E007F81F9800FF87FC18F807E00E79F),
    .INIT_7D(256'hE3E1C3C1C7C1C7E087E007F007FC07F003FE03FE01FF80FFC01FF00FFC01FF00),
    .INIT_7E(256'h9E1C7870F1E3878F0F3C1C7838F0F3E1C7C38F8F0F1E1E3C387870F0F1F1E3E1),
    .INIT_7F(256'hC7879E0E7C39F0C3C30F0E7C01F0C3CF0E3C7870F1C3C78F0F3C1CF861E3C70F),
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
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .INIT_00(256'h7878F9F0F1E1C3E3878F8E1F1C3878F0C3E18FDE1C3CF063E3078F1E1E7879F1),
    .INIT_01(256'h7FF001FF807FF803FF803FF01FFC03FE01FE00FE007C3C3C3C3C3C3E783EF83C),
    .INIT_02(256'hFF81FF00FC03FFC7801FFFF8007FFFE007FF80007FF0007FFE001FFC007FF000),
    .INIT_03(256'hFFE1FFE0FF00FFC3FF0FFF1FFFFE7FFC01FF01FFE0FFE0FFE0FF81FF8FFEFFF8),
    .INIT_04(256'h0FFC03FF007FFFE601FF19FF81FF18F00FF10FF00FFFFE43FFFF1FFFFFFFFFF0),
    .INIT_05(256'h1FFF1FFFF800FFFFFFFF63FFF81FFEFF1FFBC7F80FFF87FE3FF23FF63FF00FF8),
    .INIT_06(256'hFFFF98C67FCEFFCFFBFCFFFC00FFFC3FFF007FFFFFFFF807FFFFFF307BFE3FF0),
    .INIT_07(256'hFFFC03FFFFF8CFFE21FFF9867FC67FF8FFFF0FFC67FFFFFFFFFF9FFFFFC618FF),
    .INIT_08(256'hBFFFEE7FFFE67FFF0DF901FFF83FFFFFA0FFFFFFEFFFEE77FFCE3FF9FFFFDFFF),
    .INIT_09(256'hFF3FFFFFFFFFFEE00FFFFFFFFEFFFFDFFE0FFFFDFFFFFFFFE001FFFFFFFFFE3F),
    .INIT_0A(256'hFFFFFFFFFBFF384FFFE7FFFFFFF9FFFFFFFFFFFFFFFC7380FFFFFFFFE79FFFFF),
    .INIT_0B(256'hFFFFFFFFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFF3FFFFF),
    .INIT_0C(256'hE3E3E1C3E3E3E7FFFFE7FFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'h718E739C738E39C71CF3C78F1C38E1C7870E3E3C78F0F1E1E3E3C3C3C3C3E3E3),
    .INIT_0E(256'h666666666666666666673333331999CCCC66633398CC66319CC66319CCA33DCE),
    .INIT_0F(256'hDDB26D9B364D9336CD9376CD9B366CC99B3264CC999322666CCCDDD9BB333726),
    .INIT_10(256'hB6DBE96DB6F24FB4FF7DE6DB4DA4FB6DBB92EDA6A2BB26D566C9DEFE4DB26DB2),
    .INIT_11(256'h92D2DB5B7B6D6DA5B69692DB5B496D24B5B6DA596D25B6F7FE5A6B2CB0925B2D),
    .INIT_12(256'hA52D7B7BDEDBFABDB5F4A14B5B5AF6DA4A5B7F6B6DBFBDBDBE929295B6B5B4B4),
    .INIT_13(256'hBEDA77F6FFEDBA5FF93DEBB7BEEED2C25BEDED7DBDB5BD7A4A5F52925B5B6D24),
    .INIT_14(256'h2DB7FFFF6DB7BCA6B6F7D61FE7DB7F09BC37A7F7F3FEBB6C356492DA567936DB),
    .INIT_15(256'hBDB6D35A4B6B6DEDB6D65B6F6DBFFDAFBFB6DBDB4B6924B4F6FEDF7FFEDECF6F),
    .INIT_16(256'hFFFFDBEB49FFEFBFE5BFB5FEF7FFFFFFFFFFFFFFE73BFF7FFFFFCA7BFB4B69BD),
    .INIT_17(256'hFFBFAFFFFFFFFFFFFFEFFFFFFFFFFFFEDF7B653FFFFFFFFFFFBD87DFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F7BCFFFFFFFFB7FFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFF7FFFFFFFFFFFFFFFFF7FD778FF9FFFFFFFFFFFFFFFFFFEFFFFFFFF8F3F),
    .INIT_1B(256'hC78E1C71F1E78F1F5F3E3CF878F8F1F9FDF9F0FFFFFFFBEDFFFFFFF7C3F8FFFF),
    .INIT_1C(256'hDCE719CE739CE7398C631C631CE318E738C718E738E71CE39C738E38E38E38F1),
    .INIT_1D(256'h9999CCCCC66673333999CCE6733198CE667398CE67319CC673BCCCE63B9CE739),
    .INIT_1E(256'h6CCC9BB333766644CCDD999B9B33333366666666666666664666666777333339),
    .INIT_1F(256'h6C9BB66D9B264D9B366CDBB26CDDB266CD9B6ECD993266CD9B3366CC899B3366),
    .INIT_20(256'hD5BB676B59B366DB56FD9B6ED9B366D9BB26CDBB66C9B366CDB266D9B26EC9B2),
    .INIT_21(256'hBB3266CDD9B366EDD9B3264CD9BB264DD9F64D9326CD9336DDB3766DCADBB66E),
    .INIT_22(256'hC9B33366CCC99BB37666CCDD9B33666CCD993B26ECDD93B3266EC89937666CD9),
    .INIT_23(256'hCECDDD999999999999999DBBB3B33333326664ECCD9993336666EECCD99B3766),
    .INIT_24(256'hE66673339B9DCCCC6673333999998CCCEEEE666773333999999999D9D9DDD9DD),
    .INIT_25(256'h673398CC67339DCC67331DCCC733399DCCE733399DCE667739DCCE67731199CC),
    .INIT_26(256'hE731CE7398C6739CE6339CA6339CEE67B9CE63399CE73199EE7399CE673398CC),
    .INIT_27(256'h8C739C738E718E718E739CE71CE318E739CE718DF39CE339CE739CE339CC6B18),
    .INIT_28(256'h18E39C71CE38E31CE39C738E31CE38C738E31C639C739CE38C71CE318E718C71),
    .INIT_29(256'hE3CFEF3E78E3871C79E38E3C71C71E38E38E3CE3C71C718638F38F38E38C71C7),
    .INIT_2A(256'h71C71C71C638E3CF3CE3EE38E78E38F3CF39FF9F1C71C71C79E38E3871C71C70),
    .INIT_2B(256'hFFF1E38E3C79E79E73C71E38E3C738E71E3CE1E71E1E7EF3C71C71C79E79C79C),
    .INIT_2C(256'hF3E1C7FFC78E3F7F7FC71CE3CFDF3E71E3E7C71E7FFFFFCF1C38F1E3C7FBDE39),
    .INIT_2D(256'h0F1FFFFFFFF1E1C3C78F1E3C71E3C7878F87871E3C78F1E3C78F0F0F1E7CF9E3),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFE7FFFF7FFCFFF),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7),
    .INIT_30(256'hFF3FFFEFFFF3FFFFFFFFFFCFFFFFFFFFFFFEFFFFFFFF7FFFFFFFFFBE79FFFFFF),
    .INIT_31(256'hFFFFE71FFFE7FFFFF7DE7CEFFFF7FFF1F79E7FFFFFFFFFFFCFBFE39E7BFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFF80CFF9FFFF87BFFFFCFFFF71FFFFFFFFFFE630FF9CF7FF9FFF8F),
    .INIT_33(256'hE3FEFFFFC7FFF00FFFF9E7FF0E7987FFFFFFF7FFFF7EC60E38FFFFFFCFFFE7FC),
    .INIT_34(256'hFFFFFFFFFFFC0FFFFFFFFFFFFFF1FFE1FFF9FF3FC38E30CFFBFFCFF8C6F9F7FE),
    .INIT_35(256'hE00FFC01F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'h01FFC00FF003FF801FF801FFC00FFC00F7FE007FE106FFE00FFC03E38FFF03FF),
    .INIT_37(256'hDE007FE30700F8FFFC00FFDFF800FF803FF003FFFF0F000FFF803F803FF803FF),
    .INIT_38(256'h00FE207FE03F303FF00F181FF827FE07FE01FF80FFC01FF01FF803FF003FF063),
    .INIT_39(256'hE03F803FE03F803FC01FC01F843F841F843F8C3F0C3F0C3F0C3F1C7E787E18FE),
    .INIT_3A(256'h7FE03EF00F7807FC03FE01FF01FF00FF00FF807F807FC07EC07FC07FC07F803F),
    .INIT_3B(256'h8C0F180F8C0F181F101E301F103F301F900F980F9807CC07FE03E700F3807BC0),
    .INIT_3C(256'hC61E78E7C0FF073C39E1C70FDE1E787BC1EF831F073E18F8E1C7C387870F9C0F),
    .INIT_3D(256'h8F0F3C78E1C70F387DE1E3878E1E38F1C38E1C70E3879C1E3073C38E1FF871C3),
    .INIT_3E(256'hF803FE01FF807FC03FF07FE00F9E0E3E1F9C371F078F071E1E3879F0E3C3CF0F),
    .INIT_3F(256'h83BFF8003FFF800FFF8007FFC001FFE007FF801FFC00FFC01FF801FF003FE007),
    .INIT_40(256'hE31FC63CFFE7FFC03F807FE3FFFFFC79FFFE0FF83FF807FC01FFCFC01FFFFFF0),
    .INIT_41(256'hFF02613FE39E7018FFE037CFFB0FFEA719FC033E71DFE0FFF00FFFC00FFE1FFF),
    .INIT_42(256'h3FF08CFFE007DE71FF28FFBFE01FF003C67DC01FFE00FFC071FFF077FC03BFC0),
    .INIT_43(256'hFFCFFBFFFFCE3FFFFFC21FFF80FF8107F843FFC8FFB4FFDFB4EFBFF0FF718791),
    .INIT_44(256'h7FC1FE0FF01FFFFFFFE03FC03FE007FE007FFE01FFFE01FFF01FFFEFFC07E3FF),
    .INIT_45(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFE1FFFFFFFFFFFF1FF03F83FF0),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE03FFFFFFFFFFF),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'hBCB9479B2D9873ACF0FF2ACFAD73FFFFFFFFFFFFFFDFEAD7FFFFF83FFFF873FF),
    .INIT_4A(256'hF86F8C710E38E39E79C79651E79879E78E38C79873A71F0FE0F0E59E1D679D3C),
    .INIT_4B(256'h83C1E0F0783C1E0F8781E0F87C3E8F87D1F0FE2E1E83E3F87F1F8561CC3F0CE1),
    .INIT_4C(256'h8B85C3F0F178F87E3C3F1F1F87C3E1E0F1787C3E5E0F0783C1E0F0783C1E1F07),
    .INIT_4D(256'h1D9D9C9E3C638F2C279F93C3C9E1E4E469E56DE6F2F3F079F8BC7C5E3E2F1687),
    .INIT_4E(256'h3CFCFC7878787C7C7C7C3E3E3E7E7474767E7E3E3E3E3E3E1E331E1B1F3F1F1D),
    .INIT_4F(256'hD970597ACA61B5F1CF36B8B4CFCF279BF198C0E0E17178F8F838F878B8B8B83C),
    .INIT_50(256'h7A863F7F8E0780CBBC07E0C797B7F7E99C3C3E3E2E1F2F470F278BD5A6C3E1FA),
    .INIT_51(256'hC03E01F18F847E03E01FC0FF87F07361F0B8F318F8E73C70FCFC021C103FFF3C),
    .INIT_52(256'h7F07E07C03C03C11E19F18F30F107C0FC07807C07E03E0DF00F807C03E01F00F),
    .INIT_53(256'h83C8790F01E03E03C0FC1FC1F03CC3C07C07C0FE1FC1F01F01F01F00F07F07F0),
    .INIT_54(256'h739C6398E71CE719E638CF39C6739E639CF31C4701C0780F11C0780F03E07C0F),
    .INIT_55(256'hCCF01E07E1CE7B9EC719E27D8E73DC731C639CE31CE71DE738E719C639CE33CC),
    .INIT_56(256'h0E6781E8F6792C0F23D064BA3C976781E0383C8F63B1C47B0CC731EC7F3DC731),
    .INIT_57(256'h9B59CCEED6633B95CACD66B3B95CAE56572F93CAE572793C9E4F23C1EC72393C),
    .INIT_58(256'hE36331B1B9FCD8FC6C6E7E3E3F1F1B198D8DC6C6635331B198C8C46EED643533),
    .INIT_59(256'hAD8787C7C7C3C3E363E1F1F0B0D0DCDCFE7C6E26373F771B9FDF8DCDCFC6C6E7),
    .INIT_5A(256'h72333B1D8C94C6EB6B636131B1B8F8D8D8DC6C6C6E363636B63F1B1B190D8DAD),
    .INIT_5B(256'hCCEEF673399CDCCE6333B3B1D8C8EC66363339198D8ECE466735B190C8CDEC66),
    .INIT_5C(256'h70F87C7E3E0F078783C3C0E0F8F8080F076731D1C8ECF07839BCBE0E5F331399),
    .INIT_5D(256'h19E1CE31C39C0E1CE7387387871C7FE3C3F87C73878EE1C0FCE271E3387E3C87),
    .INIT_5E(256'h39C38E18E1C70C78E3871C33C39E38E1CF1CF0C78C786786787F87F8CF0CF1CE),
    .INIT_5F(256'h1C7871E3C78F3C3CF0E3C78E1C70E3871C3CF0F3C38F1E78F1C71C3C71E38F1E),
    .INIT_60(256'h07E0FC1F83F07E0FE1FC3F83F87F0FE1FE1FC07863867873873873C39C3DC3CE),
    .INIT_61(256'h98F63FC7A1EC3C1F03C0F01E07C1F03E0780F87C0783F07E1FC1F83F07E0F03F),
    .INIT_62(256'h1F0783C1F0F83C1C0F07C1F0783C0F03C1F07C1E0781F0FE1E07C3E0F87F0FC3),
    .INIT_63(256'hE0E0F0783C0E0F0783C1E1E070383C1E0F0783E0F0F03C1E0F07C3C1E0F07C1E),
    .INIT_64(256'hAC2E562F2F9B91CBF6E4F23359583C1E0F078386C9C0E070783C1E0ECF0793C1),
    .INIT_65(256'h998CCCDE6F773B2D9189CDC466F6B23999BCD64E7727AB959BCAC5E673B339BD),
    .INIT_66(256'h1D8F8EC667E3A3B399C8E0EFFC733F399DCECEC76733EBD39391C9CE6C63331B),
    .INIT_67(256'h763B3D1D8F46C76333B199C8CC6C76333B1D8F8ECEC767233381E5E1EABA3B9F),
    .INIT_68(256'h38E71B8FC6E2E3F1F978CCAE663F1785CFE7E0F0719D1C8E8F16639399D8E4E4),
    .INIT_69(256'hE1F1F8B87C9C7F5E071F8B8BC7E3E371F8987C7F2F07838FC3E3F1F0FCFE7E7F),
    .INIT_6A(256'hE3B038F83C3E0F0787C2C2E078783C1F0E170783C1E3E2F8387C3C1E1F0787C3),
    .INIT_6B(256'hC7E2F178FC3C6E0F178DE7E3F1F8BC7E4E370F8789C0E1F8FCBC3E1F1F838EE1),
    .INIT_6C(256'hC7E1E0F138BC5E3F1F0F87E7E3F1F8FC3C7F0F1F8FC7E2F1B8BCDE6F3B179B8D),
    .INIT_6D(256'hE3F0F83C3E3F1F9FC7C3E3F1F1FC3C1E1E1F0787C7C7E3F1F0FC7C7E3F1F1F83),
    .INIT_6E(256'h0F87C3E1F0F8FC3E0F0F83C1E0F0F83C3E1F0787C7C1F0F0F87C3E1E178FC7C1),
    .INIT_6F(256'hE1F0F87C1E1F07C7E1F0F83C1E1F0F87C3E1F0F87C3E1F0F87C3E0F0787C3E1F),
    .INIT_70(256'h783C3E3F0F87C1E1F07C3C1F0F83C1E1F0787E3E0F0783C1E0F07C1E1F0F87C3),
    .INIT_71(256'h83E0F0783E0F07C1E0F07C1E0F8781E1F03C3E1E0F87C1E0F0781C0F0787C0E0),
    .INIT_72(256'h7E1F07C1F0783E0F83E0F83C1F07C1F0783E0F03C1F0F83E1F07C3E0F83C1E07),
    .INIT_73(256'h1F83E07C0F83E0781F07E1F03E1F87E0F83E0F83E0F83E0F83E0F81E0F83E0F0),
    .INIT_74(256'h03E03E07C0F81F80F83F07E0FC1F81F03E0FC1F01E07E0F83E07C0F80F03E07C),
    .INIT_75(256'hE71E31E23E07C078C70DF81F03F03E07C2780F81F31E31E1BE07C0F81F81F81F),
    .INIT_76(256'h0FFC38CF863C03F8F10F807CE7867C41BCF1C70C7863C638C7847C1F01F71CF1),
    .INIT_77(256'hFF001DFC0073FFC707FF073C7871E18F0E7E01EF1C31F0DFE383FF083FB831E3),
    .INIT_78(256'hFFE0038F1E1FFC21F8FE40CFC7063FF863E3861E78E3C3CF0E7E3870FFE1C10F),
    .INIT_79(256'hFC01FF003FC1FF813FF031FFCE1C7FF00FFE01FE03FF1FBE0FFC1878F9F1FF00),
    .INIT_7A(256'h0FFE003FFF007FFC007FFC01FFE00FFF007FF003FF007FF003FF807E61FFC01F),
    .INIT_7B(256'hEFFFFF3FFFE3FFE00FFFFE7FFFFC61FFFFFF001FFFC003FFF000FFFE001FFE00),
    .INIT_7C(256'hE60EFFE1E7FF87FFF07FFC01FFFC00FFE007FFF863E7F807FFFC7FFFFF387FFF),
    .INIT_7D(256'h20F7980FFC61EF99FFCE3FF087FFDE3FFF8FFFFBE7FFF807FFC07FE107FC3FFF),
    .INIT_7E(256'h0738FF00FFC01FF80E38F3863EFBC03FF823D3DF006FCC1DFCC03F883DF003FE),
    .INIT_7F(256'h3DC439C37DC33847FC200FF1CE601FE618E3FF803DC3FF003FE0077F83FF01F1),
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
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:1],DOUTB}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized35
   (\doutb[15] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    ena);
  output [0:0]\doutb[15] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input clkb;
  input enb;
  input [16:0]addra;
  input [16:0]addrb;
  input [0:0]dina;
  input [0:0]wea;
  input ena;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  wire [16:0]addra;
  wire [16:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]\doutb[15] ;
  wire ena;
  wire enb;
  wire ram_ena;
  wire ram_enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hB)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_3 
       (.I0(addra[15]),
        .I1(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_5 
       (.I0(addrb[15]),
        .I1(addrb[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .INIT_00(256'h78F701DEE659F0315CC6F980C43B887387B8FA3BF02A2FB1EE7C2760ECE7F881),
    .INIT_01(256'h0FE1E43F0780F30FE03E1F81E03F47A07F43F09A0FA4F8FF81E63B82FE7907C3),
    .INIT_02(256'hF3C783879F8E780F8CE1E71CEFF70E71F87F1E3CF0E0F87C3C8FC1F0781F0E0F),
    .INIT_03(256'hE1C7870F0F0F1C78F78F0F1E3C739E1F1E38778F838F1E3C7383FC70F07C739C),
    .INIT_04(256'h79E39C71F3C71C3CF1FC708F987FE3C3873C73BE3C78F1C38F1E3E3879E0F1E3),
    .INIT_05(256'hEE381C79E38E3CF1C71E78E3878F8E387FFC739E79E30F9E38F1CF1CE3C78E38),
    .INIT_06(256'hA29DF8E70EF6BC3871D78CA3C7384373C71C777CE01D78F031C71C71C78C703F),
    .INIT_07(256'hBCD79861CF1FC431D71E78F1E3C71A8E38E63878C78838E3871E3C63C51CE33C),
    .INIT_08(256'h31AF3CF1E117DF9CDC7777F8D3E8FE3C71C71E38E71E31E1B8C71F184F7AF2BC),
    .INIT_09(256'hE3CF8C38F3F83FFBD33C79C7347BBC715F1C71C3C708F3BF071E3F8718E32EE6),
    .INIT_0A(256'h8FC638E3F3CE043FF2623E78C799CE1873F30F8C71CE397BC718FF9C71CE3C70),
    .INIT_0B(256'h8807DF387C6F8C05FFF071EFC79E1864FDE381CFFC043C78C787CF18F1F31E7F),
    .INIT_0C(256'h07F3EC3C3E18E7FCC003EFF8E3FFB01FFFF1C07FF002FFFE3BD83C7FBC618FF3),
    .INIT_0D(256'hF9E31F3C3519CFE01FFF9435BEC398E3C39E71C619BDFF8F9F1870FFFC01FFCC),
    .INIT_0E(256'h0E7BE70B5CF9C60C7BF61C31EEC320F8E1879EFE0C77CC03ECF81AA7DE30C79E),
    .INIT_0F(256'hC007DF3860E7E1FE1E77E3880F3BC2387BC5871CF9E6A23EF8639EB8C2E3D9E7),
    .INIT_10(256'h1FFDE70FFF38E7CE7EF8878F3F380C61BFFC03CFFE1C71CF7CE063FF313F9F71),
    .INIT_11(256'hC3C7FF01C7F03EE1DAFF73E0FDEF0C71E3E7873C3F3FD47801EFE203CFE0718E),
    .INIT_12(256'h1EFFE3871E7C783CC703FF833FE83FC987F0FCF1C71E38E3C61FF0E04FE7E73F),
    .INIT_13(256'h18E3863C7E8786FFBE38E3C7AFB9F50E0FEE319E01F1B86F8E1CEEF9F3FFE3CE),
    .INIT_14(256'hDF39C2675D51E34E1C79E39C95EF7AB0C3871C3D53C8E707BCE1F79E31CE2BCE),
    .INIT_15(256'h1C7CF3E7FFFFFF007FFFE38FFE08679E71CF39FF3CE5D3E5CC975F5538FFB8F1),
    .INIT_16(256'h71CFB8838FFCF8E31F9F7DE671CF718E7BE39E78E38EE678E431F1E3C38E1C7D),
    .INIT_17(256'hFF00F0C73F831FFCE30E79F9F5C1C71E3C7FFC73DC63BFFFFF1CE38F1E7FFF18),
    .INIT_18(256'h1CDE60F1FF1F8F1FE073C638EF870C7FFFE066BF7FFFFC3FF9E78E348F7F0C3C),
    .INIT_19(256'h3DE1CF3E7DA31E7C71E1C60E7C38BA3CF29FBE59C63E70E3CF1C3967FCF39F1F),
    .INIT_1A(256'h3FF98EFBFB8E78E9CD7FC628F3F9F3DF3E18E6FE71C0F7FF831FF00E79C718C7),
    .INIT_1B(256'hFFFE3C71EF827EFFCE73EFF3C7B9CF5C71E5CFFE33BCF318FE3CE2E3FBBBDC6E),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFF9CFFFFFFFC7F1FBFFFFF7FE9707BC7FFFC7BFF3),
    .INIT_1D(256'hFFFFEFFFFFFFFFFF078FFFFC37FFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'h3C3FFFBFFFE3FFFFFEFC3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'h9F07FFFB873F8787FE3C3DFC7E7C1FFE783FFC3E0FFFE01FF87FFB1FFFE0FBF8),
    .INIT_29(256'h9FF1FDF1FFFBF8E1F0FC71FCE1F1DFFC6FFFFBE1C1E1F9E1E3E1F1FFC07FFE1F),
    .INIT_2A(256'h7C787CE1E3FFFCFFF0FFFFBC78FCF8E1F9C3C7FFF3E071FFFFE1F1C7E187FF07),
    .INIT_2B(256'hC7871F3C70F1E38F8F3F7870F1C7C78E0E3C70E1F38787FFF9F1E187C7CF1F3E),
    .INIT_2C(256'hF86787FFFFCF38F3C38C3CE3C1F7CE019F3FF0E70F3CF0E3CE1C37FF9F3CF8FF),
    .INIT_2D(256'hC38C7CC78FFBFFFC3FFFFFF0EF3C70C788787DE7E0FFFFFCF867C63C63CE3C1F),
    .INIT_2E(256'h89F1BF1DE4FF8710F01E1E3F1F9EF11E3FF8FCC739F10E1FF9FF80F9CF7FC0FD),
    .INIT_2F(256'h07C3F0781FE7C3FF3BF83C07F07C1F01E3F8FFCFFC67CCF81FE1FC7C038F39CF),
    .INIT_30(256'h8F21F9F1ABEED2F2E0F87E0C70F8FF3FCC7C7D7C3F8FA0E3E0FC7FFF9C73C6FF),
    .INIT_31(256'h387AF1C2F1DF33FEEF8E2578318FFE3A9C15AF8E29BC399DFC2E67E9F2F0EAFF),
    .INIT_32(256'hC38EF3CE7C71DCE1C7C4F1D756BE38FFB8787ABCF7EBAE1EDE3CF775786FAFEF),
    .INIT_33(256'hFFDCFCFE3E38FE0FFF1FEEEF3E38F87879E3E1C3C78F8E1F073E387E70E1F1E1),
    .INIT_34(256'hC79C3C7EF873E33DE3C3783C71F0FE3E7E1C0FC3E37F87E1CFC39BF870E3B1F1),
    .INIT_35(256'hF879CF07BE1C77CF0F87DE3FFBFF861FF8F1F87F87FE3C79E1C77BC7879C3FE3),
    .INIT_36(256'hE1F1F87FF3F0C7C7CC3E0FF0F83FC7E638F0F8E3879E7C3FF0F0C3BE3FBFFF3F),
    .INIT_37(256'hCF0787C70F3E71E3FF8FC7FFFF83C33FC3E0FFFDF1FF873F7FF1CC1FE0F83FC1),
    .INIT_38(256'h0E7F1C1FFC1F3FE01FFEFFFF0F1F023E7E1C1FF87C7FFE1FF0FFFF3E70FFFFC3),
    .INIT_39(256'hC7CF0FFF1C3F87E87EFC7F7CC1FFF1E0F1E7E3C1C7C1E1F7F1F0F8780FFFBE0F),
    .INIT_3A(256'hFFC0FFF03FDE07FC1F0787F1FFC3FFFF8FFFFC0FEF07F787C18FC18F87C3C787),
    .INIT_3B(256'hF03E78F8F879F8F07FE0F1F1C1E1FF8EFFFC1FFF0E3F3C1FF83FE3C7C3878FFF),
    .INIT_3C(256'hFBFF80CFFFFE03BF0FF0F8F1FE7CFFFFEFFFF7F07FE1FE079F831F1F3C3E1FFC),
    .INIT_3D(256'hF878F870F3E1C1DF078F9F387FFE0FC7DFBF3C38F860F3F1F9FBFFCFFF7FF81F),
    .INIT_3E(256'hFFFFFC78E7CF007CF9C3C7FC7C71FFF3C7FC3FFF8607DF3B0E38F07C7F7F9E1E),
    .INIT_3F(256'hFF0EF3F79E1FF9E3CF387BC3CF3FDE79FFF3C61EFFFC71F3F9FE3FFFF8E37CFF),
    .INIT_40(256'h71E7CF3CF83F9FC7F1FE0EBFFC7F9FFFFE0FFFFE1FE3FEFE3FF3CDE78FBF9E7F),
    .INIT_41(256'hE7FCFFFFFFFFFFF1FFC3FFFFCFFF8FBFCF3CF3FFFF3FC79C7FFFE3FC79EFFBDC),
    .INIT_42(256'hFFFFFFFFFFFFFFE7FCFCFFFF9C61E7FFFFFFFFCFFFFBE3FFFFFF9FFFFFFFC638),
    .INIT_43(256'hFFFFFFFFFFC7FFFFFFFFFFFBF3FFFFFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFE7),
    .INIT_44(256'h000000000000000000000000000000000000000000002AA555FFFFFFFFFFFFFF),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[14:0]}),
        .ADDRBWRADDR({1'b1,addrb[14:0]}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:1],\doutb[15] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(ram_enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__19 
       (.I0(ena),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(ram_ena));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__19 
       (.I0(enb),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ),
        .O(ram_enb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4
   (DOUTB,
    ena,
    clka,
    enb,
    enb_0,
    clkb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]DOUTB;
  input ena;
  input clka;
  input enb;
  input enb_0;
  input clkb;
  input [15:0]addra;
  input [15:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTB;
  wire [15:0]addra;
  wire [15:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire ena;
  wire enb;
  wire enb_0;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .INIT_00(256'hC15C760052A1E9E2EE619B264FB252EDC10625EB5164C6DA35C5CBAAB65F3B89),
    .INIT_01(256'h46CA04D39F9ADEB1C02D97EE99D46D5E88D5D82573E11B1B42C55BB9B3D77144),
    .INIT_02(256'h521580CD854B6DF68F2C190EB7ABFA6A25D8E6C9E22CF7135861E01E30775EDE),
    .INIT_03(256'hDEE97E3FE485D8CAD309D580A80494C0D106512D496C5A7B9094B08572AE3648),
    .INIT_04(256'hF6F6A066B994500ECE24FA470B442FC2AA247D5FBB9C1B61A85526653752E4F5),
    .INIT_05(256'h00D2662D48CE4BC6FC6C82948BA07DBF08305984BE232A8680B7DB5630E4E76D),
    .INIT_06(256'h845E0645D6B371F83549FB490B0A7B4F2EE6A0A4CE1476C136EED6939F094DD6),
    .INIT_07(256'h5AD415F254F40950A5233ADD03429A3E3DDE99D5B19080E9951CFB6CC739E62F),
    .INIT_08(256'h5234918311FCF33D6C05D24DF91799F92D03C71CE43A2D05674E24B6157818E0),
    .INIT_09(256'h0038D6528294DDD8E4C095C0581A743E7DFFBDB65489316F485685D6EDE3D690),
    .INIT_0A(256'h60EF8A2155DF512434C22ECE021739CC3D320C3FE171B369E77C4187CDD169B2),
    .INIT_0B(256'hBAA77B2346D5F43EAFC3956A69E28C805044E037BDCACD35304CBDEE93D65F5D),
    .INIT_0C(256'h3F9BB1A4901C2D8EECDAE78563646C5BEC915041AEBBF2F7A5E544285F992EE5),
    .INIT_0D(256'h12FB92F62C21B7E4482447836161D02621F1F719EBE1B9D87B787E489E42FB6D),
    .INIT_0E(256'h9B828F690A6ADDCC5880A3173A7AFFE9BE1B287D19F3FF3B3729DEF00FAC5029),
    .INIT_0F(256'hB0300D2E89A04F3CE049E15BEBB7431ED34857FBDFAE919F0438701D0DD1706F),
    .INIT_10(256'h8E91CB4AEBB0163B4368781837736C19E709A0EAD49614D1D493DA5850F5504B),
    .INIT_11(256'h5AA5D493245FB8413702221C3A0AC2B0C356423749C3470C836744D6EFB9FC57),
    .INIT_12(256'h57B2902998324A8E9290A6AA4E3A01A39C682360CF7F388D728104EE003C53ED),
    .INIT_13(256'h2BD1B9D4331570A73BD7F4C2C4206A503E2C36703E67B9529D642A65BFC18EFD),
    .INIT_14(256'hB3B112EF8DBE21D550B33103DFECF77DD0E2FF8C9BC2FB1D4A52CD0026501415),
    .INIT_15(256'hC0E7E86389BA105E819FBCB6A515E3D0F95F75569DD8C13C3588FAF3A4CE13EC),
    .INIT_16(256'hFAAE60DB6E6EF0D48B21580878A8C7B14E38B4A9BDDEDDCE63C6E3F385A0091E),
    .INIT_17(256'h2E41CCE3DB87CF3DDAC6DE327658FCEDD73B1F085C09DAD8F0B2BA20ABFAA1E2),
    .INIT_18(256'h10D3CBF44EE6259D1EDFE84394B07C3697E5B28A98BAB9DA8519E443877BAA0C),
    .INIT_19(256'h1584FDF407B60BAF9D50921DC134FAC276D2C27551219F6E7F5744647D388986),
    .INIT_1A(256'h987E67AAE5081E249A1EB11D2C719453C8FB08023E1AC25AF6F2366AAC65A6D0),
    .INIT_1B(256'h794C0DA2861760E1B305FA53E4E2B5CFDF73AFD036FB7F550AA691073DE25EBE),
    .INIT_1C(256'h22D2EDEA8F3C6371BF9A5B45DB312ADD8ABC14F2A3093952647AF90B324EBE68),
    .INIT_1D(256'hEFF60837345C2F549FD62212B6F9887C2951811BE729000CC9CEC852E1681A47),
    .INIT_1E(256'h47BC73E0F11DC8329FC9DD4F8F6412260D787BCBB1C5EC615C8A9BDA21D71F23),
    .INIT_1F(256'h5A45F20CEBA506E4381A88C970EF7BE0474771E3DF4B9C5F49794EF57330BEB5),
    .INIT_20(256'h7658139B7B31CECF9E8BE0B43D5653FD68F3591A70993153B017CC9A1E20BCEC),
    .INIT_21(256'hF00C7FD850FC09D31A7B73E7BB2B640C5B4C46FACD387E55E4D2E26652FE73D1),
    .INIT_22(256'h26992677B0F028779CCB355C5522C54F9ECE355C79EACDAC858DDD54B945527E),
    .INIT_23(256'hC0AD9843B4DD1D2C715BC148E14D5D55CBD963D6C6C4129589EE045624635900),
    .INIT_24(256'hC455E573BE1C81E58895B90B497CD98F176A3B60D00DAE87CD17E551D85A747F),
    .INIT_25(256'hD0122F99A3D38EBF09A46C1FBDC8B92D668DB015679A3A7A9F7FFD7315AFB6CA),
    .INIT_26(256'hAA258735AD53158D04D8085AD545F0CE866EE1869984E556A8EFA2FC2E3CEE6A),
    .INIT_27(256'h2269A87321548AC8DEAB4371FA9E2D592BC349578B15535AE7BFA9A6F984DA43),
    .INIT_28(256'h8DB45854E5831AA54CB5493241DAC5C9152214B031F250AB33FAB549BE9B7AEA),
    .INIT_29(256'hEFFADE2EA24DD47635A5EE0DC618CF6D76ECF136F9AE648B7E6EEC705B0BA24D),
    .INIT_2A(256'h1FABC4B4EE638DE3CF220BE0CBC988DF703B5485550FCDCB2E3E49E7098E2C42),
    .INIT_2B(256'h3168ADF7EA61C1E6A1B5C46860708D4510E43557702503A10C3772FD23964D71),
    .INIT_2C(256'h22265937890212983557E5D45D1EA70AFC8406170952660FE01F36B773F4A349),
    .INIT_2D(256'h7488BA8EEBA1D67CA82FC5E6D545688CBEC4C39E8132418952499371EADD06AE),
    .INIT_2E(256'hD8CB3923EBC12DDD2BF25E86519DD4010ED31D742A2FFE2B65DC5AF013E01BEC),
    .INIT_2F(256'h354688ECE0AA011BED6DB988DD50C81E490CC28AA89036C02B712AAFD18F5E14),
    .INIT_30(256'hAF2A58A8F799AE534B801506B5C5CF24339198EE2D138B09A941D21A7CF3881D),
    .INIT_31(256'hBAA331BB50A19AD68794DE60AEB407DB1F44D98C529B2B7BDF1439C258D355DF),
    .INIT_32(256'h02F1FDCA44BD5FBEC9480FA3A80E85E6F7547113767CB2E6DE4C37FCAA77EBA7),
    .INIT_33(256'hEB0EA229E9B3EC48EE603F691FE19A94CB6B7400901BF6D212DC53FE0D9EB2E1),
    .INIT_34(256'hE00AD4E49085842D636D996753DF828E8800CEF0524219F391286A8393F0626A),
    .INIT_35(256'h289341DF3A7AC5D44C1DEB0F68115B0499AFF6C4B218631F9E4802D57C532A60),
    .INIT_36(256'h54B2E9E784E4B96F9D3AB38F989C7EC26E6BFBB567B704D2C74399389F79E47B),
    .INIT_37(256'h7AE768AB489463FC822723DEC1B09F43C76661F9EBB413923BF70806063E3253),
    .INIT_38(256'h435C8FD99541D0F912074B610B03BA32AB586B0A2EFA6D0600DA8929E8254B48),
    .INIT_39(256'h4BBFF7CEC9D267E3F5D20B8A94C810B9DA0DAA002CA9D3DF9120F11A8F00010D),
    .INIT_3A(256'hC2F16E63BAA9B1E6AD28F9E328E2967EAF4FA1C1F710CA4343AD7B807A029D38),
    .INIT_3B(256'hB25B0F7A7D511F25DDFC3E3580DCDFA35FE1A2363A94E585C50C7A40C44D38E6),
    .INIT_3C(256'hD410E34FC8817644F3C531C944E95F8C99AD1D76145706D29993AFFAEC20CC56),
    .INIT_3D(256'h918D1300F963AAC59B66854214C86A612E500D23EF831D562629D07BF45A24F0),
    .INIT_3E(256'hCBAF835B8749A13136BE8BBF4B4400A13F79D0FA01407B6E5DC3BF074D194DAF),
    .INIT_3F(256'h384CD34DBFCDB069E623A593234E4D9C3DC92BE37490059CD004E9BFB3EE0E89),
    .INIT_40(256'h23B0885566E20F4C0E686509E1B9F185B94D1B70D77F2F6304F1C72FD065ABA3),
    .INIT_41(256'hFB198D5E45B47D63EC0D883A6CB0289F264978941C01B76D2ED37269B36A7AC4),
    .INIT_42(256'h1CDB7F35AD29E79728432A514A6C86063237EDA82CE8ACBA899A5FDFE720DCC8),
    .INIT_43(256'hE81998C324734A7D14ABAC29BCE3C65E8F173CDF6886449E72A4ED49674A2BBD),
    .INIT_44(256'h5A1EF26170A4E1BB1F412FDAE09CF686CCCAC53516D6F42B8C1F4114F6360074),
    .INIT_45(256'h9582C4D1EB64E29A4296FF1897FACEB804A572024ABBF2D94A7C7F9BC91EE6A0),
    .INIT_46(256'h365777C5956FD3A55FC9D0D436DEECEB6C77AB98EBCA2E1B99FCD98955B7A864),
    .INIT_47(256'h97485874057BFDBB67D8DED06982C99ED81DC03BB25AB6F19B1988779FBEACAB),
    .INIT_48(256'hCD2819078A960E2448F0F7A56085C6B03868B67A69D27F097219243EB8AEDE20),
    .INIT_49(256'hE28D4B032F7F23BC90CCBDBCB5645219C6E7AA7F3D2849059C86D58483E4AEC1),
    .INIT_4A(256'h45CC5F5BDD9B24445928DFE9C0F3003C8419D70FDDED734BC17EAE13C3D2EFDB),
    .INIT_4B(256'h6949764333378D01A52BE9F9BB1F1077D339FD598D18AFBECA18E8E472FBDDBA),
    .INIT_4C(256'hF04801178B3C2184628E8D7B3EC24983EC44F7FE21A4C6DD1C74680750D5E853),
    .INIT_4D(256'h8817AC98E98F6B3E94C76870B7540423979834887B83646F3EFE22DAD1138995),
    .INIT_4E(256'h869A6A484A807FEDA3089EE38492E57410170123811EEE94CCF227935D6756BF),
    .INIT_4F(256'h4AE75D900F3A38EEB39312255CE106E75E51F60647B26DD67D6A88DD399362C2),
    .INIT_50(256'hA8C2A4C7456BC0A95731294BA3BCF6C1D3580AEE0A463C2834D34F058A421C98),
    .INIT_51(256'h049A3C92F6112F3CA94FBB6BD36F756F65C71FF7E8C60E52FE461C558145EFF7),
    .INIT_52(256'h6666E55F52B382BB4E6EAD23A68F7F7549A07761D133F611FB72779F2739AE47),
    .INIT_53(256'hF20B19CC2CEC5D971D07906166BCE9F181A4ABE8CA43564D3DB95E8109E4E164),
    .INIT_54(256'h65901A2B2A189D2B965856A14567271CC9350A43FF15170480AAFD4A083C9CEB),
    .INIT_55(256'h6646767EF2A43861FC1D15ED8C50E34CF136DCD0380A9F3A2F51C08AC41EB901),
    .INIT_56(256'h6F9EEBE3A423C94349DB56A6C2A48D689E1207D59549562467941D60D34324E9),
    .INIT_57(256'hCDCC0C76F39EA9ABE457E43DB7AE4E0FBF6F086BAA8EB11F5C83F1BA31249B30),
    .INIT_58(256'h53C6FBAC7A3C13FBFAB4F89998E257110F3CACBB5915A6FA0FBCEAD8CF23B9CB),
    .INIT_59(256'h269E1FFBF7B8A9F3FE86200E2FD58B9C8703E47B482449E88249E7914F434612),
    .INIT_5A(256'h0934AB477CF5490AE57F5E70EAE1203DD5644EB0263CBF259054D2E9B49D0543),
    .INIT_5B(256'h7C10F4D66AD8E2C65D9D94FB1D60E27464ED401048376A5F3CD853FD3F09FFE9),
    .INIT_5C(256'hDD0453F3E6919322D26E17591B1FCA4DB76DD21D4E8F4685D26EDEF9283256C6),
    .INIT_5D(256'hFDD9A9FE3A6605D04A7F70DCE743386089EFC79C18DC3FF93AB746BCF653454A),
    .INIT_5E(256'h3914C3B30BCE15B22792A958744A6B519BC22A26646AE7527B28E1C349E231EF),
    .INIT_5F(256'h5D35B33AB2B961FC260195070E57CB8865A81B3993D4DD474968B0ADE473E8AB),
    .INIT_60(256'h6DEC665998961D76B7CF8CFCA6883C3A1B55AA2CAFB6BB35E4365123D36F926B),
    .INIT_61(256'h118A85F04BA934F0512EEB388D2B07F4BE88A0E87E165982A708263983EEFD6E),
    .INIT_62(256'h0B0F79BAE14F1B0DE42AD5D49543623BB6AE636BD1528B4CDD9A7C2AA74827BC),
    .INIT_63(256'hA49D39939A96F8DD25BB505FCE14CD613A8131ADC2BF4C126D7DD3C945B90F95),
    .INIT_64(256'h02367FB72E0BB6D81FF1B5C8FBEC5DA41E06119CAF9CA78F84663BAC422634FF),
    .INIT_65(256'h2DF2B90D529C8A4039CF930CD38F4193B5875EF2C1B65F17E2DA1398A950D816),
    .INIT_66(256'h1D63AFEC25F30EAAE367A771B2E8DBCE19DF5C9897B091DE44056DDD59813CF7),
    .INIT_67(256'h13A6139810B2ADCADFFD14ADA42410E24F3CE3D7A01D5A40D26029BD379A61B6),
    .INIT_68(256'hA470053EDAFD3F2F90D207371173658DFD579A904FB7DBBBEA6F140215A72703),
    .INIT_69(256'h336D89690A489F0A1430C390B67B3BE39D4A5F23618864C42B4BC43A9CA28009),
    .INIT_6A(256'h3D3C62147D78522A3CF738ED674AABB8199584794227E47030462CF916DFE782),
    .INIT_6B(256'h91019FAF84F6A83C5AA8655ACFF1932E3A15CF14360CE5E63AD90FE0644E6508),
    .INIT_6C(256'h4E789C0399C11EB6CF04CBAE9EA2418934C6569675B08984F330459C5502C3B7),
    .INIT_6D(256'hB3F984218213837F17BEAF598369615DB472331BBA4494E63E304472E10613A7),
    .INIT_6E(256'hC1FB613D22492581BD50AF8A25AB8657A79F2A9218C080D7C9C2CDB184973197),
    .INIT_6F(256'h7CBA2CB9A88CD72A096219BDAA49007FEB543101379B9953E4098F478DAF8B5C),
    .INIT_70(256'h6430F991A942A711A79CA777216D8A19917011EF0A153D8130B04064A70FF737),
    .INIT_71(256'h3D0F016CB6D11908375D19D23151C56116034D341B0883598E2FB6A5B8588484),
    .INIT_72(256'h4533670D87BF19A7C4E36725B37806E0BB6F286B6594D81F312781878611C346),
    .INIT_73(256'hFEDDCEF1CD0EC999EC2A1155CCEE90586D039921FAB9AF7D24E279FA9091D7F4),
    .INIT_74(256'h3A1DA1D6509FC659C8A571910476EF1F65D295D777349371F5A63ABF111C6079),
    .INIT_75(256'h7E92E2BB444105E03E97E71E2B4D44DC170DA0F44D69654D790FFA39684E9C17),
    .INIT_76(256'hC6876A3543632A9AD8E20C84F4D7CD57B0C3EB40536E225DCB363C207DA08E51),
    .INIT_77(256'hAB6C1C474459302397DD712A33FCBE1907F2812AD163C99A28CDA1F6AD953211),
    .INIT_78(256'hA7AEC05785FFCB489A331BED54B15D84DED727303551080819F3BD2E1EE9DD06),
    .INIT_79(256'h107BA01E9ECAC9B45C0A9D1042C3167C95ADC016E2C353F801DAA21FCC35F98F),
    .INIT_7A(256'hD46822D437CAE66ABFA32D3764DCD9472D2EF711B24116A4764E812C72055375),
    .INIT_7B(256'h2DB58A09D40E774E781C3E1B5BC46364D3BF8F147867B9292251E999A513E562),
    .INIT_7C(256'h58CCE5EA91296C157222D882788CC4EF8839453C8692FA86AC3F0145515E8237),
    .INIT_7D(256'h473C029097C8299C89181087FEC2B96564682769ACF14DBB9492674A27FCFBF3),
    .INIT_7E(256'hE723814743747624B800BB7C7A53B68EFFFE8535815D7054AAA4CD867B49856B),
    .INIT_7F(256'hA4CCD5E8407C8D458464B8E6A84A708E7A5F26DEDCFF36D9450CE1A90D628F22),
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
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .INIT_00(256'h2573A2DE6CD129081C93A79E36AF9E9D732F1D70B07F47D4E925CA2BE6465FFE),
    .INIT_01(256'h511981CF6C4629008ED23F98F953954526DD48FCF296B302EA503F78DDF2440F),
    .INIT_02(256'h9AC10FE716BC20AB5FF4BC64E269B46CAC817189D0631DDEBDDBBA1C873E3D4C),
    .INIT_03(256'hF6587815C7E87157C3CF68204ADA984351006C394E14A248EF9FC64C15753D54),
    .INIT_04(256'hA2A748CCA51782135DCD4E9DF2E6472B55F17E8289A14396D5A689F04FBED2E1),
    .INIT_05(256'h439E6D24EB31EB947FEC5FA205EF1D24C8FC4144ACDA8E299B51FBEFDE4BB91E),
    .INIT_06(256'hE023C5EF9EEB4956F716CADCFA3C8E1D9E3F99DA7678BC77DCC9DB3105637966),
    .INIT_07(256'h7B3A87DACAB38D2C6351AEC27766936266CF83CD9B1D20B93DAF8C2F5C61423D),
    .INIT_08(256'h5987611450AA9D5ACADB98ACA38AD3413AFF55196EF747DAC3E2716A707D214A),
    .INIT_09(256'h21F459887FB74DCAF6F67C5050735CE23DB7D5575DBAE9323DFF724960E1B72F),
    .INIT_0A(256'h66AA49FE71A01B9E67A2DFB4166744BD54121EF8668CF960B2E4553C1B55C8B7),
    .INIT_0B(256'hEB09E59E873FFF5C4087DC6D6A9F26AA32AE547F839B3C584662E1B2FA357498),
    .INIT_0C(256'h95F8CB9526A8B8B79D82B506C5E69762ED0C4DD4337A1540000000001E21D657),
    .INIT_0D(256'h6A54BE3BBDCAAC6E5351EE3177A044CE0AB56D4B6036B2C0FCC4E840F779C95A),
    .INIT_0E(256'hB960C3EC762A087D10CA9CCC8059CE9C4F704EC8830455F998ADE6D68A2961DC),
    .INIT_0F(256'h618563F0C0609DDF671ADC6A151E5274068004E3F674778BF333670B994A45C0),
    .INIT_10(256'hAFA2D97EA3E55326713D642FFE8F61ADDB768CACD8F20E8A6C200AEA5B6EBB7F),
    .INIT_11(256'h56EFEBB37596EC450DAA022D5F831190822CB10BF94A2AAC951AC055EEFF8F64),
    .INIT_12(256'hCA1CC7DA3C93785D6AC084C826918E11A9C054795400526BF92547A3DDE6994B),
    .INIT_13(256'h0743DDD6980F82C54289136079A1FB6FE5AED2E436135A29FF654076ED863839),
    .INIT_14(256'h6306552D02B26835E9581B006FBDD5C43B1D6D827FD5C414CD772FD0D52344B1),
    .INIT_15(256'h46B00A2668948248B43D98C06ED24190F65E15A96D02EAE4D0C6641103472CE9),
    .INIT_16(256'hD12E2F5B7A76C96DFF0BB30E000ABD84129DD4D45DE5E6CA1794019FF65A1794),
    .INIT_17(256'hFD87D6112DDFDB95F1A018148FE5B894BCBD522F70B5E19C9CA6E4B795A41114),
    .INIT_18(256'h220F0A9D0579BE8C85DB16607F750E9F8371ABF03AB1DB592F10AA2654F067A8),
    .INIT_19(256'h62EC3D83FC3FB374D8E5FDFFAD0AB3B0081F9554B43060800906643A2572E5BC),
    .INIT_1A(256'h469E96AB7D92446E76B898F161FFDB94C09214C72655763E4729BE76A99E5F8B),
    .INIT_1B(256'h4E35B226864841D692915BDA1351B8389D16303C1958C254DCF2D93057A1E83B),
    .INIT_1C(256'h2B16A0A25621C16B3093169147BC1989002B6C8CE2E2BF33C5FD3DEB39702F41),
    .INIT_1D(256'h473FB8F4F9E8EEF158348D767DF62D8EFC99EDA2671F86F33E6C4F2F54BC0A4E),
    .INIT_1E(256'h85EF0BC38F9D5CEF01CD12F1350CDCB5A58B3378FB5068129BE89A0FF1B6DD91),
    .INIT_1F(256'h02AC751A2240FE5241214C59DD1DBA88344B8B6801A5CBD294370F0D0ED829CB),
    .INIT_20(256'hBB1EED401B715B16628C923828F6B06FF40C2A831C46830600A94B3C6B352C73),
    .INIT_21(256'h4227B7C5540D9AC644C96DAE51523FAB01BA8F361362FA5403584C761DB5C498),
    .INIT_22(256'hD1A40DDF002BED356C2F477C46E8D4004E64239B8A5298424DAFC450F1CCA83D),
    .INIT_23(256'h854C65A38B9B94F2412382D67EA7B4BF87124D058740E27D38CBA450F2C0596C),
    .INIT_24(256'h1F289273E40EDDA2D4DE99BCBC44F8A253F63DC639664F40D819EBB886790347),
    .INIT_25(256'h84EDF3AEB5C39488A2925E788152ACBB7C320F1FB8FFD3B98DDE0B6A6C6BABE3),
    .INIT_26(256'hC8927CD2EDC7F1AF64C464DE60AD10BBEF5C635BA959036B144BE1D041D24218),
    .INIT_27(256'h075C0C575AA26E200EE593089E20738EAFE81D6695E5CA553969B5F6C8DB64F4),
    .INIT_28(256'hBD61B1EB87387FFA6C544E82DF17A0F28E67B41FCDFEEAE2F9F1E15A1255DD72),
    .INIT_29(256'h9D7F438589877918D524017A9D1628C4D425F6DE1C8FA288CD318949FFC6E67B),
    .INIT_2A(256'h59A19ACEBDA6F8457A18FD2EF365E2066BC1C559A3724CE810678D2F08EDB820),
    .INIT_2B(256'hCE7A73B0C7B213BA693182E24FB49FB468A74790CFE500C4F339FED996B4845D),
    .INIT_2C(256'hB2E3CA0074AE2ECE97CE911019528092A4201FF88E3894F78F50E20D2EE65DB5),
    .INIT_2D(256'h8058431841E9BBA26307A2709921549951B93453578C248164234B2B4D91EA95),
    .INIT_2E(256'hC95C685AAECF1A373C21F55D7A956A8C1603B176A4E6BF721B72ED66781A3D96),
    .INIT_2F(256'hA5BFFAF60CB2FF2205461F029DBB20CCAAA000000000A1DD35577FE082E81B77),
    .INIT_30(256'h2A45AE93F2481053975E710B12CC9E2E71FFC29A26ABA5FAFC785F38AEAEFA9D),
    .INIT_31(256'hBA688E5034B6E11FCB73EDAF2E3FF9ACE2F39DFCF82A72145A001F2ADD075419),
    .INIT_32(256'h0AAEA4CC3E5F61135DAB9FBD2ABD08D530CA2670EFAEBAB4B26E1E3C43F2148B),
    .INIT_33(256'hB346BF80F99A98A998B2D73A413C6D21A6D9FDAAB63A59AE94DD071AD44A1FC7),
    .INIT_34(256'h01E760A70A076F6A1EDDCEAA94349486DBECB89C202F80B2C2E6A894DECB9E4C),
    .INIT_35(256'hFA3F46BFC8172D07DC3D4397FFFF555B28F67BE77060BAC351556C9E3A9F6CF0),
    .INIT_36(256'h00DC4E2184BE09EFC19CC816331CC54D0F031D57FF589EA6820390902C7F2D02),
    .INIT_37(256'h91DE217F5F4183E2FB85FB16EBF6B2564470E8B27542F69F5D983AB315A24694),
    .INIT_38(256'h7F57D02F54B52C9D89D48F90A172B42C87494AD9C277390DD8A27DB4346E220B),
    .INIT_39(256'h93B49926ACEAA2E2E6B1709D1086B67A9F432E270AF7BE001E2386EA27EA1641),
    .INIT_3A(256'h6D99C1AEFDD46CDBB6ACB548B8A97A9DA4E93BB37B4C56365878B9F5C3B3FE95),
    .INIT_3B(256'hEB54C709E3B847A7CE267A23C249A01751E01293E8D0A3C9117B0D72C9B23455),
    .INIT_3C(256'h9083937EA335A77389A44233C134955C860236C61A956F975569D765ADC012A4),
    .INIT_3D(256'hB04A77B16063013EE23A5339D1B2EDAAFC67A9DCC2F501B1DC535FC5022AFD82),
    .INIT_3E(256'h080A4453CB6619C90BAB2A5D81F36B78A52E5291F8B46A37EDCEF6298545C8B6),
    .INIT_3F(256'hC557FBEB755131BAF23931FB3FCBBC6B525BB7EBE744E2518376F3F08FC5F3C2),
    .INIT_40(256'h592426832B38652CDD60C63DFEF659A7A21F18B60E4608A3A5CCD1640A81C86C),
    .INIT_41(256'h3DC229C5DECD61FC8E8CD73F052C9B6FD37497271B19AF8E4E78E7C83B11F035),
    .INIT_42(256'h3B6C982639BD42273564DAD604F9E3A58134E4A59A18884614D0B8C004BE1E9F),
    .INIT_43(256'h318D02ABFFC1153BB4549FFAB4A0FDBA34F702C5A7A4E6904E5DF54ACEF275EE),
    .INIT_44(256'h2FD6D428EF773B116F9AA35C0C618476716B2BF7B52033EFA5681E7AD745FC6E),
    .INIT_45(256'h00000078352EA8B5997CE48157FFA1625C01949E088B6DB63EAEF696A8BD65D1),
    .INIT_46(256'hAB7B5B4BD06CB08FE4DD23453BEAB5694C20A0B8E7901400533ED7DBF0711B80),
    .INIT_47(256'h5EF2F15BF86AC556611424EE80FF71D0084F9A604DDC07FF6CBDA8EA8F01B259),
    .INIT_48(256'h775953809A96B45CAA9C1758FE3032AAB8AC593D485C51D58B6EC59602E81FF0),
    .INIT_49(256'h00EDAE207757EB2CD864B020817738638E80B743682FCB39979E27693730F1A5),
    .INIT_4A(256'h477BFDA931F6706A2A1BE81863946AD48359CC201AB1649967048C52C01E37B5),
    .INIT_4B(256'h880474907CADF141B0B9A63B1F1E882BE34D18C8578D9CBA182C1DE0140E75FC),
    .INIT_4C(256'hDE3A7E939BEB53EBCEC175E30363B6248F4F926F8AED7B9745647D9B57D660CA),
    .INIT_4D(256'hB0E05FF60F4F50933421A6D4E4E25755CE8B96CAA2E53B40ED8A4ECC7DC6AD38),
    .INIT_4E(256'hED3C8238DD6718AD40B0AF319BCB242185DA6FAC6FB0FF267AB4C8AE8CAF4874),
    .INIT_4F(256'h5EEF5A9F46C15EF1AF64396880FE0215541B86F1EF103CAA39E12D3A5C84CDF6),
    .INIT_50(256'h0002BED04FC3C45E164954ED9EEC437B53ADB38158B717352C71F8740865533A),
    .INIT_51(256'h77B4F1F80B8C19705F549E35E2DDC39BBE63E8E21491375DA26BB37F5A1803BC),
    .INIT_52(256'h0E76074CDB9E51472422270675CBA780815FD8EE3F389DAB8998F6A1C38C450B),
    .INIT_53(256'hE5973FDE296341497DDBE5F31CD4966D9464D32CB05646AB3233A52E9E2E7ECF),
    .INIT_54(256'hE7A8EF365462702F6410CED855E8A1E94B720238F52344E3F6908EDFF45E1982),
    .INIT_55(256'h8FDBC437FF2E2EE372DB4C2D883690E8D7DC23075B9EF0E1F4F75DB98A77EBCD),
    .INIT_56(256'h40B9319BCEA916DB243C9E95B55426B5441CB3055BE0D79798CD4F8C19067B06),
    .INIT_57(256'h552A3A4AD59B84F265D94B8683101ECED3679BD0DDB3A484FC0E5C0DB7DE682D),
    .INIT_58(256'h0ACD7A6C521662453644DA06F6FC268AE7CC38D23759CD93FD2A168F2C806F47),
    .INIT_59(256'hB2080616477FAC4E499E8963EEE034C98B26D30CAE3C2703717F120B8C3DC337),
    .INIT_5A(256'hD0FD38562B7AC19F8202449D48CACD5537CD4DFD7945AEED200A90A7E6E58931),
    .INIT_5B(256'h12D97168311391C5EBDDC633104DE564390760B04B272E4D004EFBB5D31606A0),
    .INIT_5C(256'h0DA4B7E00491E470FF2FDC63D883A1990B6BCA6184407CA3683312DE83A9F93E),
    .INIT_5D(256'h9C8E75729059DE92D13A987A91D9BE0CF80D2D67C82C88FA7056B6DD74B90DAA),
    .INIT_5E(256'h3E03801BF2CDF265E1085F8D349B038295E9B19BC4846FE7BB7D75D3987BF233),
    .INIT_5F(256'hF79A2D3F00362AD6C570C5F180A5731E65B6F42A68F3E9B205AF1AC42DE62CF3),
    .INIT_60(256'h088B3A855D56C5A6A33A8C0ED0BD8D6C97B3BA21E4B35D47E84D3603BB174A3D),
    .INIT_61(256'hE3EF0527B4C882E765252ED4248390F64F29C64DF8ACBA04F52837ABD6D62070),
    .INIT_62(256'hD5AD019FAC3E643B47131516FEBC73A656134C5564FBA6C302A3D75B8A66B183),
    .INIT_63(256'hFB1C7F8B70327EF4A542D5E15D55E0ADB5623FBD44403183B91E49017C5B8298),
    .INIT_64(256'h9245CB96356B2A42149C953CD6E8A598986913A6D44098AFC5CFD5D8B3C29E3D),
    .INIT_65(256'h9A2A4560C85B39E9C73B9CBC33D6DD762FF5F21E38636CEF26EE6920A30CB747),
    .INIT_66(256'hBDB053BB6CB2711A24B3E14C8514A11A54A714C23C9DF271AEF3ED23BF5B3B61),
    .INIT_67(256'h855E6A05B1DF6B44D4C2940339D9B80A78C5B4E7701150FFE4D8437B5AE83B4F),
    .INIT_68(256'hC7BD0DFF8114475D74E270CD40D1CFF974914BB33A038CCC96A63EB0C217849C),
    .INIT_69(256'hD90F9C6E4031378A3948D2A25EE2929D695A84258FA7190DE084282A35701AD0),
    .INIT_6A(256'h94D4E27E666C173ED3D2E9DCF1C71E2FF75D837686C07028754155405CC51ADE),
    .INIT_6B(256'h2D19C9480719198AA0C353DA983B66CCC8D15F3C53FA8947FA605144127DA9EA),
    .INIT_6C(256'h2CF97B4F8AE4EAA7CCEA8ADDFB88C0CCAB403F38201A99C86F48AB8C2DF522D9),
    .INIT_6D(256'hD068BDE9716A265D86C5399AB39485F0E5692CBA1096C161B11F671A898F81D0),
    .INIT_6E(256'hE8BA996DF6F6354A34F5934F4365BFB7901EA9139478430EAE956AC7FEB77EC9),
    .INIT_6F(256'h486E8EFDE5F8B67FEB6D1DC34EECA9454ECCBDD968F1FB3110E48A84E1643578),
    .INIT_70(256'hA39186B3EBBCDE609F77DF43CA9877418462C98059E01A5EA79941AD0A0B4E71),
    .INIT_71(256'hD0CB3A4BA1DB5A49A30BE9537EB3B768534D8DFA114753DA83D6BCDA84368623),
    .INIT_72(256'h3CC428F113DA6F2BC019E1E23E13690EE3DA709C5027D5070AE535E4E2EC71D5),
    .INIT_73(256'h4ECDBE5A002775FF5D59669BEEA042EAFD5E147CE297B0504521100749D1630D),
    .INIT_74(256'hC263EB0D59FCCA7EF452BC6B89B9F33268940B87FBA560118F6B33BF60373571),
    .INIT_75(256'h525B887939B33078C6DDE4688AD42FCD3448EE98E43137D0B9BD690E60DC33D2),
    .INIT_76(256'hF9C23D4FFD5D8C1E452CB209A9C84EB036378D24C8D3A4079D4622273FB692F2),
    .INIT_77(256'hFE6CC6504ADF31C701692C05932B8B5F77E23BFFB2814EAAED41BA689CF5BA74),
    .INIT_78(256'hBDBE77679D8B2B53C3B575DE0051B6A7BE46E1322BD381F143A2E6BF32E0A4C9),
    .INIT_79(256'h9DD6B5F4BA346D4C97CF086FADAD2264364AFD74E42998CFF9AF81A2FFA3A539),
    .INIT_7A(256'hC241D5ACCA3D64306A83DC45874EDABF57EBE5D8A02E02F385C49DBF849AF66C),
    .INIT_7B(256'hA20303CA6D3DCB6CF9E4DCC4733C28FD5C525237688424005DFEB2DF830DA9F0),
    .INIT_7C(256'h49189366BD381B8832E2A5070D6FB3C201F01A596704DA4D38AA1481640CAB29),
    .INIT_7D(256'h5C55482298E87EBE65DF0E297ABC560AF2509DBD77657002B7B7CB623297032A),
    .INIT_7E(256'hFF9765EEAA3E67EBCB3DAE39BCCA34E996DC46D0D591FF5B0DA3F5D6C9F19422),
    .INIT_7F(256'hA17AB22485BB7D21E2426520A02D1D527FD72DD9A32850BD4ED9AEFD87D685B0),
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
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:1],DOUTB}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized5
   (\doutb[2] ,
    clka,
    clkb,
    \addra[16] ,
    \addrb[16] ,
    enb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]\doutb[2] ;
  input clka;
  input clkb;
  input \addra[16] ;
  input \addrb[16] ;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]\doutb[2] ;
  wire enb;
  wire [0:0]wea;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

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
    .INIT_00(256'hC3BFB56F3AA04EAA28440B331A774AE82F0A4E07F28B1AB544894171DE735B65),
    .INIT_01(256'h63EE2E9E3C1422DA0654470463896C2E469190EA960738CD221386161702C15B),
    .INIT_02(256'h8C5AFD7611491D51F3C8642B4A97E6F01ABA6A563F1EB0F1832B8AB857AB4D75),
    .INIT_03(256'h42084257EC7A2F5E68756387287BDE20B9B4E90E9EC3DE941D97641342BE180E),
    .INIT_04(256'hC14D7E544EC1E62FD442FDDAC9B22B5C258E7A85FE2DD821A2E750034601641C),
    .INIT_05(256'hC6818666743C97D9257B5B9DB96D89452960BEDE5BC7CD26F32546BE970C69FF),
    .INIT_06(256'h5169B84FE6C0F9BAED4BD518FA005285073B9D080CCD0FACFD8CA9E7E9094BDA),
    .INIT_07(256'h14958D43EE7EF978FDD35249544702A447D62DB70EE1E19C841417E095A6446F),
    .INIT_08(256'hD5B9CA4C425AAA8C0A9F1CB459933C1B8DE46F00B781BDA3FA592032170BFDE0),
    .INIT_09(256'hCD3A4268D8687680DC0411D285F9D033541A3D8361EBE640B4BAEE9C001BBF85),
    .INIT_0A(256'h548B6D7EA8A62E3783EA669909C012F929726F95AF681A5EF74B89FC6D2CCCBA),
    .INIT_0B(256'h23AB81713B774B06B2E72694E98EFC0546DCBC2E05840C093F9FDC4AEE585764),
    .INIT_0C(256'hEF24D923C96B759AF70B129CD86509ADBE76CCEF4F56DE1A57AAB51F1E562F1F),
    .INIT_0D(256'h3B296C2E7524EC95610F5F94115F22CBF890DE14CC55B174046ED7399F712EAB),
    .INIT_0E(256'hA46B496EC452C652A5F2FF5B42A7AEC70B1EE25BF0887B42EC73750DF6325FC0),
    .INIT_0F(256'h0B8DA3E15F27C21090449D9A11570CB4A1053AB6F0B25486C09354A5415AC28B),
    .INIT_10(256'hB706860873C428E59959D69EF97BDA61112485A7BB7DA3EA383C43696C75EF0D),
    .INIT_11(256'h1CDB5201E972B707F3523D423FD145AA20A236B46C9371420B40281E9CB3CC66),
    .INIT_12(256'hC88FD14D8E8304BCAE6A33740628CAD58E06EBD14F657644338A502F4213E9F8),
    .INIT_13(256'h153C78FA0DF1F8F25B97158E94B60A1FF3EAB78BCDA9C6DDB31852464498B824),
    .INIT_14(256'h1525639D1F57426FBEC5529DF0ABB37AA68C718CCFD1263D5F3623EDACE58745),
    .INIT_15(256'h59DEFA0EE5D8B5AACD77D32678ED0B4DE99130066A6ABB32DD994526B0ECC408),
    .INIT_16(256'hBD1503E1ACF583A45AAED08629C5CC2EA3EAD46359E60A018317D5F11526A017),
    .INIT_17(256'h5E196C0C3EE4A0953A8E8AA4B4E8AC58B91941C391C2BE4E977A97E07F3F562F),
    .INIT_18(256'hEBC0D897DD44EEC5AC69958261B717E3A298EAFED2621A719402EAF36847DA70),
    .INIT_19(256'h9D60085530A6A4F3C63E176DDE4DD310E0AE8F86EA5AC3D41F0B9018867A1932),
    .INIT_1A(256'h9FFFF5C51872D48F4208F023B6D54CC2C440220968EB21883045A6D45F93DAD0),
    .INIT_1B(256'hC9B9DEE3C3DE94794D0235FAEDA5211E22D26508605D7351163E059BC39147FF),
    .INIT_1C(256'h1BCCFF2F823B80E8ECA7338CEA7027FA09D0B123C39DBE209724E3D52BCF905F),
    .INIT_1D(256'h22F67522E1C2CF52052C0411F4B2EC8E59A15E5CFEA7441D826820792BAAE8E9),
    .INIT_1E(256'h499369F12A000000000001E3195500000000000000F1A4D38FA074B81E01175E),
    .INIT_1F(256'h0000007CB4E9A36A3C3C7878F071E1E3C1C6FC7A55000000003843F8E6CD9B36),
    .INIT_20(256'h3C2350E1E528DA81000000000000000000000000000000000000000000000000),
    .INIT_21(256'h400000000000000000551CBFFFFFFFFFFFFFFF03E95A1E869A8000000000F0F3),
    .INIT_22(256'h053BD57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB668478669550000005B1F55),
    .INIT_23(256'h00C00054B5CAF5FFFFFFFFFFEA985000AADD0017AF792AA000000817B3D54050),
    .INIT_24(256'h07FFFFFFFEAF7FFD1CAD4AA00000000A3E041FFBCF0000003FF280F33B825500),
    .INIT_25(256'hE425AAA000000554EA4FE8000000000000000010003CF07E0000000000000000),
    .INIT_26(256'h5FB63FFFFFFFFFFFFFFFFFFFFFFC00B3797540000000000760000039B133480F),
    .INIT_27(256'hF75100B9A2455686491E58D03FF0C0BFBFE1781ABE774DB4C31C252182779EC0),
    .INIT_28(256'h6D6BCA847A65211FB53D58FAFD6101716AF74E4F5C2A10738A22116EA0B6B087),
    .INIT_29(256'hB69C2D66755F89B0D8CA1B35CC4822A3C5DAD5FDB2180510A4BBDBA7DF054C22),
    .INIT_2A(256'h3CDF097BEAE25BC07EB28595240A7AB95730E6770CB8C451D3C87F6794FDA91C),
    .INIT_2B(256'h131E892A7E244452C0DE040808361B6FD1DA14B0DEB32B9049F22FE9B65D7AD7),
    .INIT_2C(256'h54ED2E859EBCF814C48D7AB9FC5785957816BCADD7DCEA8C60F3CD9B43DF93A3),
    .INIT_2D(256'hCE85A1FFB07949FD5FADA42F3C0A5724DB465C992AB08D150000A713CD5516B1),
    .INIT_2E(256'h06B7A788EC031BE040AF4D13F7F48037B775CC81ABBBA9495CD1C089A720E38E),
    .INIT_2F(256'h4A88EC93F4968E210BCC7847FEDF9118E0A8A7FB266CEC71AC674A9D5D78F1A6),
    .INIT_30(256'h054B4EBC69220107A070EE8E4BD2EE62DE1131D936F7DCC25A734B0416E169A0),
    .INIT_31(256'hF6C60CD61F85E648D0A574343DBEA1D27B43E1B0C576B0D58BD4AA8E50DD8991),
    .INIT_32(256'h84485EFB7A0DC9A96402562CE1BEAFEE3C167E85AF3F4FC2FDEAC72D4ABED08F),
    .INIT_33(256'h1B25F81B90B26C8072173D191B30D3E09B56E2FBEDB5C882324C49AC646CE0EC),
    .INIT_34(256'hADAFB18CEFAD81604E0BEA6F7F58D8EA26F558AA125DB536480989FC0495B45C),
    .INIT_35(256'hF14481264ED7B5511232B8E797302700E9FF57F93F260BE0407C75DBB5CECAD2),
    .INIT_36(256'h64ABD81278709DF46DFB8DDFC08407D79B0CD35CB24CA942DD4393A004146F0A),
    .INIT_37(256'hE0B7C7B9D4CD3E03C4F5D812223CFC14BE4E14A01BFD8B14DC3DB8ED0FC4357A),
    .INIT_38(256'h160CD553EEF1FD596CEB259ADE30A2C02C8C999CB971910C9FA9F994A25540FB),
    .INIT_39(256'h83EA33B3F6770844268ED6E35635102AFBC335070C6E0898D445D6DF72800AF3),
    .INIT_3A(256'h29330CC5AF53D682B64B762FBD6DBBCD86469C9D816BC3766F7D7899823FD860),
    .INIT_3B(256'h554C3FDA612DE2BFAF9B0D98A2C303C6BA1ECA6825B3F1CF09BF7BC024BE5759),
    .INIT_3C(256'hAF6DD0AF628EB26EC8D6A67F684733CF74284BC41436FEA009E8C4D42A32FADE),
    .INIT_3D(256'h6F2D01FE4046AC1A5F824504877587304952C729264749E6A22200D3C64BF147),
    .INIT_3E(256'h5DE549174EEEBE8D89322C958709B5B60FFC91CE6494D92FEE04668D9643A80A),
    .INIT_3F(256'h6374B0AE82A2133E6BEF5181678E3CC3ED86E94C363C29989F7B69FD9E4FF1C2),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:1],\doutb[2] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\addra[16] ),
        .ENBWREN(\addrb[16] ),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized6
   (\doutb[5] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 ,
    clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    wea,
    addra_16__s_port_,
    ena,
    addrb_16__s_port_);
  output [3:0]\doutb[5] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 ;
  input clka;
  input clkb;
  input enb;
  input [16:0]addra;
  input [16:0]addrb;
  input [3:0]dina;
  input [0:0]wea;
  input addra_16__s_port_;
  input ena;
  input addrb_16__s_port_;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1__1_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2__1_n_0 ;
  wire [16:0]addra;
  wire addra_16__s_net_1;
  wire [16:0]addrb;
  wire addrb_16__s_net_1;
  wire clka;
  wire clkb;
  wire [3:0]dina;
  wire [3:0]\doutb[5] ;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  assign addra_16__s_net_1 = addra_16__s_port_;
  assign addrb_16__s_net_1 = addrb_16__s_port_;
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
    .INIT_00(256'h06D28D5B1DD9A264A4866D5AE898CC260FA7559F5ED7A2534590F56E47315F1A),
    .INIT_01(256'hED22D356AE86553A84A8A6E2142E800553808668F9CF44DD1885CD803498247E),
    .INIT_02(256'h5D0561355277DD053BB3F7A6424E2DCF62F01F3A3F208DD857A9D1D094F6593C),
    .INIT_03(256'h62C8DC77297BDE921894630BD669F9BDAA195B407496A660BD5F79F5B1777BCB),
    .INIT_04(256'h55560E507D7F5C7745B470D04C5AAA99F4D872E0AFA6A3CD45BCA1B6FE3C96AE),
    .INIT_05(256'h77857497B072FB1F41EB5065BF157F551C6970380D668F1AE9C5C00B5C756140),
    .INIT_06(256'hF119B9FF35929B4D9A5BB0ED468DDC363106F065F291CC19F211A9D1E05AD850),
    .INIT_07(256'h015787D375F0F5D1E642113155D9D80B4315A34F6BDC33C02FD8F428B9B817F9),
    .INIT_08(256'hC52466CDE56874B1162C209B564EF5587258067FA2823AF2571644A493873E7D),
    .INIT_09(256'h5DD18329BF3F2D87901BECB3F0BA3FA235111540A5346E32D37F0CE88B3EA8FA),
    .INIT_0A(256'h46BE3811E6986C1489F347EAA84AC856A03E72DABFC168DAA2B8CABFE1D99D86),
    .INIT_0B(256'h5325E7E5CA2A47CC7B16294EED239F9EC93364EA4F3ADBD6712A1C29B6AF1332),
    .INIT_0C(256'hDEA2FE2214E913E60C812CA64F43E313F1BB9B9F0A62AEC67AD52C25A2F86712),
    .INIT_0D(256'hF6D2276BF1F3D2FF1D5BEFA49E3A961B4D555C643EFFE27447A51B845B0F5621),
    .INIT_0E(256'hB0E76DD615997D6D1244DE1CBD6C423E7E9AEE5D753C912CCFAE5F4FED792AC2),
    .INIT_0F(256'h16F9911CD011260BC909BF42B1ADBE527C489DC338BB04F270F909F6C13BD9B3),
    .INIT_10(256'h1E2C49B4A134637E49370F581846C185B53A06379FBED139F5206392DCC3F745),
    .INIT_11(256'h00000000000000000000000000000000000000000000000000F0F0F0F0F00F0F),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[11:0],1'b0,1'b0}),
        .ADDRBWRADDR({addrb[11:0],1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:4],\doutb[5] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1__1_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2__1_n_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00040000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1__1 
       (.I0(addra_16__s_net_1),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2__1 
       (.I0(addrb_16__s_net_1),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 ),
        .I2(addrb[12]),
        .I3(addrb[13]),
        .I4(enb),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_4 
       (.I0(addra[15]),
        .I1(addra[14]),
        .I2(addra[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_6 
       (.I0(addrb[15]),
        .I1(addrb[14]),
        .I2(addrb[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_1 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized7
   (DOUTB,
    ena,
    clka,
    enb,
    enb_0,
    clkb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]DOUTB;
  input ena;
  input clka;
  input enb;
  input enb_0;
  input clkb;
  input [15:0]addra;
  input [15:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTB;
  wire [15:0]addra;
  wire [15:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire ena;
  wire enb;
  wire enb_0;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .INIT_00(256'h7AD73B9404F9C98AFAF87E832C793B699A940EB691DF525463708A5C5C3E71E0),
    .INIT_01(256'h4F41BCCCE512600BE7300945DCB90C9C7F73AEB3D6B585F48891F94632CB8619),
    .INIT_02(256'h50301573C71A2C84886D015293A5E24C68A676CED1CF6AABA3C2B07C7816E538),
    .INIT_03(256'h14EFDD0F8D1453A4BA85F7D6B8069880FACA7B1299CB8D74B2A45E9DC29FAE58),
    .INIT_04(256'h0A5E6D865D9C05D1A903861E8C9F140EB7C42F4DBD1CD0868E70259CFB661C7C),
    .INIT_05(256'h7F68CB54FD6AC3F7BA1CB832CF1AEB04C03518AB92B5F8F127474029D019C801),
    .INIT_06(256'hED6D797D5B1AC98A1EF4D0EB5E81688585F423B4C8887E9728B3FFC5CDE68E44),
    .INIT_07(256'h3FEC6115A002DA562C353FC729E5E3B47934CF61629F35E8AA82EE2ED3CA49ED),
    .INIT_08(256'h967B5406B71B0D38C663E1DF3C62DE4AC5B54C0DBC1CE28E6A495C3F0CBAD79F),
    .INIT_09(256'hAF2D8B3917E36103BBE9D2B5503664E9EC4A5A2DDF4191C10745D2CA1D1CD906),
    .INIT_0A(256'h20F77086835D6FA744314708A3BE9B01D63A6CAF982C726B5D9F16FA6177AD3F),
    .INIT_0B(256'hA041DC47FA3169D67411C1932C51105FAB5E2F7D253F875A44E86C6562568D3D),
    .INIT_0C(256'h24976C85232044793CFCCC082E8A71AEFEC65732D000AFABBAD52D302D41F34A),
    .INIT_0D(256'h43B670C72E8FC969D67671120BB0DD916B677E8A6A4E04AD38F783264F36F5C0),
    .INIT_0E(256'hAD8C147555491589E67DA71C84605D42FBB88DF57644760A93114C90AB967501),
    .INIT_0F(256'hFE318CFF9BB1BB787205BB13AF10FD53DA621F4BD2B4332282EAD637A1166532),
    .INIT_10(256'h5CB02F145C5F8A6137CCAB41D230EF1555703170DE9925781F1B6F83662BE291),
    .INIT_11(256'h79544D8557189F09D378BFF60150186198374F50E213553AD38045B954DE5E75),
    .INIT_12(256'hEEB65637EF60C4D2E3C0829774B3F9524AD44C381544B6AA4C70D566860575DF),
    .INIT_13(256'h3C00E45668B88413EAA612DEB56EA0E7CA1BE86F469E1350A5F76792CBCFF57D),
    .INIT_14(256'hC946C1E40D81D8BA0CE132B38CAA20BC8E50F3D9998C38E7AD2B687170A3021C),
    .INIT_15(256'hA3CE59D6CEF8C6C7F169DEEAA15E99E03A6516F12AFA9659384A06D270906EDF),
    .INIT_16(256'h94E6C8AA03C73ACF817796C6F5496630F956156FF584A207915E27C3C421D224),
    .INIT_17(256'h4B58F7FFF7F5EB427A3813C6288C43A5D3937D63A0630B0D0B845C1F780A8C11),
    .INIT_18(256'h834876E2E2D2569D2568F52626CF61487260156E76EC846124ABAC337184A002),
    .INIT_19(256'h3FAA99E829AF6C230C15E70FA212FC096BB37524B71C1F83B4A25EB163364675),
    .INIT_1A(256'h961435F3AC8976A5CE0930D1865F1D75AADFA7A4BCB24DE92A5E67709AFF2C5A),
    .INIT_1B(256'hCC21D5B0028EA9528B7666A4E2C62033C3173C8BEB058A8ED38B4A8EAC9EFB99),
    .INIT_1C(256'h6B3D1FE3E161A1E651F4BA13325F76211C82DE9B4FEF067895AF275F8CF5CF23),
    .INIT_1D(256'hE6234563D00005C15A8CDA4F663025454734D51B46310360666F273DFBC1F4F2),
    .INIT_1E(256'h405EAFBF8F15CCA57F19786FA1258FDF4D568505FBF66AC7BD041035520A024F),
    .INIT_1F(256'h91301579EBBFAD4359BBCB1EC17677E3AB9A5100067ECF8CC423E1BE467DF1D5),
    .INIT_20(256'hB0C670FBED1CF219955321AE4073819D141F0ED492973150613273807C698771),
    .INIT_21(256'h5163585D49063BA0F4A243B34F2F644AF21C21297EF8A851A937F81836380D31),
    .INIT_22(256'h0DE8C344DA268DFD4475023C80714BBA2305D28E221A046B20C38E2AA152775A),
    .INIT_23(256'hA2228996BDDFE25A70E1DC13377F08AA325116DAEFFB5A13CC1949556EC750FF),
    .INIT_24(256'h3C1DA81DADD94C62979F561EC0C1481FE3298A01EDA03D3B9309135B7B661E27),
    .INIT_25(256'h8B4A3E4A2A2CDCC26DC9E0FA736A5A74548352A98E3CE3904B159999560A21AC),
    .INIT_26(256'h90C07722F0BE281EB7AFBA0990A4D0565A3B8A0E9E0B0F8C6A1E6420FBD6B15F),
    .INIT_27(256'hD86C473FA19FA362DDCF894D7BA58801A205B282405A45DE736EE8087C136A1C),
    .INIT_28(256'hA772E859B67842A63CCA73ACCC3CEA79B52A1EC715E77CE825FAD7680CD04E3D),
    .INIT_29(256'h0B897CDE677ADFEA04379669B91AB3C4080176B1432D77F4797C32300364546D),
    .INIT_2A(256'hCC699BE8337676DE2384169F9FAD09F1E2E2DE450E6D30DC88EEBAB5B6ECD439),
    .INIT_2B(256'h62C502BBF71F7EA4DED06D9954D56431BDCB001F0E8300E678EA296385D6FF5C),
    .INIT_2C(256'hA1C64F8666CA86ACA36BB96616700A67D959E51A92FAFA527C7B95257387D31E),
    .INIT_2D(256'h428D00F289050A8591E54442F337C14C87EB8F0B4290C0344C0CA7DD9B673B29),
    .INIT_2E(256'h8C51242575373FCC5A6FD36BDF2C688D91976595DDB8CF1DCB33C85515D18B8C),
    .INIT_2F(256'h1BBB4BBF8757665A609C1E73A1898BA0A93DA5AF8639A9A6F4DD4D86D7363231),
    .INIT_30(256'hFE709B34C9897E73949318397898E0D4ADB7774A3AFE5B2309188FCE747B65EC),
    .INIT_31(256'hDD98EA40ECD96BC3995CDAF534C06EBF2ECE8269314D8F3E63363BCD6957396A),
    .INIT_32(256'hD3487D778D31BEDD98EF697AD4F898FF285E27424B96966CABA9CF6E4BFA188C),
    .INIT_33(256'hBDDED6DA4C488D4917D05A81FA6B730F6E4F3059CE72CC201EE2EC5E73A32A03),
    .INIT_34(256'h7375E805CEDD55BBEB1278AAC20C1F7632A164C48601AAE894EDB71BF33B8363),
    .INIT_35(256'h19ACEF9261D7FEB5845EC8786CCE318B70C9B6C967D955FEA70D1F4C2697618E),
    .INIT_36(256'h9480BA11063E957B88C6BC9C6371FA194EBB835ABCE334D449FA6D5F35FA2880),
    .INIT_37(256'h4ECE694944FEA8CAC1827930F3A88ED677DECA288064F1DC1D706B034D60A0F3),
    .INIT_38(256'h3C8749C1C49620827EE8C8AE10F3E9181E2FABE289E580F956D48FA026BC0987),
    .INIT_39(256'h3C5930DC88D76C84DE571D44A861A844C1E97709F2C903900A48779CF11E0B39),
    .INIT_3A(256'h337F502F035236CCF064187F55C47FD4AA77905069AA76E8C7979E302605FD92),
    .INIT_3B(256'hCA46757D213275B63433C847D9E75675200C593BEE596F415899B27C65F47EC8),
    .INIT_3C(256'hD4DBFA65632A89EAE3E0BD69BFC3DF1BBDA14777FFD1EF5DEEB76F55AB8A2691),
    .INIT_3D(256'h42785667C0C6CFB6A7A706FD99126FE788A6F2B847762719CD3D61FECDF19B9E),
    .INIT_3E(256'hF17B031ABC49791B580FA07AAFD03D75449823929CE7A025E403CC098F5E0C22),
    .INIT_3F(256'h38BCAF5EF54AA08E330F27A3073BF2124BACC0D34ABF700CB9937F67F476EB35),
    .INIT_40(256'h740D6A6F6AA461D73F601C614A2C7068B2D6E2A0C8A52962D383F1D6093413F5),
    .INIT_41(256'h55F174EF183117396C8B1718FB206996108D6DF65CCBA42041FB70ED21E56CBA),
    .INIT_42(256'hCA08F3D9173BA3D5BCE4E43D67360A9EE1EECA5B308162BF4A56C27886CC2BD6),
    .INIT_43(256'h637AB3A4AAA8A000E4D6A22C4E793270B17773B3CAD65269EC73717B34D7758C),
    .INIT_44(256'h1CF193E39E044C7932CC989C365467B683E749ECD6A896028EA28D282F233AD7),
    .INIT_45(256'h296849A68878C0AC3BE5884769C86253638ECDCA781B5A0F24F24ECAE21883D9),
    .INIT_46(256'hFFE209138F89C63BFE8D186BF2224528314F324D9953C3F503E5E977FC8E9817),
    .INIT_47(256'hA79EB8C6FFBCA7D99238D6A442541FF52C3C036742DEE4AA165ABE6F13F41E62),
    .INIT_48(256'h2FBAE4AD1ACEDF7F522E17F53ECA2F9CDFEE24978C550C850F1F48A48CB6DEF6),
    .INIT_49(256'hC3105F3CE362D984D8CF4577DC778461AF41E22DE56227A86E7B8FF8A7193A03),
    .INIT_4A(256'h07D1F8FEC7EACED4AF6D1BA34B1106129199B4963BC1154CA27D19EBCAFFA9CD),
    .INIT_4B(256'h018B2161EE1D5FA848A4ECE574851E02DC055AA2CC8BC586D6AEC99E4B611CE7),
    .INIT_4C(256'hE03336AD9402C38CE7AEBD8BD7EE6E77F8E591E7BD5E1ECE593B1FB13A0663DA),
    .INIT_4D(256'hC22D997F254C897658C96948B78557A2927D5854716B27A3A3FDD01EC944366D),
    .INIT_4E(256'hFBC08190EE32F77D077B8EB4EAB67FCDFA5F859B22AE28518C5ACD3019552579),
    .INIT_4F(256'hBBE003C4828D5DE97D92BFBA9DF7A525D164E219ED722E0F6B6B4145AFAEBEC9),
    .INIT_50(256'h32EEC33CF85BC54A3CD214688437851E1D44544D2C9158D7B5CF4DC7F751BFE8),
    .INIT_51(256'hD8BBABC50CDF34E679BEB09B7958EF0CBFFF2E6C33F1B81DC846E9D3FE5CB912),
    .INIT_52(256'h4CAD45B57CD5F5F4AB72DFAF09DEDC412B29A36CF05D36A44B660CE483816511),
    .INIT_53(256'h58633C8ADC8AA2DB5E60F071C59AEB1F21ED38440F17462ED59573BFA701F15F),
    .INIT_54(256'h46A48CAD4C69704ECCF8D5765A849C73EF49260C66574C3E5DF78445A79C718C),
    .INIT_55(256'h41278B6E0D9DDF81956B052A8F4310167E108E38BA2F349093EC6578129AEB67),
    .INIT_56(256'hA43886F5BF43AF64867778B670526EC0109FA81449142F179C82EF5274BA00DD),
    .INIT_57(256'h21AB99630D915B6EA9E5983C5F48E85DBB73F7714CB79839E4E4CE1C2774FD45),
    .INIT_58(256'h22C54E7FCFAE0281DEBE191F6E5E6AA7994A2A8254EA97FEAEBF20BBB48DB8BC),
    .INIT_59(256'h04679078D80A9E27CAD2A783290FE089BF5933F99E538B136DAD0D8E29AEFF2F),
    .INIT_5A(256'h7043036AA1BB8599A685877203BBC4F37FEE9EE61CBEA1A91B52BDFE2AFECB0C),
    .INIT_5B(256'h1E6CB97935FC7E299108154A7A36D7DC0E16B36C7BDC8F5722A046E6624BE24D),
    .INIT_5C(256'hB9EE647C98B2B4201D3F5A8846667BBCC5DC8A119FCBB50A4B921DA7EAA6D8EC),
    .INIT_5D(256'hE4D1C1400D6D0A1DA44269937573FA1989A29BFEE278C1830CACE916650B6B59),
    .INIT_5E(256'h4C056EBDC94B65FA4158DEDCABF29A5572C3CD292757BCA40BDDFE1E84F8E7FE),
    .INIT_5F(256'h677ACC679222F8C400B17467F91FE3996C439DECA5B7B751B31E029669A64051),
    .INIT_60(256'h7574DDB911F15F18944A5FCB1701C32C229DDD4736CA582698756F5E9452DA59),
    .INIT_61(256'h0998BF923F86D806FA9C460652B07141303FCB243E51EE51D8752094BF37B8CE),
    .INIT_62(256'h9D1191F5B44EE525095E5E35868ADAB3E1399898E3FFFDD2FAA1DE250AA330CF),
    .INIT_63(256'hF5CC24947E38E6F6EE35EDAB752E016E734D95B2CF2B3272715BF3E87775F168),
    .INIT_64(256'h65A3467D708A6E0BDF16F007F4FED21AAF2CF2B5D3923BEF8A39D0BAC0E45B0F),
    .INIT_65(256'h51568F5F78C76F34A1919993B18D8737E577D2A65850C29A1A6BEE60E8194BF4),
    .INIT_66(256'h0BFE3FA1BC70147CBD90CB61A180E44B2FB00E3C189A642C2E1EAB705ACB367D),
    .INIT_67(256'h2E1FCEB81DE0AF339DCE477685DF8EA014A9E481C5D5A7E88BEB934A3BB9EF54),
    .INIT_68(256'h0E554691B50D6FEBFFD2481398A38338EC6374A6A49C6285940D7B10B3726B4E),
    .INIT_69(256'h7DD68F7A4B91D0118B0F78E75574AEF10BA9CBC0FE99FB00CDD0AB23C9B11C79),
    .INIT_6A(256'hD6C7FB474A6DB5C801BBF2F9384E11F4F475030C30D4B1F0191FB97455A6B7E4),
    .INIT_6B(256'h6F6FAAC66A5730D61AA2A133E9DDD849D0EF61D4D0550928F7FBFE74CCD2E9E0),
    .INIT_6C(256'h64BCB212D87261B317DF1E63966581141B598EB07453F4554912B241A8CA2CCD),
    .INIT_6D(256'hCB634C682CF8EC76B3227447E9C1562DDE62823D17749DFD413659B61D308CB7),
    .INIT_6E(256'hC7CD7DB2F113AC4600A01307D3B4927DEAF6134206679CA0AF2D0226F04F01DA),
    .INIT_6F(256'hCB60BE7AEFE6A1CB8C9FAED5AE9FDD58F39BE1AC40AFE3FF613995741EC80DF5),
    .INIT_70(256'hA9307130782F303E9A474A7358A1907636E462EA60AEDFA557FAEA6EB0E88E8F),
    .INIT_71(256'h6CE03686CBF0A1BB8216D1D33CA3169B5003572585816807EA5D6FD53C631A45),
    .INIT_72(256'h19756CC0A9D21151F3C8F5CEBD388F6F772B13D58D7F5025C598D50F6F8CCB0C),
    .INIT_73(256'hFC9BB8496C98174A8F1EDB4803E2DF94807243FAA4A71E1E54420FF1252A4859),
    .INIT_74(256'hAFAC670A305D1AA5E934982C24771FACA265090791C4D3BD79B0F7173A9A7CE6),
    .INIT_75(256'hCA11794DACEFF75AEA84F35F01452D3B919956E2AAEB32954A532F0D0BD0CE68),
    .INIT_76(256'h14F90347CF5824F8257FDD89B78AB70ECDED9F476B0DAF4916C1E7D60DEBEB09),
    .INIT_77(256'h75049DE339B8A725C27D5CF19B77BF733E8AD25B67639B67132A4D43BF9AF714),
    .INIT_78(256'hA32B6EC640AC8D38698CE251C9672D0ABD376118329121B1E33D8ED106F01CEB),
    .INIT_79(256'hDDF0F7B2AF61B273CBC44AECEA7ABD35505DA49C4725545157ECA8563FD877FB),
    .INIT_7A(256'h7BEA6A5CB368ED942C605895561BFD25320A6F32C53756A60EE9B80B9ADF0A79),
    .INIT_7B(256'h133C1358417780284FD6D9156BBE4B4C0CD648DE04A5228A0BDD1C433918A4D5),
    .INIT_7C(256'hBA90C6159F928C2EE39E0BABFC2CDB210AC4D642AF5BE1A5821883F84F22D58C),
    .INIT_7D(256'h6383316137DD97907DB8AFF4989215F807372949EE47F58B6ECDD2E5186B7C8C),
    .INIT_7E(256'h22F479906A497E446D3BEFB5088C60F4E41AF2B82F8C03BC46B43FBF3D783ED8),
    .INIT_7F(256'hF8CDE59DD101EFE88509F66E9F947A12D36AEDFDC30456A2D3D6938D0DEA6248),
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
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .INIT_00(256'hBBAA43D7D9B200601AED29B33FFA522D1E6AD43A41A40987F91D7B62F334AB9A),
    .INIT_01(256'hE23A282661C04E6966A00D3E2738698C71036B61D5FFF37333CF47B361096183),
    .INIT_02(256'hED09AA52BBEA6B46BA925538D3CEE67BDD646CEDAE715BE360E7F7BF9A841A41),
    .INIT_03(256'h31052D4F36F814BE7C95AA8E940887E5729D4953D21BC4D2859CCB5148A1C258),
    .INIT_04(256'hA3FA424EE439A0FCA7D89E9F5BD4F4A7E494CEB6C857B462F599D39D7F3E678B),
    .INIT_05(256'h954C181956DDDAB7C78E52A32E6740F80120C8DCBABB2B5A6C589CF78E32F67E),
    .INIT_06(256'hA63AEB09A56BE35C2814AEBCB0686C17E89352B745DD508ADF43226D0F4DB922),
    .INIT_07(256'hC82064A51F0BFB9CE8F5B607CBA42A7A16088BCDDF5C0B2EFDE7048418A1B768),
    .INIT_08(256'hA99B0EEA40FEACDC110EC1A7888E5D85F9CDFD582ECB1778AE538CBDCB176466),
    .INIT_09(256'h67AE6A6D81135B6623BB71D5F8EE46880FDD2737ACFB66B5356E23A76A0ED45D),
    .INIT_0A(256'hBE9EA0FF76933560CEFF9596D3C4C81381B75FE0DAE76CF207B750A6568EC7FF),
    .INIT_0B(256'h15AC1F3210400605A227697DC546B565E55E598643121C18774228FC974778BE),
    .INIT_0C(256'h7E8AB7E7A3AF74E65EC2C229CFA0EDEA365A76775EF215400000000001F27FC5),
    .INIT_0D(256'h86A6117456BE532147DE9A310CAE36699FFBAAA9A7514CB702A66686E5D0771F),
    .INIT_0E(256'hF291123B15676A22583565EAD7622A7E3742FE73E7F98C42D176B927D667B555),
    .INIT_0F(256'h913C643D97F87E8769EE8FB127A34D617705D79BD38635C8606FF4FA5308C936),
    .INIT_10(256'h0829C6E054957C5A7E2558B7C663A5E0C38F4A7FD37786EEE2187A4DA1DA37D4),
    .INIT_11(256'h6F6E9BE98605D67F8FB834EB2A23026713F87BAF6ECF7627DA7EBCEA2916AA26),
    .INIT_12(256'h9513FBB6DC1C17C591D5733B139FAE6F735A4748F69A85F33FE94AF5FF17839A),
    .INIT_13(256'h6683FE51D45046E3CBEFD9D750B4927CCCE02B51063E3004EBBA4DC4EA16CB59),
    .INIT_14(256'h9DC900F370F0626EA875F990D94844095EC7E7E1A05420AB1C26FBAD61F3337A),
    .INIT_15(256'h1B367BD6EBF85706DA67AA417DA4BE0CF16B3669D29A4A76C762E65052204243),
    .INIT_16(256'hC9090CCAD293E37A36E8EA1460101463E720B69C1A09D52B33EA816D717BAD2F),
    .INIT_17(256'hCC643054735D0F45BC60C2A9D789694B75C071C36A3F84464C979C1A9E6B2686),
    .INIT_18(256'hDF55D13D557A92BB7939F43A69FB940CB010F03030B2C420D60FCE4A5C6A5303),
    .INIT_19(256'hAA893D990020807D7794AE0538BFE1BFF174AAA6BA8E1CE97824E1A39DE357DD),
    .INIT_1A(256'hFE8F5B311EE3196357908BEF631C1832DC685F34213CAB4C751ED23050F3C5D0),
    .INIT_1B(256'hF1236D3EB30F185DFD256630B47D74A6424E014349F2AA8E676AA27A611D12FB),
    .INIT_1C(256'hF87AB54DBE02079EB14B05B86B74009EA13A5F5C01D05CA69077E59BB868DAB4),
    .INIT_1D(256'h4D4645E0E7F7686E592D5C453EFC573454D3286C4F29FC7CB8CFF334529FE3E5),
    .INIT_1E(256'hE7A1A5D841916962291CEE6F52566D9908FE1E56C0520DBF1F4660D01A93DE43),
    .INIT_1F(256'h6A331736613991DD9DA3646750E91C121D72D5FD519D3F65A724C64159351D57),
    .INIT_20(256'hA525261E2A1A7D062ACEDC004BB3AB444AA69BACFB083EC283391A037332451C),
    .INIT_21(256'h6C332B0FEA8447579C8F9AA29C7D692BF96025E953989C24677F3238789ACFCA),
    .INIT_22(256'hACACADE2C8EDF624A5579E72F747C9F4D7252A6AE8D422FF28714398285B4311),
    .INIT_23(256'h996AD20FBFAD06132E968F9ADF34BCAD41E8D4923F2D2A8426246EA1AEA0F8C7),
    .INIT_24(256'hCECDDF80EA0B2F9B970F8841FDF579088663C2E03FA0EF85D34B9FA306E0FBD7),
    .INIT_25(256'hBA1496413815E67933EED5336AC5FF3C2F7169A8F28BF9200AEBA4AE5DD484A8),
    .INIT_26(256'hA3D0AB20526989ED9776A4DD97F16EE372AF071579E3BED96BE79A709E7E8DA8),
    .INIT_27(256'hF712A2AA1D0C239C1E47CC87D5D600F2579783B0712C53E40C8FD66AB6FB4419),
    .INIT_28(256'h288C94BD351FCD1A4EA0F2620082F8248787B8D302BD7185831DABE605CCF5DF),
    .INIT_29(256'h884A821E64646F4FE0920EDEDCDF94F375A29234E5DAFAFF95EF0875F4EBA987),
    .INIT_2A(256'hFE3D77329C9F4929CE48AB15D678F169C1434134729EBBA7C90D741236853AAA),
    .INIT_2B(256'h9F0924F82113D15B3321A408A22487EEF0B9B846683FDEF29690D733056E6371),
    .INIT_2C(256'h36B584F743939BA1AE68DDD4F8FFE576A3F3CE428BB23DA7F123646789D07242),
    .INIT_2D(256'h59A99F416AC5ABA0C55FAA9653887BC1133CC6EA0BCC2E9D4F5983B841D7BA01),
    .INIT_2E(256'hCD9D8CFECFB5A64DF0400AECD3D8D5BC6913AD33F171CFFA7E414C3424B587F9),
    .INIT_2F(256'hAA2EA021F9BAD30099F557316C0A48B4AAA000000000A093E2E96427EFAA7496),
    .INIT_30(256'h7E0B1CECDD6C92842FDF46BDD7DBD22F17402F2974B50BFFDC46529EA9427D35),
    .INIT_31(256'h1249660D79DDC6431104E2B9E7049B77769EA01237B35A0C82201040C8B5DA98),
    .INIT_32(256'hF74EA2387061BD0A82C7431660D8404D9319D372275363EFB146D6835B857BF9),
    .INIT_33(256'h26529EBC0F4E4097054D5B3E1FED48AEBFE985027A3CB280DD88B7DEB6F2F836),
    .INIT_34(256'h569B451ED496EEC5D3FC87FFFC338BC05C30E195A0947D08F2455140DAA2FBD6),
    .INIT_35(256'hA0D8E662CFC4BC51098E58BFFFFFFFFED50DD17CB87B132539FF92F8829132F4),
    .INIT_36(256'hD4FD0E3396AD39CEA1A1C2F393F1BE840ABF2BA40965CC2ADCB9C5A8D87FCF54),
    .INIT_37(256'hEA4EC78E6F894760E8497A0FA8413F9440E0C993A9C7FD53A00D7CA9D3D75766),
    .INIT_38(256'hFBDB9E878F46BE2D0959A9FD7F0C01A44BA41BE5EB8CF2CDBE60896A99232997),
    .INIT_39(256'h1AB7B1B26B27A73D9461494B5558A275C37B11058B3DFD0CAAE04767A49074F0),
    .INIT_3A(256'hD9ABDCB856BF93E4B5785F0397CBAFFEB1F795B8A18DAE5729DB9B9F6D2B54DE),
    .INIT_3B(256'h35AB870E2BFBB43FA616041AD442C45E495704EBEF4F767FA8F23888AAC33580),
    .INIT_3C(256'h4605F824D0347D554B7BDDAAE3C945831A87639C25935AC412329616BB92F16F),
    .INIT_3D(256'h0A67A96C17D1E42E3C4E8167EDD6EC08A2464D638262C22162FB893218F00D25),
    .INIT_3E(256'h5681CCA802D17437035B08CCF5B249A580808633AB69F20C506404B864B186C1),
    .INIT_3F(256'h13462E314E2FE7DCC0A9A3B541343940BE6D0A7D48010CBB5F62063F3C46F7D8),
    .INIT_40(256'h2FC20FA9016DB5D1A1D715EED0E75053F369FA95412459F42F238D379243C14F),
    .INIT_41(256'hF5FE66FCFCA5F0AA6BE58BA954FC017370DF8E10F041B704FAAD4CBCB984BD71),
    .INIT_42(256'h64E14B357B6F43498C1266CE9E13E3BE15184B26FD79255DF546FF8A66D9CE6C),
    .INIT_43(256'h36C2A4EE1BC475A03EEA5C3954D265FC0FD79C1C765C824B4D45C6E3EF70D277),
    .INIT_44(256'hDA74C09602E8F1DD6B54FB64A0D23AF8B2B6B3A148AE8A8B8B9C5F4EBBC3DFEE),
    .INIT_45(256'h00040056AF8913B3D57EF632A800DEAB4FFB8DD3BD1A8B6B6A9F0A109EE18536),
    .INIT_46(256'h01F5969BC1BCAB6004181900CFFFFFD53312058DBC2F1D555903A16D468D1480),
    .INIT_47(256'h00B0B40E9BA2AA28AAC3F7257F021E80002AFCB5201106803A1CDF3FFA3FA967),
    .INIT_48(256'hFFFC8F8316C29920001A78318B7EB7FFF8ABB057F7AA5BC094876C29551A9405),
    .INIT_49(256'h61CEA0EAB0BC55E78E33400B757EDEA9A884EBB75762AAFD75A5D3C19CF31ACC),
    .INIT_4A(256'h9E89583E9F58B370E50CF295BC7C3EF417910BA841FE377567EA26D62A2D2348),
    .INIT_4B(256'hFC01177CA0A4FC5871C0C67E5EB7959C122ED1FC482713E1A834E91AF9EDDD9E),
    .INIT_4C(256'h78F9C0D701EF516D6D4BC0B4D9AD585E8BA1C97748B5C2F7D468DFC4D22E98DE),
    .INIT_4D(256'h575E8EAE687E69F81084574904E34083A7C1B25765468A4B6C0DA43C0F22A769),
    .INIT_4E(256'hCAD094B0C12673778791C31D7889BCA77770FFA9FCF3CDEB9CEFA4138D9BF29C),
    .INIT_4F(256'hEC975C39F26ECF526DE656D28C43AE2C2E5960A492B1583D9BCD838569C9BA77),
    .INIT_50(256'h6AC14F876F6F289B14D76FD75B408505979C702E02C91D1ACE82F4F3F1201971),
    .INIT_51(256'h74C53FFCBE2E2E9E9045887FAAA4D98EED7BC096DBCAAF27811067D9298CFDE5),
    .INIT_52(256'h1EE2AC52D0D1C533D97925486FAD7CD11AC1E191EBD2371D637B099A6EA4736D),
    .INIT_53(256'hC127871A45526332F681576AC968BE53474C866F1DCAA69EEDE4620701437965),
    .INIT_54(256'h5784F8242261A747F222469A98AD65F74EC2A3922F148CE042507CF95E5F7BC0),
    .INIT_55(256'h01CDE16E32AEB295440D8CAC43A69D530100554413F1593C62792377CA76C449),
    .INIT_56(256'hBA06D864AF5DC1797D0E2EFAFDB77EBC14DFBE10CEA0D56B1DDDFD261B9AE164),
    .INIT_57(256'hD8AEDABA5203B79E2252D7A73DBE6FDCBAC753A4AD74C374107676B1101DCF87),
    .INIT_58(256'hCCE62939D5E77A2F1A08644835B40672353808062EB52654E13F4BA074AEC77A),
    .INIT_59(256'hD19778E3A1E98613BD2C83D926B99736E9CBB949F65B55BDE505CD6FADED96E1),
    .INIT_5A(256'h5F42966048988EE14CD48BF2EC44C16259430BBE23EE89E61BFE2D4C35D88440),
    .INIT_5B(256'h32D7222E8BD4982D5D0E3270A0FFB5D37FDC5A2F794703A367A4B632B14FDA13),
    .INIT_5C(256'h37B5D9310146A6DE7C38D814764BE8C45EC3F83A1CDCF64A2FD4B264C1E90547),
    .INIT_5D(256'hE1236072CCC4684AD816C2BC47380EB1A6647C3A1BD0CB02BCD5DE6F3D137931),
    .INIT_5E(256'h7EB8BD0859AE6EFF7FF153D900557131A3033139F149E634E082F9795632108C),
    .INIT_5F(256'h2B681DC7F920C81AEFC7C63CF5F6B755BF7D84C493A303D7E451692C8594FF87),
    .INIT_60(256'hB49F9B0C6CFE49E3B59A3AE61169865F90C36CDE5677122C272366D6E8CE43D4),
    .INIT_61(256'h71B4C9331516F111556A8F28F0A5191318EE7BCC4569C05DA64355C6E36C767B),
    .INIT_62(256'h3D31423057E618B74D706161F162D24536141773CB2A60B3290F5E2014DA3CF7),
    .INIT_63(256'h544038725281931FB5E1A99B207AA5FA48D1FC0682CAEF86F1117E2398256DF9),
    .INIT_64(256'h21720F9448F6673B919BFEE6F78DE58D029FF6B3C45BF900B74C57BEA857817C),
    .INIT_65(256'hEFC6A6FA25456AD5F988999D6AC7379CB65AF4CAD30E9A581A5EA4EABF6117FD),
    .INIT_66(256'hB1FB757DF0F06CF0C9F4B06B19A674D8D703E4CAC57EB657BC1DCB210C62D354),
    .INIT_67(256'hF89C371200852B651AD50EF04B20FD664C2AA280DCE59E27537730D139AC8C53),
    .INIT_68(256'hAD059F5049D761F485B3391AF729781B6C654991F2E5F2B30F70409FFA9659B1),
    .INIT_69(256'hCBD2AF6A295CE303579B6ACAE282CC65E518C73493AA57F6820CF9DA30176CEA),
    .INIT_6A(256'h1CF9D66B5EBA736AC29E0A9DE9C3F449986E4D17B76CD71CF0EA9915CE6CAD86),
    .INIT_6B(256'hB366746BDD00554FF8AFD99EF8FC2EEF7C2DCE69A50513C82AFB75472081175A),
    .INIT_6C(256'h1280DCAC80CF7D961D4E5AC4B725BABC48CEC13A378FFA1FEFB3DDC8C41B7CB9),
    .INIT_6D(256'hF6F696B6912F5B6EACB65AF0E9DD7EB4E6ADC9978EE0E31037E715C3FD504F00),
    .INIT_6E(256'hAD65DA5FD897D1157F70C1FDE538A884FFED547625A4EDE0C59B589605F323D8),
    .INIT_6F(256'h611E4CEA7E48CD7B6F267654C13CAF477FE6A6448A3B09A74DA36D79E630E526),
    .INIT_70(256'h5A0E3605C652EB6913D77DDC1D0E9A81538B0C4617652502F8A77B46BCA18E99),
    .INIT_71(256'h0A6167E758B54D372B8C6B314387067033BF40EE6BE8142D35818FFDDB9A3CDF),
    .INIT_72(256'h5965E404D326972743CE82311091ECC8F7A96E8678F8A9311C79800ACD9FD568),
    .INIT_73(256'h743BE239C113A08B098AADC6B08571F02EC837EB71EA0CB6E7845E1222908915),
    .INIT_74(256'h620841CA6274E62865B67444BCDFF8F2C4C04E9E60C1D1C361ABC5A6561ED182),
    .INIT_75(256'h7DDDC9ABA1FBD76CEACD1FC17FEE47C415ACDC7C7B1FA49958DA89A20CCE420B),
    .INIT_76(256'h7AB7877924D10A0A0FE32EAAEB5C446F8C3DE94F4E2767B2D574366ECF79FC50),
    .INIT_77(256'h8DA25D03D76BED255E8CDC5AD80FCC27F8E943CD128433765F6C09010A8FD352),
    .INIT_78(256'h7095BBF9058608FDE2315A4D8309AAF44F0170E3E630EEBDCA12AD17C13C3374),
    .INIT_79(256'hE6217EC4F66D4A2B876720261674FA1DD602B95CA824EEE44A7BBEBB97022D15),
    .INIT_7A(256'h6A0F6ED6C3DF677AF16CB64B6BDBEF1F294ED468C84E7B3B78D6BE253981DC4F),
    .INIT_7B(256'h4DF5BE64D41EBCDC77575DD4729D26DC0714F03D6F0103C1F66F02F89DA865C3),
    .INIT_7C(256'h6ECEC5E83BBB6D9AD24F043FDAB8ABA853383AAD60A2C6B56BC687057817FA57),
    .INIT_7D(256'h492E11EBDB3267C825A5BD410929ECEAE579A5C3B367B6FD9A6F524797E44EB0),
    .INIT_7E(256'hEBC8192EE1AF548C1E6A6DE9314FD413F5E821ABD89AA3DF7F03ECEC2AB57E77),
    .INIT_7F(256'h4F1A40E08B1A7D9AFEDF211879A1F84318B65BE545F5529726A60D5BFBEE5EF2),
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
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:1],DOUTB}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb_0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized8
   (\doutb[3] ,
    clka,
    clkb,
    \addra[16] ,
    \addrb[16] ,
    enb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]\doutb[3] ;
  input clka;
  input clkb;
  input \addra[16] ;
  input \addrb[16] ;
  input enb;
  input [13:0]addra;
  input [13:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire \addra[16] ;
  wire [13:0]addrb;
  wire \addrb[16] ;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]\doutb[3] ;
  wire enb;
  wire [0:0]wea;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

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
    .INIT_00(256'h6AC08261CEABF0029FEE34E086770B5F56FE89B2FDB2947A0F7E701BB88D9308),
    .INIT_01(256'h62276C9154220582782AB60DE2D34FA6BADE7206064D7CA8173B4B89BC683F09),
    .INIT_02(256'h2DE099A900D1994F3F29DB9F6DE1692A1C22AFED201C9253DE8CFE133F90195F),
    .INIT_03(256'h18BB3A09A2F37E9F85BCDBE0F2205D5BA2E3A988F9F49112108588BD5AB892D1),
    .INIT_04(256'hAA1E269387F77DF2B2C322FEE36744E8EB497A220DB0D2DDD3E60D2755DC4B8C),
    .INIT_05(256'hE8DC3F0C7350AC5A579734EF62E5BF51DC1B98CEEA2F617125A8DC7C747DE471),
    .INIT_06(256'h39FA0620048422850CC435246EBC5478198AF18A68CCB37553364252A9FACF36),
    .INIT_07(256'hC5AF67E68DE17A1B68713DB0333BDB4F5B1FCC2592B1E4783DAC4F2B79BC3779),
    .INIT_08(256'h54CC9C2BBDF29CE1F7A77D21F88AD72BCD3BB1696C8D1B644EC4D3B3A2CA8845),
    .INIT_09(256'hD999C21EC80C698C38CF8CC31563B7C7D06EDFF318D71E78983E3238310DCB7F),
    .INIT_0A(256'hCFF599EAC871101D5648A3725DA887A9F7B783F4467583749415DBC66F01F99E),
    .INIT_0B(256'hABBAA260381244D2ED1D51CE76E75423C74F67DEC740F2B638A4D4BCFE927230),
    .INIT_0C(256'h3B17C2816AD0F814FAF560171AE07844041629A1E0DF4D3660E2F43C91CEA25B),
    .INIT_0D(256'h48875294E1424FD0F7BEDB843846822F72A22CD0E20B04F39A18C1EDA8CB7281),
    .INIT_0E(256'h6DF5B1DBD1CE40DC219CC9666C9A289731F4E6579B4182A341624F433D52D305),
    .INIT_0F(256'h35F9C7FD1807C611BB1BC66261C806BAF9A4220DE690C3F888C551F59F87EA9F),
    .INIT_10(256'hD493DB3A2FDF9D8E14E4EE3B954B270EB35A290A58EEC977872D71B8A31B8218),
    .INIT_11(256'hA77C46C0AB10C15800718F9AFCF820314856210AC46A9C607733050DD61FEC85),
    .INIT_12(256'h59DFD2E112A0A90E42EAA0051B7B84447B44DCCEBFC73386DF333D5FEA1B2CEF),
    .INIT_13(256'hB10134F32606F6DB753E69AF5F6E6465A13A5FFF5B6F70D18B92F5FA95541810),
    .INIT_14(256'h3F2ED36F88664E6DE310374C8D1084C1B16D4315458C13F006E352D91CFBBD44),
    .INIT_15(256'h0B7DFB3786F3C8F35EC98E9A61E6B96D638523D91996F05ECA507A8BAA384CF6),
    .INIT_16(256'h0B9D44C13CF1730619190EFC8BD5A5A8DA5D1B266E6F0C2DF910AEB3E90B0357),
    .INIT_17(256'h8EE4B9AD3C74E3DCB107B340F04DB35CAEF0C8BFF59DBCD08BB0A1CB38499811),
    .INIT_18(256'h52DFFD571A30873860C6C3CF41A45AA9FD54802C3C5A5BEB55679368B89EC515),
    .INIT_19(256'h76C9387AB5F0FDEEFA9AB951CFC7FBCCFA17D245A3244BF85BFE263C09EEC0B9),
    .INIT_1A(256'hC0540D90D003BC6398972ADEB59AB4F40FA0161EAD38B72AEDF1141E8B12EBBF),
    .INIT_1B(256'h0CDC2447936CA36D92CBA28C35A5B71801D311F827EFC7FFA15DE917945CCF37),
    .INIT_1C(256'h1251B1ECC52071A44A12D6570A0468752D54844610C43614ADA3B6E7AD81CFA1),
    .INIT_1D(256'h6B722B97A1F5173520AE581805AE8BACBBB969569364BC2505D43DB3719C80FE),
    .INIT_1E(256'hC78F3B312A0000000000001AB555000000000000000F656A6B428380537DB128),
    .INIT_1F(256'h00000003F9B630AA03FD07FA0FF41FE83FD1B5CA550000000007EAB01EBD7AF5),
    .INIT_20(256'hF63D501FE2272A81000000000000000000000000000000000000000000000000),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFAF40000000000000022ADC021EA16A80000000000FF0),
    .INIT_22(256'hFAB42A800000000000000000000000000000000541A5D97C3FFFFFFFFFF55EFF),
    .INIT_23(256'h00400054FF1FFFFFFFFFFFFFFF94AFFF55060202F9D3FFFFFFFFFFFFB7DE802F),
    .INIT_24(256'h000000000003AAA86ED54AA00000000234001554B50000002956D45C728A5500),
    .INIT_25(256'hE55F000000000001518540000000000000000010001785D40000000000000000),
    .INIT_26(256'h61B0400000000000000000000001558B76AABFFFFFFFFFF8C000003C468B6A8F),
    .INIT_27(256'h0912FBCB4483BAB8B3E075861E7350AE5B063EDF9D5EAC2D7217D5A63C02A380),
    .INIT_28(256'hE27326D9BD31027BB913C0951BE4B1E9301459BA70437F8A99A67B41BDC57707),
    .INIT_29(256'h0E916874851DB0A0D33390975DFE5C080A24BB89C0B1D81833E8618CA5F614DA),
    .INIT_2A(256'h6C15263ED28D437089717952699393B5576806C76BAD14ACACDDC0DA59B6BE9C),
    .INIT_2B(256'hEDC989D28767B68762832BD6E0A126A984945B3573932246927E6D574E75242B),
    .INIT_2C(256'h9170241570232FB33814B5AC6676152BFD8590EEF176CBA6E83EEDE473FED4A2),
    .INIT_2D(256'h9D119CE3704B38E2C9C268D9D4C8EAA9F88548AE578C477890EB694F7E77481F),
    .INIT_2E(256'h03DC1C8111350D94A79A5012737085CEBD800801ABFFA64641C9290EA9310AC1),
    .INIT_2F(256'h1028D4FF914B11628E9B53AD0203336921A61E57953AEEC8D2003E1C9D28322E),
    .INIT_30(256'hB3E62F01D6A7ED88A657D894FDE32733E6DE3E4AC610B94160F27A281623606B),
    .INIT_31(256'h5BAF5EC9CA3509CD977F25D3549E0E2EB62885FDAD5312546B0B3DD1342E4AD3),
    .INIT_32(256'h8203F52F11D119C1ADCF1BE106B1D778BF50A2D0B20811685F49DC9A88D4EC74),
    .INIT_33(256'hAE8FF8DA1E299DAE6542467E8B9B2E7414CA6992DEDCACBD7B48B0336320232D),
    .INIT_34(256'hAFE48E5D61CDEBAE11E7FFF6998D87C2C452868076C7439C9904979B114223DC),
    .INIT_35(256'h481D0B485B8EED6682D8F7421B1C5C13D57128FC47A691EC71FAD568AECF24AF),
    .INIT_36(256'h218A15BA7F7C437EACF096CB9854830B1E518F5B4FE89BAF5492C18BDFA3475A),
    .INIT_37(256'hB046BBC2861821FD2E8650C336EACF25A7F28F04C3A7B5F48A1285AD81404347),
    .INIT_38(256'h1FE7CB8DE4220CBE88FBE9A9F46DA02A570BD932B12CA4FDD5BCB7FED7C16049),
    .INIT_39(256'h5B5AE84E490370F3BE6E892FC6EA3A1F2C1EF058F90274EBAEDC20AFB3372486),
    .INIT_3A(256'h91A7C9833E8FB203273F5540AE4CF60ACB415D55018A0B5E291333C2EB4A2C22),
    .INIT_3B(256'h9CC79CC7534EE87107D53865AF49F16462536DDDB4DFF22F71B6CEEB1992078C),
    .INIT_3C(256'h47D90A5DAAE9C2AA157D4C3EE6B50F12B6678756E752B8BF5C2F6048BFB9CDB6),
    .INIT_3D(256'h4B44F5629DAE2CFD4AA8572318FC448E68E0CD9C8FE559817D3323D94D34E6D7),
    .INIT_3E(256'h4DAD3FE5B73CCF37AAA708ACD6DD8AA47CCE3CC8E72D772CB7292DB78A1B03EE),
    .INIT_3F(256'hA3645E297DD2E0480ACBA7FA856F399D382DD70A178C70ED84491E73E233A3D6),
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
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:1],\doutb[3] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\addra[16] ),
        .ENBWREN(\addrb[16] ),
        .REGCEAREGCE(1'b0),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized9
   (DOUTB,
    ENA,
    clka,
    enb,
    ENB,
    clkb,
    addra,
    addrb,
    dina,
    wea);
  output [0:0]DOUTB;
  input ENA;
  input clka;
  input enb;
  input ENB;
  input clkb;
  input [15:0]addra;
  input [15:0]addrb;
  input [0:0]dina;
  input [0:0]wea;

  wire CASCADEINA;
  wire CASCADEINB;
  wire [0:0]DOUTB;
  wire ENA;
  wire ENB;
  wire [15:0]addra;
  wire [15:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire enb;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .INIT_00(256'h4CF27DC17B671F1733DD2B499A3C88F72920E1106224876BDB8AA9FAD8C42C41),
    .INIT_01(256'hF89D41B08F945FC78E2817913475B9B4B3405ECD13174CADA6A77A9778DF6F07),
    .INIT_02(256'h7DC89291D2C4FC2804A2B250C536EC17C10A6C4794C6CEB699E3BC68E79DBC5A),
    .INIT_03(256'hB56D77B8E8A5953F195949DED447C5F14A05DC9A993AA1F162150E791C576524),
    .INIT_04(256'hEA5108CA33CABA47CD6CE81F08B1757771F9F7E22E1196B6569238F755C92BE9),
    .INIT_05(256'h4F4552E6078C2D4160017DEBCFD6322AD752ED0D719E2E48B0A2941D93F3EA2A),
    .INIT_06(256'h3E4D3F79E3EB3AEE0A78772F2B470A4911D00A24BA0B0C30C36E52DF32A32434),
    .INIT_07(256'hD7FB02E92F45C67EF4525F69DDAAE17699732C7E4502CC72FFD41B0EAB16C5DD),
    .INIT_08(256'h53A922FEF9E7FB7127FE38951168BBD5AE1D4C4B70290C788A44EFDD142E4F66),
    .INIT_09(256'hFA7F53889E698A3CB688EB72C0A0AD0D9107F2C81D3B858A742A15D6117F4525),
    .INIT_0A(256'h958114811801C1BE997DFBDB9462BD7A0FF6D256D0C3E9367E178663EC95C5FA),
    .INIT_0B(256'hF82B72603283F014EC525126E6471F5C889A7DE72C25A842F2A472E0982074B4),
    .INIT_0C(256'h978112D391482E064DAF95CCCE6B5773A813CD034D269714F964AC305D06C5AA),
    .INIT_0D(256'h39E01520D1CFB78C08C5CDDB3A48C86DD2FAEC869106695FA8FE4E6F537B11C9),
    .INIT_0E(256'hC141F39EDA73B80041CA88DADFA6E6D2C83C86DFBB6581600BA6446A7E1A30D6),
    .INIT_0F(256'h774265E6704F8BB17B14985EE24E24E86F7DFDC311DCF82816760E3A5E63EF14),
    .INIT_10(256'hB4D2881D86BBFDB9E36043B2AA73EBABEE19C15BDFAF7EF4CA9748F39D695CFB),
    .INIT_11(256'h078800FCDC975E7F143181A5A0F8ABD142C7A0BD0CC0E3158E14F76569037C8B),
    .INIT_12(256'hC982BE6F7D6F95F3B8E71F0611EF10DC846830A51484B88A1177C63F036F8FB6),
    .INIT_13(256'h7B6308C3B54D46011CD78C5D21D42BE59FB47AB98CB78D3DADE261427CADD722),
    .INIT_14(256'h0F430878AA375CEB5BB125A3ACE49FC0D9A45A7BF527F4F3DFAA38FA7F021555),
    .INIT_15(256'h84FBE310A34B26CB4B0091A91676B1AAC6A332EF5DF0FCAB8EC47B277CBB8446),
    .INIT_16(256'h1E266300F7E30782F68240848EBB5D61FB2DC34E35B17B0B74AB1CF71E35594C),
    .INIT_17(256'h43114BB0ABAE4B2A080AF3E9AB2E7930235ADC3094D63FCD93713A1742F50C9D),
    .INIT_18(256'hCD7162A10294D53A49A80DC2ACBD5B44E5E3442CB214C454E024EAD1AC8D722E),
    .INIT_19(256'hB9D52F1963C4F2F84F4EA95E1763B6E78F05B0AAD8E96BAF726AEC6F6D56750A),
    .INIT_1A(256'h8FCC6FFDE9311E062467BFAC088356F967DEBBB90AF10F5AC61C9F8C32E089B7),
    .INIT_1B(256'hBF332EBD218F4C22CFF7F55E268DF2E99EC7443B3BFC9949CB585E0339558426),
    .INIT_1C(256'h6402162B961039DBCA2E8E2600B5C3EF08E0A62EF4E35CCC76779F5F0F32A1D5),
    .INIT_1D(256'hA93A5E0A1694090019A95DA3AB966D324D5CB276FC529541570D93858D0802AE),
    .INIT_1E(256'h401D5CA370E0375800A202F627A26944D31EDC19041691D42B59E30BE57F5BB8),
    .INIT_1F(256'h5C9A79421AB5F0A973094744C1B5C6D81BE947EF493A4D39824A0394EFC9D7D5),
    .INIT_20(256'h51143365994374F5A2088C2AD161BDFC8CB4B2013F82F7E4C1D8604CCF8DE28A),
    .INIT_21(256'h27D015358E75E5384866AE2C963F097EE30851FF22B3DE924A7881D2338AAAAE),
    .INIT_22(256'h1B37E1A3BE71E1E9C53AAACA8905E72DDF63EF2CCAEDE7B25B4F814F7DFFADFB),
    .INIT_23(256'hFF140E308C6D7376E67E81328539111AC5C6C8E3B4C9707F063A0AB4D4FAF7D8),
    .INIT_24(256'hCC37205E87DA07BA0F613C1F6FB62F3C84AD2FB3E38C0B1BCFD2B649C7F7ABF5),
    .INIT_25(256'h3B7F413BB7A41AA062E774F53369F4EB18EF3DC59B79D2FA2E0452E2CD08C68C),
    .INIT_26(256'hB04BBE3BB3E05C9A53069A7C2CC6272DFADC86B499FC238E029E16BE27465E79),
    .INIT_27(256'h6432BFC6ACBD620A27B9303739840FE9C813BCDC8A04F71D606D43EE707EF837),
    .INIT_28(256'h06C4CE648C39AB344BEB858817AE1DE94251D9A529E60F0BBA95E87428097C10),
    .INIT_29(256'h7496BDB51DA036D06DBD118EB89A9B306D1CF3AE5EB58999589F9AB3FEDF90B7),
    .INIT_2A(256'hE2FEB5503BFDD8AA7B20A54E60A4966157DC194B4A1F32536219C88BAB9CA839),
    .INIT_2B(256'h4B20CBC42E5D82978D6908C70A09AB07A5890DF0EB29A9B1DB90103493141CDC),
    .INIT_2C(256'h394542B18D02E28683876BF01F0A36A81E922135EE89EF2F9D38ADF09E0F5B3E),
    .INIT_2D(256'h6671DCC038A0A8D71765DF38BB7C6A3DDC153784937A5A5733E068EEDA1B552F),
    .INIT_2E(256'h44C8F043C7BA251AC0D038AE6E8CBDAC9E936C0D03C58B7B0D6F853E7D4208AD),
    .INIT_2F(256'h669597406446B9702A059D4CA0F4312D7016A7B5B2D1CC18018C64926B0E58BD),
    .INIT_30(256'h952A16B7DA0D57B6175FF5D8B3C9916759BBE06C133115BC2FC6DEB3FB4791AD),
    .INIT_31(256'h1A4CA5BD180F07CB5602F12573181D72402ADA5C3A375430ACC26FAE3EBDE86F),
    .INIT_32(256'hDFC4001E789CC8CCB084111982AC2BCA46F22B4BEB08ECEE037F4372627EDB70),
    .INIT_33(256'h4CC4ECA946062E1FEEB524A3C97FB47DBCAE46B6FA82AC3AC70CFE41F7E81262),
    .INIT_34(256'h59B9B927FF29D793D55CD70C4D17C131A1B059F849E648DF3D906B3ADEAE54A9),
    .INIT_35(256'h36BCAA6E156662EF96A6FC4B0C782A993D5519EF3989A5026481069533CC8D52),
    .INIT_36(256'h2A7B4CFD341CB7BCFE865E81787BE6BE0E9AAFF2D63E0AE5C7225F10D6911E46),
    .INIT_37(256'hE7B5015AC0B97B06B0CC994BF7CD08585EE2719238DAC1B256AC3948E254576D),
    .INIT_38(256'h0AC5FD193A0D730B7D6CD0B14A50BBE974B279884EE123546CFCB2977051C2C6),
    .INIT_39(256'h4F28A0CE391461C8CC701F2A2E4DAB2157C4CFF19A7BB60809566408CED20AF4),
    .INIT_3A(256'h62BD4EE43A4E23458B22A310E6ED94BD711A492C338BC60816083734381999C5),
    .INIT_3B(256'h8399069DBF3707A1D54F8DC0C3A3F4AC80906F761C2E94F8CAE57784868B6497),
    .INIT_3C(256'h3A2AC77AA7D1F9A2274B59079DF95C753F19512282D0D5DA641D9A74FD7B29E2),
    .INIT_3D(256'h61DADDFDC8BED363F49B90654C16BE0B1F198160465BFAD574C4A025DA1CBFC8),
    .INIT_3E(256'hF2CA6280B25D4159726C5FC08E1D505A5104C0C72938D1C9B2147F5408E67167),
    .INIT_3F(256'h03BF3E03D8C0FDD532D2388CBE016CE486B4D4F047554DD683E7EE14DFC5B953),
    .INIT_40(256'h4D277F1CC2A185FE22840EB29B2A91F5352514A0CB13381730C4A6E6AA12DB4A),
    .INIT_41(256'h86AC7410C7B1832FC7113B97B6CA2B277E40816B9297E22F70AF370DCA03AEE0),
    .INIT_42(256'hD5CC44F9D8EFB5614CF46463F6613CBE3473111AED8EB41FC8C5D906D12E536A),
    .INIT_43(256'h6FCFB2AABBBF68008F35F166B5424ECE78B4498B96315097727BF46FE880CD0F),
    .INIT_44(256'h506991341EC04078256EB8A9EEA35774B7ADD04DD23C5B082E553DF652694ED9),
    .INIT_45(256'h2F8EF71C2B3E1B4CCE774C6A375E5737EE4D96E7DF9F4917DFEBE16A872C8204),
    .INIT_46(256'hE5BCDBD3DA299ADAA2E84D5F1BA8F3EF19CC832D50B75F051FDEEC3F08F32D8A),
    .INIT_47(256'hFFCA666A872839905C154BEAB7D4863035B4DE4258D3454969ACBD2DFFB0EAA4),
    .INIT_48(256'h83928859C1F7926196B9742DE8061558165D22B225CF80A381A06AD4E6448424),
    .INIT_49(256'h7CF7A866C3C207F6A224F722E0796E7FDDC135D2C141EC105512ECB95F013951),
    .INIT_4A(256'hD42A8FAA10DC3D114FBA1AA88067FB0E6F78B5BFBF3BEBE8D2B210EDA447F209),
    .INIT_4B(256'hC76616D010EABFB317B888D276FB894A0B2CE33A2A727AF3F402CC87D07CE2DD),
    .INIT_4C(256'h52F9CA8FED1949879FABA8736791949D79C68C249386CBB5695F3BF6D49C6E10),
    .INIT_4D(256'h2CDEA7757A45EBD2444306A363B670F3AE0C7E5DBC4A895AE5B6D78F37A480EC),
    .INIT_4E(256'h820B59647F091060F2FD29EA5B86D43F4C45C0496B3D521C0EEEF4AD556BDC06),
    .INIT_4F(256'h221CDC0A72E52707D5EE68E094C9EE324AD1EBDEF76256436907753B1273379C),
    .INIT_50(256'h11707289E1BC4637341DBB44211BE4D170B5A5DAF26D3BBAD8FF81FAD45831E9),
    .INIT_51(256'h86865D7BE6088C4165F39797079DC591E821BE9676789C2E136310CED935E6A4),
    .INIT_52(256'hB6C6F12D38E0210035426C9AE58F7B3196B48B182EA7AF62DE6CA4702EF18243),
    .INIT_53(256'hAE1CC193D88CE0B100ECC7848F782CB524B7F302FD302D10478021544EC03A3F),
    .INIT_54(256'hA0095CAB6AD704B15F56C601E7BA8927EB2481D752635E7E33BB8C76E2E2530D),
    .INIT_55(256'h4F0AA8F4AB1977C6057C206A8824A33ACDF9D1ACB71129ACD3D18BD09E2DDC5B),
    .INIT_56(256'h70F757DEEBE315A5E25816BA0240A42E31F3DFFD516A7A9AB60032A13D779DEC),
    .INIT_57(256'h42C7B58838F127252C5BF58201BC9348B32D21A9A182601ECF98E59F944F5823),
    .INIT_58(256'hD6AA45A660DEB13A521D4B1245034C0FA6B8D7E19D7350633FB6813D5F7D6454),
    .INIT_59(256'h0EABE2B379A85F40A4923CF172AA017B65B28F859BF94CEDCD41985B4B02379C),
    .INIT_5A(256'h87885ACE80417A2B5E816CADBA2E9BEF9F8AA1B6DC24923073E0939D74583293),
    .INIT_5B(256'h5C947C18CDCF383D63E9AB887B58EDB41FE3F05974F30156C2592EBD42BDEFD5),
    .INIT_5C(256'h4FB2E528F6EDED0B0ED024323229574A8B4EB663F096F745DE8E9801E1A835DD),
    .INIT_5D(256'h0C60F12B50C0E467D9809D4FB30E3E0FC96E856FBCA42143552B6006246AF1B1),
    .INIT_5E(256'h216CDE6DE8541D5058196B58606B4F4C3E2CD3F456B59BD8DC6509308D6B2FCD),
    .INIT_5F(256'h6AB6BA1ED576FEC6E7B3ECF088297D0B4A102AB716A75478B5B77A72DFB07C36),
    .INIT_60(256'h42D6C92860C8A226466081B7D643B4CDC28367D857891A91107F45551A7A0C19),
    .INIT_61(256'hED3F6AD31F6614F1FE7D3B9218E6ACA53936724BC0F0359AB35C02585D9F3211),
    .INIT_62(256'hE1347AE170E562E222BCDAF9D0E3A0A547575B3E7450990B8540BD412A926986),
    .INIT_63(256'hCCE56B5D145091FCF46BC2C4E38EF92D6303960B0FCA929ADCADC244DA27DA87),
    .INIT_64(256'h3F2FB92FE8DEB889049C573CFAF9E758397A6E8B995850C8687511E233E83F31),
    .INIT_65(256'h614BAC6BB56843DCC76B341F9AB0043B385A82059C56F1CF5EB2340A387AD6FF),
    .INIT_66(256'h938737172E8FB97ACEFB41B6DAE0B5F3DA7E666F4A0400E510BBB7805CFFBC27),
    .INIT_67(256'h352B240E4FAEFCEF62AF96DE70BECC1902C5503153CA0A47DCEF3551C7DDE8C5),
    .INIT_68(256'hA431EFF92D164E594F12227F5DFC3061C49D8744B0CC4B16632D2B0CE8CDBBA3),
    .INIT_69(256'hA1EBCFF578C1F2BEA777B9AE1AC4522D68CB1DEDB1401AC389C63B2F71535EB8),
    .INIT_6A(256'h68B792E6A94A094A195E5326C9D44A791E4FA9D7FD28BBB5EFEF7E8358DDDEEB),
    .INIT_6B(256'hF223DE599AB6BFB1F0B56C81C893BA626AC39CAA0731F82EFFC7B43B5576C805),
    .INIT_6C(256'hF71242AA418FC31482B6E0653B3D9EA6726FE034E66B73B3D912A515078393B8),
    .INIT_6D(256'hD0EFBC04469AB7AB985EC844A76462229163F805801B4CF0B78A6F092C3C6232),
    .INIT_6E(256'hC34E7CB5D68C7C76B47EC3EFC060D64D0FA5BE6E63FF93B92D90327AA813693C),
    .INIT_6F(256'hDBB995DDDD95D1F22923CE4C5E74EAB8651FB286EEA9BDA102DBDDD85210406F),
    .INIT_70(256'h0310D2B2CD42C8CE18F40FF1EBEF1E5F6FED991F3BBFBC3988214343EB6B6F87),
    .INIT_71(256'h11E8AA22A757C1330E9BA03AC8C2FCC8408F86376B102FF734D6D3BE15F227D2),
    .INIT_72(256'h8FE4511FDDD3C82C407EA114558B3E391302487E01B6DC5F7495AB7F7AEA8DF7),
    .INIT_73(256'h9248D18620970A318B19554AC52AB944ECA323C774ADDF5D0D13CD19CBB6D344),
    .INIT_74(256'h9EDCC2E48932F995156A0053C3A6A034C082EA734503F6BE929FC346084EC6B5),
    .INIT_75(256'h869D6B3C76DD3ACA64DD44D3CCE19AD34413A77A28209D7A3D73B78D41CBC4ED),
    .INIT_76(256'hC4D2A3AC584E72660C4F579350027213F150FAA2D83178F8636A2E02F31C6D50),
    .INIT_77(256'h1B921042D9953CE816145D573686B02D15407AD8A3762D60F10BB9599E1F4CF1),
    .INIT_78(256'h606DAA981846808C9C217B23465DD110070EEAE552F0A1D678B2CF2BAD84CA14),
    .INIT_79(256'hA4069A69D12EBCEC82A0907E0DE6880B7CC992D9E8B355129B4D9457B637083B),
    .INIT_7A(256'hAE2757C3B3EE580D35CE618559D7C2E35801CF344306CA49F445BE47FB42DCED),
    .INIT_7B(256'h341234CA54C62D4B060553373D627CDDEA1D812934602A403AA4A654983521B3),
    .INIT_7C(256'h28417C62B925B99CC8541B9A38025C3CCA425E4EDBB3A30EC8550CE405712BCF),
    .INIT_7D(256'hFCA8F6191E4281C7D25BCE06E7265BFD12D4D0250ED62C5A3C5B1A10E68BB81B),
    .INIT_7E(256'h8731EBE5B9B8B1AFFFF1835480E8EFD4CF4D5526046A46C6929DA029B08F34AA),
    .INIT_7F(256'h96F84657386BC6FDF90AD24C0072577F75A1FE5E014B4D9D8FFDBE0B2D9DF8B7),
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
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(CASCADEINA),
        .CASCADEOUTB(CASCADEINB),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED [31:0]),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(ENB),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
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
    .INIT_00(256'h930DE919B8746CA721440C0912C43F2AB1BFA5B88CC3A4B8C43D67C2796FB274),
    .INIT_01(256'hE2939D3E9FF0CD6F03E2BE6E8E26BD077452BC598589772CA3097E70FC2FA551),
    .INIT_02(256'hE3FE7AE55283760DD8FCD9CF399A85C8BB3B238B6243BE309D443309007845E7),
    .INIT_03(256'hE5A52D7F5A07F7EFAA96E2703982658691FF603833C68BA80436E80E9C66EB53),
    .INIT_04(256'h2CA2F56260AC98038FE003A61F0A2266262ABFF9D9DB040EF5E9B998699683DB),
    .INIT_05(256'h978E88CEA08E05AB829D32608DB5B553F711D8BDF0FFC411B7F65233788F11F9),
    .INIT_06(256'h536DF0D5366DC60D0F27BC817F6D80A95F2F4DD76822300BEC19E5C95FE2A235),
    .INIT_07(256'h85A45A3924D769AFE539E1BB86CDB676CC026E0DD000B5D9E5D2CDF309C94D75),
    .INIT_08(256'h20B1F0DE5823599D1081E4A045F5B2B11302CB14676FFCDA8E306959FE575EA2),
    .INIT_09(256'h80A9582D41E34C91735A6C85E8EBD4856ABF5D996985AE893F8E42B73C97328E),
    .INIT_0A(256'h3C383D70929841D964612DF7B9DF198C2AD41A2A9461DBF6E69A01DFAED272AC),
    .INIT_0B(256'h005000F895BFFF4E012F7C644010C8994349BEC9E0713FD875BF251808B0C960),
    .INIT_0C(256'h9375241A16B00C898548BAF3D65A25A8D8450DA8EF221540000000000008456F),
    .INIT_0D(256'h8BF238357FB910F8EB0B56FF22C3FFE10BBC58785DD9E599016FA87E18B4D589),
    .INIT_0E(256'hB8F808058CA88C83526FA133AB128A3C11A45A8EF158A8337DA52D50AD635B12),
    .INIT_0F(256'h8947CE80EF51B4284AF1E0B025A9C3DCE9983C63B46B6133133CCFB55310DE20),
    .INIT_10(256'hAC653EC7AD79BB295EB527C68C64A31579B9973FD8C084DC9534733C6AAE1891),
    .INIT_11(256'h5F79B3FE60D9EC8157FC1F57F761A7B24261E1787660AFDC8299D263AEBD2890),
    .INIT_12(256'hD8A218442F43F95494EB5861623553C51BC5877FD68655C73DC1260BE8D6D900),
    .INIT_13(256'hB0E048FC6BF94C1CF77F3C9C0E69DA27B7DC49547F55AED9777E995E1C3D61EE),
    .INIT_14(256'h92CD4CF4E05C95918A45156BE61FE178682A6F4DBCA5DA289F8E833679D8AA29),
    .INIT_15(256'h03F5117C293C61C3FB2665832B612615909210F9BF31B41AB3E9B9F28958D1DC),
    .INIT_16(256'h79568182ABAEDC22D44865B3CC293AACD2730EC56E005CC2DCCE3F961464BE72),
    .INIT_17(256'h809DF8DBB7E051145B3347527E1E2DAA580B96AD1B8C501A83ECAAB5AA017800),
    .INIT_18(256'h99EF573D557A5E9003B900D8C9EBDD058362D58D215FE46C41E1E101333A2AFF),
    .INIT_19(256'h010F4A1AED995584A4FFAE5BA03FF56001B720036094C00990EF80E8E6EFB3C8),
    .INIT_1A(256'h9778157F9C5FEA22A055F8591B464849583FF7901BC137C8524307DF5A008B62),
    .INIT_1B(256'hACC2B18E2F53DB3DF4EE40B9CD032F928086A0185FAD715D9BFE40053950DC1A),
    .INIT_1C(256'hC5B7A2FA3AD21A41DA0C79C72FBECB641896E0DCBFE2D2A386DA0A2B91B67B69),
    .INIT_1D(256'hF945D5586073A361B3AC097A3ECB4F2C6033A7DDEAFFBC5DF1F3249A142B745B),
    .INIT_1E(256'hFD7FA5DEFC82FE5841E35DC101F02563366B836A630A4E40E1758E3272732344),
    .INIT_1F(256'h7DA89D5BA70BD032F4ADB0DDDEAC25410BB1B0391D7382859A3F1D2AD54A42F6),
    .INIT_20(256'h52A4A7ED12CA21F39DB270B203E21E1B0A7010E2024D7A63C32CE0BDA636783F),
    .INIT_21(256'hC7329006A26B6AC7266ED889F4610564CFBB7BE5EBC239452E71FC2AE4CC3E7E),
    .INIT_22(256'h35020672BFA25DDEA2042AA517A7BBA72925946A7D2832BF5A8B9A65858F3FDE),
    .INIT_23(256'hD152887E2A9CA4B387C7032AA01A7429A5F58AFCF6BFDEDD4BBF2E33327635A4),
    .INIT_24(256'h8FDA7E632F6957835835EADF403DBE7F58CBD71639A1C598457BEB4896CBC6BE),
    .INIT_25(256'hA0C77312A089EAA74111672986DCB481861BDD2A1E0B17DC7F232F1CDE98D434),
    .INIT_26(256'h81D2A485EFDF77704BAD757E4E6365E7F97580525A43DF8F413512D3976B1B33),
    .INIT_27(256'hD80EE255232572D24C728548EE7FCC81B8BAB42F7368CCF5599AC5C3F7496409),
    .INIT_28(256'h9FAB20AFF0B08E389BAB6CF174F734EE31471247D4B9DD92DADD26ABBD296050),
    .INIT_29(256'h95C4717C6313D7704D2F2301733E9C9FE24199D9AE8FDD992FBBE1EEE0779B4D),
    .INIT_2A(256'h33D8218046BF31C0065BECBB21E2403C8E9D0E0FA3D4DCBBF93C57E8BCC50DDD),
    .INIT_2B(256'h071331A0BE62118B95FFCD0481D4E4751E95AECA62C846956B30B0991DDED572),
    .INIT_2C(256'hBA43DF2E86C66DEBE33A26F062DE4C5430BAB8704B8F248FEC6F0D4DEDD07A9D),
    .INIT_2D(256'h4CCC5E8D114606C30092DA394EAFF9FFB979735878842798BDD8B4E373585E4B),
    .INIT_2E(256'h8E1D7F1841405DCBB53457C7FEDE42036FCFFDD978692B1F746737E872D37E37),
    .INIT_2F(256'hAAC035446B0503C049BCA88937D12E54AAA000000000A013EAE0A94818D84B66),
    .INIT_30(256'hB6BA3B635C3CC389A52161BF16F893620398EB410A40507ECE2B01FF47C802A5),
    .INIT_31(256'h7F215A733C5FB974F69299FC1603078C46E443769F04CCE0E69C96E27E3F6964),
    .INIT_32(256'h9878082337D11D2F33CFF50BE51F3CD71C401F9980C32387D1FFD35EB1FD3E25),
    .INIT_33(256'h08D89FB74F409B8535C4DA665AEA82402A2DC89FD2F2E5B9895D9028FD1AC8E8),
    .INIT_34(256'h2F2C3E0164991446EFBFA8001D687847CF03086082E910E235EACFAAE289C728),
    .INIT_35(256'hB685183FE37C4F69D238AE80000000006D37FBF22706274B3FFF8042856A6074),
    .INIT_36(256'h4579313BF9B9CFF2F952B96E299E1E74EFCE43D6F9DB41F423120EE256C5D2DB),
    .INIT_37(256'h0DA6C5E5A3B1495E1652BD3A3B5CE3B41F6CD837C99DA493FD8F19BED3DBA956),
    .INIT_38(256'hC0CD77283E2E89AE65F156A9C2814F0136F1DE6463BE878EAEECE8491E5B649C),
    .INIT_39(256'hA3853FA576AD4C37C58675D16DD92E3FC6B5DD11D6DF134D7452A18CB88ADEF9),
    .INIT_3A(256'h7DAEDF66D43749FEB1F3BBE14AC63C1206CF090A342CCE6989B1D214F8B1D8D1),
    .INIT_3B(256'hA916075FB7D3BAFBF350B8E9EFCA2293059EFC20A1C55B702CDD19A3882252B4),
    .INIT_3C(256'hA9E6951D512CD0504DCBE3EEF5EE5CF58017E8EAF8294F9532C7E1BF9EECA854),
    .INIT_3D(256'hB3EFCC93CFE04D59124E1E4B956E6E1BDE9B7A7F28C3416F1C7C38845FA6A1B5),
    .INIT_3E(256'h5FDE83C072FE2D547F81E67D2457986ED178C1062A7ADEED5BDFE2435E844898),
    .INIT_3F(256'h38A5904833AC4003B5417896393384099877C974054D00D7730DAB7DE41F6E73),
    .INIT_40(256'h4E7D5F3ED3C26803867EE1CE2134AA61F6B7556D831A67C9158728593207F523),
    .INIT_41(256'hE249D1BCC96C894B8DC31FFFAEA0316647D254F7B3B5C193E2452D6D410E8BF6),
    .INIT_42(256'h8207F3EEF9A3CF0D35C7F8060DC947C09F8418C7D1092D300AEEA82E302837C3),
    .INIT_43(256'h3379B292DF28960F432C4976F9C543FFE0B6708F8E9CE14333BDE406470B1467),
    .INIT_44(256'h27DBA63A4F9545CDFB4A74CFB8CECF13CC49DA1D53A7430DC14FC82B0E0B467D),
    .INIT_45(256'h0003FFAA42946F822575D8AC00007FDE6EABB91A8290C7B0FD6E547ED269FF0A),
    .INIT_46(256'hA9CCECD3969E079555A8B5090000003908EA063801F337FFD55F60A563A0AE80),
    .INIT_47(256'hFFE70AA033A01FFE7FF01AE0007E3E80000AA3454E688580128B86403F552BC7),
    .INIT_48(256'h7FFD607EF2454D11FFF202E6CAEE180000AAFA001FFCE73D6A843FAD5558FFFF),
    .INIT_49(256'hC026A11C0871CA9B9FC9147030C2BC6CD63C9F7AFF736AB623294AAA7A922BDF),
    .INIT_4A(256'h5DAF6B2F91235CD41D85DA8B1F13A93DE62413A73B24E66A4ABDE87F5D03467F),
    .INIT_4B(256'h6D9EF464D78AF98FFBA7B878D0117BDB89A740EC9DCE057712CC15CA8D49FC4A),
    .INIT_4C(256'h1C4487820E3C02A072EFF3DA5A5BAFBF91125C3848842CCEB6DEBB56F364E33A),
    .INIT_4D(256'hA44B777DE7C36A35E30227C39B6BB3757111B2D8E00B6135572D06C269B5C114),
    .INIT_4E(256'h21075CC5004FC4DA554487E4C5F22F32BBFE36546BFD55B3CE7F5B5B6EB3608F),
    .INIT_4F(256'hA91EFC733BF60B676ACE839344EDA7FFF44A3D1DCD62D9E446FD0E9441399E33),
    .INIT_50(256'hF38291E7DC7B7BEFD99642C3139AC1BF2197B5FA321C8FAA4871AE7D81685F59),
    .INIT_51(256'h4EFB3DF1E4C51B60CC062773D1A72E97725345A820D2385EE0DBD465508205B1),
    .INIT_52(256'hE67B6FDD7757DC2605A1DF6DC4CF4E247803560A3ED3486A790BCEB7E1F24B1F),
    .INIT_53(256'h2F787BE23ADDA242A228BE2B800E67BEFDE7AAAC352C5251FFAF156A06AF2ACF),
    .INIT_54(256'hF6C64DDE77AB2A0F52D20D5A279C6D5BC6AEC70B6C2E13DF24032AD162441D5A),
    .INIT_55(256'hF24DABCE4041094058D1FA447F3AE3C400DC5147F7377EF570BEF6F501356C7D),
    .INIT_56(256'h4D45084EFBDA903E4744AAD744D7AA6100706DB1FCFFC6D3B38B4867B4A43445),
    .INIT_57(256'h68E065AC58C16472B531CC6FF8B452628E24B15335D6AE0B56F288677AF64C4D),
    .INIT_58(256'h0E0D6670611D9774FEF905869FEABC755C38C4912445B2B3E5DEACCCEBF67F4E),
    .INIT_59(256'hD828D3947BD25DE056B2F9825AACBD36F845160AE26B5CFF42A35E0443C7A9E5),
    .INIT_5A(256'hF576B4E66D205DFB0A8F2CB79BAD5103F138D9EA892EC864DAFC859B15778CE2),
    .INIT_5B(256'h15D8B52144AAFB1323F7FA6121D527F9315DF8D49A742A8EF4B2F4BFF5D13924),
    .INIT_5C(256'h7E8258DFCDD4AB12EAC1765591034080866CA72E78C4378229F9C338C9AD7B40),
    .INIT_5D(256'hF1B9CE12136902D9FFFDE52BD4DDA796FDFA7F0160D6F4220E2161CA0DD4CFD1),
    .INIT_5E(256'h2C3E4177D86315AFDF68D04B61F8920BCB4EE21C04457A2F0E6D40AC40BCA24C),
    .INIT_5F(256'h6DDA42394934AC90364DD57D7AA94F62C4C1B386334C646AF692C787D4DEE652),
    .INIT_60(256'hFCB00ED2640E53E2CB2ACFCC33A3020ADDA827B990E22B0A23036B6455DCFB06),
    .INIT_61(256'hEFF233F21EBD7E46CBB91E2DAB99B39FE79AA471BE6B31037E05F1864260628C),
    .INIT_62(256'h1338D85E9FAB8894898981C91CF2067511C23CB93A3D66DFD459BF4181F4176B),
    .INIT_63(256'h50924D641602AE8C04754BE8D6EFACF4795C023C72F6EB63D9102383C25DDE59),
    .INIT_64(256'hCEC0387FE2B228FF341B316D684ACABCCA405ABC015B6FCCABC4D70CA4D3F6AE),
    .INIT_65(256'hB293FE478CAAE8C9FB4371C8ABB7662165D8F71E56A6BFC452D95D9AE1DE4FC0),
    .INIT_66(256'h3319CD51FBB63E7CA51881E7F6E8EC38108AB5975CCE320CD8C77FF48254C495),
    .INIT_67(256'hD05E9E4660FE64FA4DA0F96EE6BF5148E7EFD30806A33FE2AF5AB087342B27B1),
    .INIT_68(256'hDC9CF5F7E4C276246C44A180FC05BCA669C72B572F643C0103FF783449EA5A68),
    .INIT_69(256'h115B803C7066CCC844AAAEBC440D032E2CD83529FB37754DD6578A9AFBCE959E),
    .INIT_6A(256'h03F7EC293735A7582FAB10573DC39928C49E4BE317BBFA21BD95EDD70D7A0AE3),
    .INIT_6B(256'hAAAFE0752EDC7A8830396C211241A5749C64EB1740321AFAAF970DFE30E74A55),
    .INIT_6C(256'h2F8F4607FBBCFDFBB32EC3D304BB04112A536789D7CD2AFC4C8894D740D6ADFA),
    .INIT_6D(256'h64763ED76B2E0284B305312CB175E80103AC57A3A80A9B40E8564836B21EE7A1),
    .INIT_6E(256'h6EA22F0BC428CB0C7AC46887F1E87FD560F5D76228A2F2080C34A9F1A1EAB475),
    .INIT_6F(256'h8DA1724952A6E7503EE292D3226516F73CF1E7DEF73162D49D7E9D51F84911A1),
    .INIT_70(256'hC76FCB4B08ACD0759FF2B73B490105273A0118BB6D6A9C6F953EF3B8AD0D0521),
    .INIT_71(256'h91C7C0FCC13AF26734273101F94937926BD4E153BCE747165A9BC4DD67F27783),
    .INIT_72(256'hCEE6E3BC38E91FCEF77B6D87F2357ADDCDEF0DAA7F9B3845B2FC718C6E611978),
    .INIT_73(256'hE0A2630AE91F9CF46EC91AC42BAF8288662214F4059442E97CBE25E050419763),
    .INIT_74(256'hCBFAC0FBE22BD4239B9102A5BC8507E6FD3C477D478B80A47178BB121D29D650),
    .INIT_75(256'h9557EB1A76C4A2AE33C726BDF98EB6D16A551DDE5DA9E79C9AEF5C6C37ACBFEB),
    .INIT_76(256'hBF1C8869386A857DBCEA5FD508E2DE012B0DD212E6427CC37BA7BA4CFAFC4350),
    .INIT_77(256'hF3C1BFF2E57355C32FF77B5E715E9FF0D92E64F298F575F4573CF5462578C4BA),
    .INIT_78(256'hEF44E452408AC79964F93D92DEEFCB4E53E89C174539BA535B6EB61877754384),
    .INIT_79(256'hE54FF78DF2D27D9BD795BCDE62178CA735931BD844E5E6A832A54A22B4ED5FA2),
    .INIT_7A(256'hDF4535989682D141AEBC072826705E70B76037AC41805EBE099FCC4C45851135),
    .INIT_7B(256'h28440E2847C0E846CC040B32CDEAEDCC88B796147D7111C9D4BDA70E3FEF0CA6),
    .INIT_7C(256'hABC4B69BE0BA42868F99E1DCE7C208E007030133538F1AF5E743C77C7B3205D8),
    .INIT_7D(256'h4123EC8245C8CEC2DA4282A88349242E690EA60553C2A0A52BC73202F1146176),
    .INIT_7E(256'h40A35C44C474C12569CD38576B53E2F67F7F489980D33F34C1E40105A59DECE6),
    .INIT_7F(256'h37739B2947AD7970CD578B28F4E2E4E16698F287C9303DBE86D543ADF6318E23),
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
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CASCADEINA(CASCADEINA),
        .CASCADEINB(CASCADEINB),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED [31:1],DOUTB}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA),
        .ENBWREN(ENB),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(enb),
        .REGCEB(enb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_0_blk_mem_gen_top
   (doutb,
    ena,
    addra,
    enb,
    addrb,
    clka,
    clkb,
    dina,
    wea);
  output [15:0]doutb;
  input ena;
  input [16:0]addra;
  input enb;
  input [16:0]addrb;
  input clka;
  input clkb;
  input [15:0]dina;
  input [0:0]wea;

  wire [16:0]addra;
  wire [16:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "17" *) (* C_ADDRB_WIDTH = "17" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "1" *) (* C_COUNT_18K_BRAM = "9" *) 
(* C_COUNT_36K_BRAM = "35" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SHUTDOWN_PIN = "0" *) 
(* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     32.560338 mW" *) (* C_FAMILY = "zynq" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) (* C_HAS_ENB = "1" *) 
(* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
(* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) (* C_HAS_REGCEA = "0" *) 
(* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) (* C_HAS_RSTB = "0" *) 
(* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) (* C_INITA_VAL = "0" *) 
(* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
(* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) (* C_MEM_TYPE = "1" *) 
(* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) (* C_READ_DEPTH_A = "83151" *) 
(* C_READ_DEPTH_B = "83151" *) (* C_READ_WIDTH_A = "16" *) (* C_READ_WIDTH_B = "16" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "83151" *) 
(* C_WRITE_DEPTH_B = "83151" *) (* C_WRITE_MODE_A = "NO_CHANGE" *) (* C_WRITE_MODE_B = "READ_FIRST" *) 
(* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_2" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_0_blk_mem_gen_v8_2
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
  input [16:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [16:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [16:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [15:0]s_axi_wdata;
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
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [16:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [16:0]addra;
  wire [16:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]doutb;
  wire eccpipece;
  wire ena;
  wire enb;
  wire injectdbiterr;
  wire injectsbiterr;
  wire regcea;
  wire regceb;
  wire rsta;
  wire rstb;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_injectdbiterr;
  wire s_axi_injectsbiterr;
  wire s_axi_rready;
  wire [15:0]s_axi_wdata;
  wire s_axi_wlast;
  wire [0:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;

  assign dbiterr = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign rdaddrecc[16] = \<const0> ;
  assign rdaddrecc[15] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
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
  assign s_axi_rdaddrecc[16] = \<const0> ;
  assign s_axi_rdaddrecc[15] = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
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
  blk_mem_gen_0_blk_mem_gen_v8_2_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2_synth" *) 
module blk_mem_gen_0_blk_mem_gen_v8_2_synth
   (doutb,
    ena,
    addra,
    enb,
    addrb,
    clka,
    clkb,
    dina,
    wea);
  output [15:0]doutb;
  input ena;
  input [16:0]addra;
  input enb;
  input [16:0]addrb;
  input clka;
  input clkb;
  input [15:0]dina;
  input [0:0]wea;

  wire [16:0]addra;
  wire [16:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_top \gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
