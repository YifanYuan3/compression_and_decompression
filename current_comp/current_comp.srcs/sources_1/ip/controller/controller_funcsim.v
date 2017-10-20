// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.3.1 (lin64) Build 1056140 Thu Oct 30 16:32:04 MDT 2014
// Date        : Thu Aug 31 11:41:07 2017
// Host        : ubuntu running 64-bit Ubuntu 14.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/frankqz/c35fb864-558a-4c20-ae81-7faa0c86f8e4/Xilinx/projects/small_data_compression/small_data_compression.srcs/sources_1/ip/controller/controller_funcsim.v
// Design      : controller
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_bram_ctrl,Vivado 2014.3.1" *) (* CHECK_LICENSE_TYPE = "controller,axi_bram_ctrl,{}" *) 
(* core_generation_info = "controller,axi_bram_ctrl,{x_ipProduct=Vivado 2014.3.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_bram_ctrl,x_ipVersion=4.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,C_BRAM_INST_MODE=EXTERNAL,C_MEMORY_DEPTH=1024,C_BRAM_ADDR_WIDTH=10,C_S_AXI_ADDR_WIDTH=15,C_S_AXI_DATA_WIDTH=256,C_S_AXI_ID_WIDTH=1,C_S_AXI_PROTOCOL=AXI4,C_S_AXI_SUPPORTS_NARROW_BURST=1,C_SINGLE_PORT_BRAM=1,C_FAMILY=virtex7,C_S_AXI_CTRL_ADDR_WIDTH=32,C_S_AXI_CTRL_DATA_WIDTH=32,C_ECC=0,C_ECC_TYPE=0,C_FAULT_INJECT=0,C_ECC_ONOFF_RESET_VALUE=0}" *) 
(* NotValidForBitStream *)
module controller
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) input s_axi_aresetn;
  input [14:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  input [14:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) output bram_rst_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) output bram_clk_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) output bram_en_a;
  output [31:0]bram_we_a;
  output [14:0]bram_addr_a;
  output [255:0]bram_wrdata_a;
  input [255:0]bram_rddata_a;

  wire [14:0]bram_addr_a;
  wire bram_clk_a;
  wire bram_en_a;
  wire [255:0]bram_rddata_a;
  wire bram_rst_a;
  wire [31:0]bram_we_a;
  wire [255:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [14:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [255:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [255:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_bram_clk_b_UNCONNECTED;
  wire NLW_U0_bram_en_b_UNCONNECTED;
  wire NLW_U0_bram_rst_b_UNCONNECTED;
  wire NLW_U0_ecc_interrupt_UNCONNECTED;
  wire NLW_U0_ecc_ue_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_wready_UNCONNECTED;
  wire [14:0]NLW_U0_bram_addr_b_UNCONNECTED;
  wire [31:0]NLW_U0_bram_we_b_UNCONNECTED;
  wire [255:0]NLW_U0_bram_wrdata_b_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;

(* C_BRAM_ADDR_WIDTH = "10" *) 
   (* C_BRAM_INST_MODE = "EXTERNAL" *) 
   (* C_ECC = "0" *) 
   (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
   (* C_ECC_TYPE = "0" *) 
   (* C_FAMILY = "virtex7" *) 
   (* C_FAULT_INJECT = "0" *) 
   (* C_MEMORY_DEPTH = "1024" *) 
   (* C_SINGLE_PORT_BRAM = "1" *) 
   (* C_S_AXI_ADDR_WIDTH = "15" *) 
   (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
   (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
   (* C_S_AXI_DATA_WIDTH = "256" *) 
   (* C_S_AXI_ID_WIDTH = "1" *) 
   (* C_S_AXI_PROTOCOL = "AXI4" *) 
   (* C_S_AXI_SUPPORTS_NARROW_BURST = "1" *) 
   (* DONT_TOUCH *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   controller_axi_bram_ctrl__parameterized0 U0
       (.bram_addr_a(bram_addr_a),
        .bram_addr_b(NLW_U0_bram_addr_b_UNCONNECTED[14:0]),
        .bram_clk_a(bram_clk_a),
        .bram_clk_b(NLW_U0_bram_clk_b_UNCONNECTED),
        .bram_en_a(bram_en_a),
        .bram_en_b(NLW_U0_bram_en_b_UNCONNECTED),
        .bram_rddata_a(bram_rddata_a),
        .bram_rddata_b({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bram_rst_a(bram_rst_a),
        .bram_rst_b(NLW_U0_bram_rst_b_UNCONNECTED),
        .bram_we_a(bram_we_a),
        .bram_we_b(NLW_U0_bram_we_b_UNCONNECTED[31:0]),
        .bram_wrdata_a(bram_wrdata_a),
        .bram_wrdata_b(NLW_U0_bram_wrdata_b_UNCONNECTED[255:0]),
        .ecc_interrupt(NLW_U0_ecc_interrupt_UNCONNECTED),
        .ecc_ue(NLW_U0_ecc_ue_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_arready(NLW_U0_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_U0_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_U0_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_U0_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_U0_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_U0_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module controller_SRL_FIFO
   (O1,
    O2,
    bid_gets_fifo_load,
    O3,
    I1,
    s_axi_aclk,
    s_axi_awid,
    I2,
    p_1_out,
    aw_active_re,
    bid_gets_fifo_load_d1,
    I3,
    s_axi_bready,
    AW2Arb_BVALID_Cnt,
    I4,
    wr_data_sng_sm_cs,
    axi_wdata_full_reg,
    s_axi_wlast,
    axi_wr_burst,
    s_axi_wvalid,
    s_axi_bid);
  output O1;
  output O2;
  output bid_gets_fifo_load;
  output O3;
  input I1;
  input s_axi_aclk;
  input [0:0]s_axi_awid;
  input I2;
  input p_1_out;
  input aw_active_re;
  input bid_gets_fifo_load_d1;
  input I3;
  input s_axi_bready;
  input [2:0]AW2Arb_BVALID_Cnt;
  input I4;
  input [1:0]wr_data_sng_sm_cs;
  input axi_wdata_full_reg;
  input s_axi_wlast;
  input axi_wr_burst;
  input s_axi_wvalid;
  input [0:0]s_axi_bid;

  wire [2:0]AW2Arb_BVALID_Cnt;
  wire CI;
  wire D;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire O1;
  wire O2;
  wire O3;
  wire S;
  wire S2_out;
  wire S4_out;
  wire S6_out;
  wire aw_active_re;
  wire axi_wdata_full_reg;
  wire axi_wr_burst;
  wire bid_fifo_not_empty;
  wire bid_fifo_rd;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire \n_0_Addr_Counters[0].FDRE_I ;
  wire \n_0_Addr_Counters[0].MUXCY_L_I_i_2 ;
  wire \n_0_Addr_Counters[1].FDRE_I ;
  wire \n_0_Addr_Counters[1].MUXCY_L_I ;
  wire \n_0_Addr_Counters[1].XORCY_I ;
  wire \n_0_Addr_Counters[2].FDRE_I ;
  wire \n_0_Addr_Counters[2].XORCY_I ;
  wire \n_0_Addr_Counters[3].FDRE_I ;
  wire \n_0_Addr_Counters[3].XORCY_I ;
  wire n_0_Data_Exists_DFF_i_1;
  wire n_0_Data_Exists_DFF_i_2;
  wire n_0_Data_Exists_DFF_i_3;
  wire \n_0_axi_bid_int[0]_i_2 ;
  wire n_0_axi_bvalid_int_i_4;
  wire n_0_axi_bvalid_int_i_5;
  wire n_0_bid_gets_fifo_load_d1_i_3;
  wire p_1_out;
  wire s_axi_aclk;
  wire [0:0]s_axi_awid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_wlast;
  wire s_axi_wvalid;
  wire [1:0]wr_data_sng_sm_cs;
  wire [3:2]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

(* BOX_TYPE = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(D),
        .Q(\n_0_Addr_Counters[0].FDRE_I ),
        .R(I1));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3:2],\n_0_Addr_Counters[1].MUXCY_L_I ,CI}),
        .CYINIT(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],\n_0_Addr_Counters[2].FDRE_I ,\n_0_Addr_Counters[1].FDRE_I ,\n_0_Addr_Counters[0].FDRE_I }),
        .O({\n_0_Addr_Counters[3].XORCY_I ,\n_0_Addr_Counters[2].XORCY_I ,\n_0_Addr_Counters[1].XORCY_I ,D}),
        .S({S,S2_out,S4_out,S6_out}));
LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
     \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(\n_0_Addr_Counters[2].FDRE_I ),
        .I1(\n_0_Addr_Counters[3].FDRE_I ),
        .I2(\n_0_Addr_Counters[1].FDRE_I ),
        .I3(aw_active_re),
        .I4(\n_0_axi_bid_int[0]_i_2 ),
        .I5(\n_0_Addr_Counters[0].FDRE_I ),
        .O(S6_out));
LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAAA)) 
     \Addr_Counters[0].MUXCY_L_I_i_2 
       (.I0(aw_active_re),
        .I1(\n_0_axi_bid_int[0]_i_2 ),
        .I2(\n_0_Addr_Counters[2].FDRE_I ),
        .I3(\n_0_Addr_Counters[3].FDRE_I ),
        .I4(\n_0_Addr_Counters[1].FDRE_I ),
        .I5(\n_0_Addr_Counters[0].FDRE_I ),
        .O(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ));
(* BOX_TYPE = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(\n_0_Addr_Counters[1].XORCY_I ),
        .Q(\n_0_Addr_Counters[1].FDRE_I ),
        .R(I1));
LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
     \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(\n_0_Addr_Counters[2].FDRE_I ),
        .I1(\n_0_Addr_Counters[3].FDRE_I ),
        .I2(\n_0_Addr_Counters[0].FDRE_I ),
        .I3(aw_active_re),
        .I4(\n_0_axi_bid_int[0]_i_2 ),
        .I5(\n_0_Addr_Counters[1].FDRE_I ),
        .O(S4_out));
(* BOX_TYPE = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(\n_0_Addr_Counters[2].XORCY_I ),
        .Q(\n_0_Addr_Counters[2].FDRE_I ),
        .R(I1));
LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
     \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(\n_0_Addr_Counters[3].FDRE_I ),
        .I1(\n_0_Addr_Counters[1].FDRE_I ),
        .I2(\n_0_Addr_Counters[0].FDRE_I ),
        .I3(aw_active_re),
        .I4(\n_0_axi_bid_int[0]_i_2 ),
        .I5(\n_0_Addr_Counters[2].FDRE_I ),
        .O(S2_out));
(* BOX_TYPE = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(\n_0_Addr_Counters[3].XORCY_I ),
        .Q(\n_0_Addr_Counters[3].FDRE_I ),
        .R(I1));
LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
     \Addr_Counters[3].XORCY_I_i_1 
       (.I0(\n_0_Addr_Counters[2].FDRE_I ),
        .I1(\n_0_Addr_Counters[1].FDRE_I ),
        .I2(\n_0_Addr_Counters[0].FDRE_I ),
        .I3(aw_active_re),
        .I4(\n_0_axi_bid_int[0]_i_2 ),
        .I5(\n_0_Addr_Counters[3].FDRE_I ),
        .O(S));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   FDRE #(
    .INIT(1'b0)) 
     Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_Data_Exists_DFF_i_1),
        .Q(bid_fifo_not_empty),
        .R(I1));
LUT5 #(
    .INIT(32'hAABAAA30)) 
     Data_Exists_DFF_i_1
       (.I0(bid_fifo_not_empty),
        .I1(I2),
        .I2(p_1_out),
        .I3(n_0_Data_Exists_DFF_i_2),
        .I4(n_0_Data_Exists_DFF_i_3),
        .O(n_0_Data_Exists_DFF_i_1));
LUT4 #(
    .INIT(16'hFFFE)) 
     Data_Exists_DFF_i_2
       (.I0(\n_0_Addr_Counters[2].FDRE_I ),
        .I1(\n_0_Addr_Counters[3].FDRE_I ),
        .I2(\n_0_Addr_Counters[1].FDRE_I ),
        .I3(\n_0_Addr_Counters[0].FDRE_I ),
        .O(n_0_Data_Exists_DFF_i_2));
LUT6 #(
    .INIT(64'h000000000000FFFE)) 
     Data_Exists_DFF_i_3
       (.I0(O1),
        .I1(AW2Arb_BVALID_Cnt[2]),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .I3(AW2Arb_BVALID_Cnt[0]),
        .I4(O2),
        .I5(bid_gets_fifo_load_d1),
        .O(n_0_Data_Exists_DFF_i_3));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
   (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[0].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(s_axi_awid),
        .Q(bid_fifo_rd));
LUT5 #(
    .INIT(32'hAACFAAC0)) 
     \axi_bid_int[0]_i_1 
       (.I0(s_axi_awid),
        .I1(bid_fifo_rd),
        .I2(\n_0_axi_bid_int[0]_i_2 ),
        .I3(bid_gets_fifo_load),
        .I4(s_axi_bid),
        .O(O3));
LUT6 #(
    .INIT(64'hA8888888A888AAAA)) 
     \axi_bid_int[0]_i_2 
       (.I0(bid_fifo_not_empty),
        .I1(bid_gets_fifo_load_d1),
        .I2(I3),
        .I3(s_axi_bready),
        .I4(n_0_bid_gets_fifo_load_d1_i_3),
        .I5(O1),
        .O(\n_0_axi_bid_int[0]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair178" *) 
   LUT5 #(
    .INIT(32'hFE000000)) 
     axi_bvalid_int_i_2
       (.I0(AW2Arb_BVALID_Cnt[0]),
        .I1(AW2Arb_BVALID_Cnt[1]),
        .I2(AW2Arb_BVALID_Cnt[2]),
        .I3(s_axi_bready),
        .I4(I3),
        .O(O2));
LUT6 #(
    .INIT(64'hBABBAAABBBBBBBBB)) 
     axi_bvalid_int_i_3
       (.I0(wr_data_sng_sm_cs[0]),
        .I1(n_0_axi_bvalid_int_i_4),
        .I2(axi_wdata_full_reg),
        .I3(s_axi_wlast),
        .I4(axi_wr_burst),
        .I5(n_0_axi_bvalid_int_i_5),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair179" *) 
   LUT3 #(
    .INIT(8'h80)) 
     axi_bvalid_int_i_4
       (.I0(s_axi_wlast),
        .I1(wr_data_sng_sm_cs[1]),
        .I2(s_axi_wvalid),
        .O(n_0_axi_bvalid_int_i_4));
(* SOFT_HLUTNM = "soft_lutpair179" *) 
   LUT4 #(
    .INIT(16'h00E0)) 
     axi_bvalid_int_i_5
       (.I0(axi_wdata_full_reg),
        .I1(s_axi_wvalid),
        .I2(p_1_out),
        .I3(wr_data_sng_sm_cs[1]),
        .O(n_0_axi_bvalid_int_i_5));
LUT6 #(
    .INIT(64'h0004000044444444)) 
     bid_gets_fifo_load_d1_i_1
       (.I0(O1),
        .I1(aw_active_re),
        .I2(bid_fifo_not_empty),
        .I3(I4),
        .I4(O2),
        .I5(n_0_bid_gets_fifo_load_d1_i_3),
        .O(bid_gets_fifo_load));
(* SOFT_HLUTNM = "soft_lutpair178" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     bid_gets_fifo_load_d1_i_3
       (.I0(AW2Arb_BVALID_Cnt[2]),
        .I1(AW2Arb_BVALID_Cnt[1]),
        .I2(AW2Arb_BVALID_Cnt[0]),
        .O(n_0_bid_gets_fifo_load_d1_i_3));
endmodule

(* ORIG_REF_NAME = "axi_bram_ctrl" *) (* C_BRAM_INST_MODE = "EXTERNAL" *) (* C_MEMORY_DEPTH = "1024" *) 
(* C_BRAM_ADDR_WIDTH = "10" *) (* C_S_AXI_ADDR_WIDTH = "15" *) (* C_S_AXI_DATA_WIDTH = "256" *) 
(* C_S_AXI_ID_WIDTH = "1" *) (* C_S_AXI_PROTOCOL = "AXI4" *) (* C_S_AXI_SUPPORTS_NARROW_BURST = "1" *) 
(* C_SINGLE_PORT_BRAM = "1" *) (* C_FAMILY = "virtex7" *) (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
(* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_ECC = "0" *) (* C_ECC_TYPE = "0" *) 
(* C_FAULT_INJECT = "0" *) (* C_ECC_ONOFF_RESET_VALUE = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module controller_axi_bram_ctrl__parameterized0
   (s_axi_aclk,
    s_axi_aresetn,
    ecc_interrupt,
    ecc_ue,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
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
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  input s_axi_aclk;
  input s_axi_aresetn;
  output ecc_interrupt;
  output ecc_ue;
  input [0:0]s_axi_awid;
  input [14:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [255:0]s_axi_wdata;
  input [31:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [14:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [255:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_awaddr;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output bram_rst_a;
  output bram_clk_a;
  output bram_en_a;
  output [31:0]bram_we_a;
  output [14:0]bram_addr_a;
  output [255:0]bram_wrdata_a;
  input [255:0]bram_rddata_a;
  output bram_rst_b;
  output bram_clk_b;
  output bram_en_b;
  output [31:0]bram_we_b;
  output [14:0]bram_addr_b;
  output [255:0]bram_wrdata_b;
  input [255:0]bram_rddata_b;

  wire \<const0> ;
  wire [14:5]\^bram_addr_a ;
  wire bram_en_a;
  wire [255:0]bram_rddata_a;
  wire [255:0]bram_rddata_b;
  wire bram_rst_a;
  wire [31:0]bram_we_a;
  wire [255:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [14:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arvalid;
  wire [31:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire s_axi_ctrl_rready;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire [255:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [255:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign bram_addr_a[14:5] = \^bram_addr_a [14:5];
  assign bram_addr_a[4] = \<const0> ;
  assign bram_addr_a[3] = \<const0> ;
  assign bram_addr_a[2] = \<const0> ;
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_addr_b[14] = \<const0> ;
  assign bram_addr_b[13] = \<const0> ;
  assign bram_addr_b[12] = \<const0> ;
  assign bram_addr_b[11] = \<const0> ;
  assign bram_addr_b[10] = \<const0> ;
  assign bram_addr_b[9] = \<const0> ;
  assign bram_addr_b[8] = \<const0> ;
  assign bram_addr_b[7] = \<const0> ;
  assign bram_addr_b[6] = \<const0> ;
  assign bram_addr_b[5] = \<const0> ;
  assign bram_addr_b[4] = \<const0> ;
  assign bram_addr_b[3] = \<const0> ;
  assign bram_addr_b[2] = \<const0> ;
  assign bram_addr_b[1] = \<const0> ;
  assign bram_addr_b[0] = \<const0> ;
  assign bram_clk_a = s_axi_aclk;
  assign bram_clk_b = \<const0> ;
  assign bram_en_b = \<const0> ;
  assign bram_rst_b = \<const0> ;
  assign bram_we_b[31] = \<const0> ;
  assign bram_we_b[30] = \<const0> ;
  assign bram_we_b[29] = \<const0> ;
  assign bram_we_b[28] = \<const0> ;
  assign bram_we_b[27] = \<const0> ;
  assign bram_we_b[26] = \<const0> ;
  assign bram_we_b[25] = \<const0> ;
  assign bram_we_b[24] = \<const0> ;
  assign bram_we_b[23] = \<const0> ;
  assign bram_we_b[22] = \<const0> ;
  assign bram_we_b[21] = \<const0> ;
  assign bram_we_b[20] = \<const0> ;
  assign bram_we_b[19] = \<const0> ;
  assign bram_we_b[18] = \<const0> ;
  assign bram_we_b[17] = \<const0> ;
  assign bram_we_b[16] = \<const0> ;
  assign bram_we_b[15] = \<const0> ;
  assign bram_we_b[14] = \<const0> ;
  assign bram_we_b[13] = \<const0> ;
  assign bram_we_b[12] = \<const0> ;
  assign bram_we_b[11] = \<const0> ;
  assign bram_we_b[10] = \<const0> ;
  assign bram_we_b[9] = \<const0> ;
  assign bram_we_b[8] = \<const0> ;
  assign bram_we_b[7] = \<const0> ;
  assign bram_we_b[6] = \<const0> ;
  assign bram_we_b[5] = \<const0> ;
  assign bram_we_b[4] = \<const0> ;
  assign bram_we_b[3] = \<const0> ;
  assign bram_we_b[2] = \<const0> ;
  assign bram_we_b[1] = \<const0> ;
  assign bram_we_b[0] = \<const0> ;
  assign bram_wrdata_b[255] = \<const0> ;
  assign bram_wrdata_b[254] = \<const0> ;
  assign bram_wrdata_b[253] = \<const0> ;
  assign bram_wrdata_b[252] = \<const0> ;
  assign bram_wrdata_b[251] = \<const0> ;
  assign bram_wrdata_b[250] = \<const0> ;
  assign bram_wrdata_b[249] = \<const0> ;
  assign bram_wrdata_b[248] = \<const0> ;
  assign bram_wrdata_b[247] = \<const0> ;
  assign bram_wrdata_b[246] = \<const0> ;
  assign bram_wrdata_b[245] = \<const0> ;
  assign bram_wrdata_b[244] = \<const0> ;
  assign bram_wrdata_b[243] = \<const0> ;
  assign bram_wrdata_b[242] = \<const0> ;
  assign bram_wrdata_b[241] = \<const0> ;
  assign bram_wrdata_b[240] = \<const0> ;
  assign bram_wrdata_b[239] = \<const0> ;
  assign bram_wrdata_b[238] = \<const0> ;
  assign bram_wrdata_b[237] = \<const0> ;
  assign bram_wrdata_b[236] = \<const0> ;
  assign bram_wrdata_b[235] = \<const0> ;
  assign bram_wrdata_b[234] = \<const0> ;
  assign bram_wrdata_b[233] = \<const0> ;
  assign bram_wrdata_b[232] = \<const0> ;
  assign bram_wrdata_b[231] = \<const0> ;
  assign bram_wrdata_b[230] = \<const0> ;
  assign bram_wrdata_b[229] = \<const0> ;
  assign bram_wrdata_b[228] = \<const0> ;
  assign bram_wrdata_b[227] = \<const0> ;
  assign bram_wrdata_b[226] = \<const0> ;
  assign bram_wrdata_b[225] = \<const0> ;
  assign bram_wrdata_b[224] = \<const0> ;
  assign bram_wrdata_b[223] = \<const0> ;
  assign bram_wrdata_b[222] = \<const0> ;
  assign bram_wrdata_b[221] = \<const0> ;
  assign bram_wrdata_b[220] = \<const0> ;
  assign bram_wrdata_b[219] = \<const0> ;
  assign bram_wrdata_b[218] = \<const0> ;
  assign bram_wrdata_b[217] = \<const0> ;
  assign bram_wrdata_b[216] = \<const0> ;
  assign bram_wrdata_b[215] = \<const0> ;
  assign bram_wrdata_b[214] = \<const0> ;
  assign bram_wrdata_b[213] = \<const0> ;
  assign bram_wrdata_b[212] = \<const0> ;
  assign bram_wrdata_b[211] = \<const0> ;
  assign bram_wrdata_b[210] = \<const0> ;
  assign bram_wrdata_b[209] = \<const0> ;
  assign bram_wrdata_b[208] = \<const0> ;
  assign bram_wrdata_b[207] = \<const0> ;
  assign bram_wrdata_b[206] = \<const0> ;
  assign bram_wrdata_b[205] = \<const0> ;
  assign bram_wrdata_b[204] = \<const0> ;
  assign bram_wrdata_b[203] = \<const0> ;
  assign bram_wrdata_b[202] = \<const0> ;
  assign bram_wrdata_b[201] = \<const0> ;
  assign bram_wrdata_b[200] = \<const0> ;
  assign bram_wrdata_b[199] = \<const0> ;
  assign bram_wrdata_b[198] = \<const0> ;
  assign bram_wrdata_b[197] = \<const0> ;
  assign bram_wrdata_b[196] = \<const0> ;
  assign bram_wrdata_b[195] = \<const0> ;
  assign bram_wrdata_b[194] = \<const0> ;
  assign bram_wrdata_b[193] = \<const0> ;
  assign bram_wrdata_b[192] = \<const0> ;
  assign bram_wrdata_b[191] = \<const0> ;
  assign bram_wrdata_b[190] = \<const0> ;
  assign bram_wrdata_b[189] = \<const0> ;
  assign bram_wrdata_b[188] = \<const0> ;
  assign bram_wrdata_b[187] = \<const0> ;
  assign bram_wrdata_b[186] = \<const0> ;
  assign bram_wrdata_b[185] = \<const0> ;
  assign bram_wrdata_b[184] = \<const0> ;
  assign bram_wrdata_b[183] = \<const0> ;
  assign bram_wrdata_b[182] = \<const0> ;
  assign bram_wrdata_b[181] = \<const0> ;
  assign bram_wrdata_b[180] = \<const0> ;
  assign bram_wrdata_b[179] = \<const0> ;
  assign bram_wrdata_b[178] = \<const0> ;
  assign bram_wrdata_b[177] = \<const0> ;
  assign bram_wrdata_b[176] = \<const0> ;
  assign bram_wrdata_b[175] = \<const0> ;
  assign bram_wrdata_b[174] = \<const0> ;
  assign bram_wrdata_b[173] = \<const0> ;
  assign bram_wrdata_b[172] = \<const0> ;
  assign bram_wrdata_b[171] = \<const0> ;
  assign bram_wrdata_b[170] = \<const0> ;
  assign bram_wrdata_b[169] = \<const0> ;
  assign bram_wrdata_b[168] = \<const0> ;
  assign bram_wrdata_b[167] = \<const0> ;
  assign bram_wrdata_b[166] = \<const0> ;
  assign bram_wrdata_b[165] = \<const0> ;
  assign bram_wrdata_b[164] = \<const0> ;
  assign bram_wrdata_b[163] = \<const0> ;
  assign bram_wrdata_b[162] = \<const0> ;
  assign bram_wrdata_b[161] = \<const0> ;
  assign bram_wrdata_b[160] = \<const0> ;
  assign bram_wrdata_b[159] = \<const0> ;
  assign bram_wrdata_b[158] = \<const0> ;
  assign bram_wrdata_b[157] = \<const0> ;
  assign bram_wrdata_b[156] = \<const0> ;
  assign bram_wrdata_b[155] = \<const0> ;
  assign bram_wrdata_b[154] = \<const0> ;
  assign bram_wrdata_b[153] = \<const0> ;
  assign bram_wrdata_b[152] = \<const0> ;
  assign bram_wrdata_b[151] = \<const0> ;
  assign bram_wrdata_b[150] = \<const0> ;
  assign bram_wrdata_b[149] = \<const0> ;
  assign bram_wrdata_b[148] = \<const0> ;
  assign bram_wrdata_b[147] = \<const0> ;
  assign bram_wrdata_b[146] = \<const0> ;
  assign bram_wrdata_b[145] = \<const0> ;
  assign bram_wrdata_b[144] = \<const0> ;
  assign bram_wrdata_b[143] = \<const0> ;
  assign bram_wrdata_b[142] = \<const0> ;
  assign bram_wrdata_b[141] = \<const0> ;
  assign bram_wrdata_b[140] = \<const0> ;
  assign bram_wrdata_b[139] = \<const0> ;
  assign bram_wrdata_b[138] = \<const0> ;
  assign bram_wrdata_b[137] = \<const0> ;
  assign bram_wrdata_b[136] = \<const0> ;
  assign bram_wrdata_b[135] = \<const0> ;
  assign bram_wrdata_b[134] = \<const0> ;
  assign bram_wrdata_b[133] = \<const0> ;
  assign bram_wrdata_b[132] = \<const0> ;
  assign bram_wrdata_b[131] = \<const0> ;
  assign bram_wrdata_b[130] = \<const0> ;
  assign bram_wrdata_b[129] = \<const0> ;
  assign bram_wrdata_b[128] = \<const0> ;
  assign bram_wrdata_b[127] = \<const0> ;
  assign bram_wrdata_b[126] = \<const0> ;
  assign bram_wrdata_b[125] = \<const0> ;
  assign bram_wrdata_b[124] = \<const0> ;
  assign bram_wrdata_b[123] = \<const0> ;
  assign bram_wrdata_b[122] = \<const0> ;
  assign bram_wrdata_b[121] = \<const0> ;
  assign bram_wrdata_b[120] = \<const0> ;
  assign bram_wrdata_b[119] = \<const0> ;
  assign bram_wrdata_b[118] = \<const0> ;
  assign bram_wrdata_b[117] = \<const0> ;
  assign bram_wrdata_b[116] = \<const0> ;
  assign bram_wrdata_b[115] = \<const0> ;
  assign bram_wrdata_b[114] = \<const0> ;
  assign bram_wrdata_b[113] = \<const0> ;
  assign bram_wrdata_b[112] = \<const0> ;
  assign bram_wrdata_b[111] = \<const0> ;
  assign bram_wrdata_b[110] = \<const0> ;
  assign bram_wrdata_b[109] = \<const0> ;
  assign bram_wrdata_b[108] = \<const0> ;
  assign bram_wrdata_b[107] = \<const0> ;
  assign bram_wrdata_b[106] = \<const0> ;
  assign bram_wrdata_b[105] = \<const0> ;
  assign bram_wrdata_b[104] = \<const0> ;
  assign bram_wrdata_b[103] = \<const0> ;
  assign bram_wrdata_b[102] = \<const0> ;
  assign bram_wrdata_b[101] = \<const0> ;
  assign bram_wrdata_b[100] = \<const0> ;
  assign bram_wrdata_b[99] = \<const0> ;
  assign bram_wrdata_b[98] = \<const0> ;
  assign bram_wrdata_b[97] = \<const0> ;
  assign bram_wrdata_b[96] = \<const0> ;
  assign bram_wrdata_b[95] = \<const0> ;
  assign bram_wrdata_b[94] = \<const0> ;
  assign bram_wrdata_b[93] = \<const0> ;
  assign bram_wrdata_b[92] = \<const0> ;
  assign bram_wrdata_b[91] = \<const0> ;
  assign bram_wrdata_b[90] = \<const0> ;
  assign bram_wrdata_b[89] = \<const0> ;
  assign bram_wrdata_b[88] = \<const0> ;
  assign bram_wrdata_b[87] = \<const0> ;
  assign bram_wrdata_b[86] = \<const0> ;
  assign bram_wrdata_b[85] = \<const0> ;
  assign bram_wrdata_b[84] = \<const0> ;
  assign bram_wrdata_b[83] = \<const0> ;
  assign bram_wrdata_b[82] = \<const0> ;
  assign bram_wrdata_b[81] = \<const0> ;
  assign bram_wrdata_b[80] = \<const0> ;
  assign bram_wrdata_b[79] = \<const0> ;
  assign bram_wrdata_b[78] = \<const0> ;
  assign bram_wrdata_b[77] = \<const0> ;
  assign bram_wrdata_b[76] = \<const0> ;
  assign bram_wrdata_b[75] = \<const0> ;
  assign bram_wrdata_b[74] = \<const0> ;
  assign bram_wrdata_b[73] = \<const0> ;
  assign bram_wrdata_b[72] = \<const0> ;
  assign bram_wrdata_b[71] = \<const0> ;
  assign bram_wrdata_b[70] = \<const0> ;
  assign bram_wrdata_b[69] = \<const0> ;
  assign bram_wrdata_b[68] = \<const0> ;
  assign bram_wrdata_b[67] = \<const0> ;
  assign bram_wrdata_b[66] = \<const0> ;
  assign bram_wrdata_b[65] = \<const0> ;
  assign bram_wrdata_b[64] = \<const0> ;
  assign bram_wrdata_b[63] = \<const0> ;
  assign bram_wrdata_b[62] = \<const0> ;
  assign bram_wrdata_b[61] = \<const0> ;
  assign bram_wrdata_b[60] = \<const0> ;
  assign bram_wrdata_b[59] = \<const0> ;
  assign bram_wrdata_b[58] = \<const0> ;
  assign bram_wrdata_b[57] = \<const0> ;
  assign bram_wrdata_b[56] = \<const0> ;
  assign bram_wrdata_b[55] = \<const0> ;
  assign bram_wrdata_b[54] = \<const0> ;
  assign bram_wrdata_b[53] = \<const0> ;
  assign bram_wrdata_b[52] = \<const0> ;
  assign bram_wrdata_b[51] = \<const0> ;
  assign bram_wrdata_b[50] = \<const0> ;
  assign bram_wrdata_b[49] = \<const0> ;
  assign bram_wrdata_b[48] = \<const0> ;
  assign bram_wrdata_b[47] = \<const0> ;
  assign bram_wrdata_b[46] = \<const0> ;
  assign bram_wrdata_b[45] = \<const0> ;
  assign bram_wrdata_b[44] = \<const0> ;
  assign bram_wrdata_b[43] = \<const0> ;
  assign bram_wrdata_b[42] = \<const0> ;
  assign bram_wrdata_b[41] = \<const0> ;
  assign bram_wrdata_b[40] = \<const0> ;
  assign bram_wrdata_b[39] = \<const0> ;
  assign bram_wrdata_b[38] = \<const0> ;
  assign bram_wrdata_b[37] = \<const0> ;
  assign bram_wrdata_b[36] = \<const0> ;
  assign bram_wrdata_b[35] = \<const0> ;
  assign bram_wrdata_b[34] = \<const0> ;
  assign bram_wrdata_b[33] = \<const0> ;
  assign bram_wrdata_b[32] = \<const0> ;
  assign bram_wrdata_b[31] = \<const0> ;
  assign bram_wrdata_b[30] = \<const0> ;
  assign bram_wrdata_b[29] = \<const0> ;
  assign bram_wrdata_b[28] = \<const0> ;
  assign bram_wrdata_b[27] = \<const0> ;
  assign bram_wrdata_b[26] = \<const0> ;
  assign bram_wrdata_b[25] = \<const0> ;
  assign bram_wrdata_b[24] = \<const0> ;
  assign bram_wrdata_b[23] = \<const0> ;
  assign bram_wrdata_b[22] = \<const0> ;
  assign bram_wrdata_b[21] = \<const0> ;
  assign bram_wrdata_b[20] = \<const0> ;
  assign bram_wrdata_b[19] = \<const0> ;
  assign bram_wrdata_b[18] = \<const0> ;
  assign bram_wrdata_b[17] = \<const0> ;
  assign bram_wrdata_b[16] = \<const0> ;
  assign bram_wrdata_b[15] = \<const0> ;
  assign bram_wrdata_b[14] = \<const0> ;
  assign bram_wrdata_b[13] = \<const0> ;
  assign bram_wrdata_b[12] = \<const0> ;
  assign bram_wrdata_b[11] = \<const0> ;
  assign bram_wrdata_b[10] = \<const0> ;
  assign bram_wrdata_b[9] = \<const0> ;
  assign bram_wrdata_b[8] = \<const0> ;
  assign bram_wrdata_b[7] = \<const0> ;
  assign bram_wrdata_b[6] = \<const0> ;
  assign bram_wrdata_b[5] = \<const0> ;
  assign bram_wrdata_b[4] = \<const0> ;
  assign bram_wrdata_b[3] = \<const0> ;
  assign bram_wrdata_b[2] = \<const0> ;
  assign bram_wrdata_b[1] = \<const0> ;
  assign bram_wrdata_b[0] = \<const0> ;
  assign ecc_interrupt = \<const0> ;
  assign ecc_ue = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
GND GND
       (.G(\<const0> ));
controller_axi_bram_ctrl_top \gext_inst.abcv4_0_ext_inst 
       (.O1(s_axi_rlast),
        .O2(s_axi_rvalid),
        .O3(\^bram_addr_a [5]),
        .O4(\^bram_addr_a [7]),
        .O5(\^bram_addr_a [6]),
        .O6(bram_rst_a),
        .O7(s_axi_bvalid),
        .bram_addr_a(\^bram_addr_a [14:8]),
        .bram_en_a(bram_en_a),
        .bram_rddata_a(bram_rddata_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_bram_ctrl_top" *) 
module controller_axi_bram_ctrl_top
   (O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    bram_addr_a,
    O7,
    bram_wrdata_a,
    s_axi_rdata,
    s_axi_awready,
    s_axi_arready,
    s_axi_wready,
    bram_we_a,
    bram_en_a,
    s_axi_bid,
    s_axi_rid,
    s_axi_awburst,
    s_axi_awsize,
    s_axi_arburst,
    s_axi_arsize,
    s_axi_rready,
    s_axi_aresetn,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_awlen,
    s_axi_arlen,
    s_axi_aclk,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_wlast,
    s_axi_bready,
    s_axi_wdata,
    s_axi_arid,
    bram_rddata_a,
    s_axi_wstrb);
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output [6:0]bram_addr_a;
  output O7;
  output [255:0]bram_wrdata_a;
  output [255:0]s_axi_rdata;
  output s_axi_awready;
  output s_axi_arready;
  output s_axi_wready;
  output [31:0]bram_we_a;
  output bram_en_a;
  output [0:0]s_axi_bid;
  output [0:0]s_axi_rid;
  input [1:0]s_axi_awburst;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_arburst;
  input [2:0]s_axi_arsize;
  input s_axi_rready;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input [7:0]s_axi_awlen;
  input [7:0]s_axi_arlen;
  input s_axi_aclk;
  input [0:0]s_axi_awid;
  input [14:0]s_axi_awaddr;
  input [14:0]s_axi_araddr;
  input s_axi_wlast;
  input s_axi_bready;
  input [255:0]s_axi_wdata;
  input [0:0]s_axi_arid;
  input [255:0]bram_rddata_a;
  input [31:0]s_axi_wstrb;

  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire [6:0]bram_addr_a;
  wire bram_en_a;
  wire [255:0]bram_rddata_a;
  wire [31:0]bram_we_a;
  wire [255:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [14:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [255:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rready;
  wire [255:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;

controller_full_axi \GEN_AXI4.I_FULL_AXI 
       (.O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .bram_addr_a(bram_addr_a),
        .bram_en_a(bram_en_a),
        .bram_rddata_a(bram_rddata_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "full_axi" *) 
module controller_full_axi
   (O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    bram_addr_a,
    O7,
    bram_wrdata_a,
    s_axi_rdata,
    s_axi_awready,
    s_axi_arready,
    s_axi_wready,
    bram_we_a,
    bram_en_a,
    s_axi_bid,
    s_axi_rid,
    s_axi_awburst,
    s_axi_awsize,
    s_axi_arburst,
    s_axi_arsize,
    s_axi_rready,
    s_axi_aresetn,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_awlen,
    s_axi_arlen,
    s_axi_aclk,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_wlast,
    s_axi_bready,
    s_axi_wdata,
    s_axi_arid,
    bram_rddata_a,
    s_axi_wstrb);
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output [6:0]bram_addr_a;
  output O7;
  output [255:0]bram_wrdata_a;
  output [255:0]s_axi_rdata;
  output s_axi_awready;
  output s_axi_arready;
  output s_axi_wready;
  output [31:0]bram_we_a;
  output bram_en_a;
  output [0:0]s_axi_bid;
  output [0:0]s_axi_rid;
  input [1:0]s_axi_awburst;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_arburst;
  input [2:0]s_axi_arsize;
  input s_axi_rready;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input [7:0]s_axi_awlen;
  input [7:0]s_axi_arlen;
  input s_axi_aclk;
  input [0:0]s_axi_awid;
  input [14:0]s_axi_awaddr;
  input [14:0]s_axi_araddr;
  input s_axi_wlast;
  input s_axi_bready;
  input [255:0]s_axi_wdata;
  input [0:0]s_axi_arid;
  input [255:0]bram_rddata_a;
  input [31:0]s_axi_wstrb;

  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire [9:7]RdChnl_BRAM_Addr_Ld;
  wire [9:1]WrChnl_BRAM_Addr_Ld;
  wire ar_active_d1;
  wire ar_active_re;
  wire [1:0]arb_sm_cs;
  wire aw_active_d1;
  wire aw_active_re;
  wire [6:0]bram_addr_a;
  wire bram_en_a;
  wire [255:0]bram_rddata_a;
  wire [31:0]bram_we_a;
  wire [31:0]bram_we_int;
  wire [255:0]bram_wrdata_a;
  wire curr_narrow_burst;
  wire curr_narrow_burst_en;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[10]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_2 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[12]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[13]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_2 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_1 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_2 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_1 ;
  wire \n_10_GEN_ARB.I_SNG_PORT ;
  wire n_257_I_RD_CHNL;
  wire n_260_I_WR_CHNL;
  wire n_261_I_WR_CHNL;
  wire n_262_I_WR_CHNL;
  wire n_263_I_WR_CHNL;
  wire n_264_I_RD_CHNL;
  wire n_265_I_RD_CHNL;
  wire n_266_I_RD_CHNL;
  wire n_267_I_RD_CHNL;
  wire n_268_I_RD_CHNL;
  wire n_269_I_RD_CHNL;
  wire n_270_I_RD_CHNL;
  wire n_271_I_RD_CHNL;
  wire n_272_I_RD_CHNL;
  wire n_273_I_RD_CHNL;
  wire n_273_I_WR_CHNL;
  wire n_274_I_WR_CHNL;
  wire n_275_I_WR_CHNL;
  wire n_276_I_WR_CHNL;
  wire n_277_I_RD_CHNL;
  wire n_277_I_WR_CHNL;
  wire n_278_I_RD_CHNL;
  wire n_279_I_RD_CHNL;
  wire \n_43_GEN_ARB.I_SNG_PORT ;
  wire \n_44_GEN_ARB.I_SNG_PORT ;
  wire \n_8_GEN_ARB.I_SNG_PORT ;
  wire p_0_out;
  wire p_1_out;
  wire p_7_in;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [14:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [255:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rready;
  wire [255:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;

LUT6 #(
    .INIT(64'h77FFF0F08800F0F0)) 
     \ADDR_SNG_PORT.bram_addr_int[10]_i_1 
       (.I0(n_276_I_WR_CHNL),
        .I1(bram_addr_a[1]),
        .I2(n_270_I_RD_CHNL),
        .I3(n_263_I_WR_CHNL),
        .I4(n_274_I_WR_CHNL),
        .I5(bram_addr_a[2]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[10]_i_1 ));
LUT6 #(
    .INIT(64'h77FFF0F08800F0F0)) 
     \ADDR_SNG_PORT.bram_addr_int[11]_i_1 
       (.I0(\n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_2 ),
        .I1(bram_addr_a[2]),
        .I2(n_271_I_RD_CHNL),
        .I3(n_263_I_WR_CHNL),
        .I4(n_274_I_WR_CHNL),
        .I5(bram_addr_a[3]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_1 ));
LUT5 #(
    .INIT(32'h80000000)) 
     \ADDR_SNG_PORT.bram_addr_int[11]_i_2 
       (.I0(bram_addr_a[1]),
        .I1(O4),
        .I2(O3),
        .I3(O5),
        .I4(bram_addr_a[0]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_2 ));
LUT5 #(
    .INIT(32'hFFB800B8)) 
     \ADDR_SNG_PORT.bram_addr_int[12]_i_1 
       (.I0(RdChnl_BRAM_Addr_Ld[7]),
        .I1(p_0_out),
        .I2(WrChnl_BRAM_Addr_Ld[7]),
        .I3(n_274_I_WR_CHNL),
        .I4(bram_addr_a[4]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[12]_i_1 ));
LUT5 #(
    .INIT(32'hFFB800B8)) 
     \ADDR_SNG_PORT.bram_addr_int[13]_i_1 
       (.I0(RdChnl_BRAM_Addr_Ld[8]),
        .I1(p_0_out),
        .I2(WrChnl_BRAM_Addr_Ld[8]),
        .I3(n_274_I_WR_CHNL),
        .I4(bram_addr_a[5]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[13]_i_1 ));
LUT5 #(
    .INIT(32'hFFB800B8)) 
     \ADDR_SNG_PORT.bram_addr_int[14]_i_2 
       (.I0(RdChnl_BRAM_Addr_Ld[9]),
        .I1(p_0_out),
        .I2(WrChnl_BRAM_Addr_Ld[9]),
        .I3(n_274_I_WR_CHNL),
        .I4(bram_addr_a[6]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_2 ));
LUT4 #(
    .INIT(16'h3ACA)) 
     \ADDR_SNG_PORT.bram_addr_int[5]_i_1 
       (.I0(n_264_I_RD_CHNL),
        .I1(n_263_I_WR_CHNL),
        .I2(n_274_I_WR_CHNL),
        .I3(O3),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair197" *) 
   LUT5 #(
    .INIT(32'h5FCCA0CC)) 
     \ADDR_SNG_PORT.bram_addr_int[6]_i_1 
       (.I0(O3),
        .I1(n_266_I_RD_CHNL),
        .I2(n_263_I_WR_CHNL),
        .I3(n_274_I_WR_CHNL),
        .I4(O5),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_1 ));
LUT6 #(
    .INIT(64'h77FFF0F08800F0F0)) 
     \ADDR_SNG_PORT.bram_addr_int[7]_i_1 
       (.I0(O3),
        .I1(O5),
        .I2(n_267_I_RD_CHNL),
        .I3(n_263_I_WR_CHNL),
        .I4(n_274_I_WR_CHNL),
        .I5(O4),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_1 ));
LUT6 #(
    .INIT(64'h77FFF0F08800F0F0)) 
     \ADDR_SNG_PORT.bram_addr_int[8]_i_1 
       (.I0(\n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_2 ),
        .I1(O4),
        .I2(n_268_I_RD_CHNL),
        .I3(n_263_I_WR_CHNL),
        .I4(n_274_I_WR_CHNL),
        .I5(bram_addr_a[0]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair197" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \ADDR_SNG_PORT.bram_addr_int[8]_i_2 
       (.I0(O5),
        .I1(O3),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_2 ));
LUT5 #(
    .INIT(32'h5FCCA0CC)) 
     \ADDR_SNG_PORT.bram_addr_int[9]_i_1 
       (.I0(n_276_I_WR_CHNL),
        .I1(n_269_I_RD_CHNL),
        .I2(n_263_I_WR_CHNL),
        .I3(n_274_I_WR_CHNL),
        .I4(bram_addr_a[1]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[10]_i_1 ),
        .Q(bram_addr_a[2]),
        .R(n_260_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[11]_i_1 ),
        .Q(bram_addr_a[3]),
        .R(n_260_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[12]_i_1 ),
        .Q(bram_addr_a[4]),
        .R(n_260_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[13]_i_1 ),
        .Q(bram_addr_a[5]),
        .R(n_260_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_2 ),
        .Q(bram_addr_a[6]),
        .R(n_260_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[5]_i_1 ),
        .Q(O3),
        .R(n_260_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_1 ),
        .Q(O5),
        .R(n_260_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_1 ),
        .Q(O4),
        .R(n_260_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_1 ),
        .Q(bram_addr_a[0]),
        .R(n_260_I_WR_CHNL));
FDRE #(
    .INIT(1'b0)) 
     \ADDR_SNG_PORT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_ADDR_SNG_PORT.bram_addr_int[9]_i_1 ),
        .Q(bram_addr_a[1]),
        .R(n_260_I_WR_CHNL));
controller_sng_port_arb \GEN_ARB.I_SNG_PORT 
       (.I1(O6),
        .I10(n_261_I_WR_CHNL),
        .I2(n_275_I_WR_CHNL),
        .I3(n_262_I_WR_CHNL),
        .I4(n_272_I_RD_CHNL),
        .I5(n_273_I_RD_CHNL),
        .I6(n_277_I_WR_CHNL),
        .I7(n_278_I_RD_CHNL),
        .I8(O1),
        .I9(n_279_I_RD_CHNL),
        .O1(\n_8_GEN_ARB.I_SNG_PORT ),
        .O2(\n_10_GEN_ARB.I_SNG_PORT ),
        .O3(\n_43_GEN_ARB.I_SNG_PORT ),
        .O4(\n_44_GEN_ARB.I_SNG_PORT ),
        .Q(bram_we_int),
        .ar_active_d1(ar_active_d1),
        .ar_active_re(ar_active_re),
        .arb_sm_cs(arb_sm_cs),
        .aw_active_d1(aw_active_d1),
        .aw_active_re(aw_active_re),
        .bram_we_a(bram_we_a),
        .curr_narrow_burst(curr_narrow_burst),
        .curr_narrow_burst_en(curr_narrow_burst_en),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize[0]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen[3:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_rready(s_axi_rready));
controller_rd_chnl I_RD_CHNL
       (.D(WrChnl_BRAM_Addr_Ld[6:1]),
        .I1(\n_44_GEN_ARB.I_SNG_PORT ),
        .I2(O3),
        .I3(O4),
        .I4(O5),
        .I5(\n_8_GEN_ARB.I_SNG_PORT ),
        .I6(n_273_I_WR_CHNL),
        .I7(\n_10_GEN_ARB.I_SNG_PORT ),
        .I8(bram_addr_a[0]),
        .I9(\n_43_GEN_ARB.I_SNG_PORT ),
        .O1(O6),
        .O10(n_269_I_RD_CHNL),
        .O11(n_270_I_RD_CHNL),
        .O12(n_271_I_RD_CHNL),
        .O13(n_272_I_RD_CHNL),
        .O14(n_273_I_RD_CHNL),
        .O15(RdChnl_BRAM_Addr_Ld),
        .O16(n_277_I_RD_CHNL),
        .O17(n_278_I_RD_CHNL),
        .O18(n_279_I_RD_CHNL),
        .O2(n_257_I_RD_CHNL),
        .O3(O1),
        .O4(O2),
        .O5(n_264_I_RD_CHNL),
        .O6(n_265_I_RD_CHNL),
        .O7(n_266_I_RD_CHNL),
        .O8(n_267_I_RD_CHNL),
        .O9(n_268_I_RD_CHNL),
        .ar_active_d1(ar_active_d1),
        .ar_active_re(ar_active_re),
        .bram_rddata_a(bram_rddata_a),
        .curr_narrow_burst(curr_narrow_burst),
        .p_0_out(p_0_out),
        .p_7_in(p_7_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_awaddr(s_axi_awaddr[5]),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready));
controller_wr_chnl I_WR_CHNL
       (.D(WrChnl_BRAM_Addr_Ld),
        .I1(O6),
        .I2(O3),
        .I3(O4),
        .I4(O5),
        .I5(n_257_I_RD_CHNL),
        .I6(n_277_I_RD_CHNL),
        .I7(n_265_I_RD_CHNL),
        .I8(bram_addr_a[0]),
        .O1(O7),
        .O10(n_277_I_WR_CHNL),
        .O2(n_260_I_WR_CHNL),
        .O3(n_261_I_WR_CHNL),
        .O4(n_262_I_WR_CHNL),
        .O5(n_263_I_WR_CHNL),
        .O6(n_273_I_WR_CHNL),
        .O7(n_274_I_WR_CHNL),
        .O8(n_275_I_WR_CHNL),
        .O9(n_276_I_WR_CHNL),
        .Q(bram_we_int),
        .ar_active_re(ar_active_re),
        .arb_sm_cs(arb_sm_cs),
        .aw_active_d1(aw_active_d1),
        .aw_active_re(aw_active_re),
        .bram_en_a(bram_en_a),
        .bram_wrdata_a(bram_wrdata_a),
        .curr_narrow_burst_en(curr_narrow_burst_en),
        .p_0_out(p_0_out),
        .p_1_out(p_1_out),
        .p_7_in(p_7_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr({s_axi_awaddr[14:6],s_axi_awaddr[4:0]}),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "rd_chnl" *) 
module controller_rd_chnl
   (O1,
    s_axi_rdata,
    O2,
    ar_active_d1,
    curr_narrow_burst,
    O3,
    s_axi_rid,
    p_7_in,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    O18,
    s_axi_aclk,
    ar_active_re,
    s_axi_arid,
    I1,
    s_axi_arburst,
    s_axi_arsize,
    s_axi_rready,
    s_axi_aresetn,
    s_axi_arlen,
    I2,
    I3,
    I4,
    I5,
    s_axi_araddr,
    p_0_out,
    I6,
    s_axi_awaddr,
    D,
    I7,
    I8,
    I9,
    bram_rddata_a);
  output O1;
  output [255:0]s_axi_rdata;
  output O2;
  output ar_active_d1;
  output curr_narrow_burst;
  output O3;
  output [0:0]s_axi_rid;
  output p_7_in;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output [2:0]O15;
  output O16;
  output O17;
  output O18;
  input s_axi_aclk;
  input ar_active_re;
  input [0:0]s_axi_arid;
  input I1;
  input [1:0]s_axi_arburst;
  input [2:0]s_axi_arsize;
  input s_axi_rready;
  input s_axi_aresetn;
  input [7:0]s_axi_arlen;
  input I2;
  input I3;
  input I4;
  input I5;
  input [14:0]s_axi_araddr;
  input p_0_out;
  input I6;
  input [0:0]s_axi_awaddr;
  input [5:0]D;
  input I7;
  input I8;
  input I9;
  input [255:0]bram_rddata_a;

  wire [5:0]D;
  wire [8:0]\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb ;
  wire [6:0]\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0 ;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire [2:0]O15;
  wire O16;
  wire O17;
  wire O18;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire act_rd_burst;
  wire act_rd_burst_set;
  wire act_rd_burst_two;
  wire ar_active_d1;
  wire ar_active_re;
  wire axi_rd_burst;
  wire axi_rd_burst_two;
  wire axi_rdata_en;
  wire axi_rid_temp;
  wire axi_rvalid_clr_ok;
  wire axi_rvalid_set;
  wire axi_rvalid_set_cmb;
  wire bram_addr_inc;
  wire bram_addr_inc10_out;
  wire [255:0]bram_rddata_a;
  wire brst_cnt_max7_out;
  wire brst_cnt_max_d1;
  wire brst_one;
  wire brst_one0;
  wire brst_zero;
  wire curr_fixed_burst;
  wire curr_narrow_burst;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire disable_b2b_brst;
  wire disable_b2b_brst_cmb;
  wire end_brst_rd;
  wire end_brst_rd_clr;
  wire last_bram_addr;
  wire last_bram_addr0;
  wire \n_0_FSM_sequential_rlast_sm_cs[0]_i_1 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[0]_i_2 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[1]_i_1 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[1]_i_2 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[2]_i_1 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[2]_i_2 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[2]_i_3 ;
  wire \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1 ;
  wire \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_2__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_5 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_11__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_13__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_14__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_15__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_17__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_18__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_19__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_20__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_22__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_23__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_24__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_25__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_2__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_3__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_4 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_5 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_6__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_7__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_8__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_10__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_11__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_12__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_15__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_16__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_17__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_19__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_20__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_21 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_22__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_23 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_26__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_27__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_31__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_32__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_33__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_34__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_37 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_38__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_39__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_3__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_41__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_42__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_43__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_44__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_45__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_46__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_47__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_48__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_49__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_4__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_51__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_52__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_55__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_56__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_9 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_1__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_1__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2__0 ;
  wire \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[128].axi_rdata_int[128]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[129].axi_rdata_int[129]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[130].axi_rdata_int[130]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[131].axi_rdata_int[131]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[132].axi_rdata_int[132]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[133].axi_rdata_int[133]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[134].axi_rdata_int[134]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[135].axi_rdata_int[135]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[136].axi_rdata_int[136]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[137].axi_rdata_int[137]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[138].axi_rdata_int[138]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[139].axi_rdata_int[139]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[140].axi_rdata_int[140]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[141].axi_rdata_int[141]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[142].axi_rdata_int[142]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[143].axi_rdata_int[143]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[144].axi_rdata_int[144]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[145].axi_rdata_int[145]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[146].axi_rdata_int[146]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[147].axi_rdata_int[147]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[148].axi_rdata_int[148]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[149].axi_rdata_int[149]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[150].axi_rdata_int[150]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[151].axi_rdata_int[151]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[152].axi_rdata_int[152]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[153].axi_rdata_int[153]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[154].axi_rdata_int[154]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[155].axi_rdata_int[155]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[156].axi_rdata_int[156]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[157].axi_rdata_int[157]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[158].axi_rdata_int[158]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[159].axi_rdata_int[159]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[160].axi_rdata_int[160]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[161].axi_rdata_int[161]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[162].axi_rdata_int[162]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[163].axi_rdata_int[163]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[164].axi_rdata_int[164]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[165].axi_rdata_int[165]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[166].axi_rdata_int[166]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[167].axi_rdata_int[167]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[168].axi_rdata_int[168]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[169].axi_rdata_int[169]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[170].axi_rdata_int[170]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[171].axi_rdata_int[171]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[172].axi_rdata_int[172]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[173].axi_rdata_int[173]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[174].axi_rdata_int[174]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[175].axi_rdata_int[175]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[176].axi_rdata_int[176]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[177].axi_rdata_int[177]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[178].axi_rdata_int[178]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[179].axi_rdata_int[179]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[180].axi_rdata_int[180]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[181].axi_rdata_int[181]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[182].axi_rdata_int[182]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[183].axi_rdata_int[183]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[184].axi_rdata_int[184]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[185].axi_rdata_int[185]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[186].axi_rdata_int[186]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[187].axi_rdata_int[187]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[188].axi_rdata_int[188]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[189].axi_rdata_int[189]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[190].axi_rdata_int[190]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[191].axi_rdata_int[191]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[192].axi_rdata_int[192]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[193].axi_rdata_int[193]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[194].axi_rdata_int[194]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[195].axi_rdata_int[195]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[196].axi_rdata_int[196]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[197].axi_rdata_int[197]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[198].axi_rdata_int[198]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[199].axi_rdata_int[199]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[200].axi_rdata_int[200]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[201].axi_rdata_int[201]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[202].axi_rdata_int[202]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[203].axi_rdata_int[203]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[204].axi_rdata_int[204]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[205].axi_rdata_int[205]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[206].axi_rdata_int[206]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[207].axi_rdata_int[207]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[208].axi_rdata_int[208]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[209].axi_rdata_int[209]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[210].axi_rdata_int[210]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[211].axi_rdata_int[211]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[212].axi_rdata_int[212]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[213].axi_rdata_int[213]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[214].axi_rdata_int[214]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[215].axi_rdata_int[215]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[216].axi_rdata_int[216]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[217].axi_rdata_int[217]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[218].axi_rdata_int[218]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[219].axi_rdata_int[219]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[220].axi_rdata_int[220]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[221].axi_rdata_int[221]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[222].axi_rdata_int[222]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[223].axi_rdata_int[223]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[224].axi_rdata_int[224]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[225].axi_rdata_int[225]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[226].axi_rdata_int[226]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[227].axi_rdata_int[227]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[228].axi_rdata_int[228]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[229].axi_rdata_int[229]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[230].axi_rdata_int[230]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[231].axi_rdata_int[231]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[232].axi_rdata_int[232]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[233].axi_rdata_int[233]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[234].axi_rdata_int[234]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[235].axi_rdata_int[235]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[236].axi_rdata_int[236]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[237].axi_rdata_int[237]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[238].axi_rdata_int[238]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[239].axi_rdata_int[239]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[240].axi_rdata_int[240]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[241].axi_rdata_int[241]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[242].axi_rdata_int[242]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[243].axi_rdata_int[243]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[244].axi_rdata_int[244]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[245].axi_rdata_int[245]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[246].axi_rdata_int[246]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[247].axi_rdata_int[247]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[248].axi_rdata_int[248]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[249].axi_rdata_int[249]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[250].axi_rdata_int[250]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[251].axi_rdata_int[251]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[252].axi_rdata_int[252]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[253].axi_rdata_int[253]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[254].axi_rdata_int[254]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_3 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_4 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 ;
  wire \n_0_GEN_RID_SNG.axi_rid_int[0]_i_1 ;
  wire \n_0_GEN_RID_SNG.axi_rid_int[0]_i_2 ;
  wire n_0_act_rd_burst_i_1;
  wire n_0_act_rd_burst_i_4;
  wire n_0_act_rd_burst_two_i_1;
  wire n_0_axi_rd_burst_i_1;
  wire n_0_axi_rd_burst_two_i_1;
  wire n_0_axi_rd_burst_two_reg;
  wire n_0_axi_rlast_int_i_1;
  wire n_0_axi_rlast_int_i_2;
  wire n_0_axi_rvalid_clr_ok_i_1;
  wire n_0_axi_rvalid_clr_ok_i_2;
  wire n_0_axi_rvalid_int_i_1;
  wire n_0_bram_en_int_i_1;
  wire n_0_bram_en_int_i_2;
  wire n_0_bram_en_int_i_3;
  wire n_0_bram_en_int_i_4;
  wire n_0_bram_en_int_i_5;
  wire n_0_bram_en_int_i_6;
  wire n_0_bram_en_int_i_7;
  wire n_0_bram_en_int_i_8;
  wire \n_0_brst_cnt[0]_i_1 ;
  wire \n_0_brst_cnt[1]_i_1 ;
  wire \n_0_brst_cnt[2]_i_1 ;
  wire \n_0_brst_cnt[3]_i_1 ;
  wire \n_0_brst_cnt[3]_i_2 ;
  wire \n_0_brst_cnt[4]_i_1 ;
  wire \n_0_brst_cnt[4]_i_2 ;
  wire \n_0_brst_cnt[5]_i_1 ;
  wire \n_0_brst_cnt[5]_i_2 ;
  wire \n_0_brst_cnt[6]_i_1 ;
  wire \n_0_brst_cnt[7]_i_1 ;
  wire \n_0_brst_cnt[7]_i_2 ;
  wire \n_0_brst_cnt_reg[0] ;
  wire \n_0_brst_cnt_reg[1] ;
  wire \n_0_brst_cnt_reg[2] ;
  wire \n_0_brst_cnt_reg[3] ;
  wire \n_0_brst_cnt_reg[4] ;
  wire \n_0_brst_cnt_reg[5] ;
  wire \n_0_brst_cnt_reg[6] ;
  wire \n_0_brst_cnt_reg[7] ;
  wire n_0_brst_one_i_1;
  wire n_0_brst_zero_i_1;
  wire n_0_brst_zero_i_2;
  wire n_0_brst_zero_i_4;
  wire n_0_disable_b2b_brst_i_2;
  wire n_0_disable_b2b_brst_i_3;
  wire n_0_disable_b2b_brst_i_4;
  wire n_0_disable_b2b_brst_i_5;
  wire n_0_end_brst_rd_clr_i_1;
  wire n_0_end_brst_rd_i_1;
  wire n_0_last_bram_addr_i_2;
  wire n_0_last_bram_addr_i_3;
  wire n_0_last_bram_addr_i_4;
  wire n_0_last_bram_addr_i_5;
  wire n_0_last_bram_addr_i_6;
  wire n_0_pend_rd_op_i_1;
  wire n_0_pend_rd_op_i_2;
  wire n_0_pend_rd_op_i_3;
  wire n_0_pend_rd_op_i_4;
  wire n_0_pend_rd_op_i_5;
  wire n_0_pend_rd_op_i_6;
  wire \n_0_rd_data_sm_cs[0]_i_1 ;
  wire \n_0_rd_data_sm_cs[0]_i_2 ;
  wire \n_0_rd_data_sm_cs[0]_i_3 ;
  wire \n_0_rd_data_sm_cs[1]_i_1 ;
  wire \n_0_rd_data_sm_cs[1]_i_2 ;
  wire \n_0_rd_data_sm_cs[1]_i_3 ;
  wire \n_0_rd_data_sm_cs[2]_i_1 ;
  wire \n_0_rd_data_sm_cs[2]_i_2 ;
  wire \n_0_rd_data_sm_cs[2]_i_3 ;
  wire \n_0_rd_data_sm_cs[2]_i_4 ;
  wire \n_0_rd_data_sm_cs[3]_i_1 ;
  wire \n_0_rd_data_sm_cs[3]_i_2 ;
  wire \n_0_rd_data_sm_cs[3]_i_3 ;
  wire \n_0_rd_data_sm_cs[3]_i_4 ;
  wire \n_0_rd_data_sm_cs[3]_i_5 ;
  wire n_0_rddata_mux_sel_i_1;
  wire n_0_rddata_mux_sel_i_3;
  wire n_11_I_WRAP_BRST;
  wire n_12_I_WRAP_BRST;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_40 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_40 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_40 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0 ;
  wire [4:0]narrow_addr_int;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire [4:0]narrow_burst_cnt_ld_mod;
  wire [4:0]narrow_burst_cnt_ld_reg;
  wire p_0_out;
  wire p_7_in;
  wire pend_rd_op;
  wire rd_adv_buf29_out;
  wire [3:0]rd_data_sm_cs;
  wire [255:0]rd_skid_buf;
  wire rd_skid_buf_ld;
  wire rd_skid_buf_ld_cmb;
  wire rd_skid_buf_ld_reg;
  wire rddata_mux_sel;
  wire rddata_mux_sel_cmb;
(* RTL_KEEP = "yes" *)   wire [2:0]rlast_sm_cs;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_awaddr;
  wire [255:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rready;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0_O_UNCONNECTED ;

LUT6 #(
    .INIT(64'hFFFFFFFFEF00FFFF)) 
     \ADDR_SNG_PORT.bram_addr_int[11]_i_5 
       (.I0(narrow_bram_addr_inc_d1),
        .I1(narrow_addr_int[4]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2__0 ),
        .I3(curr_narrow_burst),
        .I4(n_11_I_WRAP_BRST),
        .I5(rd_data_sm_cs[3]),
        .O(O16));
LUT5 #(
    .INIT(32'h10FF1000)) 
     \FSM_sequential_rlast_sm_cs[0]_i_1 
       (.I0(rlast_sm_cs[2]),
        .I1(rlast_sm_cs[0]),
        .I2(\n_0_FSM_sequential_rlast_sm_cs[0]_i_2 ),
        .I3(\n_0_FSM_sequential_rlast_sm_cs[2]_i_3 ),
        .I4(rlast_sm_cs[0]),
        .O(\n_0_FSM_sequential_rlast_sm_cs[0]_i_1 ));
LUT6 #(
    .INIT(64'hAAFEFEFEAFFFFFFF)) 
     \FSM_sequential_rlast_sm_cs[0]_i_2 
       (.I0(rlast_sm_cs[1]),
        .I1(act_rd_burst_two),
        .I2(n_0_axi_rd_burst_two_reg),
        .I3(s_axi_rready),
        .I4(O4),
        .I5(axi_rd_burst),
        .O(\n_0_FSM_sequential_rlast_sm_cs[0]_i_2 ));
LUT5 #(
    .INIT(32'h01FF0100)) 
     \FSM_sequential_rlast_sm_cs[1]_i_1 
       (.I0(rlast_sm_cs[1]),
        .I1(rlast_sm_cs[0]),
        .I2(\n_0_FSM_sequential_rlast_sm_cs[1]_i_2 ),
        .I3(\n_0_FSM_sequential_rlast_sm_cs[2]_i_3 ),
        .I4(rlast_sm_cs[1]),
        .O(\n_0_FSM_sequential_rlast_sm_cs[1]_i_1 ));
LUT6 #(
    .INIT(64'h0011001300130013)) 
     \FSM_sequential_rlast_sm_cs[1]_i_2 
       (.I0(axi_rd_burst),
        .I1(rlast_sm_cs[2]),
        .I2(act_rd_burst_two),
        .I3(n_0_axi_rd_burst_two_reg),
        .I4(O4),
        .I5(s_axi_rready),
        .O(\n_0_FSM_sequential_rlast_sm_cs[1]_i_2 ));
LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
     \FSM_sequential_rlast_sm_cs[2]_i_1 
       (.I0(n_0_axi_rd_burst_two_reg),
        .I1(act_rd_burst_two),
        .I2(axi_rd_burst),
        .I3(\n_0_FSM_sequential_rlast_sm_cs[2]_i_2 ),
        .I4(\n_0_FSM_sequential_rlast_sm_cs[2]_i_3 ),
        .I5(rlast_sm_cs[2]),
        .O(\n_0_FSM_sequential_rlast_sm_cs[2]_i_1 ));
LUT5 #(
    .INIT(32'h00010101)) 
     \FSM_sequential_rlast_sm_cs[2]_i_2 
       (.I0(rlast_sm_cs[2]),
        .I1(rlast_sm_cs[0]),
        .I2(rlast_sm_cs[1]),
        .I3(s_axi_rready),
        .I4(O4),
        .O(\n_0_FSM_sequential_rlast_sm_cs[2]_i_2 ));
LUT6 #(
    .INIT(64'hFFFECC98CC98CC98)) 
     \FSM_sequential_rlast_sm_cs[2]_i_3 
       (.I0(rlast_sm_cs[1]),
        .I1(rlast_sm_cs[2]),
        .I2(last_bram_addr),
        .I3(rlast_sm_cs[0]),
        .I4(O4),
        .I5(s_axi_rready),
        .O(\n_0_FSM_sequential_rlast_sm_cs[2]_i_3 ));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rlast_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_rlast_sm_cs[0]_i_1 ),
        .Q(rlast_sm_cs[0]),
        .R(O1));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rlast_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_rlast_sm_cs[1]_i_1 ),
        .Q(rlast_sm_cs[1]),
        .R(O1));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rlast_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_rlast_sm_cs[2]_i_1 ),
        .Q(rlast_sm_cs[2]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_SNG.ar_active_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I1),
        .Q(ar_active_d1),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0E000E0000000E00)) 
     \GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1 
       (.I0(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ),
        .I1(brst_cnt_max7_out),
        .I2(end_brst_rd_clr),
        .I3(s_axi_aresetn),
        .I4(p_0_out),
        .I5(ar_active_d1),
        .O(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1 ));
LUT5 #(
    .INIT(32'h00D00000)) 
     \GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2 
       (.I0(curr_narrow_burst),
        .I1(narrow_bram_addr_inc),
        .I2(p_0_out),
        .I3(pend_rd_op),
        .I4(brst_zero),
        .O(brst_cnt_max7_out));
FDRE #(
    .INIT(1'b0)) 
     \GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1 ),
        .Q(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ),
        .R(1'b0));
LUT6 #(
    .INIT(64'h40FF4040EA00EAEA)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6 ),
        .I2(narrow_burst_cnt_ld_mod[0]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7 ),
        .I5(narrow_addr_int[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0 ));
LUT6 #(
    .INIT(64'h4045FFFFEAEF0000)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0 ),
        .I1(narrow_burst_cnt_ld_mod[0]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0 ),
        .I5(narrow_addr_int[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT5 #(
    .INIT(32'h0000FFBF)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6 ),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0 ));
LUT6 #(
    .INIT(64'hFFFFBF00BF00BF00)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(ar_active_re),
        .I4(curr_narrow_burst),
        .I5(bram_addr_inc),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_6 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [7]),
        .I1(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [6]),
        .I2(s_axi_arsize[1]),
        .I3(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [5]),
        .I4(s_axi_arsize[0]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [4]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6 ));
LUT6 #(
    .INIT(64'hB888FFFF74440000)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_2__0 
       (.I0(narrow_addr_int[0]),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6 ),
        .I3(narrow_burst_cnt_ld_mod[1]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4 ),
        .I5(narrow_addr_int[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2__0 ));
LUT6 #(
    .INIT(64'hB8FFB8B874007474)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0 
       (.I0(narrow_addr_int[0]),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7 ),
        .I5(narrow_addr_int[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0 ));
LUT6 #(
    .INIT(64'hFFFFBF00BF00BF00)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_4 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(ar_active_re),
        .I4(curr_narrow_burst),
        .I5(bram_addr_inc),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4 ));
LUT6 #(
    .INIT(64'hA88AAA8AABBAAABA)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_5__0 
       (.I0(narrow_burst_cnt_ld_mod[1]),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14__0 ),
        .I2(s_axi_arburst[0]),
        .I3(s_axi_arburst[1]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18__0 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5__0 ));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT5 #(
    .INIT(32'h44440444)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_6 
       (.I0(ar_active_d1),
        .I1(p_0_out),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'hBF)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_7 
       (.I0(rd_data_sm_cs[3]),
        .I1(n_11_I_WRAP_BRST),
        .I2(curr_narrow_burst),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT5 #(
    .INIT(32'hFB0404FB)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_8 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT5 #(
    .INIT(32'hC0CCAAAA)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_10__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6 ),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_11__0 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I1(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [7]),
        .I2(s_axi_arsize[1]),
        .I3(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [6]),
        .I4(s_axi_arsize[0]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [5]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_12__0 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [4]),
        .I1(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [3]),
        .I2(s_axi_arsize[1]),
        .I3(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [2]),
        .I4(s_axi_arsize[0]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_13__0 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [3]),
        .I1(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [2]),
        .I2(s_axi_arsize[1]),
        .I3(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [1]),
        .I4(s_axi_arsize[0]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13__0 ));
LUT6 #(
    .INIT(64'hF808FFFFF8080000)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_2__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6 ),
        .I1(narrow_burst_cnt_ld_mod[2]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_5 ),
        .I5(narrow_addr_int[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_2__0 ));
LUT6 #(
    .INIT(64'h8A88FFFF8A880000)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_3__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7__0 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_5 ),
        .I5(narrow_addr_int[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3__0 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT3 #(
    .INIT(8'hA9)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_4 
       (.I0(narrow_addr_int[2]),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4 ));
LUT6 #(
    .INIT(64'hFFFFBF00BF00BF00)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_5 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(ar_active_re),
        .I4(curr_narrow_burst),
        .I5(bram_addr_inc),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT4 #(
    .INIT(16'hE1FF)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_6__0 
       (.I0(narrow_addr_int[0]),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6__0 ));
LUT6 #(
    .INIT(64'hFFFFFABFAAAAAAAA)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_7__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18__0 ),
        .I2(s_axi_arburst[1]),
        .I3(s_axi_arburst[0]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14__0 ),
        .I5(narrow_burst_cnt_ld_mod[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7__0 ));
LUT6 #(
    .INIT(64'h595559655965A6AA)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_8__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0 ),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[0]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9__0 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8__0 ));
LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_9__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11__0 ),
        .I1(s_axi_arsize[2]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9__0 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_10__0 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .O(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0 [3]));
LUT5 #(
    .INIT(32'h0000E200)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_11__0 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [7]),
        .I1(s_axi_arsize[0]),
        .I2(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_11__0 ));
LUT6 #(
    .INIT(64'hFF00FF47FFFFFF47)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_12__0 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [4]),
        .I1(s_axi_arsize[0]),
        .I2(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [3]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[1]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_17__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12__0 ));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_13__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_13__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_14__0 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [5]),
        .I1(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [4]),
        .I2(s_axi_arsize[1]),
        .I3(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [3]),
        .I4(s_axi_arsize[0]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_14__0 ));
LUT5 #(
    .INIT(32'h30BB3088)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_15__0 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I1(s_axi_arsize[1]),
        .I2(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [7]),
        .I3(s_axi_arsize[0]),
        .I4(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [6]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_15__0 ));
(* SOFT_HLUTNM = "soft_lutpair174" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_17__0 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [6]),
        .I1(s_axi_arsize[0]),
        .I2(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [5]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_17__0 ));
LUT3 #(
    .INIT(8'h08)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_18__0 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_18__0 ));
LUT3 #(
    .INIT(8'h04)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_19__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_19__0 ));
LUT3 #(
    .INIT(8'h04)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_20__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_20__0 ));
LUT3 #(
    .INIT(8'h01)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_21__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0 [0]));
LUT4 #(
    .INIT(16'hBF40)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_22__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_araddr[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_22__0 ));
LUT4 #(
    .INIT(16'hFB04)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_23__0 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_araddr[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_23__0 ));
LUT4 #(
    .INIT(16'hFB04)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_24__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_araddr[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_24__0 ));
LUT4 #(
    .INIT(16'hFE01)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_25__0 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_araddr[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_25__0 ));
LUT6 #(
    .INIT(64'hF808FFFFF8080000)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_2__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6 ),
        .I1(narrow_burst_cnt_ld_mod[3]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_4 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_5 ),
        .I5(narrow_addr_int[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_2__0 ));
LUT6 #(
    .INIT(64'hFFD0FFFFFFD00000)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_3__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_6__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_7__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_8__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_5 ),
        .I5(narrow_addr_int[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_3__0 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT4 #(
    .INIT(16'hAAA9)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_4 
       (.I0(narrow_addr_int[3]),
        .I1(narrow_addr_int[2]),
        .I2(narrow_addr_int[0]),
        .I3(narrow_addr_int[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_4 ));
LUT6 #(
    .INIT(64'hFFFFBF00BF00BF00)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_5 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(ar_active_re),
        .I4(curr_narrow_burst),
        .I5(bram_addr_inc),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_5 ));
LUT6 #(
    .INIT(64'hB24DB2B24DB24D4D)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_6__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_21 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0 [3]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_11__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12__0 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_13__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_6__0 ));
LUT6 #(
    .INIT(64'h00000000FFFF1404)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_7__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14__0 ),
        .I1(s_axi_arburst[0]),
        .I2(s_axi_arburst[1]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18__0 ),
        .I4(narrow_burst_cnt_ld_mod[3]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_7__0 ));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT5 #(
    .INIT(32'hAAA80002)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_8__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0 ),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .I3(narrow_addr_int[2]),
        .I4(narrow_addr_int[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_8__0 ));
LUT6 #(
    .INIT(64'hFFFE0001FFFFFFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_10__0 
       (.I0(narrow_addr_int[2]),
        .I1(narrow_addr_int[0]),
        .I2(narrow_addr_int[1]),
        .I3(narrow_addr_int[3]),
        .I4(narrow_addr_int[4]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_10__0 ));
LUT6 #(
    .INIT(64'hFFFFFABFAAAAAAAA)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_11__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18__0 ),
        .I2(s_axi_arburst[1]),
        .I3(s_axi_arburst[0]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14__0 ),
        .I5(narrow_burst_cnt_ld_mod[4]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_11__0 ));
LUT6 #(
    .INIT(64'h0000FFFFE0EF1F10)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_12__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_19__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_20__0 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_21 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_22__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_23 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_12__0 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_14__0 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[1]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_27__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14__0 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT5 #(
    .INIT(32'hFCFCE0A0)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_15__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28__0 ),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_15__0 ));
LUT5 #(
    .INIT(32'hFFFFDFD5)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_16__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_31__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_32__0 ),
        .I2(s_axi_arsize[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_33__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_16__0 ));
LUT6 #(
    .INIT(64'h0FFFFEEE00AAAEEE)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_17__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_34__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35__0 ),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[2]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_17__0 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_18__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_15__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_31__0 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_37 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_33__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_38__0 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_39__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18__0 ));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT4 #(
    .INIT(16'h0020)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_19__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12__0 ),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_19__0 ));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT4 #(
    .INIT(16'h40FF)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_20__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_20__0 ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT5 #(
    .INIT(32'h000404FF)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_21 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_21 ));
LUT6 #(
    .INIT(64'hFFFFACFFFFFFAFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_22__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_11__0 ),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[2]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_22__0 ));
LUT5 #(
    .INIT(32'h000CA5AA)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_23 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_23 ));
LUT6 #(
    .INIT(64'h5555F5DD55005555)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_24__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12__0 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [7]),
        .I2(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24__0 ));
LUT4 #(
    .INIT(16'hFFFB)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_26__0 
       (.I0(s_axi_arsize[2]),
        .I1(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_26__0 ));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT5 #(
    .INIT(32'hFF40FFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_27__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .I3(ar_active_d1),
        .I4(p_0_out),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_27__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_28__0 
       (.I0(s_axi_arlen[4]),
        .I1(s_axi_arlen[5]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[6]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[7]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28__0 ));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_29__0 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_30__0 
       (.I0(s_axi_arlen[6]),
        .I1(s_axi_arlen[7]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[4]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[5]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30__0 ));
LUT5 #(
    .INIT(32'h5353533F)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_31__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_48__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_49__0 ),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_31__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_32__0 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_32__0 ));
LUT6 #(
    .INIT(64'hFFC0E800BFC0A800)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_33__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_49__0 ),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[2]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35__0 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_33__0 ));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT5 #(
    .INIT(32'hBEB28E82)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_34__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30__0 ),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_34__0 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_35__0 
       (.I0(s_axi_arlen[5]),
        .I1(s_axi_arlen[4]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arlen[7]),
        .I5(s_axi_arlen[6]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35__0 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_36__0 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arlen[3]),
        .I5(s_axi_arlen[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36__0 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_37 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50__0 ),
        .I1(s_axi_arsize[1]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29__0 ),
        .I3(s_axi_arsize[2]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_37 ));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT5 #(
    .INIT(32'h3E320E02)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_38__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30__0 ),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_38__0 ));
LUT5 #(
    .INIT(32'h2BBB2888)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_39__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36__0 ),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[0]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_39__0 ));
LUT6 #(
    .INIT(64'hF808FFFFF8080000)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_3__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6 ),
        .I1(narrow_burst_cnt_ld_mod[4]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_9 ),
        .I5(narrow_addr_int[4]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_3__0 ));
LUT5 #(
    .INIT(32'h00000007)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_41__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6 ),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_41__0 ));
LUT5 #(
    .INIT(32'h04440000)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_42__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_56__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_42__0 ));
LUT5 #(
    .INIT(32'h00001050)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_43__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_43__0 ));
LUT6 #(
    .INIT(64'hFCDCFCDCFDDCFDDF)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_44__0 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[0]),
        .I4(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [6]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [7]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_44__0 ));
LUT6 #(
    .INIT(64'hCCD0CCDCDDC2DDCE)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_45__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11__0 ),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_45__0 ));
LUT5 #(
    .INIT(32'h22228122)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_46__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_56__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0 ),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_46__0 ));
LUT5 #(
    .INIT(32'h04FB0000)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_47__0 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_47__0 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_48__0 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arlen[1]),
        .I5(s_axi_arlen[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_48__0 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_49__0 
       (.I0(s_axi_arlen[7]),
        .I1(s_axi_arlen[6]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arlen[5]),
        .I5(s_axi_arlen[4]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_49__0 ));
LUT6 #(
    .INIT(64'h8A88FFFF8A880000)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_4__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_10__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_11__0 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_12__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_9 ),
        .I5(narrow_addr_int[4]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_4__0 ));
(* SOFT_HLUTNM = "soft_lutpair174" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_50__0 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50__0 ));
LUT3 #(
    .INIT(8'h04)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_51__0 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_51__0 ));
LUT3 #(
    .INIT(8'h80)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_52__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_52__0 ));
LUT3 #(
    .INIT(8'h08)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_53__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0 [6]));
LUT3 #(
    .INIT(8'h08)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_54__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .O(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0 [5]));
LUT4 #(
    .INIT(16'hFB04)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_55__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_araddr[4]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_55__0 ));
LUT6 #(
    .INIT(64'h8AAA8A8A8AAAAAAA)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_56__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12__0 ),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I4(s_axi_arsize[0]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [7]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_56__0 ));
LUT6 #(
    .INIT(64'hEBEBEBEBEBEBEBFB)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_6 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14__0 ),
        .I1(s_axi_arburst[0]),
        .I2(s_axi_arburst[1]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_15__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_16__0 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_17__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6 ));
LUT6 #(
    .INIT(64'h00000000FFFFBFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0 
       (.I0(narrow_bram_addr_inc_d1),
        .I1(n_12_I_WRAP_BRST),
        .I2(curr_narrow_burst),
        .I3(n_11_I_WRAP_BRST),
        .I4(rd_data_sm_cs[3]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7__0 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT5 #(
    .INIT(32'hAAAAAAA9)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_8__0 
       (.I0(narrow_addr_int[4]),
        .I1(narrow_addr_int[3]),
        .I2(narrow_addr_int[1]),
        .I3(narrow_addr_int[0]),
        .I4(narrow_addr_int[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8__0 ));
LUT6 #(
    .INIT(64'hFFFFBF00BF00BF00)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_9 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(ar_active_re),
        .I4(curr_narrow_burst),
        .I5(bram_addr_inc),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_9 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1__0 ),
        .Q(narrow_addr_int[0]),
        .R(O1));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1__0 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0 ),
        .Q(narrow_addr_int[1]),
        .R(O1));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1__0 ),
        .Q(narrow_addr_int[2]),
        .R(O1));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_2__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1__0 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_1__0 ),
        .Q(narrow_addr_int[3]),
        .R(O1));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0 
       (.CI(1'b0),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0 }),
        .CYINIT(1'b0),
        .DI({\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_18__0 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_19__0 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_20__0 ,\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0 [0]}),
        .O(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [3:0]),
        .S({\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_22__0 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_23__0 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_24__0 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_25__0 }));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_1__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_2__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_3__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_1__0 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0 ));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_14__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_15__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9__0 ),
        .S(s_axi_arsize[2]));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_1__0 ),
        .Q(narrow_addr_int[4]),
        .R(O1));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_26__0 }));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_1__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_3__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_4__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_1__0 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0 ));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0 
       (.CI(1'b0),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0 }),
        .CYINIT(1'b1),
        .DI({1'b0,\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_41__0 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_42__0 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_43__0 }),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25__0_O_UNCONNECTED [3:0]),
        .S({\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_44__0 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_45__0 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_46__0 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_47__0 }));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2__0_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_40 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16__0 ),
        .CO({\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8],\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_40 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_40 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_40 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_51__0 }),
        .O(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [7:4]),
        .S({\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_52__0 ,\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0 [6:5],\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_55__0 }));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13__0 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5__0_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT5 #(
    .INIT(32'h00004000)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1__0 
       (.I0(narrow_addr_int[4]),
        .I1(\n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2__0 ),
        .I2(curr_narrow_burst),
        .I3(n_11_I_WRAP_BRST),
        .I4(rd_data_sm_cs[3]),
        .O(narrow_bram_addr_inc));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2__0 
       (.I0(narrow_addr_int[2]),
        .I1(narrow_addr_int[0]),
        .I2(narrow_addr_int[1]),
        .I3(narrow_addr_int[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2__0 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_bram_addr_inc),
        .Q(narrow_bram_addr_inc_d1),
        .R(O1));
LUT6 #(
    .INIT(64'hFFFF57FF00005700)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(p_0_out),
        .I4(ar_active_d1),
        .I5(narrow_burst_cnt_ld_reg[0]),
        .O(narrow_burst_cnt_ld_mod[0]));
LUT4 #(
    .INIT(16'hF704)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(narrow_burst_cnt_ld_reg[1]),
        .O(narrow_burst_cnt_ld_mod[1]));
LUT6 #(
    .INIT(64'hFFFF15FF00001500)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(p_0_out),
        .I4(ar_active_d1),
        .I5(narrow_burst_cnt_ld_reg[2]),
        .O(narrow_burst_cnt_ld_mod[2]));
LUT5 #(
    .INIT(32'hA2A2A2AE)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_1__0 
       (.I0(narrow_burst_cnt_ld_reg[3]),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[1]),
        .O(narrow_burst_cnt_ld_mod[3]));
LUT6 #(
    .INIT(64'hFFFF01FF00000100)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[4]_i_1__0 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(p_0_out),
        .I4(ar_active_d1),
        .I5(narrow_burst_cnt_ld_reg[4]),
        .O(narrow_burst_cnt_ld_mod[4]));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_mod[0]),
        .Q(narrow_burst_cnt_ld_reg[0]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_mod[1]),
        .Q(narrow_burst_cnt_ld_reg[1]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_mod[2]),
        .Q(narrow_burst_cnt_ld_reg[2]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_mod[3]),
        .Q(narrow_burst_cnt_ld_reg[3]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_mod[4]),
        .Q(narrow_burst_cnt_ld_reg[4]),
        .R(O1));
LUT6 #(
    .INIT(64'h8888888808088808)) 
     \GEN_NARROW_EN.curr_narrow_burst_i_1 
       (.I0(I9),
        .I1(s_axi_aresetn),
        .I2(n_0_axi_rlast_int_i_2),
        .I3(p_0_out),
        .I4(ar_active_d1),
        .I5(pend_rd_op),
        .O(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \GEN_NARROW_EN.curr_narrow_burst_i_3__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .O(O18));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_EN.curr_narrow_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_1 ),
        .Q(curr_narrow_burst),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 
       (.I0(rd_skid_buf[0]),
        .I1(bram_rddata_a[0]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 ),
        .Q(s_axi_rdata[0]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1 
       (.I0(rd_skid_buf[100]),
        .I1(bram_rddata_a[100]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[100].axi_rdata_int_reg[100] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1 ),
        .Q(s_axi_rdata[100]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1 
       (.I0(rd_skid_buf[101]),
        .I1(bram_rddata_a[101]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[101].axi_rdata_int_reg[101] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1 ),
        .Q(s_axi_rdata[101]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1 
       (.I0(rd_skid_buf[102]),
        .I1(bram_rddata_a[102]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[102].axi_rdata_int_reg[102] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1 ),
        .Q(s_axi_rdata[102]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1 
       (.I0(rd_skid_buf[103]),
        .I1(bram_rddata_a[103]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[103].axi_rdata_int_reg[103] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1 ),
        .Q(s_axi_rdata[103]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1 
       (.I0(rd_skid_buf[104]),
        .I1(bram_rddata_a[104]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[104].axi_rdata_int_reg[104] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1 ),
        .Q(s_axi_rdata[104]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1 
       (.I0(rd_skid_buf[105]),
        .I1(bram_rddata_a[105]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[105].axi_rdata_int_reg[105] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1 ),
        .Q(s_axi_rdata[105]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1 
       (.I0(rd_skid_buf[106]),
        .I1(bram_rddata_a[106]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[106].axi_rdata_int_reg[106] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1 ),
        .Q(s_axi_rdata[106]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1 
       (.I0(rd_skid_buf[107]),
        .I1(bram_rddata_a[107]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[107].axi_rdata_int_reg[107] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1 ),
        .Q(s_axi_rdata[107]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1 
       (.I0(rd_skid_buf[108]),
        .I1(bram_rddata_a[108]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[108].axi_rdata_int_reg[108] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1 ),
        .Q(s_axi_rdata[108]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1 
       (.I0(rd_skid_buf[109]),
        .I1(bram_rddata_a[109]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[109].axi_rdata_int_reg[109] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1 ),
        .Q(s_axi_rdata[109]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 
       (.I0(rd_skid_buf[10]),
        .I1(bram_rddata_a[10]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 ),
        .Q(s_axi_rdata[10]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1 
       (.I0(rd_skid_buf[110]),
        .I1(bram_rddata_a[110]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[110].axi_rdata_int_reg[110] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1 ),
        .Q(s_axi_rdata[110]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1 
       (.I0(rd_skid_buf[111]),
        .I1(bram_rddata_a[111]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[111].axi_rdata_int_reg[111] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1 ),
        .Q(s_axi_rdata[111]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1 
       (.I0(rd_skid_buf[112]),
        .I1(bram_rddata_a[112]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[112].axi_rdata_int_reg[112] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1 ),
        .Q(s_axi_rdata[112]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1 
       (.I0(rd_skid_buf[113]),
        .I1(bram_rddata_a[113]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[113].axi_rdata_int_reg[113] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1 ),
        .Q(s_axi_rdata[113]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1 
       (.I0(rd_skid_buf[114]),
        .I1(bram_rddata_a[114]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[114].axi_rdata_int_reg[114] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1 ),
        .Q(s_axi_rdata[114]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1 
       (.I0(rd_skid_buf[115]),
        .I1(bram_rddata_a[115]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[115].axi_rdata_int_reg[115] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1 ),
        .Q(s_axi_rdata[115]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1 
       (.I0(rd_skid_buf[116]),
        .I1(bram_rddata_a[116]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[116].axi_rdata_int_reg[116] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1 ),
        .Q(s_axi_rdata[116]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1 
       (.I0(rd_skid_buf[117]),
        .I1(bram_rddata_a[117]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[117].axi_rdata_int_reg[117] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1 ),
        .Q(s_axi_rdata[117]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1 
       (.I0(rd_skid_buf[118]),
        .I1(bram_rddata_a[118]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[118].axi_rdata_int_reg[118] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1 ),
        .Q(s_axi_rdata[118]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1 
       (.I0(rd_skid_buf[119]),
        .I1(bram_rddata_a[119]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[119].axi_rdata_int_reg[119] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1 ),
        .Q(s_axi_rdata[119]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 
       (.I0(rd_skid_buf[11]),
        .I1(bram_rddata_a[11]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 ),
        .Q(s_axi_rdata[11]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1 
       (.I0(rd_skid_buf[120]),
        .I1(bram_rddata_a[120]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[120].axi_rdata_int_reg[120] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1 ),
        .Q(s_axi_rdata[120]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1 
       (.I0(rd_skid_buf[121]),
        .I1(bram_rddata_a[121]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[121].axi_rdata_int_reg[121] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1 ),
        .Q(s_axi_rdata[121]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1 
       (.I0(rd_skid_buf[122]),
        .I1(bram_rddata_a[122]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[122].axi_rdata_int_reg[122] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1 ),
        .Q(s_axi_rdata[122]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1 
       (.I0(rd_skid_buf[123]),
        .I1(bram_rddata_a[123]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[123].axi_rdata_int_reg[123] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1 ),
        .Q(s_axi_rdata[123]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1 
       (.I0(rd_skid_buf[124]),
        .I1(bram_rddata_a[124]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[124].axi_rdata_int_reg[124] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1 ),
        .Q(s_axi_rdata[124]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1 
       (.I0(rd_skid_buf[125]),
        .I1(bram_rddata_a[125]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[125].axi_rdata_int_reg[125] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1 ),
        .Q(s_axi_rdata[125]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1 
       (.I0(rd_skid_buf[126]),
        .I1(bram_rddata_a[126]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[126].axi_rdata_int_reg[126] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1 ),
        .Q(s_axi_rdata[126]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_1 
       (.I0(rd_skid_buf[127]),
        .I1(bram_rddata_a[127]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[127].axi_rdata_int_reg[127] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_1 ),
        .Q(s_axi_rdata[127]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[128].axi_rdata_int[128]_i_1 
       (.I0(rd_skid_buf[128]),
        .I1(bram_rddata_a[128]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[128].axi_rdata_int[128]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[128].axi_rdata_int_reg[128] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[128].axi_rdata_int[128]_i_1 ),
        .Q(s_axi_rdata[128]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[129].axi_rdata_int[129]_i_1 
       (.I0(rd_skid_buf[129]),
        .I1(bram_rddata_a[129]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[129].axi_rdata_int[129]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[129].axi_rdata_int_reg[129] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[129].axi_rdata_int[129]_i_1 ),
        .Q(s_axi_rdata[129]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 
       (.I0(rd_skid_buf[12]),
        .I1(bram_rddata_a[12]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 ),
        .Q(s_axi_rdata[12]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[130].axi_rdata_int[130]_i_1 
       (.I0(rd_skid_buf[130]),
        .I1(bram_rddata_a[130]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[130].axi_rdata_int[130]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[130].axi_rdata_int_reg[130] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[130].axi_rdata_int[130]_i_1 ),
        .Q(s_axi_rdata[130]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[131].axi_rdata_int[131]_i_1 
       (.I0(rd_skid_buf[131]),
        .I1(bram_rddata_a[131]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[131].axi_rdata_int[131]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[131].axi_rdata_int_reg[131] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[131].axi_rdata_int[131]_i_1 ),
        .Q(s_axi_rdata[131]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair111" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[132].axi_rdata_int[132]_i_1 
       (.I0(rd_skid_buf[132]),
        .I1(bram_rddata_a[132]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[132].axi_rdata_int[132]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[132].axi_rdata_int_reg[132] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[132].axi_rdata_int[132]_i_1 ),
        .Q(s_axi_rdata[132]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair111" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[133].axi_rdata_int[133]_i_1 
       (.I0(rd_skid_buf[133]),
        .I1(bram_rddata_a[133]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[133].axi_rdata_int[133]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[133].axi_rdata_int_reg[133] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[133].axi_rdata_int[133]_i_1 ),
        .Q(s_axi_rdata[133]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair112" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[134].axi_rdata_int[134]_i_1 
       (.I0(rd_skid_buf[134]),
        .I1(bram_rddata_a[134]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[134].axi_rdata_int[134]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[134].axi_rdata_int_reg[134] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[134].axi_rdata_int[134]_i_1 ),
        .Q(s_axi_rdata[134]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair112" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[135].axi_rdata_int[135]_i_1 
       (.I0(rd_skid_buf[135]),
        .I1(bram_rddata_a[135]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[135].axi_rdata_int[135]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[135].axi_rdata_int_reg[135] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[135].axi_rdata_int[135]_i_1 ),
        .Q(s_axi_rdata[135]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair113" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[136].axi_rdata_int[136]_i_1 
       (.I0(rd_skid_buf[136]),
        .I1(bram_rddata_a[136]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[136].axi_rdata_int[136]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[136].axi_rdata_int_reg[136] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[136].axi_rdata_int[136]_i_1 ),
        .Q(s_axi_rdata[136]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair113" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[137].axi_rdata_int[137]_i_1 
       (.I0(rd_skid_buf[137]),
        .I1(bram_rddata_a[137]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[137].axi_rdata_int[137]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[137].axi_rdata_int_reg[137] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[137].axi_rdata_int[137]_i_1 ),
        .Q(s_axi_rdata[137]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair114" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[138].axi_rdata_int[138]_i_1 
       (.I0(rd_skid_buf[138]),
        .I1(bram_rddata_a[138]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[138].axi_rdata_int[138]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[138].axi_rdata_int_reg[138] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[138].axi_rdata_int[138]_i_1 ),
        .Q(s_axi_rdata[138]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair114" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[139].axi_rdata_int[139]_i_1 
       (.I0(rd_skid_buf[139]),
        .I1(bram_rddata_a[139]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[139].axi_rdata_int[139]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[139].axi_rdata_int_reg[139] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[139].axi_rdata_int[139]_i_1 ),
        .Q(s_axi_rdata[139]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 
       (.I0(rd_skid_buf[13]),
        .I1(bram_rddata_a[13]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 ),
        .Q(s_axi_rdata[13]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair115" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[140].axi_rdata_int[140]_i_1 
       (.I0(rd_skid_buf[140]),
        .I1(bram_rddata_a[140]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[140].axi_rdata_int[140]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[140].axi_rdata_int_reg[140] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[140].axi_rdata_int[140]_i_1 ),
        .Q(s_axi_rdata[140]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair115" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[141].axi_rdata_int[141]_i_1 
       (.I0(rd_skid_buf[141]),
        .I1(bram_rddata_a[141]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[141].axi_rdata_int[141]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[141].axi_rdata_int_reg[141] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[141].axi_rdata_int[141]_i_1 ),
        .Q(s_axi_rdata[141]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair116" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[142].axi_rdata_int[142]_i_1 
       (.I0(rd_skid_buf[142]),
        .I1(bram_rddata_a[142]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[142].axi_rdata_int[142]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[142].axi_rdata_int_reg[142] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[142].axi_rdata_int[142]_i_1 ),
        .Q(s_axi_rdata[142]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair116" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[143].axi_rdata_int[143]_i_1 
       (.I0(rd_skid_buf[143]),
        .I1(bram_rddata_a[143]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[143].axi_rdata_int[143]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[143].axi_rdata_int_reg[143] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[143].axi_rdata_int[143]_i_1 ),
        .Q(s_axi_rdata[143]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair117" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[144].axi_rdata_int[144]_i_1 
       (.I0(rd_skid_buf[144]),
        .I1(bram_rddata_a[144]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[144].axi_rdata_int[144]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[144].axi_rdata_int_reg[144] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[144].axi_rdata_int[144]_i_1 ),
        .Q(s_axi_rdata[144]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair117" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[145].axi_rdata_int[145]_i_1 
       (.I0(rd_skid_buf[145]),
        .I1(bram_rddata_a[145]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[145].axi_rdata_int[145]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[145].axi_rdata_int_reg[145] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[145].axi_rdata_int[145]_i_1 ),
        .Q(s_axi_rdata[145]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair118" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[146].axi_rdata_int[146]_i_1 
       (.I0(rd_skid_buf[146]),
        .I1(bram_rddata_a[146]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[146].axi_rdata_int[146]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[146].axi_rdata_int_reg[146] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[146].axi_rdata_int[146]_i_1 ),
        .Q(s_axi_rdata[146]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair118" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[147].axi_rdata_int[147]_i_1 
       (.I0(rd_skid_buf[147]),
        .I1(bram_rddata_a[147]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[147].axi_rdata_int[147]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[147].axi_rdata_int_reg[147] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[147].axi_rdata_int[147]_i_1 ),
        .Q(s_axi_rdata[147]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair119" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[148].axi_rdata_int[148]_i_1 
       (.I0(rd_skid_buf[148]),
        .I1(bram_rddata_a[148]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[148].axi_rdata_int[148]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[148].axi_rdata_int_reg[148] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[148].axi_rdata_int[148]_i_1 ),
        .Q(s_axi_rdata[148]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair119" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[149].axi_rdata_int[149]_i_1 
       (.I0(rd_skid_buf[149]),
        .I1(bram_rddata_a[149]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[149].axi_rdata_int[149]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[149].axi_rdata_int_reg[149] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[149].axi_rdata_int[149]_i_1 ),
        .Q(s_axi_rdata[149]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 
       (.I0(rd_skid_buf[14]),
        .I1(bram_rddata_a[14]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 ),
        .Q(s_axi_rdata[14]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair120" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[150].axi_rdata_int[150]_i_1 
       (.I0(rd_skid_buf[150]),
        .I1(bram_rddata_a[150]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[150].axi_rdata_int[150]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[150].axi_rdata_int_reg[150] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[150].axi_rdata_int[150]_i_1 ),
        .Q(s_axi_rdata[150]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair120" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[151].axi_rdata_int[151]_i_1 
       (.I0(rd_skid_buf[151]),
        .I1(bram_rddata_a[151]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[151].axi_rdata_int[151]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[151].axi_rdata_int_reg[151] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[151].axi_rdata_int[151]_i_1 ),
        .Q(s_axi_rdata[151]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair121" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[152].axi_rdata_int[152]_i_1 
       (.I0(rd_skid_buf[152]),
        .I1(bram_rddata_a[152]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[152].axi_rdata_int[152]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[152].axi_rdata_int_reg[152] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[152].axi_rdata_int[152]_i_1 ),
        .Q(s_axi_rdata[152]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair121" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[153].axi_rdata_int[153]_i_1 
       (.I0(rd_skid_buf[153]),
        .I1(bram_rddata_a[153]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[153].axi_rdata_int[153]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[153].axi_rdata_int_reg[153] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[153].axi_rdata_int[153]_i_1 ),
        .Q(s_axi_rdata[153]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair122" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[154].axi_rdata_int[154]_i_1 
       (.I0(rd_skid_buf[154]),
        .I1(bram_rddata_a[154]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[154].axi_rdata_int[154]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[154].axi_rdata_int_reg[154] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[154].axi_rdata_int[154]_i_1 ),
        .Q(s_axi_rdata[154]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair122" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[155].axi_rdata_int[155]_i_1 
       (.I0(rd_skid_buf[155]),
        .I1(bram_rddata_a[155]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[155].axi_rdata_int[155]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[155].axi_rdata_int_reg[155] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[155].axi_rdata_int[155]_i_1 ),
        .Q(s_axi_rdata[155]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair123" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[156].axi_rdata_int[156]_i_1 
       (.I0(rd_skid_buf[156]),
        .I1(bram_rddata_a[156]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[156].axi_rdata_int[156]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[156].axi_rdata_int_reg[156] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[156].axi_rdata_int[156]_i_1 ),
        .Q(s_axi_rdata[156]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair123" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[157].axi_rdata_int[157]_i_1 
       (.I0(rd_skid_buf[157]),
        .I1(bram_rddata_a[157]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[157].axi_rdata_int[157]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[157].axi_rdata_int_reg[157] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[157].axi_rdata_int[157]_i_1 ),
        .Q(s_axi_rdata[157]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair124" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[158].axi_rdata_int[158]_i_1 
       (.I0(rd_skid_buf[158]),
        .I1(bram_rddata_a[158]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[158].axi_rdata_int[158]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[158].axi_rdata_int_reg[158] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[158].axi_rdata_int[158]_i_1 ),
        .Q(s_axi_rdata[158]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair124" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[159].axi_rdata_int[159]_i_1 
       (.I0(rd_skid_buf[159]),
        .I1(bram_rddata_a[159]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[159].axi_rdata_int[159]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[159].axi_rdata_int_reg[159] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[159].axi_rdata_int[159]_i_1 ),
        .Q(s_axi_rdata[159]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 
       (.I0(rd_skid_buf[15]),
        .I1(bram_rddata_a[15]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 ),
        .Q(s_axi_rdata[15]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair125" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[160].axi_rdata_int[160]_i_1 
       (.I0(rd_skid_buf[160]),
        .I1(bram_rddata_a[160]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[160].axi_rdata_int[160]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[160].axi_rdata_int_reg[160] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[160].axi_rdata_int[160]_i_1 ),
        .Q(s_axi_rdata[160]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair125" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[161].axi_rdata_int[161]_i_1 
       (.I0(rd_skid_buf[161]),
        .I1(bram_rddata_a[161]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[161].axi_rdata_int[161]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[161].axi_rdata_int_reg[161] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[161].axi_rdata_int[161]_i_1 ),
        .Q(s_axi_rdata[161]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair126" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[162].axi_rdata_int[162]_i_1 
       (.I0(rd_skid_buf[162]),
        .I1(bram_rddata_a[162]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[162].axi_rdata_int[162]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[162].axi_rdata_int_reg[162] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[162].axi_rdata_int[162]_i_1 ),
        .Q(s_axi_rdata[162]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair126" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[163].axi_rdata_int[163]_i_1 
       (.I0(rd_skid_buf[163]),
        .I1(bram_rddata_a[163]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[163].axi_rdata_int[163]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[163].axi_rdata_int_reg[163] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[163].axi_rdata_int[163]_i_1 ),
        .Q(s_axi_rdata[163]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair127" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[164].axi_rdata_int[164]_i_1 
       (.I0(rd_skid_buf[164]),
        .I1(bram_rddata_a[164]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[164].axi_rdata_int[164]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[164].axi_rdata_int_reg[164] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[164].axi_rdata_int[164]_i_1 ),
        .Q(s_axi_rdata[164]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair127" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[165].axi_rdata_int[165]_i_1 
       (.I0(rd_skid_buf[165]),
        .I1(bram_rddata_a[165]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[165].axi_rdata_int[165]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[165].axi_rdata_int_reg[165] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[165].axi_rdata_int[165]_i_1 ),
        .Q(s_axi_rdata[165]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair128" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[166].axi_rdata_int[166]_i_1 
       (.I0(rd_skid_buf[166]),
        .I1(bram_rddata_a[166]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[166].axi_rdata_int[166]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[166].axi_rdata_int_reg[166] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[166].axi_rdata_int[166]_i_1 ),
        .Q(s_axi_rdata[166]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair128" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[167].axi_rdata_int[167]_i_1 
       (.I0(rd_skid_buf[167]),
        .I1(bram_rddata_a[167]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[167].axi_rdata_int[167]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[167].axi_rdata_int_reg[167] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[167].axi_rdata_int[167]_i_1 ),
        .Q(s_axi_rdata[167]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair129" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[168].axi_rdata_int[168]_i_1 
       (.I0(rd_skid_buf[168]),
        .I1(bram_rddata_a[168]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[168].axi_rdata_int[168]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[168].axi_rdata_int_reg[168] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[168].axi_rdata_int[168]_i_1 ),
        .Q(s_axi_rdata[168]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair129" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[169].axi_rdata_int[169]_i_1 
       (.I0(rd_skid_buf[169]),
        .I1(bram_rddata_a[169]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[169].axi_rdata_int[169]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[169].axi_rdata_int_reg[169] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[169].axi_rdata_int[169]_i_1 ),
        .Q(s_axi_rdata[169]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 
       (.I0(rd_skid_buf[16]),
        .I1(bram_rddata_a[16]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 ),
        .Q(s_axi_rdata[16]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair130" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[170].axi_rdata_int[170]_i_1 
       (.I0(rd_skid_buf[170]),
        .I1(bram_rddata_a[170]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[170].axi_rdata_int[170]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[170].axi_rdata_int_reg[170] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[170].axi_rdata_int[170]_i_1 ),
        .Q(s_axi_rdata[170]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair130" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[171].axi_rdata_int[171]_i_1 
       (.I0(rd_skid_buf[171]),
        .I1(bram_rddata_a[171]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[171].axi_rdata_int[171]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[171].axi_rdata_int_reg[171] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[171].axi_rdata_int[171]_i_1 ),
        .Q(s_axi_rdata[171]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair131" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[172].axi_rdata_int[172]_i_1 
       (.I0(rd_skid_buf[172]),
        .I1(bram_rddata_a[172]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[172].axi_rdata_int[172]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[172].axi_rdata_int_reg[172] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[172].axi_rdata_int[172]_i_1 ),
        .Q(s_axi_rdata[172]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair131" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[173].axi_rdata_int[173]_i_1 
       (.I0(rd_skid_buf[173]),
        .I1(bram_rddata_a[173]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[173].axi_rdata_int[173]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[173].axi_rdata_int_reg[173] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[173].axi_rdata_int[173]_i_1 ),
        .Q(s_axi_rdata[173]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair132" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[174].axi_rdata_int[174]_i_1 
       (.I0(rd_skid_buf[174]),
        .I1(bram_rddata_a[174]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[174].axi_rdata_int[174]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[174].axi_rdata_int_reg[174] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[174].axi_rdata_int[174]_i_1 ),
        .Q(s_axi_rdata[174]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair132" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[175].axi_rdata_int[175]_i_1 
       (.I0(rd_skid_buf[175]),
        .I1(bram_rddata_a[175]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[175].axi_rdata_int[175]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[175].axi_rdata_int_reg[175] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[175].axi_rdata_int[175]_i_1 ),
        .Q(s_axi_rdata[175]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair133" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[176].axi_rdata_int[176]_i_1 
       (.I0(rd_skid_buf[176]),
        .I1(bram_rddata_a[176]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[176].axi_rdata_int[176]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[176].axi_rdata_int_reg[176] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[176].axi_rdata_int[176]_i_1 ),
        .Q(s_axi_rdata[176]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair133" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[177].axi_rdata_int[177]_i_1 
       (.I0(rd_skid_buf[177]),
        .I1(bram_rddata_a[177]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[177].axi_rdata_int[177]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[177].axi_rdata_int_reg[177] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[177].axi_rdata_int[177]_i_1 ),
        .Q(s_axi_rdata[177]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair134" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[178].axi_rdata_int[178]_i_1 
       (.I0(rd_skid_buf[178]),
        .I1(bram_rddata_a[178]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[178].axi_rdata_int[178]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[178].axi_rdata_int_reg[178] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[178].axi_rdata_int[178]_i_1 ),
        .Q(s_axi_rdata[178]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair134" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[179].axi_rdata_int[179]_i_1 
       (.I0(rd_skid_buf[179]),
        .I1(bram_rddata_a[179]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[179].axi_rdata_int[179]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[179].axi_rdata_int_reg[179] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[179].axi_rdata_int[179]_i_1 ),
        .Q(s_axi_rdata[179]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 
       (.I0(rd_skid_buf[17]),
        .I1(bram_rddata_a[17]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 ),
        .Q(s_axi_rdata[17]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair135" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[180].axi_rdata_int[180]_i_1 
       (.I0(rd_skid_buf[180]),
        .I1(bram_rddata_a[180]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[180].axi_rdata_int[180]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[180].axi_rdata_int_reg[180] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[180].axi_rdata_int[180]_i_1 ),
        .Q(s_axi_rdata[180]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair135" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[181].axi_rdata_int[181]_i_1 
       (.I0(rd_skid_buf[181]),
        .I1(bram_rddata_a[181]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[181].axi_rdata_int[181]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[181].axi_rdata_int_reg[181] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[181].axi_rdata_int[181]_i_1 ),
        .Q(s_axi_rdata[181]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair136" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[182].axi_rdata_int[182]_i_1 
       (.I0(rd_skid_buf[182]),
        .I1(bram_rddata_a[182]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[182].axi_rdata_int[182]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[182].axi_rdata_int_reg[182] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[182].axi_rdata_int[182]_i_1 ),
        .Q(s_axi_rdata[182]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair136" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[183].axi_rdata_int[183]_i_1 
       (.I0(rd_skid_buf[183]),
        .I1(bram_rddata_a[183]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[183].axi_rdata_int[183]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[183].axi_rdata_int_reg[183] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[183].axi_rdata_int[183]_i_1 ),
        .Q(s_axi_rdata[183]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair137" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[184].axi_rdata_int[184]_i_1 
       (.I0(rd_skid_buf[184]),
        .I1(bram_rddata_a[184]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[184].axi_rdata_int[184]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[184].axi_rdata_int_reg[184] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[184].axi_rdata_int[184]_i_1 ),
        .Q(s_axi_rdata[184]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair137" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[185].axi_rdata_int[185]_i_1 
       (.I0(rd_skid_buf[185]),
        .I1(bram_rddata_a[185]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[185].axi_rdata_int[185]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[185].axi_rdata_int_reg[185] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[185].axi_rdata_int[185]_i_1 ),
        .Q(s_axi_rdata[185]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair138" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[186].axi_rdata_int[186]_i_1 
       (.I0(rd_skid_buf[186]),
        .I1(bram_rddata_a[186]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[186].axi_rdata_int[186]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[186].axi_rdata_int_reg[186] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[186].axi_rdata_int[186]_i_1 ),
        .Q(s_axi_rdata[186]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair138" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[187].axi_rdata_int[187]_i_1 
       (.I0(rd_skid_buf[187]),
        .I1(bram_rddata_a[187]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[187].axi_rdata_int[187]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[187].axi_rdata_int_reg[187] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[187].axi_rdata_int[187]_i_1 ),
        .Q(s_axi_rdata[187]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair139" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[188].axi_rdata_int[188]_i_1 
       (.I0(rd_skid_buf[188]),
        .I1(bram_rddata_a[188]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[188].axi_rdata_int[188]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[188].axi_rdata_int_reg[188] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[188].axi_rdata_int[188]_i_1 ),
        .Q(s_axi_rdata[188]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair139" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[189].axi_rdata_int[189]_i_1 
       (.I0(rd_skid_buf[189]),
        .I1(bram_rddata_a[189]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[189].axi_rdata_int[189]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[189].axi_rdata_int_reg[189] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[189].axi_rdata_int[189]_i_1 ),
        .Q(s_axi_rdata[189]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 
       (.I0(rd_skid_buf[18]),
        .I1(bram_rddata_a[18]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 ),
        .Q(s_axi_rdata[18]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair140" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[190].axi_rdata_int[190]_i_1 
       (.I0(rd_skid_buf[190]),
        .I1(bram_rddata_a[190]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[190].axi_rdata_int[190]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[190].axi_rdata_int_reg[190] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[190].axi_rdata_int[190]_i_1 ),
        .Q(s_axi_rdata[190]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair140" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[191].axi_rdata_int[191]_i_1 
       (.I0(rd_skid_buf[191]),
        .I1(bram_rddata_a[191]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[191].axi_rdata_int[191]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[191].axi_rdata_int_reg[191] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[191].axi_rdata_int[191]_i_1 ),
        .Q(s_axi_rdata[191]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair141" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[192].axi_rdata_int[192]_i_1 
       (.I0(rd_skid_buf[192]),
        .I1(bram_rddata_a[192]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[192].axi_rdata_int[192]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[192].axi_rdata_int_reg[192] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[192].axi_rdata_int[192]_i_1 ),
        .Q(s_axi_rdata[192]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair141" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[193].axi_rdata_int[193]_i_1 
       (.I0(rd_skid_buf[193]),
        .I1(bram_rddata_a[193]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[193].axi_rdata_int[193]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[193].axi_rdata_int_reg[193] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[193].axi_rdata_int[193]_i_1 ),
        .Q(s_axi_rdata[193]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair142" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[194].axi_rdata_int[194]_i_1 
       (.I0(rd_skid_buf[194]),
        .I1(bram_rddata_a[194]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[194].axi_rdata_int[194]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[194].axi_rdata_int_reg[194] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[194].axi_rdata_int[194]_i_1 ),
        .Q(s_axi_rdata[194]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair142" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[195].axi_rdata_int[195]_i_1 
       (.I0(rd_skid_buf[195]),
        .I1(bram_rddata_a[195]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[195].axi_rdata_int[195]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[195].axi_rdata_int_reg[195] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[195].axi_rdata_int[195]_i_1 ),
        .Q(s_axi_rdata[195]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair143" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[196].axi_rdata_int[196]_i_1 
       (.I0(rd_skid_buf[196]),
        .I1(bram_rddata_a[196]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[196].axi_rdata_int[196]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[196].axi_rdata_int_reg[196] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[196].axi_rdata_int[196]_i_1 ),
        .Q(s_axi_rdata[196]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair143" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[197].axi_rdata_int[197]_i_1 
       (.I0(rd_skid_buf[197]),
        .I1(bram_rddata_a[197]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[197].axi_rdata_int[197]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[197].axi_rdata_int_reg[197] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[197].axi_rdata_int[197]_i_1 ),
        .Q(s_axi_rdata[197]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair144" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[198].axi_rdata_int[198]_i_1 
       (.I0(rd_skid_buf[198]),
        .I1(bram_rddata_a[198]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[198].axi_rdata_int[198]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[198].axi_rdata_int_reg[198] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[198].axi_rdata_int[198]_i_1 ),
        .Q(s_axi_rdata[198]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair144" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[199].axi_rdata_int[199]_i_1 
       (.I0(rd_skid_buf[199]),
        .I1(bram_rddata_a[199]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[199].axi_rdata_int[199]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[199].axi_rdata_int_reg[199] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[199].axi_rdata_int[199]_i_1 ),
        .Q(s_axi_rdata[199]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 
       (.I0(rd_skid_buf[19]),
        .I1(bram_rddata_a[19]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 ),
        .Q(s_axi_rdata[19]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 
       (.I0(rd_skid_buf[1]),
        .I1(bram_rddata_a[1]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 ),
        .Q(s_axi_rdata[1]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair145" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[200].axi_rdata_int[200]_i_1 
       (.I0(rd_skid_buf[200]),
        .I1(bram_rddata_a[200]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[200].axi_rdata_int[200]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[200].axi_rdata_int_reg[200] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[200].axi_rdata_int[200]_i_1 ),
        .Q(s_axi_rdata[200]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair145" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[201].axi_rdata_int[201]_i_1 
       (.I0(rd_skid_buf[201]),
        .I1(bram_rddata_a[201]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[201].axi_rdata_int[201]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[201].axi_rdata_int_reg[201] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[201].axi_rdata_int[201]_i_1 ),
        .Q(s_axi_rdata[201]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair146" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[202].axi_rdata_int[202]_i_1 
       (.I0(rd_skid_buf[202]),
        .I1(bram_rddata_a[202]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[202].axi_rdata_int[202]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[202].axi_rdata_int_reg[202] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[202].axi_rdata_int[202]_i_1 ),
        .Q(s_axi_rdata[202]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair146" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[203].axi_rdata_int[203]_i_1 
       (.I0(rd_skid_buf[203]),
        .I1(bram_rddata_a[203]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[203].axi_rdata_int[203]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[203].axi_rdata_int_reg[203] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[203].axi_rdata_int[203]_i_1 ),
        .Q(s_axi_rdata[203]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair147" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[204].axi_rdata_int[204]_i_1 
       (.I0(rd_skid_buf[204]),
        .I1(bram_rddata_a[204]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[204].axi_rdata_int[204]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[204].axi_rdata_int_reg[204] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[204].axi_rdata_int[204]_i_1 ),
        .Q(s_axi_rdata[204]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair147" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[205].axi_rdata_int[205]_i_1 
       (.I0(rd_skid_buf[205]),
        .I1(bram_rddata_a[205]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[205].axi_rdata_int[205]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[205].axi_rdata_int_reg[205] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[205].axi_rdata_int[205]_i_1 ),
        .Q(s_axi_rdata[205]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair148" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[206].axi_rdata_int[206]_i_1 
       (.I0(rd_skid_buf[206]),
        .I1(bram_rddata_a[206]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[206].axi_rdata_int[206]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[206].axi_rdata_int_reg[206] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[206].axi_rdata_int[206]_i_1 ),
        .Q(s_axi_rdata[206]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair148" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[207].axi_rdata_int[207]_i_1 
       (.I0(rd_skid_buf[207]),
        .I1(bram_rddata_a[207]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[207].axi_rdata_int[207]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[207].axi_rdata_int_reg[207] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[207].axi_rdata_int[207]_i_1 ),
        .Q(s_axi_rdata[207]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair149" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[208].axi_rdata_int[208]_i_1 
       (.I0(rd_skid_buf[208]),
        .I1(bram_rddata_a[208]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[208].axi_rdata_int[208]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[208].axi_rdata_int_reg[208] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[208].axi_rdata_int[208]_i_1 ),
        .Q(s_axi_rdata[208]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair149" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[209].axi_rdata_int[209]_i_1 
       (.I0(rd_skid_buf[209]),
        .I1(bram_rddata_a[209]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[209].axi_rdata_int[209]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[209].axi_rdata_int_reg[209] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[209].axi_rdata_int[209]_i_1 ),
        .Q(s_axi_rdata[209]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 
       (.I0(rd_skid_buf[20]),
        .I1(bram_rddata_a[20]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 ),
        .Q(s_axi_rdata[20]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair150" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[210].axi_rdata_int[210]_i_1 
       (.I0(rd_skid_buf[210]),
        .I1(bram_rddata_a[210]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[210].axi_rdata_int[210]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[210].axi_rdata_int_reg[210] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[210].axi_rdata_int[210]_i_1 ),
        .Q(s_axi_rdata[210]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair150" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[211].axi_rdata_int[211]_i_1 
       (.I0(rd_skid_buf[211]),
        .I1(bram_rddata_a[211]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[211].axi_rdata_int[211]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[211].axi_rdata_int_reg[211] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[211].axi_rdata_int[211]_i_1 ),
        .Q(s_axi_rdata[211]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair151" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[212].axi_rdata_int[212]_i_1 
       (.I0(rd_skid_buf[212]),
        .I1(bram_rddata_a[212]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[212].axi_rdata_int[212]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[212].axi_rdata_int_reg[212] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[212].axi_rdata_int[212]_i_1 ),
        .Q(s_axi_rdata[212]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair151" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[213].axi_rdata_int[213]_i_1 
       (.I0(rd_skid_buf[213]),
        .I1(bram_rddata_a[213]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[213].axi_rdata_int[213]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[213].axi_rdata_int_reg[213] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[213].axi_rdata_int[213]_i_1 ),
        .Q(s_axi_rdata[213]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair152" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[214].axi_rdata_int[214]_i_1 
       (.I0(rd_skid_buf[214]),
        .I1(bram_rddata_a[214]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[214].axi_rdata_int[214]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[214].axi_rdata_int_reg[214] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[214].axi_rdata_int[214]_i_1 ),
        .Q(s_axi_rdata[214]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair152" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[215].axi_rdata_int[215]_i_1 
       (.I0(rd_skid_buf[215]),
        .I1(bram_rddata_a[215]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[215].axi_rdata_int[215]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[215].axi_rdata_int_reg[215] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[215].axi_rdata_int[215]_i_1 ),
        .Q(s_axi_rdata[215]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair153" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[216].axi_rdata_int[216]_i_1 
       (.I0(rd_skid_buf[216]),
        .I1(bram_rddata_a[216]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[216].axi_rdata_int[216]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[216].axi_rdata_int_reg[216] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[216].axi_rdata_int[216]_i_1 ),
        .Q(s_axi_rdata[216]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair153" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[217].axi_rdata_int[217]_i_1 
       (.I0(rd_skid_buf[217]),
        .I1(bram_rddata_a[217]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[217].axi_rdata_int[217]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[217].axi_rdata_int_reg[217] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[217].axi_rdata_int[217]_i_1 ),
        .Q(s_axi_rdata[217]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair154" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[218].axi_rdata_int[218]_i_1 
       (.I0(rd_skid_buf[218]),
        .I1(bram_rddata_a[218]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[218].axi_rdata_int[218]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[218].axi_rdata_int_reg[218] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[218].axi_rdata_int[218]_i_1 ),
        .Q(s_axi_rdata[218]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair154" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[219].axi_rdata_int[219]_i_1 
       (.I0(rd_skid_buf[219]),
        .I1(bram_rddata_a[219]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[219].axi_rdata_int[219]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[219].axi_rdata_int_reg[219] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[219].axi_rdata_int[219]_i_1 ),
        .Q(s_axi_rdata[219]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 
       (.I0(rd_skid_buf[21]),
        .I1(bram_rddata_a[21]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 ),
        .Q(s_axi_rdata[21]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair155" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[220].axi_rdata_int[220]_i_1 
       (.I0(rd_skid_buf[220]),
        .I1(bram_rddata_a[220]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[220].axi_rdata_int[220]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[220].axi_rdata_int_reg[220] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[220].axi_rdata_int[220]_i_1 ),
        .Q(s_axi_rdata[220]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair155" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[221].axi_rdata_int[221]_i_1 
       (.I0(rd_skid_buf[221]),
        .I1(bram_rddata_a[221]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[221].axi_rdata_int[221]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[221].axi_rdata_int_reg[221] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[221].axi_rdata_int[221]_i_1 ),
        .Q(s_axi_rdata[221]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair156" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[222].axi_rdata_int[222]_i_1 
       (.I0(rd_skid_buf[222]),
        .I1(bram_rddata_a[222]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[222].axi_rdata_int[222]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[222].axi_rdata_int_reg[222] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[222].axi_rdata_int[222]_i_1 ),
        .Q(s_axi_rdata[222]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair156" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[223].axi_rdata_int[223]_i_1 
       (.I0(rd_skid_buf[223]),
        .I1(bram_rddata_a[223]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[223].axi_rdata_int[223]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[223].axi_rdata_int_reg[223] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[223].axi_rdata_int[223]_i_1 ),
        .Q(s_axi_rdata[223]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair157" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[224].axi_rdata_int[224]_i_1 
       (.I0(rd_skid_buf[224]),
        .I1(bram_rddata_a[224]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[224].axi_rdata_int[224]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[224].axi_rdata_int_reg[224] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[224].axi_rdata_int[224]_i_1 ),
        .Q(s_axi_rdata[224]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair157" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[225].axi_rdata_int[225]_i_1 
       (.I0(rd_skid_buf[225]),
        .I1(bram_rddata_a[225]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[225].axi_rdata_int[225]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[225].axi_rdata_int_reg[225] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[225].axi_rdata_int[225]_i_1 ),
        .Q(s_axi_rdata[225]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair158" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[226].axi_rdata_int[226]_i_1 
       (.I0(rd_skid_buf[226]),
        .I1(bram_rddata_a[226]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[226].axi_rdata_int[226]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[226].axi_rdata_int_reg[226] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[226].axi_rdata_int[226]_i_1 ),
        .Q(s_axi_rdata[226]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair158" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[227].axi_rdata_int[227]_i_1 
       (.I0(rd_skid_buf[227]),
        .I1(bram_rddata_a[227]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[227].axi_rdata_int[227]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[227].axi_rdata_int_reg[227] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[227].axi_rdata_int[227]_i_1 ),
        .Q(s_axi_rdata[227]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair159" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[228].axi_rdata_int[228]_i_1 
       (.I0(rd_skid_buf[228]),
        .I1(bram_rddata_a[228]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[228].axi_rdata_int[228]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[228].axi_rdata_int_reg[228] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[228].axi_rdata_int[228]_i_1 ),
        .Q(s_axi_rdata[228]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair159" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[229].axi_rdata_int[229]_i_1 
       (.I0(rd_skid_buf[229]),
        .I1(bram_rddata_a[229]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[229].axi_rdata_int[229]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[229].axi_rdata_int_reg[229] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[229].axi_rdata_int[229]_i_1 ),
        .Q(s_axi_rdata[229]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 
       (.I0(rd_skid_buf[22]),
        .I1(bram_rddata_a[22]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 ),
        .Q(s_axi_rdata[22]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair160" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[230].axi_rdata_int[230]_i_1 
       (.I0(rd_skid_buf[230]),
        .I1(bram_rddata_a[230]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[230].axi_rdata_int[230]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[230].axi_rdata_int_reg[230] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[230].axi_rdata_int[230]_i_1 ),
        .Q(s_axi_rdata[230]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair160" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[231].axi_rdata_int[231]_i_1 
       (.I0(rd_skid_buf[231]),
        .I1(bram_rddata_a[231]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[231].axi_rdata_int[231]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[231].axi_rdata_int_reg[231] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[231].axi_rdata_int[231]_i_1 ),
        .Q(s_axi_rdata[231]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair161" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[232].axi_rdata_int[232]_i_1 
       (.I0(rd_skid_buf[232]),
        .I1(bram_rddata_a[232]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[232].axi_rdata_int[232]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[232].axi_rdata_int_reg[232] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[232].axi_rdata_int[232]_i_1 ),
        .Q(s_axi_rdata[232]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair161" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[233].axi_rdata_int[233]_i_1 
       (.I0(rd_skid_buf[233]),
        .I1(bram_rddata_a[233]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[233].axi_rdata_int[233]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[233].axi_rdata_int_reg[233] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[233].axi_rdata_int[233]_i_1 ),
        .Q(s_axi_rdata[233]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair162" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[234].axi_rdata_int[234]_i_1 
       (.I0(rd_skid_buf[234]),
        .I1(bram_rddata_a[234]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[234].axi_rdata_int[234]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[234].axi_rdata_int_reg[234] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[234].axi_rdata_int[234]_i_1 ),
        .Q(s_axi_rdata[234]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair162" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[235].axi_rdata_int[235]_i_1 
       (.I0(rd_skid_buf[235]),
        .I1(bram_rddata_a[235]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[235].axi_rdata_int[235]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[235].axi_rdata_int_reg[235] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[235].axi_rdata_int[235]_i_1 ),
        .Q(s_axi_rdata[235]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair163" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[236].axi_rdata_int[236]_i_1 
       (.I0(rd_skid_buf[236]),
        .I1(bram_rddata_a[236]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[236].axi_rdata_int[236]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[236].axi_rdata_int_reg[236] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[236].axi_rdata_int[236]_i_1 ),
        .Q(s_axi_rdata[236]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair163" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[237].axi_rdata_int[237]_i_1 
       (.I0(rd_skid_buf[237]),
        .I1(bram_rddata_a[237]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[237].axi_rdata_int[237]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[237].axi_rdata_int_reg[237] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[237].axi_rdata_int[237]_i_1 ),
        .Q(s_axi_rdata[237]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair164" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[238].axi_rdata_int[238]_i_1 
       (.I0(rd_skid_buf[238]),
        .I1(bram_rddata_a[238]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[238].axi_rdata_int[238]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[238].axi_rdata_int_reg[238] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[238].axi_rdata_int[238]_i_1 ),
        .Q(s_axi_rdata[238]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair164" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[239].axi_rdata_int[239]_i_1 
       (.I0(rd_skid_buf[239]),
        .I1(bram_rddata_a[239]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[239].axi_rdata_int[239]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[239].axi_rdata_int_reg[239] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[239].axi_rdata_int[239]_i_1 ),
        .Q(s_axi_rdata[239]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 
       (.I0(rd_skid_buf[23]),
        .I1(bram_rddata_a[23]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 ),
        .Q(s_axi_rdata[23]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair165" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[240].axi_rdata_int[240]_i_1 
       (.I0(rd_skid_buf[240]),
        .I1(bram_rddata_a[240]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[240].axi_rdata_int[240]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[240].axi_rdata_int_reg[240] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[240].axi_rdata_int[240]_i_1 ),
        .Q(s_axi_rdata[240]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair165" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[241].axi_rdata_int[241]_i_1 
       (.I0(rd_skid_buf[241]),
        .I1(bram_rddata_a[241]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[241].axi_rdata_int[241]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[241].axi_rdata_int_reg[241] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[241].axi_rdata_int[241]_i_1 ),
        .Q(s_axi_rdata[241]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair166" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[242].axi_rdata_int[242]_i_1 
       (.I0(rd_skid_buf[242]),
        .I1(bram_rddata_a[242]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[242].axi_rdata_int[242]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[242].axi_rdata_int_reg[242] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[242].axi_rdata_int[242]_i_1 ),
        .Q(s_axi_rdata[242]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair166" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[243].axi_rdata_int[243]_i_1 
       (.I0(rd_skid_buf[243]),
        .I1(bram_rddata_a[243]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[243].axi_rdata_int[243]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[243].axi_rdata_int_reg[243] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[243].axi_rdata_int[243]_i_1 ),
        .Q(s_axi_rdata[243]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair167" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[244].axi_rdata_int[244]_i_1 
       (.I0(rd_skid_buf[244]),
        .I1(bram_rddata_a[244]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[244].axi_rdata_int[244]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[244].axi_rdata_int_reg[244] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[244].axi_rdata_int[244]_i_1 ),
        .Q(s_axi_rdata[244]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair167" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[245].axi_rdata_int[245]_i_1 
       (.I0(rd_skid_buf[245]),
        .I1(bram_rddata_a[245]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[245].axi_rdata_int[245]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[245].axi_rdata_int_reg[245] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[245].axi_rdata_int[245]_i_1 ),
        .Q(s_axi_rdata[245]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair168" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[246].axi_rdata_int[246]_i_1 
       (.I0(rd_skid_buf[246]),
        .I1(bram_rddata_a[246]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[246].axi_rdata_int[246]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[246].axi_rdata_int_reg[246] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[246].axi_rdata_int[246]_i_1 ),
        .Q(s_axi_rdata[246]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair168" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[247].axi_rdata_int[247]_i_1 
       (.I0(rd_skid_buf[247]),
        .I1(bram_rddata_a[247]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[247].axi_rdata_int[247]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[247].axi_rdata_int_reg[247] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[247].axi_rdata_int[247]_i_1 ),
        .Q(s_axi_rdata[247]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair169" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[248].axi_rdata_int[248]_i_1 
       (.I0(rd_skid_buf[248]),
        .I1(bram_rddata_a[248]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[248].axi_rdata_int[248]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[248].axi_rdata_int_reg[248] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[248].axi_rdata_int[248]_i_1 ),
        .Q(s_axi_rdata[248]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair169" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[249].axi_rdata_int[249]_i_1 
       (.I0(rd_skid_buf[249]),
        .I1(bram_rddata_a[249]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[249].axi_rdata_int[249]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[249].axi_rdata_int_reg[249] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[249].axi_rdata_int[249]_i_1 ),
        .Q(s_axi_rdata[249]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 
       (.I0(rd_skid_buf[24]),
        .I1(bram_rddata_a[24]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 ),
        .Q(s_axi_rdata[24]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair170" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[250].axi_rdata_int[250]_i_1 
       (.I0(rd_skid_buf[250]),
        .I1(bram_rddata_a[250]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[250].axi_rdata_int[250]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[250].axi_rdata_int_reg[250] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[250].axi_rdata_int[250]_i_1 ),
        .Q(s_axi_rdata[250]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair170" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[251].axi_rdata_int[251]_i_1 
       (.I0(rd_skid_buf[251]),
        .I1(bram_rddata_a[251]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[251].axi_rdata_int[251]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[251].axi_rdata_int_reg[251] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[251].axi_rdata_int[251]_i_1 ),
        .Q(s_axi_rdata[251]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair171" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[252].axi_rdata_int[252]_i_1 
       (.I0(rd_skid_buf[252]),
        .I1(bram_rddata_a[252]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[252].axi_rdata_int[252]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[252].axi_rdata_int_reg[252] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[252].axi_rdata_int[252]_i_1 ),
        .Q(s_axi_rdata[252]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair171" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[253].axi_rdata_int[253]_i_1 
       (.I0(rd_skid_buf[253]),
        .I1(bram_rddata_a[253]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[253].axi_rdata_int[253]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[253].axi_rdata_int_reg[253] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[253].axi_rdata_int[253]_i_1 ),
        .Q(s_axi_rdata[253]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair172" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[254].axi_rdata_int[254]_i_1 
       (.I0(rd_skid_buf[254]),
        .I1(bram_rddata_a[254]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[254].axi_rdata_int[254]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[254].axi_rdata_int_reg[254] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[254].axi_rdata_int[254]_i_1 ),
        .Q(s_axi_rdata[254]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
LUT3 #(
    .INIT(8'h8F)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 
       (.I0(O3),
        .I1(s_axi_rready),
        .I2(s_axi_aresetn),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
LUT6 #(
    .INIT(64'h0302330030003030)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_2 
       (.I0(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_4 ),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_adv_buf29_out),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[2]),
        .O(axi_rdata_en));
(* SOFT_HLUTNM = "soft_lutpair172" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_3 
       (.I0(rd_skid_buf[255]),
        .I1(bram_rddata_a[255]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_4 
       (.I0(act_rd_burst_two),
        .I1(act_rd_burst),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair177" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_5 
       (.I0(O4),
        .I1(s_axi_rready),
        .O(rd_adv_buf29_out));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int_reg[255] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_3 ),
        .Q(s_axi_rdata[255]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 
       (.I0(rd_skid_buf[25]),
        .I1(bram_rddata_a[25]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 ),
        .Q(s_axi_rdata[25]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 
       (.I0(rd_skid_buf[26]),
        .I1(bram_rddata_a[26]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 ),
        .Q(s_axi_rdata[26]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 
       (.I0(rd_skid_buf[27]),
        .I1(bram_rddata_a[27]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 ),
        .Q(s_axi_rdata[27]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 
       (.I0(rd_skid_buf[28]),
        .I1(bram_rddata_a[28]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 ),
        .Q(s_axi_rdata[28]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 
       (.I0(rd_skid_buf[29]),
        .I1(bram_rddata_a[29]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 ),
        .Q(s_axi_rdata[29]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 
       (.I0(rd_skid_buf[2]),
        .I1(bram_rddata_a[2]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 ),
        .Q(s_axi_rdata[2]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 
       (.I0(rd_skid_buf[30]),
        .I1(bram_rddata_a[30]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 ),
        .Q(s_axi_rdata[30]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 
       (.I0(rd_skid_buf[31]),
        .I1(bram_rddata_a[31]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ),
        .Q(s_axi_rdata[31]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1 
       (.I0(rd_skid_buf[32]),
        .I1(bram_rddata_a[32]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[32].axi_rdata_int_reg[32] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1 ),
        .Q(s_axi_rdata[32]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1 
       (.I0(rd_skid_buf[33]),
        .I1(bram_rddata_a[33]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[33].axi_rdata_int_reg[33] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1 ),
        .Q(s_axi_rdata[33]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1 
       (.I0(rd_skid_buf[34]),
        .I1(bram_rddata_a[34]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[34].axi_rdata_int_reg[34] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1 ),
        .Q(s_axi_rdata[34]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1 
       (.I0(rd_skid_buf[35]),
        .I1(bram_rddata_a[35]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[35].axi_rdata_int_reg[35] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1 ),
        .Q(s_axi_rdata[35]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1 
       (.I0(rd_skid_buf[36]),
        .I1(bram_rddata_a[36]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[36].axi_rdata_int_reg[36] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1 ),
        .Q(s_axi_rdata[36]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1 
       (.I0(rd_skid_buf[37]),
        .I1(bram_rddata_a[37]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[37].axi_rdata_int_reg[37] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1 ),
        .Q(s_axi_rdata[37]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1 
       (.I0(rd_skid_buf[38]),
        .I1(bram_rddata_a[38]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[38].axi_rdata_int_reg[38] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1 ),
        .Q(s_axi_rdata[38]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1 
       (.I0(rd_skid_buf[39]),
        .I1(bram_rddata_a[39]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[39].axi_rdata_int_reg[39] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1 ),
        .Q(s_axi_rdata[39]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 
       (.I0(rd_skid_buf[3]),
        .I1(bram_rddata_a[3]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 ),
        .Q(s_axi_rdata[3]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1 
       (.I0(rd_skid_buf[40]),
        .I1(bram_rddata_a[40]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[40].axi_rdata_int_reg[40] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1 ),
        .Q(s_axi_rdata[40]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1 
       (.I0(rd_skid_buf[41]),
        .I1(bram_rddata_a[41]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[41].axi_rdata_int_reg[41] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1 ),
        .Q(s_axi_rdata[41]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1 
       (.I0(rd_skid_buf[42]),
        .I1(bram_rddata_a[42]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[42].axi_rdata_int_reg[42] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1 ),
        .Q(s_axi_rdata[42]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1 
       (.I0(rd_skid_buf[43]),
        .I1(bram_rddata_a[43]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[43].axi_rdata_int_reg[43] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1 ),
        .Q(s_axi_rdata[43]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1 
       (.I0(rd_skid_buf[44]),
        .I1(bram_rddata_a[44]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[44].axi_rdata_int_reg[44] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1 ),
        .Q(s_axi_rdata[44]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1 
       (.I0(rd_skid_buf[45]),
        .I1(bram_rddata_a[45]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[45].axi_rdata_int_reg[45] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1 ),
        .Q(s_axi_rdata[45]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1 
       (.I0(rd_skid_buf[46]),
        .I1(bram_rddata_a[46]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[46].axi_rdata_int_reg[46] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1 ),
        .Q(s_axi_rdata[46]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1 
       (.I0(rd_skid_buf[47]),
        .I1(bram_rddata_a[47]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[47].axi_rdata_int_reg[47] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1 ),
        .Q(s_axi_rdata[47]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1 
       (.I0(rd_skid_buf[48]),
        .I1(bram_rddata_a[48]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[48].axi_rdata_int_reg[48] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1 ),
        .Q(s_axi_rdata[48]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1 
       (.I0(rd_skid_buf[49]),
        .I1(bram_rddata_a[49]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[49].axi_rdata_int_reg[49] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1 ),
        .Q(s_axi_rdata[49]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 
       (.I0(rd_skid_buf[4]),
        .I1(bram_rddata_a[4]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 ),
        .Q(s_axi_rdata[4]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1 
       (.I0(rd_skid_buf[50]),
        .I1(bram_rddata_a[50]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[50].axi_rdata_int_reg[50] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1 ),
        .Q(s_axi_rdata[50]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1 
       (.I0(rd_skid_buf[51]),
        .I1(bram_rddata_a[51]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[51].axi_rdata_int_reg[51] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1 ),
        .Q(s_axi_rdata[51]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1 
       (.I0(rd_skid_buf[52]),
        .I1(bram_rddata_a[52]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[52].axi_rdata_int_reg[52] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1 ),
        .Q(s_axi_rdata[52]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1 
       (.I0(rd_skid_buf[53]),
        .I1(bram_rddata_a[53]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[53].axi_rdata_int_reg[53] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1 ),
        .Q(s_axi_rdata[53]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1 
       (.I0(rd_skid_buf[54]),
        .I1(bram_rddata_a[54]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[54].axi_rdata_int_reg[54] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1 ),
        .Q(s_axi_rdata[54]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1 
       (.I0(rd_skid_buf[55]),
        .I1(bram_rddata_a[55]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[55].axi_rdata_int_reg[55] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1 ),
        .Q(s_axi_rdata[55]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1 
       (.I0(rd_skid_buf[56]),
        .I1(bram_rddata_a[56]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[56].axi_rdata_int_reg[56] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1 ),
        .Q(s_axi_rdata[56]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1 
       (.I0(rd_skid_buf[57]),
        .I1(bram_rddata_a[57]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[57].axi_rdata_int_reg[57] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1 ),
        .Q(s_axi_rdata[57]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1 
       (.I0(rd_skid_buf[58]),
        .I1(bram_rddata_a[58]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[58].axi_rdata_int_reg[58] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1 ),
        .Q(s_axi_rdata[58]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1 
       (.I0(rd_skid_buf[59]),
        .I1(bram_rddata_a[59]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[59].axi_rdata_int_reg[59] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1 ),
        .Q(s_axi_rdata[59]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 
       (.I0(rd_skid_buf[5]),
        .I1(bram_rddata_a[5]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 ),
        .Q(s_axi_rdata[5]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1 
       (.I0(rd_skid_buf[60]),
        .I1(bram_rddata_a[60]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[60].axi_rdata_int_reg[60] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1 ),
        .Q(s_axi_rdata[60]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1 
       (.I0(rd_skid_buf[61]),
        .I1(bram_rddata_a[61]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[61].axi_rdata_int_reg[61] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1 ),
        .Q(s_axi_rdata[61]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1 
       (.I0(rd_skid_buf[62]),
        .I1(bram_rddata_a[62]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[62].axi_rdata_int_reg[62] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1 ),
        .Q(s_axi_rdata[62]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 
       (.I0(rd_skid_buf[63]),
        .I1(bram_rddata_a[63]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int_reg[63] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ),
        .Q(s_axi_rdata[63]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1 
       (.I0(rd_skid_buf[64]),
        .I1(bram_rddata_a[64]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[64].axi_rdata_int_reg[64] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1 ),
        .Q(s_axi_rdata[64]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1 
       (.I0(rd_skid_buf[65]),
        .I1(bram_rddata_a[65]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[65].axi_rdata_int_reg[65] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1 ),
        .Q(s_axi_rdata[65]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1 
       (.I0(rd_skid_buf[66]),
        .I1(bram_rddata_a[66]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[66].axi_rdata_int_reg[66] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1 ),
        .Q(s_axi_rdata[66]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1 
       (.I0(rd_skid_buf[67]),
        .I1(bram_rddata_a[67]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[67].axi_rdata_int_reg[67] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1 ),
        .Q(s_axi_rdata[67]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1 
       (.I0(rd_skid_buf[68]),
        .I1(bram_rddata_a[68]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[68].axi_rdata_int_reg[68] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1 ),
        .Q(s_axi_rdata[68]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1 
       (.I0(rd_skid_buf[69]),
        .I1(bram_rddata_a[69]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[69].axi_rdata_int_reg[69] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1 ),
        .Q(s_axi_rdata[69]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 
       (.I0(rd_skid_buf[6]),
        .I1(bram_rddata_a[6]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 ),
        .Q(s_axi_rdata[6]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1 
       (.I0(rd_skid_buf[70]),
        .I1(bram_rddata_a[70]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[70].axi_rdata_int_reg[70] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1 ),
        .Q(s_axi_rdata[70]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1 
       (.I0(rd_skid_buf[71]),
        .I1(bram_rddata_a[71]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[71].axi_rdata_int_reg[71] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1 ),
        .Q(s_axi_rdata[71]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1 
       (.I0(rd_skid_buf[72]),
        .I1(bram_rddata_a[72]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[72].axi_rdata_int_reg[72] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1 ),
        .Q(s_axi_rdata[72]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1 
       (.I0(rd_skid_buf[73]),
        .I1(bram_rddata_a[73]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[73].axi_rdata_int_reg[73] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1 ),
        .Q(s_axi_rdata[73]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1 
       (.I0(rd_skid_buf[74]),
        .I1(bram_rddata_a[74]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[74].axi_rdata_int_reg[74] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1 ),
        .Q(s_axi_rdata[74]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1 
       (.I0(rd_skid_buf[75]),
        .I1(bram_rddata_a[75]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[75].axi_rdata_int_reg[75] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1 ),
        .Q(s_axi_rdata[75]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1 
       (.I0(rd_skid_buf[76]),
        .I1(bram_rddata_a[76]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[76].axi_rdata_int_reg[76] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1 ),
        .Q(s_axi_rdata[76]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1 
       (.I0(rd_skid_buf[77]),
        .I1(bram_rddata_a[77]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[77].axi_rdata_int_reg[77] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1 ),
        .Q(s_axi_rdata[77]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1 
       (.I0(rd_skid_buf[78]),
        .I1(bram_rddata_a[78]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[78].axi_rdata_int_reg[78] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1 ),
        .Q(s_axi_rdata[78]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1 
       (.I0(rd_skid_buf[79]),
        .I1(bram_rddata_a[79]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[79].axi_rdata_int_reg[79] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1 ),
        .Q(s_axi_rdata[79]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 
       (.I0(rd_skid_buf[7]),
        .I1(bram_rddata_a[7]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 ),
        .Q(s_axi_rdata[7]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1 
       (.I0(rd_skid_buf[80]),
        .I1(bram_rddata_a[80]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[80].axi_rdata_int_reg[80] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1 ),
        .Q(s_axi_rdata[80]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1 
       (.I0(rd_skid_buf[81]),
        .I1(bram_rddata_a[81]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[81].axi_rdata_int_reg[81] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1 ),
        .Q(s_axi_rdata[81]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1 
       (.I0(rd_skid_buf[82]),
        .I1(bram_rddata_a[82]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[82].axi_rdata_int_reg[82] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1 ),
        .Q(s_axi_rdata[82]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1 
       (.I0(rd_skid_buf[83]),
        .I1(bram_rddata_a[83]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[83].axi_rdata_int_reg[83] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1 ),
        .Q(s_axi_rdata[83]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1 
       (.I0(rd_skid_buf[84]),
        .I1(bram_rddata_a[84]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[84].axi_rdata_int_reg[84] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1 ),
        .Q(s_axi_rdata[84]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1 
       (.I0(rd_skid_buf[85]),
        .I1(bram_rddata_a[85]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[85].axi_rdata_int_reg[85] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1 ),
        .Q(s_axi_rdata[85]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1 
       (.I0(rd_skid_buf[86]),
        .I1(bram_rddata_a[86]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[86].axi_rdata_int_reg[86] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1 ),
        .Q(s_axi_rdata[86]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1 
       (.I0(rd_skid_buf[87]),
        .I1(bram_rddata_a[87]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[87].axi_rdata_int_reg[87] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1 ),
        .Q(s_axi_rdata[87]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1 
       (.I0(rd_skid_buf[88]),
        .I1(bram_rddata_a[88]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[88].axi_rdata_int_reg[88] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1 ),
        .Q(s_axi_rdata[88]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1 
       (.I0(rd_skid_buf[89]),
        .I1(bram_rddata_a[89]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[89].axi_rdata_int_reg[89] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1 ),
        .Q(s_axi_rdata[89]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 
       (.I0(rd_skid_buf[8]),
        .I1(bram_rddata_a[8]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 ),
        .Q(s_axi_rdata[8]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1 
       (.I0(rd_skid_buf[90]),
        .I1(bram_rddata_a[90]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[90].axi_rdata_int_reg[90] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1 ),
        .Q(s_axi_rdata[90]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1 
       (.I0(rd_skid_buf[91]),
        .I1(bram_rddata_a[91]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[91].axi_rdata_int_reg[91] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1 ),
        .Q(s_axi_rdata[91]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1 
       (.I0(rd_skid_buf[92]),
        .I1(bram_rddata_a[92]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[92].axi_rdata_int_reg[92] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1 ),
        .Q(s_axi_rdata[92]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1 
       (.I0(rd_skid_buf[93]),
        .I1(bram_rddata_a[93]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[93].axi_rdata_int_reg[93] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1 ),
        .Q(s_axi_rdata[93]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1 
       (.I0(rd_skid_buf[94]),
        .I1(bram_rddata_a[94]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[94].axi_rdata_int_reg[94] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1 ),
        .Q(s_axi_rdata[94]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1 
       (.I0(rd_skid_buf[95]),
        .I1(bram_rddata_a[95]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[95].axi_rdata_int_reg[95] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1 ),
        .Q(s_axi_rdata[95]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1 
       (.I0(rd_skid_buf[96]),
        .I1(bram_rddata_a[96]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[96].axi_rdata_int_reg[96] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1 ),
        .Q(s_axi_rdata[96]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1 
       (.I0(rd_skid_buf[97]),
        .I1(bram_rddata_a[97]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[97].axi_rdata_int_reg[97] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1 ),
        .Q(s_axi_rdata[97]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1 
       (.I0(rd_skid_buf[98]),
        .I1(bram_rddata_a[98]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[98].axi_rdata_int_reg[98] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1 ),
        .Q(s_axi_rdata[98]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1 
       (.I0(rd_skid_buf[99]),
        .I1(bram_rddata_a[99]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[99].axi_rdata_int_reg[99] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1 ),
        .Q(s_axi_rdata[99]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 
       (.I0(rd_skid_buf[9]),
        .I1(bram_rddata_a[9]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 ),
        .Q(s_axi_rdata[9]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_1 ));
LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf[255]_i_1 
       (.I0(rd_skid_buf_ld_reg),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_adv_buf29_out),
        .O(rd_skid_buf_ld));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[0] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[0]),
        .Q(rd_skid_buf[0]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[100] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[100]),
        .Q(rd_skid_buf[100]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[101] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[101]),
        .Q(rd_skid_buf[101]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[102] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[102]),
        .Q(rd_skid_buf[102]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[103] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[103]),
        .Q(rd_skid_buf[103]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[104] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[104]),
        .Q(rd_skid_buf[104]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[105] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[105]),
        .Q(rd_skid_buf[105]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[106] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[106]),
        .Q(rd_skid_buf[106]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[107] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[107]),
        .Q(rd_skid_buf[107]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[108] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[108]),
        .Q(rd_skid_buf[108]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[109] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[109]),
        .Q(rd_skid_buf[109]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[10] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[10]),
        .Q(rd_skid_buf[10]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[110] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[110]),
        .Q(rd_skid_buf[110]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[111] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[111]),
        .Q(rd_skid_buf[111]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[112] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[112]),
        .Q(rd_skid_buf[112]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[113] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[113]),
        .Q(rd_skid_buf[113]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[114] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[114]),
        .Q(rd_skid_buf[114]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[115] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[115]),
        .Q(rd_skid_buf[115]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[116] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[116]),
        .Q(rd_skid_buf[116]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[117] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[117]),
        .Q(rd_skid_buf[117]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[118] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[118]),
        .Q(rd_skid_buf[118]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[119] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[119]),
        .Q(rd_skid_buf[119]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[11] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[11]),
        .Q(rd_skid_buf[11]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[120] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[120]),
        .Q(rd_skid_buf[120]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[121] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[121]),
        .Q(rd_skid_buf[121]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[122] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[122]),
        .Q(rd_skid_buf[122]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[123] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[123]),
        .Q(rd_skid_buf[123]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[124] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[124]),
        .Q(rd_skid_buf[124]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[125] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[125]),
        .Q(rd_skid_buf[125]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[126] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[126]),
        .Q(rd_skid_buf[126]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[127] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[127]),
        .Q(rd_skid_buf[127]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[128] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[128]),
        .Q(rd_skid_buf[128]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[129] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[129]),
        .Q(rd_skid_buf[129]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[12] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[12]),
        .Q(rd_skid_buf[12]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[130] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[130]),
        .Q(rd_skid_buf[130]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[131] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[131]),
        .Q(rd_skid_buf[131]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[132] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[132]),
        .Q(rd_skid_buf[132]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[133] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[133]),
        .Q(rd_skid_buf[133]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[134] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[134]),
        .Q(rd_skid_buf[134]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[135] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[135]),
        .Q(rd_skid_buf[135]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[136] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[136]),
        .Q(rd_skid_buf[136]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[137] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[137]),
        .Q(rd_skid_buf[137]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[138] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[138]),
        .Q(rd_skid_buf[138]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[139] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[139]),
        .Q(rd_skid_buf[139]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[13] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[13]),
        .Q(rd_skid_buf[13]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[140] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[140]),
        .Q(rd_skid_buf[140]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[141] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[141]),
        .Q(rd_skid_buf[141]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[142] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[142]),
        .Q(rd_skid_buf[142]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[143] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[143]),
        .Q(rd_skid_buf[143]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[144] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[144]),
        .Q(rd_skid_buf[144]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[145] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[145]),
        .Q(rd_skid_buf[145]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[146] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[146]),
        .Q(rd_skid_buf[146]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[147] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[147]),
        .Q(rd_skid_buf[147]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[148] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[148]),
        .Q(rd_skid_buf[148]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[149] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[149]),
        .Q(rd_skid_buf[149]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[14] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[14]),
        .Q(rd_skid_buf[14]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[150] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[150]),
        .Q(rd_skid_buf[150]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[151] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[151]),
        .Q(rd_skid_buf[151]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[152] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[152]),
        .Q(rd_skid_buf[152]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[153] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[153]),
        .Q(rd_skid_buf[153]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[154] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[154]),
        .Q(rd_skid_buf[154]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[155] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[155]),
        .Q(rd_skid_buf[155]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[156] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[156]),
        .Q(rd_skid_buf[156]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[157] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[157]),
        .Q(rd_skid_buf[157]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[158] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[158]),
        .Q(rd_skid_buf[158]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[159] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[159]),
        .Q(rd_skid_buf[159]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[15] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[15]),
        .Q(rd_skid_buf[15]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[160] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[160]),
        .Q(rd_skid_buf[160]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[161] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[161]),
        .Q(rd_skid_buf[161]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[162] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[162]),
        .Q(rd_skid_buf[162]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[163] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[163]),
        .Q(rd_skid_buf[163]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[164] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[164]),
        .Q(rd_skid_buf[164]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[165] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[165]),
        .Q(rd_skid_buf[165]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[166] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[166]),
        .Q(rd_skid_buf[166]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[167] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[167]),
        .Q(rd_skid_buf[167]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[168] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[168]),
        .Q(rd_skid_buf[168]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[169] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[169]),
        .Q(rd_skid_buf[169]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[16] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[16]),
        .Q(rd_skid_buf[16]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[170] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[170]),
        .Q(rd_skid_buf[170]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[171] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[171]),
        .Q(rd_skid_buf[171]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[172] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[172]),
        .Q(rd_skid_buf[172]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[173] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[173]),
        .Q(rd_skid_buf[173]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[174] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[174]),
        .Q(rd_skid_buf[174]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[175] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[175]),
        .Q(rd_skid_buf[175]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[176] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[176]),
        .Q(rd_skid_buf[176]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[177] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[177]),
        .Q(rd_skid_buf[177]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[178] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[178]),
        .Q(rd_skid_buf[178]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[179] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[179]),
        .Q(rd_skid_buf[179]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[17] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[17]),
        .Q(rd_skid_buf[17]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[180] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[180]),
        .Q(rd_skid_buf[180]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[181] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[181]),
        .Q(rd_skid_buf[181]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[182] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[182]),
        .Q(rd_skid_buf[182]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[183] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[183]),
        .Q(rd_skid_buf[183]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[184] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[184]),
        .Q(rd_skid_buf[184]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[185] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[185]),
        .Q(rd_skid_buf[185]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[186] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[186]),
        .Q(rd_skid_buf[186]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[187] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[187]),
        .Q(rd_skid_buf[187]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[188] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[188]),
        .Q(rd_skid_buf[188]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[189] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[189]),
        .Q(rd_skid_buf[189]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[18] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[18]),
        .Q(rd_skid_buf[18]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[190] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[190]),
        .Q(rd_skid_buf[190]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[191] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[191]),
        .Q(rd_skid_buf[191]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[192] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[192]),
        .Q(rd_skid_buf[192]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[193] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[193]),
        .Q(rd_skid_buf[193]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[194] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[194]),
        .Q(rd_skid_buf[194]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[195] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[195]),
        .Q(rd_skid_buf[195]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[196] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[196]),
        .Q(rd_skid_buf[196]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[197] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[197]),
        .Q(rd_skid_buf[197]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[198] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[198]),
        .Q(rd_skid_buf[198]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[199] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[199]),
        .Q(rd_skid_buf[199]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[19] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[19]),
        .Q(rd_skid_buf[19]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[1] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[1]),
        .Q(rd_skid_buf[1]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[200] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[200]),
        .Q(rd_skid_buf[200]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[201] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[201]),
        .Q(rd_skid_buf[201]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[202] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[202]),
        .Q(rd_skid_buf[202]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[203] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[203]),
        .Q(rd_skid_buf[203]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[204] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[204]),
        .Q(rd_skid_buf[204]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[205] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[205]),
        .Q(rd_skid_buf[205]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[206] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[206]),
        .Q(rd_skid_buf[206]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[207] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[207]),
        .Q(rd_skid_buf[207]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[208] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[208]),
        .Q(rd_skid_buf[208]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[209] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[209]),
        .Q(rd_skid_buf[209]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[20] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[20]),
        .Q(rd_skid_buf[20]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[210] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[210]),
        .Q(rd_skid_buf[210]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[211] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[211]),
        .Q(rd_skid_buf[211]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[212] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[212]),
        .Q(rd_skid_buf[212]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[213] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[213]),
        .Q(rd_skid_buf[213]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[214] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[214]),
        .Q(rd_skid_buf[214]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[215] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[215]),
        .Q(rd_skid_buf[215]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[216] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[216]),
        .Q(rd_skid_buf[216]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[217] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[217]),
        .Q(rd_skid_buf[217]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[218] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[218]),
        .Q(rd_skid_buf[218]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[219] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[219]),
        .Q(rd_skid_buf[219]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[21] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[21]),
        .Q(rd_skid_buf[21]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[220] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[220]),
        .Q(rd_skid_buf[220]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[221] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[221]),
        .Q(rd_skid_buf[221]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[222] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[222]),
        .Q(rd_skid_buf[222]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[223] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[223]),
        .Q(rd_skid_buf[223]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[224] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[224]),
        .Q(rd_skid_buf[224]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[225] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[225]),
        .Q(rd_skid_buf[225]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[226] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[226]),
        .Q(rd_skid_buf[226]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[227] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[227]),
        .Q(rd_skid_buf[227]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[228] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[228]),
        .Q(rd_skid_buf[228]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[229] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[229]),
        .Q(rd_skid_buf[229]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[22] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[22]),
        .Q(rd_skid_buf[22]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[230] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[230]),
        .Q(rd_skid_buf[230]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[231] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[231]),
        .Q(rd_skid_buf[231]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[232] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[232]),
        .Q(rd_skid_buf[232]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[233] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[233]),
        .Q(rd_skid_buf[233]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[234] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[234]),
        .Q(rd_skid_buf[234]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[235] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[235]),
        .Q(rd_skid_buf[235]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[236] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[236]),
        .Q(rd_skid_buf[236]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[237] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[237]),
        .Q(rd_skid_buf[237]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[238] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[238]),
        .Q(rd_skid_buf[238]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[239] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[239]),
        .Q(rd_skid_buf[239]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[23] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[23]),
        .Q(rd_skid_buf[23]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[240] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[240]),
        .Q(rd_skid_buf[240]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[241] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[241]),
        .Q(rd_skid_buf[241]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[242] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[242]),
        .Q(rd_skid_buf[242]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[243] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[243]),
        .Q(rd_skid_buf[243]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[244] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[244]),
        .Q(rd_skid_buf[244]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[245] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[245]),
        .Q(rd_skid_buf[245]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[246] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[246]),
        .Q(rd_skid_buf[246]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[247] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[247]),
        .Q(rd_skid_buf[247]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[248] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[248]),
        .Q(rd_skid_buf[248]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[249] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[249]),
        .Q(rd_skid_buf[249]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[24] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[24]),
        .Q(rd_skid_buf[24]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[250] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[250]),
        .Q(rd_skid_buf[250]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[251] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[251]),
        .Q(rd_skid_buf[251]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[252] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[252]),
        .Q(rd_skid_buf[252]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[253] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[253]),
        .Q(rd_skid_buf[253]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[254] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[254]),
        .Q(rd_skid_buf[254]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[255] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[255]),
        .Q(rd_skid_buf[255]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[25] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[25]),
        .Q(rd_skid_buf[25]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[26] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[26]),
        .Q(rd_skid_buf[26]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[27] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[27]),
        .Q(rd_skid_buf[27]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[28] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[28]),
        .Q(rd_skid_buf[28]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[29] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[29]),
        .Q(rd_skid_buf[29]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[2] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[2]),
        .Q(rd_skid_buf[2]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[30] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[30]),
        .Q(rd_skid_buf[30]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[31] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[31]),
        .Q(rd_skid_buf[31]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[32] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[32]),
        .Q(rd_skid_buf[32]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[33] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[33]),
        .Q(rd_skid_buf[33]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[34] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[34]),
        .Q(rd_skid_buf[34]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[35] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[35]),
        .Q(rd_skid_buf[35]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[36] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[36]),
        .Q(rd_skid_buf[36]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[37] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[37]),
        .Q(rd_skid_buf[37]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[38] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[38]),
        .Q(rd_skid_buf[38]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[39] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[39]),
        .Q(rd_skid_buf[39]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[3] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[3]),
        .Q(rd_skid_buf[3]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[40] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[40]),
        .Q(rd_skid_buf[40]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[41] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[41]),
        .Q(rd_skid_buf[41]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[42] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[42]),
        .Q(rd_skid_buf[42]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[43] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[43]),
        .Q(rd_skid_buf[43]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[44] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[44]),
        .Q(rd_skid_buf[44]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[45] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[45]),
        .Q(rd_skid_buf[45]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[46] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[46]),
        .Q(rd_skid_buf[46]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[47] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[47]),
        .Q(rd_skid_buf[47]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[48] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[48]),
        .Q(rd_skid_buf[48]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[49] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[49]),
        .Q(rd_skid_buf[49]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[4] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[4]),
        .Q(rd_skid_buf[4]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[50] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[50]),
        .Q(rd_skid_buf[50]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[51] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[51]),
        .Q(rd_skid_buf[51]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[52] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[52]),
        .Q(rd_skid_buf[52]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[53] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[53]),
        .Q(rd_skid_buf[53]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[54] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[54]),
        .Q(rd_skid_buf[54]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[55] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[55]),
        .Q(rd_skid_buf[55]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[56] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[56]),
        .Q(rd_skid_buf[56]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[57] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[57]),
        .Q(rd_skid_buf[57]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[58] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[58]),
        .Q(rd_skid_buf[58]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[59] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[59]),
        .Q(rd_skid_buf[59]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[5] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[5]),
        .Q(rd_skid_buf[5]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[60] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[60]),
        .Q(rd_skid_buf[60]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[61] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[61]),
        .Q(rd_skid_buf[61]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[62] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[62]),
        .Q(rd_skid_buf[62]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[63] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[63]),
        .Q(rd_skid_buf[63]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[64] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[64]),
        .Q(rd_skid_buf[64]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[65] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[65]),
        .Q(rd_skid_buf[65]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[66] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[66]),
        .Q(rd_skid_buf[66]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[67] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[67]),
        .Q(rd_skid_buf[67]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[68] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[68]),
        .Q(rd_skid_buf[68]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[69] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[69]),
        .Q(rd_skid_buf[69]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[6] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[6]),
        .Q(rd_skid_buf[6]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[70] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[70]),
        .Q(rd_skid_buf[70]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[71] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[71]),
        .Q(rd_skid_buf[71]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[72] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[72]),
        .Q(rd_skid_buf[72]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[73] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[73]),
        .Q(rd_skid_buf[73]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[74] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[74]),
        .Q(rd_skid_buf[74]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[75] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[75]),
        .Q(rd_skid_buf[75]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[76] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[76]),
        .Q(rd_skid_buf[76]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[77] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[77]),
        .Q(rd_skid_buf[77]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[78] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[78]),
        .Q(rd_skid_buf[78]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[79] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[79]),
        .Q(rd_skid_buf[79]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[7] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[7]),
        .Q(rd_skid_buf[7]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[80] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[80]),
        .Q(rd_skid_buf[80]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[81] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[81]),
        .Q(rd_skid_buf[81]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[82] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[82]),
        .Q(rd_skid_buf[82]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[83] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[83]),
        .Q(rd_skid_buf[83]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[84] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[84]),
        .Q(rd_skid_buf[84]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[85] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[85]),
        .Q(rd_skid_buf[85]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[86] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[86]),
        .Q(rd_skid_buf[86]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[87] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[87]),
        .Q(rd_skid_buf[87]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[88] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[88]),
        .Q(rd_skid_buf[88]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[89] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[89]),
        .Q(rd_skid_buf[89]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[8] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[8]),
        .Q(rd_skid_buf[8]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[90] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[90]),
        .Q(rd_skid_buf[90]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[91] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[91]),
        .Q(rd_skid_buf[91]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[92] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[92]),
        .Q(rd_skid_buf[92]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[93] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[93]),
        .Q(rd_skid_buf[93]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[94] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[94]),
        .Q(rd_skid_buf[94]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[95] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[95]),
        .Q(rd_skid_buf[95]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[96] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[96]),
        .Q(rd_skid_buf[96]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[97] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[97]),
        .Q(rd_skid_buf[97]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[98] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[98]),
        .Q(rd_skid_buf[98]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[99] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[99]),
        .Q(rd_skid_buf[99]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[9] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_a[9]),
        .Q(rd_skid_buf[9]),
        .R(O1));
LUT6 #(
    .INIT(64'h00000000FECE3202)) 
     \GEN_RID_SNG.axi_rid_int[0]_i_1 
       (.I0(s_axi_rid),
        .I1(ar_active_re),
        .I2(axi_rvalid_set),
        .I3(axi_rid_temp),
        .I4(s_axi_arid),
        .I5(\n_0_GEN_RID_SNG.axi_rid_int[0]_i_2 ),
        .O(\n_0_GEN_RID_SNG.axi_rid_int[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT3 #(
    .INIT(8'h8F)) 
     \GEN_RID_SNG.axi_rid_int[0]_i_2 
       (.I0(O3),
        .I1(s_axi_rready),
        .I2(s_axi_aresetn),
        .O(\n_0_GEN_RID_SNG.axi_rid_int[0]_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_RID_SNG.axi_rid_int[0]_i_1 ),
        .Q(s_axi_rid),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID_SNG.axi_rid_temp_reg[0] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(s_axi_arid),
        .Q(axi_rid_temp),
        .R(O1));
controller_wrap_brst_0 I_WRAP_BRST
       (.D(D),
        .I1(curr_narrow_burst),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(n_0_axi_rd_burst_two_reg),
        .I6(I6),
        .I7(O4),
        .I8(I8),
        .O1(O6),
        .O10(O10),
        .O11(O11),
        .O12(O12),
        .O15(O15),
        .O2(n_11_I_WRAP_BRST),
        .O3(n_12_I_WRAP_BRST),
        .O4(O1),
        .O5(O5),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .Q(rd_data_sm_cs),
        .ar_active_re(ar_active_re),
        .axi_rd_burst(axi_rd_burst),
        .bram_addr_inc10_out(bram_addr_inc10_out),
        .brst_zero(brst_zero),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .end_brst_rd(end_brst_rd),
        .narrow_addr_int(narrow_addr_int),
        .narrow_bram_addr_inc_d1(narrow_bram_addr_inc_d1),
        .p_0_out(p_0_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[14:5]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_rready(s_axi_rready));
LUT6 #(
    .INIT(64'h000000002E2E2E22)) 
     act_rd_burst_i_1
       (.I0(act_rd_burst),
        .I1(act_rd_burst_set),
        .I2(I7),
        .I3(axi_rd_burst),
        .I4(ar_active_re),
        .I5(n_0_act_rd_burst_i_4),
        .O(n_0_act_rd_burst_i_1));
LUT6 #(
    .INIT(64'h000000000000002E)) 
     act_rd_burst_i_2
       (.I0(I5),
        .I1(rd_data_sm_cs[0]),
        .I2(n_0_pend_rd_op_i_2),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[3]),
        .O(act_rd_burst_set));
LUT6 #(
    .INIT(64'h00000180FFFFFFFF)) 
     act_rd_burst_i_4
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[3]),
        .I4(\n_0_rd_data_sm_cs[2]_i_4 ),
        .I5(s_axi_aresetn),
        .O(n_0_act_rd_burst_i_4));
FDRE #(
    .INIT(1'b0)) 
     act_rd_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_act_rd_burst_i_1),
        .Q(act_rd_burst),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
     act_rd_burst_two_i_1
       (.I0(act_rd_burst_two),
        .I1(act_rd_burst_set),
        .I2(n_0_axi_rd_burst_two_reg),
        .I3(ar_active_re),
        .I4(I7),
        .I5(n_0_act_rd_burst_i_4),
        .O(n_0_act_rd_burst_two_i_1));
FDRE #(
    .INIT(1'b0)) 
     act_rd_burst_two_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_act_rd_burst_two_i_1),
        .Q(act_rd_burst_two),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair177" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \arb_sm_cs[1]_i_3 
       (.I0(s_axi_rready),
        .I1(O3),
        .O(O17));
LUT6 #(
    .INIT(64'h00A0303000A000A0)) 
     axi_rd_burst_i_1
       (.I0(axi_rd_burst),
        .I1(O14),
        .I2(s_axi_aresetn),
        .I3(brst_zero),
        .I4(ar_active_d1),
        .I5(p_0_out),
        .O(n_0_axi_rd_burst_i_1));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT4 #(
    .INIT(16'h0002)) 
     axi_rd_burst_i_2
       (.I0(O13),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arlen[2]),
        .I3(s_axi_arlen[1]),
        .O(O14));
FDRE #(
    .INIT(1'b0)) 
     axi_rd_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rd_burst_i_1),
        .Q(axi_rd_burst),
        .R(1'b0));
LUT6 #(
    .INIT(64'hC000C0000000AA00)) 
     axi_rd_burst_two_i_1
       (.I0(n_0_axi_rd_burst_two_reg),
        .I1(O14),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_aresetn),
        .I4(brst_zero),
        .I5(ar_active_re),
        .O(n_0_axi_rd_burst_two_i_1));
FDRE #(
    .INIT(1'b0)) 
     axi_rd_burst_two_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rd_burst_two_i_1),
        .Q(n_0_axi_rd_burst_two_reg),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT4 #(
    .INIT(16'hAA08)) 
     axi_rlast_int_i_1
       (.I0(s_axi_aresetn),
        .I1(O3),
        .I2(s_axi_rready),
        .I3(n_0_axi_rlast_int_i_2),
        .O(n_0_axi_rlast_int_i_1));
LUT6 #(
    .INIT(64'h00000000F4040404)) 
     axi_rlast_int_i_2
       (.I0(O3),
        .I1(rlast_sm_cs[0]),
        .I2(rlast_sm_cs[1]),
        .I3(s_axi_rready),
        .I4(O4),
        .I5(rlast_sm_cs[2]),
        .O(n_0_axi_rlast_int_i_2));
FDRE #(
    .INIT(1'b0)) 
     axi_rlast_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rlast_int_i_1),
        .Q(O3),
        .R(1'b0));
LUT5 #(
    .INIT(32'hFFFFEEEA)) 
     axi_rvalid_clr_ok_i_1
       (.I0(axi_rvalid_clr_ok),
        .I1(last_bram_addr),
        .I2(disable_b2b_brst),
        .I3(n_0_disable_b2b_brst_i_2),
        .I4(n_0_axi_rvalid_clr_ok_i_2),
        .O(n_0_axi_rvalid_clr_ok_i_1));
LUT6 #(
    .INIT(64'h4444444444F44444)) 
     axi_rvalid_clr_ok_i_2
       (.I0(ar_active_d1),
        .I1(p_0_out),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[3]),
        .O(n_0_axi_rvalid_clr_ok_i_2));
FDRE #(
    .INIT(1'b0)) 
     axi_rvalid_clr_ok_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rvalid_clr_ok_i_1),
        .Q(axi_rvalid_clr_ok),
        .R(O1));
LUT6 #(
    .INIT(64'h00E0E0E0E0E0E0E0)) 
     axi_rvalid_int_i_1
       (.I0(O4),
        .I1(axi_rvalid_set),
        .I2(s_axi_aresetn),
        .I3(axi_rvalid_clr_ok),
        .I4(O3),
        .I5(s_axi_rready),
        .O(n_0_axi_rvalid_int_i_1));
FDRE #(
    .INIT(1'b0)) 
     axi_rvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rvalid_int_i_1),
        .Q(O4),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT4 #(
    .INIT(16'h0100)) 
     axi_rvalid_set_i_1
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .O(axi_rvalid_set_cmb));
FDRE #(
    .INIT(1'b0)) 
     axi_rvalid_set_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_set_cmb),
        .Q(axi_rvalid_set),
        .R(O1));
LUT6 #(
    .INIT(64'hFFFFABFB0000A808)) 
     bram_en_int_i_1
       (.I0(n_0_bram_en_int_i_2),
        .I1(n_0_bram_en_int_i_3),
        .I2(rd_data_sm_cs[2]),
        .I3(n_0_bram_en_int_i_4),
        .I4(rd_data_sm_cs[3]),
        .I5(p_7_in),
        .O(n_0_bram_en_int_i_1));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     bram_en_int_i_2
       (.I0(ar_active_re),
        .I1(bram_addr_inc10_out),
        .I2(n_0_bram_en_int_i_5),
        .I3(n_0_bram_en_int_i_6),
        .I4(n_0_bram_en_int_i_7),
        .I5(n_0_bram_en_int_i_8),
        .O(n_0_bram_en_int_i_2));
LUT6 #(
    .INIT(64'hF7FFFFFFF7FFFF00)) 
     bram_en_int_i_3
       (.I0(brst_one),
        .I1(\n_0_rd_data_sm_cs[3]_i_5 ),
        .I2(rd_adv_buf29_out),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[0]),
        .I5(ar_active_re),
        .O(n_0_bram_en_int_i_3));
LUT6 #(
    .INIT(64'hEF0FCF0FE00FC000)) 
     bram_en_int_i_4
       (.I0(pend_rd_op),
        .I1(ar_active_re),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_adv_buf29_out),
        .I5(\n_0_rd_data_sm_cs[1]_i_2 ),
        .O(n_0_bram_en_int_i_4));
(* SOFT_HLUTNM = "soft_lutpair173" *) 
   LUT2 #(
    .INIT(4'h2)) 
     bram_en_int_i_5
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[1]),
        .O(n_0_bram_en_int_i_5));
LUT6 #(
    .INIT(64'hA0A0AFAFFCFCFC0C)) 
     bram_en_int_i_6
       (.I0(\n_0_rd_data_sm_cs[3]_i_5 ),
        .I1(ar_active_re),
        .I2(rd_data_sm_cs[0]),
        .I3(axi_rd_burst),
        .I4(n_0_axi_rd_burst_two_reg),
        .I5(rd_data_sm_cs[1]),
        .O(n_0_bram_en_int_i_6));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'h4F)) 
     bram_en_int_i_7
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[2]),
        .O(n_0_bram_en_int_i_7));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT5 #(
    .INIT(32'h88F800F0)) 
     bram_en_int_i_8
       (.I0(O4),
        .I1(s_axi_rready),
        .I2(p_0_out),
        .I3(ar_active_d1),
        .I4(pend_rd_op),
        .O(n_0_bram_en_int_i_8));
FDRE #(
    .INIT(1'b0)) 
     bram_en_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_bram_en_int_i_1),
        .Q(p_7_in),
        .R(O1));
LUT5 #(
    .INIT(32'h3A33CACC)) 
     \brst_cnt[0]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(bram_addr_inc),
        .I2(ar_active_d1),
        .I3(p_0_out),
        .I4(\n_0_brst_cnt_reg[0] ),
        .O(\n_0_brst_cnt[0]_i_1 ));
LUT6 #(
    .INIT(64'hCFAACFCF30AA3030)) 
     \brst_cnt[1]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(\n_0_brst_cnt_reg[0] ),
        .I2(bram_addr_inc),
        .I3(ar_active_d1),
        .I4(p_0_out),
        .I5(\n_0_brst_cnt_reg[1] ),
        .O(\n_0_brst_cnt[1]_i_1 ));
LUT6 #(
    .INIT(64'hAAAAFCFFAAAA0300)) 
     \brst_cnt[2]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(\n_0_brst_cnt_reg[0] ),
        .I2(\n_0_brst_cnt_reg[1] ),
        .I3(bram_addr_inc),
        .I4(ar_active_re),
        .I5(\n_0_brst_cnt_reg[2] ),
        .O(\n_0_brst_cnt[2]_i_1 ));
LUT6 #(
    .INIT(64'h3FAA3F3FC0AAC0C0)) 
     \brst_cnt[3]_i_1 
       (.I0(s_axi_arlen[3]),
        .I1(\n_0_brst_cnt[3]_i_2 ),
        .I2(bram_addr_inc),
        .I3(ar_active_d1),
        .I4(p_0_out),
        .I5(\n_0_brst_cnt_reg[3] ),
        .O(\n_0_brst_cnt[3]_i_1 ));
LUT3 #(
    .INIT(8'h01)) 
     \brst_cnt[3]_i_2 
       (.I0(\n_0_brst_cnt_reg[0] ),
        .I1(\n_0_brst_cnt_reg[1] ),
        .I2(\n_0_brst_cnt_reg[2] ),
        .O(\n_0_brst_cnt[3]_i_2 ));
LUT6 #(
    .INIT(64'h3FAA3F3FC0AAC0C0)) 
     \brst_cnt[4]_i_1 
       (.I0(s_axi_arlen[4]),
        .I1(\n_0_brst_cnt[4]_i_2 ),
        .I2(bram_addr_inc),
        .I3(ar_active_d1),
        .I4(p_0_out),
        .I5(\n_0_brst_cnt_reg[4] ),
        .O(\n_0_brst_cnt[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \brst_cnt[4]_i_2 
       (.I0(\n_0_brst_cnt_reg[2] ),
        .I1(\n_0_brst_cnt_reg[1] ),
        .I2(\n_0_brst_cnt_reg[0] ),
        .I3(\n_0_brst_cnt_reg[3] ),
        .O(\n_0_brst_cnt[4]_i_2 ));
LUT6 #(
    .INIT(64'h3FAA3F3FC0AAC0C0)) 
     \brst_cnt[5]_i_1 
       (.I0(s_axi_arlen[5]),
        .I1(\n_0_brst_cnt[5]_i_2 ),
        .I2(bram_addr_inc),
        .I3(ar_active_d1),
        .I4(p_0_out),
        .I5(\n_0_brst_cnt_reg[5] ),
        .O(\n_0_brst_cnt[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     \brst_cnt[5]_i_2 
       (.I0(\n_0_brst_cnt_reg[3] ),
        .I1(\n_0_brst_cnt_reg[0] ),
        .I2(\n_0_brst_cnt_reg[1] ),
        .I3(\n_0_brst_cnt_reg[2] ),
        .I4(\n_0_brst_cnt_reg[4] ),
        .O(\n_0_brst_cnt[5]_i_2 ));
LUT6 #(
    .INIT(64'h3FAA3F3FC0AAC0C0)) 
     \brst_cnt[6]_i_1 
       (.I0(s_axi_arlen[6]),
        .I1(\n_0_brst_cnt[7]_i_2 ),
        .I2(bram_addr_inc),
        .I3(ar_active_d1),
        .I4(p_0_out),
        .I5(\n_0_brst_cnt_reg[6] ),
        .O(\n_0_brst_cnt[6]_i_1 ));
LUT6 #(
    .INIT(64'hAAAACFFFAAAA3000)) 
     \brst_cnt[7]_i_1 
       (.I0(s_axi_arlen[7]),
        .I1(\n_0_brst_cnt_reg[6] ),
        .I2(\n_0_brst_cnt[7]_i_2 ),
        .I3(bram_addr_inc),
        .I4(ar_active_re),
        .I5(\n_0_brst_cnt_reg[7] ),
        .O(\n_0_brst_cnt[7]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \brst_cnt[7]_i_2 
       (.I0(\n_0_brst_cnt_reg[4] ),
        .I1(\n_0_brst_cnt_reg[2] ),
        .I2(\n_0_brst_cnt_reg[1] ),
        .I3(\n_0_brst_cnt_reg[0] ),
        .I4(\n_0_brst_cnt_reg[3] ),
        .I5(\n_0_brst_cnt_reg[5] ),
        .O(\n_0_brst_cnt[7]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair175" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \brst_cnt[7]_i_3 
       (.I0(n_11_I_WRAP_BRST),
        .I1(rd_data_sm_cs[3]),
        .O(bram_addr_inc));
FDRE #(
    .INIT(1'b0)) 
     brst_cnt_max_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ),
        .Q(brst_cnt_max_d1),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[0]_i_1 ),
        .Q(\n_0_brst_cnt_reg[0] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[1]_i_1 ),
        .Q(\n_0_brst_cnt_reg[1] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[2]_i_1 ),
        .Q(\n_0_brst_cnt_reg[2] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[3]_i_1 ),
        .Q(\n_0_brst_cnt_reg[3] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[4]_i_1 ),
        .Q(\n_0_brst_cnt_reg[4] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[5]_i_1 ),
        .Q(\n_0_brst_cnt_reg[5] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[6]_i_1 ),
        .Q(\n_0_brst_cnt_reg[6] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[7]_i_1 ),
        .Q(\n_0_brst_cnt_reg[7] ),
        .R(O1));
LUT6 #(
    .INIT(64'h0E000E0000000E00)) 
     brst_one_i_1
       (.I0(brst_one),
        .I1(brst_one0),
        .I2(n_0_brst_zero_i_2),
        .I3(s_axi_aresetn),
        .I4(ar_active_re),
        .I5(axi_rd_burst_two),
        .O(n_0_brst_one_i_1));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT5 #(
    .INIT(32'hBAAAAAAA)) 
     brst_one_i_2
       (.I0(I7),
        .I1(\n_0_brst_cnt_reg[0] ),
        .I2(\n_0_brst_cnt_reg[1] ),
        .I3(bram_addr_inc),
        .I4(n_0_brst_zero_i_4),
        .O(brst_one0));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT5 #(
    .INIT(32'h00020000)) 
     brst_one_i_3
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[2]),
        .I3(s_axi_arlen[3]),
        .I4(O13),
        .O(axi_rd_burst_two));
FDRE #(
    .INIT(1'b0)) 
     brst_one_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_brst_one_i_1),
        .Q(brst_one),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT4 #(
    .INIT(16'h00E0)) 
     brst_zero_i_1
       (.I0(brst_zero),
        .I1(n_0_brst_zero_i_2),
        .I2(s_axi_aresetn),
        .I3(I5),
        .O(n_0_brst_zero_i_1));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT4 #(
    .INIT(16'h0080)) 
     brst_zero_i_2
       (.I0(n_0_brst_zero_i_4),
        .I1(bram_addr_inc),
        .I2(\n_0_brst_cnt_reg[0] ),
        .I3(\n_0_brst_cnt_reg[1] ),
        .O(n_0_brst_zero_i_2));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     brst_zero_i_4
       (.I0(\n_0_brst_cnt_reg[2] ),
        .I1(\n_0_brst_cnt_reg[3] ),
        .I2(\n_0_brst_cnt_reg[6] ),
        .I3(\n_0_brst_cnt_reg[7] ),
        .I4(\n_0_brst_cnt_reg[5] ),
        .I5(\n_0_brst_cnt_reg[4] ),
        .O(n_0_brst_zero_i_4));
LUT4 #(
    .INIT(16'h0001)) 
     brst_zero_i_5
       (.I0(s_axi_arlen[7]),
        .I1(s_axi_arlen[6]),
        .I2(s_axi_arlen[4]),
        .I3(s_axi_arlen[5]),
        .O(O13));
FDRE #(
    .INIT(1'b0)) 
     brst_zero_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_brst_zero_i_1),
        .Q(brst_zero),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair176" *) 
   LUT2 #(
    .INIT(4'h1)) 
     curr_fixed_burst_reg_i_1
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .O(curr_fixed_burst));
FDRE #(
    .INIT(1'b0)) 
     curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(curr_fixed_burst),
        .Q(O2),
        .R(O1));
(* SOFT_HLUTNM = "soft_lutpair176" *) 
   LUT2 #(
    .INIT(4'h2)) 
     curr_wrap_burst_reg_i_1
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .O(curr_wrap_burst));
FDRE #(
    .INIT(1'b0)) 
     curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(curr_wrap_burst),
        .Q(curr_wrap_burst_reg),
        .R(O1));
LUT6 #(
    .INIT(64'hEEEAAAEAEEEAEEEE)) 
     disable_b2b_brst_i_1
       (.I0(n_0_disable_b2b_brst_i_2),
        .I1(disable_b2b_brst),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[3]),
        .I5(rd_data_sm_cs[0]),
        .O(disable_b2b_brst_cmb));
LUT6 #(
    .INIT(64'h0000000020222222)) 
     disable_b2b_brst_i_2
       (.I0(n_0_disable_b2b_brst_i_3),
        .I1(rd_data_sm_cs[2]),
        .I2(n_0_axi_rd_burst_two_reg),
        .I3(axi_rd_burst),
        .I4(n_0_disable_b2b_brst_i_4),
        .I5(n_0_disable_b2b_brst_i_5),
        .O(n_0_disable_b2b_brst_i_2));
LUT6 #(
    .INIT(64'hFFFFFFFF000045FF)) 
     disable_b2b_brst_i_3
       (.I0(rd_adv_buf29_out),
        .I1(brst_one),
        .I2(\n_0_rd_data_sm_cs[3]_i_5 ),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[3]),
        .I5(disable_b2b_brst),
        .O(n_0_disable_b2b_brst_i_3));
(* SOFT_HLUTNM = "soft_lutpair175" *) 
   LUT2 #(
    .INIT(4'h1)) 
     disable_b2b_brst_i_4
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[3]),
        .O(n_0_disable_b2b_brst_i_4));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT4 #(
    .INIT(16'hD8FF)) 
     disable_b2b_brst_i_5
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[0]),
        .O(n_0_disable_b2b_brst_i_5));
FDRE #(
    .INIT(1'b0)) 
     disable_b2b_brst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(disable_b2b_brst_cmb),
        .Q(disable_b2b_brst),
        .R(O1));
LUT6 #(
    .INIT(64'hFFFCFFFD03000000)) 
     end_brst_rd_clr_i_1
       (.I0(ar_active_re),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .I5(end_brst_rd_clr),
        .O(n_0_end_brst_rd_clr_i_1));
FDRE #(
    .INIT(1'b0)) 
     end_brst_rd_clr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_end_brst_rd_clr_i_1),
        .Q(end_brst_rd_clr),
        .R(O1));
LUT5 #(
    .INIT(32'h0040F040)) 
     end_brst_rd_i_1
       (.I0(brst_cnt_max_d1),
        .I1(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ),
        .I2(s_axi_aresetn),
        .I3(end_brst_rd),
        .I4(end_brst_rd_clr),
        .O(n_0_end_brst_rd_i_1));
FDRE #(
    .INIT(1'b0)) 
     end_brst_rd_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_end_brst_rd_i_1),
        .Q(end_brst_rd),
        .R(1'b0));
LUT6 #(
    .INIT(64'hBABABABBAAAAAAAA)) 
     last_bram_addr_i_1
       (.I0(n_0_brst_zero_i_2),
        .I1(n_0_last_bram_addr_i_2),
        .I2(ar_active_re),
        .I3(axi_rd_burst),
        .I4(n_0_axi_rd_burst_two_reg),
        .I5(n_0_last_bram_addr_i_3),
        .O(last_bram_addr0));
(* SOFT_HLUTNM = "soft_lutpair173" *) 
   LUT3 #(
    .INIT(8'h7E)) 
     last_bram_addr_i_2
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[1]),
        .O(n_0_last_bram_addr_i_2));
LUT6 #(
    .INIT(64'h0000F300AAAAC0C0)) 
     last_bram_addr_i_3
       (.I0(n_0_last_bram_addr_i_4),
        .I1(ar_active_re),
        .I2(n_0_last_bram_addr_i_5),
        .I3(n_0_last_bram_addr_i_6),
        .I4(rd_data_sm_cs[3]),
        .I5(rd_data_sm_cs[2]),
        .O(n_0_last_bram_addr_i_3));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     last_bram_addr_i_4
       (.I0(n_0_axi_rd_burst_two_reg),
        .I1(axi_rd_burst),
        .I2(s_axi_rready),
        .I3(O4),
        .O(n_0_last_bram_addr_i_4));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT5 #(
    .INIT(32'h00000002)) 
     last_bram_addr_i_5
       (.I0(O13),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[3]),
        .I4(s_axi_arlen[2]),
        .O(n_0_last_bram_addr_i_5));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT5 #(
    .INIT(32'h88880080)) 
     last_bram_addr_i_6
       (.I0(s_axi_rready),
        .I1(O4),
        .I2(p_0_out),
        .I3(ar_active_d1),
        .I4(pend_rd_op),
        .O(n_0_last_bram_addr_i_6));
FDRE #(
    .INIT(1'b0)) 
     last_bram_addr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_bram_addr0),
        .Q(last_bram_addr),
        .R(O1));
LUT6 #(
    .INIT(64'h00E0FFFF00E00000)) 
     pend_rd_op_i_1
       (.I0(n_0_pend_rd_op_i_2),
        .I1(rd_data_sm_cs[2]),
        .I2(ar_active_re),
        .I3(rd_data_sm_cs[1]),
        .I4(n_0_pend_rd_op_i_3),
        .I5(pend_rd_op),
        .O(n_0_pend_rd_op_i_1));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT2 #(
    .INIT(4'h1)) 
     pend_rd_op_i_2
       (.I0(axi_rd_burst),
        .I1(n_0_axi_rd_burst_two_reg),
        .O(n_0_pend_rd_op_i_2));
LUT6 #(
    .INIT(64'hFFFF00F800F800F8)) 
     pend_rd_op_i_3
       (.I0(O3),
        .I1(pend_rd_op),
        .I2(ar_active_re),
        .I3(n_0_pend_rd_op_i_4),
        .I4(rd_data_sm_cs[0]),
        .I5(n_0_pend_rd_op_i_5),
        .O(n_0_pend_rd_op_i_3));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT4 #(
    .INIT(16'hFEFF)) 
     pend_rd_op_i_4
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[2]),
        .O(n_0_pend_rd_op_i_4));
LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
     pend_rd_op_i_5
       (.I0(rd_adv_buf29_out),
        .I1(rd_data_sm_cs[3]),
        .I2(pend_rd_op),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[1]),
        .I5(n_0_pend_rd_op_i_6),
        .O(n_0_pend_rd_op_i_5));
LUT6 #(
    .INIT(64'h0003000300020000)) 
     pend_rd_op_i_6
       (.I0(n_0_pend_rd_op_i_2),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(ar_active_re),
        .I5(pend_rd_op),
        .O(n_0_pend_rd_op_i_6));
FDRE #(
    .INIT(1'b0)) 
     pend_rd_op_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_pend_rd_op_i_1),
        .Q(pend_rd_op),
        .R(O1));
LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
     \rd_data_sm_cs[0]_i_1 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[3]),
        .I3(\n_0_rd_data_sm_cs[0]_i_2 ),
        .I4(rd_data_sm_cs[2]),
        .I5(\n_0_rd_data_sm_cs[0]_i_3 ),
        .O(\n_0_rd_data_sm_cs[0]_i_1 ));
LUT6 #(
    .INIT(64'hF3C0B3B0FFFFFFFF)) 
     \rd_data_sm_cs[0]_i_2 
       (.I0(pend_rd_op),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_adv_buf29_out),
        .I3(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[255].axi_rdata_int[255]_i_4 ),
        .I4(ar_active_re),
        .I5(rd_data_sm_cs[0]),
        .O(\n_0_rd_data_sm_cs[0]_i_2 ));
LUT6 #(
    .INIT(64'h8080808FFFFFFFFF)) 
     \rd_data_sm_cs[0]_i_3 
       (.I0(s_axi_rready),
        .I1(O4),
        .I2(rd_data_sm_cs[1]),
        .I3(n_0_axi_rd_burst_two_reg),
        .I4(axi_rd_burst),
        .I5(rd_data_sm_cs[0]),
        .O(\n_0_rd_data_sm_cs[0]_i_3 ));
LUT6 #(
    .INIT(64'h00000000FFFF404C)) 
     \rd_data_sm_cs[1]_i_1 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[1]),
        .I3(\n_0_rd_data_sm_cs[1]_i_2 ),
        .I4(\n_0_rd_data_sm_cs[1]_i_3 ),
        .I5(rd_data_sm_cs[3]),
        .O(\n_0_rd_data_sm_cs[1]_i_1 ));
LUT6 #(
    .INIT(64'h10101010FFFFFF00)) 
     \rd_data_sm_cs[1]_i_2 
       (.I0(\n_0_rd_data_sm_cs[2]_i_4 ),
        .I1(ar_active_d1),
        .I2(p_0_out),
        .I3(end_brst_rd),
        .I4(brst_zero),
        .I5(rd_data_sm_cs[0]),
        .O(\n_0_rd_data_sm_cs[1]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT5 #(
    .INIT(32'h000003E0)) 
     \rd_data_sm_cs[1]_i_3 
       (.I0(axi_rd_burst),
        .I1(n_0_axi_rd_burst_two_reg),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[2]),
        .O(\n_0_rd_data_sm_cs[1]_i_3 ));
LUT6 #(
    .INIT(64'h0000000022E2EEE2)) 
     \rd_data_sm_cs[2]_i_1 
       (.I0(\n_0_rd_data_sm_cs[2]_i_2 ),
        .I1(rd_data_sm_cs[2]),
        .I2(\n_0_rd_data_sm_cs[2]_i_3 ),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[3]),
        .O(\n_0_rd_data_sm_cs[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT4 #(
    .INIT(16'hA8AC)) 
     \rd_data_sm_cs[2]_i_2 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(n_0_axi_rd_burst_two_reg),
        .I3(axi_rd_burst),
        .O(\n_0_rd_data_sm_cs[2]_i_2 ));
LUT6 #(
    .INIT(64'hFBFBFBFBFFFFFF00)) 
     \rd_data_sm_cs[2]_i_3 
       (.I0(ar_active_d1),
        .I1(p_0_out),
        .I2(\n_0_rd_data_sm_cs[2]_i_4 ),
        .I3(end_brst_rd),
        .I4(brst_zero),
        .I5(rd_data_sm_cs[0]),
        .O(\n_0_rd_data_sm_cs[2]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT4 #(
    .INIT(16'h1FFF)) 
     \rd_data_sm_cs[2]_i_4 
       (.I0(act_rd_burst),
        .I1(act_rd_burst_two),
        .I2(s_axi_rready),
        .I3(O4),
        .O(\n_0_rd_data_sm_cs[2]_i_4 ));
LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
     \rd_data_sm_cs[3]_i_1 
       (.I0(rd_adv_buf29_out),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[3]),
        .I5(\n_0_rd_data_sm_cs[3]_i_3 ),
        .O(\n_0_rd_data_sm_cs[3]_i_1 ));
LUT6 #(
    .INIT(64'h0000000070400000)) 
     \rd_data_sm_cs[3]_i_2 
       (.I0(rd_adv_buf29_out),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[0]),
        .I3(\n_0_rd_data_sm_cs[3]_i_4 ),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[3]),
        .O(\n_0_rd_data_sm_cs[3]_i_2 ));
LUT6 #(
    .INIT(64'hBFFFDDDD9DFFDD88)) 
     \rd_data_sm_cs[3]_i_3 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_adv_buf29_out),
        .I2(\n_0_rd_data_sm_cs[3]_i_5 ),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[0]),
        .I5(ar_active_re),
        .O(\n_0_rd_data_sm_cs[3]_i_3 ));
LUT6 #(
    .INIT(64'h4000400040000000)) 
     \rd_data_sm_cs[3]_i_4 
       (.I0(ar_active_d1),
        .I1(p_0_out),
        .I2(O4),
        .I3(s_axi_rready),
        .I4(act_rd_burst_two),
        .I5(act_rd_burst),
        .O(\n_0_rd_data_sm_cs[3]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \rd_data_sm_cs[3]_i_5 
       (.I0(end_brst_rd),
        .I1(brst_zero),
        .O(\n_0_rd_data_sm_cs[3]_i_5 ));
FDRE \rd_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_rd_data_sm_cs[3]_i_1 ),
        .D(\n_0_rd_data_sm_cs[0]_i_1 ),
        .Q(rd_data_sm_cs[0]),
        .R(O1));
FDRE \rd_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_rd_data_sm_cs[3]_i_1 ),
        .D(\n_0_rd_data_sm_cs[1]_i_1 ),
        .Q(rd_data_sm_cs[1]),
        .R(O1));
FDRE \rd_data_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_rd_data_sm_cs[3]_i_1 ),
        .D(\n_0_rd_data_sm_cs[2]_i_1 ),
        .Q(rd_data_sm_cs[2]),
        .R(O1));
FDRE \rd_data_sm_cs_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_rd_data_sm_cs[3]_i_1 ),
        .D(\n_0_rd_data_sm_cs[3]_i_2 ),
        .Q(rd_data_sm_cs[3]),
        .R(O1));
LUT6 #(
    .INIT(64'h0000000000D500AA)) 
     rd_skid_buf_ld_reg_i_1
       (.I0(rd_data_sm_cs[0]),
        .I1(s_axi_rready),
        .I2(O4),
        .I3(rd_data_sm_cs[3]),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[2]),
        .O(rd_skid_buf_ld_cmb));
FDRE #(
    .INIT(1'b0)) 
     rd_skid_buf_ld_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rd_skid_buf_ld_cmb),
        .Q(rd_skid_buf_ld_reg),
        .R(O1));
LUT3 #(
    .INIT(8'hB8)) 
     rddata_mux_sel_i_1
       (.I0(rddata_mux_sel_cmb),
        .I1(n_0_rddata_mux_sel_i_3),
        .I2(rddata_mux_sel),
        .O(n_0_rddata_mux_sel_i_1));
LUT6 #(
    .INIT(64'hF0100FF0F0F00000)) 
     rddata_mux_sel_i_2
       (.I0(act_rd_burst),
        .I1(act_rd_burst_two),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_adv_buf29_out),
        .I5(rd_data_sm_cs[0]),
        .O(rddata_mux_sel_cmb));
LUT6 #(
    .INIT(64'h000000003FF83F08)) 
     rddata_mux_sel_i_3
       (.I0(n_0_axi_rd_burst_two_reg),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_adv_buf29_out),
        .I5(rd_data_sm_cs[3]),
        .O(n_0_rddata_mux_sel_i_3));
FDRE #(
    .INIT(1'b0)) 
     rddata_mux_sel_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_rddata_mux_sel_i_1),
        .Q(rddata_mux_sel),
        .R(O1));
endmodule

(* ORIG_REF_NAME = "sng_port_arb" *) 
module controller_sng_port_arb
   (s_axi_awready,
    s_axi_arready,
    p_0_out,
    p_1_out,
    arb_sm_cs,
    curr_narrow_burst_en,
    aw_active_re,
    O1,
    ar_active_re,
    O2,
    bram_we_a,
    O3,
    O4,
    I1,
    s_axi_aclk,
    I2,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_awlen,
    I3,
    s_axi_awburst,
    aw_active_d1,
    s_axi_arlen,
    I4,
    I5,
    ar_active_d1,
    I6,
    I7,
    I8,
    s_axi_rready,
    Q,
    s_axi_arsize,
    I9,
    s_axi_arburst,
    curr_narrow_burst,
    I10,
    s_axi_aresetn);
  output s_axi_awready;
  output s_axi_arready;
  output p_0_out;
  output p_1_out;
  output [1:0]arb_sm_cs;
  output curr_narrow_burst_en;
  output aw_active_re;
  output O1;
  output ar_active_re;
  output O2;
  output [31:0]bram_we_a;
  output O3;
  output O4;
  input I1;
  input s_axi_aclk;
  input I2;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input [1:0]s_axi_awlen;
  input I3;
  input [1:0]s_axi_awburst;
  input aw_active_d1;
  input [3:0]s_axi_arlen;
  input I4;
  input I5;
  input ar_active_d1;
  input I6;
  input I7;
  input I8;
  input s_axi_rready;
  input [31:0]Q;
  input [0:0]s_axi_arsize;
  input I9;
  input [1:0]s_axi_arburst;
  input curr_narrow_burst;
  input I10;
  input s_axi_aresetn;

  wire I1;
  wire I10;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire [31:0]Q;
  wire ar_active_cmb;
  wire ar_active_d1;
  wire ar_active_re;
  wire [1:0]arb_sm_cs;
  wire aw_active_d1;
  wire aw_active_re;
  wire axi_arready_cmb;
  wire axi_awready_cmb;
  wire [31:0]bram_we_a;
  wire curr_narrow_burst;
  wire curr_narrow_burst_en;
  wire last_arb_won;
  wire n_0_ar_active_i_1;
  wire n_0_ar_active_i_2;
  wire \n_0_arb_sm_cs[0]_i_1 ;
  wire \n_0_arb_sm_cs[0]_i_2 ;
  wire \n_0_arb_sm_cs[0]_i_3 ;
  wire \n_0_arb_sm_cs[1]_i_1 ;
  wire n_0_aw_active_i_1;
  wire n_0_axi_arready_int_i_2;
  wire n_0_axi_awready_int_i_3;
  wire n_0_last_arb_won_i_1;
  wire n_0_last_arb_won_i_2;
  wire p_0_out;
  wire p_1_out;
  wire s_axi_aclk;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [3:0]s_axi_arlen;
  wire s_axi_arready;
  wire [0:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awburst;
  wire [1:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_rready;

LUT4 #(
    .INIT(16'h0888)) 
     \GEN_AR_SNG.ar_active_d1_i_1 
       (.I0(p_0_out),
        .I1(s_axi_aresetn),
        .I2(s_axi_rready),
        .I3(I8),
        .O(O4));
LUT6 #(
    .INIT(64'h7F7F7FFF70707000)) 
     \GEN_NARROW_EN.curr_narrow_burst_i_2 
       (.I0(s_axi_arsize),
        .I1(I9),
        .I2(O1),
        .I3(s_axi_arburst[0]),
        .I4(s_axi_arburst[1]),
        .I5(curr_narrow_burst),
        .O(O3));
LUT6 #(
    .INIT(64'hEF00EF00EF000000)) 
     \GEN_NARROW_EN.curr_narrow_burst_i_3 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awlen[0]),
        .I2(I3),
        .I3(aw_active_re),
        .I4(s_axi_awburst[1]),
        .I5(s_axi_awburst[0]),
        .O(curr_narrow_burst_en));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'h0800)) 
     act_rd_burst_i_3
       (.I0(I5),
        .I1(p_0_out),
        .I2(ar_active_d1),
        .I3(s_axi_arlen[0]),
        .O(O2));
LUT6 #(
    .INIT(64'hFFFFAAEA0000AA2A)) 
     ar_active_i_1
       (.I0(p_0_out),
        .I1(arb_sm_cs[0]),
        .I2(I7),
        .I3(arb_sm_cs[1]),
        .I4(n_0_ar_active_i_2),
        .I5(ar_active_cmb),
        .O(n_0_ar_active_i_1));
LUT6 #(
    .INIT(64'h000000000F770000)) 
     ar_active_i_2
       (.I0(last_arb_won),
        .I1(s_axi_awvalid),
        .I2(I6),
        .I3(arb_sm_cs[1]),
        .I4(s_axi_arvalid),
        .I5(arb_sm_cs[0]),
        .O(n_0_ar_active_i_2));
LUT6 #(
    .INIT(64'hFF00FF001F001300)) 
     ar_active_i_3
       (.I0(last_arb_won),
        .I1(arb_sm_cs[0]),
        .I2(s_axi_awvalid),
        .I3(s_axi_arvalid),
        .I4(I2),
        .I5(arb_sm_cs[1]),
        .O(ar_active_cmb));
FDRE #(
    .INIT(1'b0)) 
     ar_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_ar_active_i_1),
        .Q(p_0_out),
        .R(I1));
LUT5 #(
    .INIT(32'hF0FFF800)) 
     \arb_sm_cs[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(arb_sm_cs[1]),
        .I2(\n_0_arb_sm_cs[0]_i_2 ),
        .I3(\n_0_arb_sm_cs[0]_i_3 ),
        .I4(arb_sm_cs[0]),
        .O(\n_0_arb_sm_cs[0]_i_1 ));
LUT6 #(
    .INIT(64'h0040005000405050)) 
     \arb_sm_cs[0]_i_2 
       (.I0(arb_sm_cs[1]),
        .I1(I2),
        .I2(s_axi_arvalid),
        .I3(s_axi_awvalid),
        .I4(arb_sm_cs[0]),
        .I5(last_arb_won),
        .O(\n_0_arb_sm_cs[0]_i_2 ));
LUT6 #(
    .INIT(64'hCCFFEFEFCCFF2323)) 
     \arb_sm_cs[0]_i_3 
       (.I0(n_0_axi_awready_int_i_3),
        .I1(arb_sm_cs[0]),
        .I2(I2),
        .I3(I6),
        .I4(arb_sm_cs[1]),
        .I5(I7),
        .O(\n_0_arb_sm_cs[0]_i_3 ));
LUT6 #(
    .INIT(64'h33000D0D33000101)) 
     \arb_sm_cs[1]_i_1 
       (.I0(n_0_axi_awready_int_i_3),
        .I1(arb_sm_cs[0]),
        .I2(I2),
        .I3(I6),
        .I4(arb_sm_cs[1]),
        .I5(I7),
        .O(\n_0_arb_sm_cs[1]_i_1 ));
FDRE \arb_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_arb_sm_cs[0]_i_1 ),
        .Q(arb_sm_cs[0]),
        .R(I1));
FDRE \arb_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_arb_sm_cs[1]_i_1 ),
        .Q(arb_sm_cs[1]),
        .R(I1));
LUT6 #(
    .INIT(64'h3377307700440044)) 
     aw_active_i_1
       (.I0(I2),
        .I1(axi_awready_cmb),
        .I2(arb_sm_cs[0]),
        .I3(arb_sm_cs[1]),
        .I4(I6),
        .I5(p_1_out),
        .O(n_0_aw_active_i_1));
FDRE #(
    .INIT(1'b0)) 
     aw_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_aw_active_i_1),
        .Q(p_1_out),
        .R(I1));
LUT5 #(
    .INIT(32'h00007555)) 
     axi_arready_int_i_1
       (.I0(arb_sm_cs[0]),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(I2),
        .I4(n_0_axi_arready_int_i_2),
        .O(axi_arready_cmb));
LUT5 #(
    .INIT(32'h0000FF7F)) 
     axi_arready_int_i_2
       (.I0(arb_sm_cs[0]),
        .I1(I8),
        .I2(s_axi_rready),
        .I3(arb_sm_cs[1]),
        .I4(n_0_ar_active_i_2),
        .O(n_0_axi_arready_int_i_2));
FDRE #(
    .INIT(1'b0)) 
     axi_arready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_cmb),
        .Q(s_axi_arready),
        .R(I1));
LUT6 #(
    .INIT(64'h1011000100010001)) 
     axi_awready_int_i_1
       (.I0(arb_sm_cs[1]),
        .I1(I2),
        .I2(arb_sm_cs[0]),
        .I3(n_0_axi_awready_int_i_3),
        .I4(I8),
        .I5(s_axi_rready),
        .O(axi_awready_cmb));
LUT3 #(
    .INIT(8'h2A)) 
     axi_awready_int_i_3
       (.I0(s_axi_arvalid),
        .I1(last_arb_won),
        .I2(s_axi_awvalid),
        .O(n_0_axi_awready_int_i_3));
FDRE #(
    .INIT(1'b0)) 
     axi_awready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_cmb),
        .Q(s_axi_awready),
        .R(I1));
LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[0]_INST_0 
       (.I0(p_1_out),
        .I1(Q[0]),
        .O(bram_we_a[0]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[10]_INST_0 
       (.I0(p_1_out),
        .I1(Q[10]),
        .O(bram_we_a[10]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[11]_INST_0 
       (.I0(p_1_out),
        .I1(Q[11]),
        .O(bram_we_a[11]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[12]_INST_0 
       (.I0(p_1_out),
        .I1(Q[12]),
        .O(bram_we_a[12]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[13]_INST_0 
       (.I0(p_1_out),
        .I1(Q[13]),
        .O(bram_we_a[13]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[14]_INST_0 
       (.I0(p_1_out),
        .I1(Q[14]),
        .O(bram_we_a[14]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[15]_INST_0 
       (.I0(p_1_out),
        .I1(Q[15]),
        .O(bram_we_a[15]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[16]_INST_0 
       (.I0(p_1_out),
        .I1(Q[16]),
        .O(bram_we_a[16]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[17]_INST_0 
       (.I0(p_1_out),
        .I1(Q[17]),
        .O(bram_we_a[17]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[18]_INST_0 
       (.I0(p_1_out),
        .I1(Q[18]),
        .O(bram_we_a[18]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[19]_INST_0 
       (.I0(p_1_out),
        .I1(Q[19]),
        .O(bram_we_a[19]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[1]_INST_0 
       (.I0(p_1_out),
        .I1(Q[1]),
        .O(bram_we_a[1]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[20]_INST_0 
       (.I0(p_1_out),
        .I1(Q[20]),
        .O(bram_we_a[20]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[21]_INST_0 
       (.I0(p_1_out),
        .I1(Q[21]),
        .O(bram_we_a[21]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[22]_INST_0 
       (.I0(p_1_out),
        .I1(Q[22]),
        .O(bram_we_a[22]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[23]_INST_0 
       (.I0(p_1_out),
        .I1(Q[23]),
        .O(bram_we_a[23]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[24]_INST_0 
       (.I0(p_1_out),
        .I1(Q[24]),
        .O(bram_we_a[24]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[25]_INST_0 
       (.I0(p_1_out),
        .I1(Q[25]),
        .O(bram_we_a[25]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[26]_INST_0 
       (.I0(p_1_out),
        .I1(Q[26]),
        .O(bram_we_a[26]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[27]_INST_0 
       (.I0(p_1_out),
        .I1(Q[27]),
        .O(bram_we_a[27]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[28]_INST_0 
       (.I0(p_1_out),
        .I1(Q[28]),
        .O(bram_we_a[28]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[29]_INST_0 
       (.I0(p_1_out),
        .I1(Q[29]),
        .O(bram_we_a[29]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[2]_INST_0 
       (.I0(p_1_out),
        .I1(Q[2]),
        .O(bram_we_a[2]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[30]_INST_0 
       (.I0(p_1_out),
        .I1(Q[30]),
        .O(bram_we_a[30]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[31]_INST_0 
       (.I0(p_1_out),
        .I1(Q[31]),
        .O(bram_we_a[31]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[3]_INST_0 
       (.I0(p_1_out),
        .I1(Q[3]),
        .O(bram_we_a[3]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[4]_INST_0 
       (.I0(p_1_out),
        .I1(Q[4]),
        .O(bram_we_a[4]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[5]_INST_0 
       (.I0(p_1_out),
        .I1(Q[5]),
        .O(bram_we_a[5]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[6]_INST_0 
       (.I0(p_1_out),
        .I1(Q[6]),
        .O(bram_we_a[6]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[7]_INST_0 
       (.I0(p_1_out),
        .I1(Q[7]),
        .O(bram_we_a[7]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[8]_INST_0 
       (.I0(p_1_out),
        .I1(Q[8]),
        .O(bram_we_a[8]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \bram_we_a[9]_INST_0 
       (.I0(p_1_out),
        .I1(Q[9]),
        .O(bram_we_a[9]));
LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
     brst_zero_i_3
       (.I0(ar_active_re),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arlen[3]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[1]),
        .I5(I4),
        .O(O1));
LUT5 #(
    .INIT(32'hAAABAAA8)) 
     last_arb_won_i_1
       (.I0(ar_active_cmb),
        .I1(n_0_last_arb_won_i_2),
        .I2(I10),
        .I3(n_0_ar_active_i_2),
        .I4(last_arb_won),
        .O(n_0_last_arb_won_i_1));
LUT6 #(
    .INIT(64'h0000080008080808)) 
     last_arb_won_i_2
       (.I0(arb_sm_cs[0]),
        .I1(I7),
        .I2(arb_sm_cs[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_awvalid),
        .I5(I2),
        .O(n_0_last_arb_won_i_2));
FDRE #(
    .INIT(1'b0)) 
     last_arb_won_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_last_arb_won_i_1),
        .Q(last_arb_won),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \save_init_bram_addr_ld[14]_i_1 
       (.I0(p_1_out),
        .I1(aw_active_d1),
        .O(aw_active_re));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \save_init_bram_addr_ld[14]_i_1__0 
       (.I0(p_0_out),
        .I1(ar_active_d1),
        .O(ar_active_re));
endmodule

(* ORIG_REF_NAME = "wr_chnl" *) 
module controller_wr_chnl
   (aw_active_d1,
    bram_wrdata_a,
    s_axi_wready,
    O1,
    s_axi_bid,
    O2,
    O3,
    O4,
    O5,
    D,
    O6,
    O7,
    O8,
    O9,
    O10,
    bram_en_a,
    Q,
    I1,
    s_axi_aclk,
    s_axi_awid,
    p_1_out,
    s_axi_wdata,
    s_axi_awburst,
    s_axi_awsize,
    s_axi_aresetn,
    s_axi_wvalid,
    s_axi_awvalid,
    arb_sm_cs,
    s_axi_awlen,
    I2,
    I3,
    I4,
    aw_active_re,
    I5,
    I6,
    p_0_out,
    s_axi_awaddr,
    I7,
    ar_active_re,
    s_axi_wlast,
    s_axi_bready,
    I8,
    p_7_in,
    curr_narrow_burst_en,
    s_axi_wstrb);
  output aw_active_d1;
  output [255:0]bram_wrdata_a;
  output s_axi_wready;
  output O1;
  output [0:0]s_axi_bid;
  output O2;
  output O3;
  output O4;
  output O5;
  output [8:0]D;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output bram_en_a;
  output [31:0]Q;
  input I1;
  input s_axi_aclk;
  input [0:0]s_axi_awid;
  input p_1_out;
  input [255:0]s_axi_wdata;
  input [1:0]s_axi_awburst;
  input [2:0]s_axi_awsize;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [1:0]arb_sm_cs;
  input [7:0]s_axi_awlen;
  input I2;
  input I3;
  input I4;
  input aw_active_re;
  input I5;
  input I6;
  input p_0_out;
  input [13:0]s_axi_awaddr;
  input I7;
  input ar_active_re;
  input s_axi_wlast;
  input s_axi_bready;
  input I8;
  input p_7_in;
  input curr_narrow_burst_en;
  input [31:0]s_axi_wstrb;

  wire [2:0]AW2Arb_BVALID_Cnt;
  wire [8:0]D;
  wire [8:0]\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb ;
  wire [6:0]\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0 ;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire O1;
  wire O10;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [31:0]Q;
  wire ar_active_re;
  wire [1:0]arb_sm_cs;
  wire aw_active_d1;
  wire aw_active_re;
  wire axi_wdata_full_cmb;
  wire axi_wdata_full_reg;
  wire axi_wlast_d1;
  wire axi_wr_burst;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire bram_en_a;
  wire bram_en_cmb;
  wire [255:0]bram_wrdata_a;
  wire bvalid_cnt_inc;
  wire clr_bram_we;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst;
  wire curr_narrow_burst_en;
  wire curr_wrap_burst_reg;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_3 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_5 ;
  wire n_0_BID_FIFO;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_2 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_5__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_11 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_13 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_14 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_15 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_17 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_18 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_19 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_2 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_20 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_22 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_23 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_24 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_25 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_3 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_4__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_5__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_6 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_7 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_8 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_10 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_11 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_12 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_15 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_16 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_17 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_19 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_20 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_21__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_22 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_23__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_26 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_27 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_3 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_31 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_32 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_33 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_34 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_38 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_39 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_4 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_40 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_41 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_42 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_43 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_44 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_45 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_46 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_47 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_48 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_49 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_51 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_52 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_55 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_56 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_9__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_1 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_1 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5 ;
  wire \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] ;
  wire \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] ;
  wire \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2] ;
  wire \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3] ;
  wire \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[4] ;
  wire \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1__0 ;
  wire \n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0 ;
  wire \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1 ;
  wire \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1 ;
  wire \n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2 ;
  wire \n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ;
  wire n_0_axi_bvalid_int_i_1;
  wire n_0_axi_wr_burst_i_1;
  wire n_0_axi_wr_burst_i_2;
  wire n_0_axi_wready_int_mod_i_1;
  wire n_0_bid_gets_fifo_load_d1_i_2;
  wire \n_0_bvalid_cnt[0]_i_1 ;
  wire \n_0_bvalid_cnt[1]_i_1 ;
  wire \n_0_bvalid_cnt[2]_i_1 ;
  wire n_0_curr_fixed_burst_reg_i_1__0;
  wire n_0_curr_wrap_burst_reg_i_1__0;
  wire n_13_I_WRAP_BRST;
  wire n_1_BID_FIFO;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_37 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_37 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5 ;
  wire n_3_BID_FIFO;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_37 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5 ;
  wire n_9_I_WRAP_BRST;
  wire [4:0]narrow_addr_int;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire [4:0]narrow_burst_cnt_ld_reg;
  wire p_0_out;
  wire p_11_in;
  wire p_1_out;
  wire p_7_in;
  wire p_8_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [255:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [31:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [1:0]wr_data_sng_sm_cs;
  wire wrdata_reg_ld;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5_O_UNCONNECTED ;

LUT6 #(
    .INIT(64'h10101010101F1010)) 
     \ADDR_SNG_PORT.bram_addr_int[11]_i_4 
       (.I0(I5),
        .I1(I6),
        .I2(p_0_out),
        .I3(curr_fixed_burst_reg),
        .I4(\n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_5 ),
        .I5(n_9_I_WRAP_BRST),
        .O(O5));
LUT2 #(
    .INIT(4'hB)) 
     \ADDR_SNG_PORT.bram_addr_int[14]_i_1 
       (.I0(\n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_3 ),
        .I1(s_axi_aresetn),
        .O(O2));
LUT4 #(
    .INIT(16'h00D0)) 
     \ADDR_SNG_PORT.bram_addr_int[14]_i_3 
       (.I0(p_1_out),
        .I1(aw_active_d1),
        .I2(wr_data_sng_sm_cs[0]),
        .I3(wr_data_sng_sm_cs[1]),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair185" *) 
   LUT3 #(
    .INIT(8'h40)) 
     \ADDR_SNG_PORT.bram_addr_int[14]_i_5 
       (.I0(wr_data_sng_sm_cs[0]),
        .I1(wr_data_sng_sm_cs[1]),
        .I2(s_axi_wvalid),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_5 ));
controller_SRL_FIFO BID_FIFO
       (.AW2Arb_BVALID_Cnt(AW2Arb_BVALID_Cnt),
        .I1(I1),
        .I2(aw_active_d1),
        .I3(O1),
        .I4(n_0_bid_gets_fifo_load_d1_i_2),
        .O1(n_0_BID_FIFO),
        .O2(n_1_BID_FIFO),
        .O3(n_3_BID_FIFO),
        .aw_active_re(aw_active_re),
        .axi_wdata_full_reg(axi_wdata_full_reg),
        .axi_wr_burst(axi_wr_burst),
        .bid_gets_fifo_load(bid_gets_fifo_load),
        .bid_gets_fifo_load_d1(bid_gets_fifo_load_d1),
        .p_1_out(p_1_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_awid(s_axi_awid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .wr_data_sng_sm_cs(wr_data_sng_sm_cs));
LUT5 #(
    .INIT(32'h880F88F0)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_2 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7 ),
        .I1(narrow_burst_cnt_ld_reg[0]),
        .I2(n_13_I_WRAP_BRST),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ),
        .I4(narrow_addr_int[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2 ));
LUT6 #(
    .INIT(64'h8B8B00FF8B8BFF00)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_3 
       (.I0(narrow_burst_cnt_ld_reg[0]),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4 ),
        .I3(n_13_I_WRAP_BRST),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ),
        .I5(narrow_addr_int[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair191" *) 
   LUT5 #(
    .INIT(32'h0000FFBF)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_4 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5 ),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_5 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [7]),
        .I1(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [6]),
        .I2(s_axi_awsize[1]),
        .I3(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [5]),
        .I4(s_axi_awsize[0]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [4]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5 ));
LUT6 #(
    .INIT(64'h8888F0FF88880F00)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_2 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7 ),
        .I1(narrow_burst_cnt_ld_reg[1]),
        .I2(narrow_addr_int[0]),
        .I3(n_13_I_WRAP_BRST),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ),
        .I5(narrow_addr_int[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2 ));
LUT5 #(
    .INIT(32'hAACFAA30)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_3 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0 ),
        .I1(narrow_addr_int[0]),
        .I2(n_13_I_WRAP_BRST),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ),
        .I4(narrow_addr_int[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3 ));
LUT6 #(
    .INIT(64'hA88AAA8AABBAAABA)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0 
       (.I0(narrow_burst_cnt_ld_reg[1]),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14 ),
        .I2(s_axi_awburst[0]),
        .I3(s_axi_awburst[1]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0 ));
(* SOFT_HLUTNM = "soft_lutpair192" *) 
   LUT5 #(
    .INIT(32'hFB0404FB)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_5 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5 ));
LUT5 #(
    .INIT(32'hC0CCAAAA)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_10 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5 ),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_11 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I1(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [7]),
        .I2(s_axi_awsize[1]),
        .I3(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [6]),
        .I4(s_axi_awsize[0]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [5]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_12 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [4]),
        .I1(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [3]),
        .I2(s_axi_awsize[1]),
        .I3(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [2]),
        .I4(s_axi_awsize[0]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_13 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [3]),
        .I1(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [2]),
        .I2(s_axi_awsize[1]),
        .I3(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [1]),
        .I4(s_axi_awsize[0]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13 ));
LUT6 #(
    .INIT(64'hC0C0AAFFC0C0AA00)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_2 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7 ),
        .I2(narrow_burst_cnt_ld_reg[2]),
        .I3(n_13_I_WRAP_BRST),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ),
        .I5(narrow_addr_int[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_2 ));
LUT6 #(
    .INIT(64'h08AAFFFF08AA0000)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_3 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_5__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8 ),
        .I5(narrow_addr_int[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair190" *) 
   LUT3 #(
    .INIT(8'hA9)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_4__0 
       (.I0(narrow_addr_int[2]),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4__0 ));
LUT4 #(
    .INIT(16'hFEAB)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_5__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ),
        .I1(narrow_addr_int[0]),
        .I2(narrow_addr_int[1]),
        .I3(narrow_addr_int[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_5__0 ));
LUT6 #(
    .INIT(64'h595559655965A6AA)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_6 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9 ),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[0]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6 ));
LUT6 #(
    .INIT(64'h222A2A2222222A22)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_7 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ),
        .I1(narrow_burst_cnt_ld_reg[2]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14 ),
        .I3(s_axi_awburst[0]),
        .I4(s_axi_awburst[1]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair182" *) 
   LUT5 #(
    .INIT(32'hFFFF4000)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_8 
       (.I0(wr_data_sng_sm_cs[0]),
        .I1(wr_data_sng_sm_cs[1]),
        .I2(s_axi_wvalid),
        .I3(curr_narrow_burst),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8 ));
LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_9 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11 ),
        .I1(s_axi_awsize[2]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9 ));
(* SOFT_HLUTNM = "soft_lutpair191" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_10 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0 [3]));
LUT5 #(
    .INIT(32'h0000E200)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_11 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [7]),
        .I1(s_axi_awsize[0]),
        .I2(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_11 ));
LUT6 #(
    .INIT(64'hFF00FF47FFFFFF47)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_12 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [4]),
        .I1(s_axi_awsize[0]),
        .I2(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [3]),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awsize[1]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_17 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12 ));
(* SOFT_HLUTNM = "soft_lutpair187" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_13 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_13 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_14 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [5]),
        .I1(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [4]),
        .I2(s_axi_awsize[1]),
        .I3(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [3]),
        .I4(s_axi_awsize[0]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_14 ));
LUT5 #(
    .INIT(32'h30BB3088)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_15 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I1(s_axi_awsize[1]),
        .I2(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [7]),
        .I3(s_axi_awsize[0]),
        .I4(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [6]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_15 ));
(* SOFT_HLUTNM = "soft_lutpair195" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_17 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [6]),
        .I1(s_axi_awsize[0]),
        .I2(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [5]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_17 ));
LUT3 #(
    .INIT(8'h08)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_18 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_18 ));
LUT3 #(
    .INIT(8'h04)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_19 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_19 ));
LUT6 #(
    .INIT(64'hC0C0AAFFC0C0AA00)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_2 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_4__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7 ),
        .I2(narrow_burst_cnt_ld_reg[3]),
        .I3(n_13_I_WRAP_BRST),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ),
        .I5(narrow_addr_int[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_2 ));
LUT3 #(
    .INIT(8'h04)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_20 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_20 ));
LUT3 #(
    .INIT(8'h01)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_21 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .O(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0 [0]));
LUT4 #(
    .INIT(16'hBF40)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_22 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awaddr[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_22 ));
LUT4 #(
    .INIT(16'hFB04)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_23 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awaddr[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_23 ));
LUT4 #(
    .INIT(16'hFB04)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_24 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awaddr[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_24 ));
LUT4 #(
    .INIT(16'hFE01)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_25 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awaddr[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_25 ));
LUT6 #(
    .INIT(64'hFBAAFFFFFBAA0000)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_3 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_5__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_6 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_7 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_8 ),
        .I5(narrow_addr_int[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair183" *) 
   LUT4 #(
    .INIT(16'hAAA9)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_4__0 
       (.I0(narrow_addr_int[3]),
        .I1(narrow_addr_int[2]),
        .I2(narrow_addr_int[0]),
        .I3(narrow_addr_int[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_4__0 ));
(* SOFT_HLUTNM = "soft_lutpair183" *) 
   LUT5 #(
    .INIT(32'h0000FE01)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_5__0 
       (.I0(narrow_addr_int[1]),
        .I1(narrow_addr_int[0]),
        .I2(narrow_addr_int[2]),
        .I3(narrow_addr_int[3]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_5__0 ));
LUT6 #(
    .INIT(64'hB24DB2B24DB24D4D)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_6 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_20 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0 [3]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_11 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_13 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_6 ));
LUT6 #(
    .INIT(64'hFFFF140400000000)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_7 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14 ),
        .I1(s_axi_awburst[0]),
        .I2(s_axi_awburst[1]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24 ),
        .I4(narrow_burst_cnt_ld_reg[3]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair182" *) 
   LUT5 #(
    .INIT(32'hFFFF4000)) 
     \GEN_NARROW_CNT.narrow_addr_int[3]_i_8 
       (.I0(wr_data_sng_sm_cs[0]),
        .I1(wr_data_sng_sm_cs[1]),
        .I2(s_axi_wvalid),
        .I3(curr_narrow_burst),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_8 ));
LUT6 #(
    .INIT(64'h0000FFFFE0EF1F10)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_10 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_19 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_20 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_21__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_22 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_23__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_10 ));
LUT6 #(
    .INIT(64'h222A2A2222222A22)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_11 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ),
        .I1(narrow_burst_cnt_ld_reg[4]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14 ),
        .I3(s_axi_awburst[0]),
        .I4(s_axi_awburst[1]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_11 ));
(* SOFT_HLUTNM = "soft_lutpair189" *) 
   LUT5 #(
    .INIT(32'hFFFF4000)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_12 
       (.I0(wr_data_sng_sm_cs[0]),
        .I1(wr_data_sng_sm_cs[1]),
        .I2(s_axi_wvalid),
        .I3(curr_narrow_burst),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_12 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_14 
       (.I0(s_axi_awaddr[4]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[3]),
        .I4(s_axi_awaddr[1]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_27 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14 ));
LUT5 #(
    .INIT(32'hFCFCE0A0)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_15 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28 ),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_15 ));
LUT5 #(
    .INIT(32'hFFFFDFD5)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_16 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_31 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_32 ),
        .I2(s_axi_awsize[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_33 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_16 ));
LUT6 #(
    .INIT(64'h0FFFFEEE00AAAEEE)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_17 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_34 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35 ),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[2]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_17 ));
(* SOFT_HLUTNM = "soft_lutpair193" *) 
   LUT4 #(
    .INIT(16'h0020)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_18 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12 ),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_18 ));
(* SOFT_HLUTNM = "soft_lutpair193" *) 
   LUT4 #(
    .INIT(16'h40FF)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_19 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_19 ));
(* SOFT_HLUTNM = "soft_lutpair192" *) 
   LUT5 #(
    .INIT(32'h000404FF)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_20 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_20 ));
LUT6 #(
    .INIT(64'hFFFFACFFFFFFAFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_21__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_11 ),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[2]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_21__0 ));
LUT5 #(
    .INIT(32'h000CA5AA)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_22 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_22 ));
LUT6 #(
    .INIT(64'h5555F5DD55005555)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_23__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12 ),
        .I1(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [7]),
        .I2(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_23__0 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_24 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_15 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_31 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_38 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_33 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_39 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_40 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_24 ));
LUT4 #(
    .INIT(16'hFFFB)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_26 
       (.I0(s_axi_awsize[2]),
        .I1(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_26 ));
LUT5 #(
    .INIT(32'hFF40FFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_27 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .I3(aw_active_d1),
        .I4(p_1_out),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_27 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_28 
       (.I0(s_axi_awlen[4]),
        .I1(s_axi_awlen[5]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[6]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[7]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28 ));
LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_29 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29 ));
LUT6 #(
    .INIT(64'hC0C0AAFFC0C0AA00)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_3 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7 ),
        .I2(narrow_burst_cnt_ld_reg[4]),
        .I3(n_13_I_WRAP_BRST),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ),
        .I5(narrow_addr_int[4]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_30 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awlen[7]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[4]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[5]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30 ));
(* SOFT_HLUTNM = "soft_lutpair187" *) 
   LUT5 #(
    .INIT(32'h5353533F)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_31 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_48 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_49 ),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_31 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_32 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awlen[1]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[2]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_32 ));
LUT6 #(
    .INIT(64'hFFC0E800BFC0A800)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_33 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_49 ),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[2]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_33 ));
(* SOFT_HLUTNM = "soft_lutpair186" *) 
   LUT5 #(
    .INIT(32'hBEB28E82)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_34 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30 ),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_34 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_35 
       (.I0(s_axi_awlen[5]),
        .I1(s_axi_awlen[4]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awlen[7]),
        .I5(s_axi_awlen[6]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_36 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awlen[0]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awlen[3]),
        .I5(s_axi_awlen[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_38 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50 ),
        .I1(s_axi_awsize[1]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29 ),
        .I3(s_axi_awsize[2]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_28 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_38 ));
(* SOFT_HLUTNM = "soft_lutpair186" *) 
   LUT5 #(
    .INIT(32'h3E320E02)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_39 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_30 ),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_29 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_39 ));
LUT6 #(
    .INIT(64'h08AAFFFF08AA0000)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_4 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_9__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_10 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_11 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_12 ),
        .I5(narrow_addr_int[4]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair188" *) 
   LUT5 #(
    .INIT(32'h2BBB2888)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_40 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_36 ),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_35 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_40 ));
LUT5 #(
    .INIT(32'h00000007)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_41 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5 ),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[2]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_41 ));
LUT5 #(
    .INIT(32'h04440000)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_42 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_56 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_42 ));
LUT5 #(
    .INIT(32'h00001050)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_43 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_43 ));
LUT6 #(
    .INIT(64'hFCDCFCDCFDDCFDDF)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_44 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .I4(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [6]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [7]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_44 ));
LUT6 #(
    .INIT(64'hCCD0CCDCDDC2DDCE)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_45 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11 ),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_45 ));
LUT5 #(
    .INIT(32'h22228122)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_46 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_56 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9 ),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_46 ));
LUT5 #(
    .INIT(32'h04FB0000)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_47 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_47 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_48 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awlen[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awlen[1]),
        .I5(s_axi_awlen[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_48 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_49 
       (.I0(s_axi_awlen[7]),
        .I1(s_axi_awlen[6]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awlen[5]),
        .I5(s_axi_awlen[4]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_49 ));
(* SOFT_HLUTNM = "soft_lutpair195" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_50 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_50 ));
LUT3 #(
    .INIT(8'h04)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_51 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_51 ));
LUT3 #(
    .INIT(8'h80)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_52 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_52 ));
LUT3 #(
    .INIT(8'h08)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_53 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .O(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0 [6]));
LUT3 #(
    .INIT(8'h08)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_54 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .O(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0 [5]));
LUT4 #(
    .INIT(16'hFB04)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_55 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awaddr[4]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_55 ));
LUT6 #(
    .INIT(64'h8AAA8A8A8AAAAAAA)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_56 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_12 ),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .I3(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8]),
        .I4(s_axi_awsize[0]),
        .I5(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [7]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_56 ));
(* SOFT_HLUTNM = "soft_lutpair190" *) 
   LUT5 #(
    .INIT(32'hAAAAAAA9)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_6__0 
       (.I0(narrow_addr_int[4]),
        .I1(narrow_addr_int[3]),
        .I2(narrow_addr_int[1]),
        .I3(narrow_addr_int[0]),
        .I4(narrow_addr_int[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_6__0 ));
LUT6 #(
    .INIT(64'hEBEBEBEBEBEBEBFB)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_7 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_14 ),
        .I1(s_axi_awburst[0]),
        .I2(s_axi_awburst[1]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_15 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_16 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_17 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_7 ));
LUT6 #(
    .INIT(64'hF4FFFFFF44444444)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_8 
       (.I0(narrow_bram_addr_inc_d1),
        .I1(narrow_bram_addr_inc),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awsize[0]),
        .I5(aw_active_re),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ));
LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAB)) 
     \GEN_NARROW_CNT.narrow_addr_int[4]_i_9__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_8 ),
        .I1(narrow_addr_int[2]),
        .I2(narrow_addr_int[0]),
        .I3(narrow_addr_int[1]),
        .I4(narrow_addr_int[3]),
        .I5(narrow_addr_int[4]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_9__0 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1 ),
        .Q(narrow_addr_int[0]),
        .R(I1));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1 ),
        .Q(narrow_addr_int[1]),
        .R(I1));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1 ),
        .Q(narrow_addr_int[2]),
        .R(I1));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_2 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_1 ),
        .Q(narrow_addr_int[3]),
        .R(I1));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_1 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_2 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_3 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_1 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2 ));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16 
       (.CI(1'b0),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16 }),
        .CYINIT(1'b0),
        .DI({\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_18 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_19 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_20 ,\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0 [0]}),
        .O(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [3:0]),
        .S({\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_22 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_23 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_24 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_25 }));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_14 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[3]_i_15 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_9 ),
        .S(s_axi_awsize[2]));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_1 ),
        .Q(narrow_addr_int[4]),
        .R(I1));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_1 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_3 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_4 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_1 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2 ));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_26 }));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25 
       (.CI(1'b0),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25 }),
        .CYINIT(1'b1),
        .DI({1'b0,\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_41 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_42 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_43 }),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_25_O_UNCONNECTED [3:0]),
        .S({\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_44 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_45 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_46 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_47 }));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_37 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[3]_i_16 ),
        .CO({\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [8],\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_37 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_37 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_37 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_51 }),
        .O(\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb [7:4]),
        .S({\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_52 ,\GEN_UA_NARROW.I_UA_NARROW/size_plus_lsb0 [6:5],\n_0_GEN_NARROW_CNT.narrow_addr_int[4]_i_55 }));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_13 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[4]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_bram_addr_inc),
        .Q(narrow_bram_addr_inc_d1),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFF57FF00005700)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(p_1_out),
        .I4(aw_active_d1),
        .I5(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] ),
        .O(narrow_burst_cnt_ld_reg[0]));
LUT4 #(
    .INIT(16'hF704)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(p_1_out),
        .I2(aw_active_d1),
        .I3(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] ),
        .O(narrow_burst_cnt_ld_reg[1]));
LUT6 #(
    .INIT(64'hFFFF15FF00001500)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(p_1_out),
        .I4(aw_active_d1),
        .I5(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2] ),
        .O(narrow_burst_cnt_ld_reg[2]));
LUT5 #(
    .INIT(32'hFF1F0010)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(p_1_out),
        .I3(aw_active_d1),
        .I4(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3] ),
        .O(narrow_burst_cnt_ld_reg[3]));
LUT6 #(
    .INIT(64'hFFFF01FF00000100)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[4]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(p_1_out),
        .I4(aw_active_d1),
        .I5(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[4] ),
        .O(narrow_burst_cnt_ld_reg[4]));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[0]),
        .Q(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] ),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[1]),
        .Q(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] ),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[2]),
        .Q(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2] ),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[3]),
        .Q(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3] ),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[4]),
        .Q(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[4] ),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair196" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \GEN_NARROW_EN.axi_wlast_d1_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_wlast),
        .I2(s_axi_wvalid),
        .O(p_11_in));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_EN.axi_wlast_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_11_in),
        .Q(axi_wlast_d1),
        .R(I1));
LUT6 #(
    .INIT(64'h30303030A000A0A0)) 
     \GEN_NARROW_EN.curr_narrow_burst_i_1__0 
       (.I0(curr_narrow_burst),
        .I1(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0 ),
        .I2(s_axi_aresetn),
        .I3(axi_wlast_d1),
        .I4(p_11_in),
        .I5(curr_narrow_burst_en),
        .O(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair188" *) 
   LUT3 #(
    .INIT(8'h40)) 
     \GEN_NARROW_EN.curr_narrow_burst_i_2__0 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .O(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \GEN_NARROW_EN.curr_narrow_burst_i_4 
       (.I0(s_axi_awlen[7]),
        .I1(s_axi_awlen[4]),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awlen[1]),
        .I4(s_axi_awlen[5]),
        .I5(s_axi_awlen[6]),
        .O(O4));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_EN.curr_narrow_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_1__0 ),
        .Q(curr_narrow_burst),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair185" *) 
   LUT5 #(
    .INIT(32'hD8D888DC)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_i_1 
       (.I0(wr_data_sng_sm_cs[1]),
        .I1(axi_wdata_full_reg),
        .I2(s_axi_wvalid),
        .I3(p_1_out),
        .I4(wr_data_sng_sm_cs[0]),
        .O(axi_wdata_full_cmb));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wdata_full_cmb),
        .Q(axi_wdata_full_reg),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair184" *) 
   LUT5 #(
    .INIT(32'h0000F0C8)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1 
       (.I0(axi_wdata_full_reg),
        .I1(p_1_out),
        .I2(s_axi_wvalid),
        .I3(wr_data_sng_sm_cs[1]),
        .I4(wr_data_sng_sm_cs[0]),
        .O(bram_en_cmb));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_en_cmb),
        .Q(p_8_in),
        .R(I1));
LUT1 #(
    .INIT(2'h1)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_1 
       (.I0(n_0_BID_FIFO),
        .O(bvalid_cnt_inc));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bvalid_cnt_inc),
        .Q(clr_bram_we),
        .R(I1));
LUT6 #(
    .INIT(64'h0000FFFFFF5C0000)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1 
       (.I0(axi_wr_burst),
        .I1(s_axi_wlast),
        .I2(axi_wdata_full_reg),
        .I3(wr_data_sng_sm_cs[1]),
        .I4(\n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2 ),
        .I5(wr_data_sng_sm_cs[0]),
        .O(\n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1 ));
LUT6 #(
    .INIT(64'h0000FFFF00A30000)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1 
       (.I0(axi_wr_burst),
        .I1(s_axi_wlast),
        .I2(axi_wdata_full_reg),
        .I3(wr_data_sng_sm_cs[0]),
        .I4(\n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2 ),
        .I5(wr_data_sng_sm_cs[1]),
        .O(\n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFF0AA0088)) 
     \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2 
       (.I0(p_1_out),
        .I1(axi_wdata_full_reg),
        .I2(s_axi_wlast),
        .I3(wr_data_sng_sm_cs[1]),
        .I4(s_axi_wvalid),
        .I5(wr_data_sng_sm_cs[0]),
        .O(\n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2 ));
FDRE \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1 ),
        .Q(wr_data_sng_sm_cs[0]),
        .R(I1));
FDRE \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1 ),
        .Q(wr_data_sng_sm_cs[1]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[0].bram_wrdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[0]),
        .Q(bram_wrdata_a[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[100].bram_wrdata_int_reg[100] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[100]),
        .Q(bram_wrdata_a[100]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[101].bram_wrdata_int_reg[101] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[101]),
        .Q(bram_wrdata_a[101]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[102].bram_wrdata_int_reg[102] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[102]),
        .Q(bram_wrdata_a[102]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[103].bram_wrdata_int_reg[103] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[103]),
        .Q(bram_wrdata_a[103]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[104].bram_wrdata_int_reg[104] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[104]),
        .Q(bram_wrdata_a[104]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[105].bram_wrdata_int_reg[105] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[105]),
        .Q(bram_wrdata_a[105]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[106].bram_wrdata_int_reg[106] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[106]),
        .Q(bram_wrdata_a[106]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[107].bram_wrdata_int_reg[107] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[107]),
        .Q(bram_wrdata_a[107]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[108].bram_wrdata_int_reg[108] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[108]),
        .Q(bram_wrdata_a[108]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[109].bram_wrdata_int_reg[109] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[109]),
        .Q(bram_wrdata_a[109]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[10].bram_wrdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[10]),
        .Q(bram_wrdata_a[10]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[110].bram_wrdata_int_reg[110] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[110]),
        .Q(bram_wrdata_a[110]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[111].bram_wrdata_int_reg[111] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[111]),
        .Q(bram_wrdata_a[111]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[112].bram_wrdata_int_reg[112] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[112]),
        .Q(bram_wrdata_a[112]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[113].bram_wrdata_int_reg[113] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[113]),
        .Q(bram_wrdata_a[113]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[114].bram_wrdata_int_reg[114] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[114]),
        .Q(bram_wrdata_a[114]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[115].bram_wrdata_int_reg[115] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[115]),
        .Q(bram_wrdata_a[115]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[116].bram_wrdata_int_reg[116] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[116]),
        .Q(bram_wrdata_a[116]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[117].bram_wrdata_int_reg[117] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[117]),
        .Q(bram_wrdata_a[117]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[118].bram_wrdata_int_reg[118] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[118]),
        .Q(bram_wrdata_a[118]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[119].bram_wrdata_int_reg[119] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[119]),
        .Q(bram_wrdata_a[119]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[11].bram_wrdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[11]),
        .Q(bram_wrdata_a[11]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[120].bram_wrdata_int_reg[120] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[120]),
        .Q(bram_wrdata_a[120]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[121].bram_wrdata_int_reg[121] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[121]),
        .Q(bram_wrdata_a[121]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[122].bram_wrdata_int_reg[122] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[122]),
        .Q(bram_wrdata_a[122]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[123].bram_wrdata_int_reg[123] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[123]),
        .Q(bram_wrdata_a[123]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[124].bram_wrdata_int_reg[124] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[124]),
        .Q(bram_wrdata_a[124]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[125].bram_wrdata_int_reg[125] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[125]),
        .Q(bram_wrdata_a[125]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[126].bram_wrdata_int_reg[126] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[126]),
        .Q(bram_wrdata_a[126]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[127].bram_wrdata_int_reg[127] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[127]),
        .Q(bram_wrdata_a[127]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[128].bram_wrdata_int_reg[128] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[128]),
        .Q(bram_wrdata_a[128]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[129].bram_wrdata_int_reg[129] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[129]),
        .Q(bram_wrdata_a[129]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[12].bram_wrdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[12]),
        .Q(bram_wrdata_a[12]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[130].bram_wrdata_int_reg[130] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[130]),
        .Q(bram_wrdata_a[130]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[131].bram_wrdata_int_reg[131] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[131]),
        .Q(bram_wrdata_a[131]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[132].bram_wrdata_int_reg[132] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[132]),
        .Q(bram_wrdata_a[132]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[133].bram_wrdata_int_reg[133] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[133]),
        .Q(bram_wrdata_a[133]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[134].bram_wrdata_int_reg[134] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[134]),
        .Q(bram_wrdata_a[134]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[135].bram_wrdata_int_reg[135] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[135]),
        .Q(bram_wrdata_a[135]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[136].bram_wrdata_int_reg[136] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[136]),
        .Q(bram_wrdata_a[136]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[137].bram_wrdata_int_reg[137] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[137]),
        .Q(bram_wrdata_a[137]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[138].bram_wrdata_int_reg[138] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[138]),
        .Q(bram_wrdata_a[138]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[139].bram_wrdata_int_reg[139] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[139]),
        .Q(bram_wrdata_a[139]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[13].bram_wrdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[13]),
        .Q(bram_wrdata_a[13]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[140].bram_wrdata_int_reg[140] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[140]),
        .Q(bram_wrdata_a[140]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[141].bram_wrdata_int_reg[141] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[141]),
        .Q(bram_wrdata_a[141]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[142].bram_wrdata_int_reg[142] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[142]),
        .Q(bram_wrdata_a[142]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[143].bram_wrdata_int_reg[143] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[143]),
        .Q(bram_wrdata_a[143]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[144].bram_wrdata_int_reg[144] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[144]),
        .Q(bram_wrdata_a[144]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[145].bram_wrdata_int_reg[145] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[145]),
        .Q(bram_wrdata_a[145]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[146].bram_wrdata_int_reg[146] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[146]),
        .Q(bram_wrdata_a[146]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[147].bram_wrdata_int_reg[147] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[147]),
        .Q(bram_wrdata_a[147]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[148].bram_wrdata_int_reg[148] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[148]),
        .Q(bram_wrdata_a[148]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[149].bram_wrdata_int_reg[149] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[149]),
        .Q(bram_wrdata_a[149]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[14].bram_wrdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[14]),
        .Q(bram_wrdata_a[14]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[150].bram_wrdata_int_reg[150] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[150]),
        .Q(bram_wrdata_a[150]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[151].bram_wrdata_int_reg[151] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[151]),
        .Q(bram_wrdata_a[151]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[152].bram_wrdata_int_reg[152] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[152]),
        .Q(bram_wrdata_a[152]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[153].bram_wrdata_int_reg[153] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[153]),
        .Q(bram_wrdata_a[153]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[154].bram_wrdata_int_reg[154] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[154]),
        .Q(bram_wrdata_a[154]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[155].bram_wrdata_int_reg[155] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[155]),
        .Q(bram_wrdata_a[155]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[156].bram_wrdata_int_reg[156] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[156]),
        .Q(bram_wrdata_a[156]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[157].bram_wrdata_int_reg[157] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[157]),
        .Q(bram_wrdata_a[157]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[158].bram_wrdata_int_reg[158] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[158]),
        .Q(bram_wrdata_a[158]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[159].bram_wrdata_int_reg[159] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[159]),
        .Q(bram_wrdata_a[159]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[15].bram_wrdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[15]),
        .Q(bram_wrdata_a[15]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[160].bram_wrdata_int_reg[160] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[160]),
        .Q(bram_wrdata_a[160]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[161].bram_wrdata_int_reg[161] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[161]),
        .Q(bram_wrdata_a[161]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[162].bram_wrdata_int_reg[162] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[162]),
        .Q(bram_wrdata_a[162]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[163].bram_wrdata_int_reg[163] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[163]),
        .Q(bram_wrdata_a[163]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[164].bram_wrdata_int_reg[164] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[164]),
        .Q(bram_wrdata_a[164]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[165].bram_wrdata_int_reg[165] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[165]),
        .Q(bram_wrdata_a[165]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[166].bram_wrdata_int_reg[166] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[166]),
        .Q(bram_wrdata_a[166]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[167].bram_wrdata_int_reg[167] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[167]),
        .Q(bram_wrdata_a[167]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[168].bram_wrdata_int_reg[168] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[168]),
        .Q(bram_wrdata_a[168]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[169].bram_wrdata_int_reg[169] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[169]),
        .Q(bram_wrdata_a[169]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[16].bram_wrdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[16]),
        .Q(bram_wrdata_a[16]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[170].bram_wrdata_int_reg[170] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[170]),
        .Q(bram_wrdata_a[170]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[171].bram_wrdata_int_reg[171] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[171]),
        .Q(bram_wrdata_a[171]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[172].bram_wrdata_int_reg[172] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[172]),
        .Q(bram_wrdata_a[172]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[173].bram_wrdata_int_reg[173] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[173]),
        .Q(bram_wrdata_a[173]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[174].bram_wrdata_int_reg[174] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[174]),
        .Q(bram_wrdata_a[174]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[175].bram_wrdata_int_reg[175] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[175]),
        .Q(bram_wrdata_a[175]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[176].bram_wrdata_int_reg[176] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[176]),
        .Q(bram_wrdata_a[176]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[177].bram_wrdata_int_reg[177] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[177]),
        .Q(bram_wrdata_a[177]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[178].bram_wrdata_int_reg[178] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[178]),
        .Q(bram_wrdata_a[178]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[179].bram_wrdata_int_reg[179] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[179]),
        .Q(bram_wrdata_a[179]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[17].bram_wrdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[17]),
        .Q(bram_wrdata_a[17]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[180].bram_wrdata_int_reg[180] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[180]),
        .Q(bram_wrdata_a[180]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[181].bram_wrdata_int_reg[181] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[181]),
        .Q(bram_wrdata_a[181]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[182].bram_wrdata_int_reg[182] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[182]),
        .Q(bram_wrdata_a[182]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[183].bram_wrdata_int_reg[183] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[183]),
        .Q(bram_wrdata_a[183]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[184].bram_wrdata_int_reg[184] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[184]),
        .Q(bram_wrdata_a[184]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[185].bram_wrdata_int_reg[185] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[185]),
        .Q(bram_wrdata_a[185]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[186].bram_wrdata_int_reg[186] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[186]),
        .Q(bram_wrdata_a[186]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[187].bram_wrdata_int_reg[187] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[187]),
        .Q(bram_wrdata_a[187]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[188].bram_wrdata_int_reg[188] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[188]),
        .Q(bram_wrdata_a[188]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[189].bram_wrdata_int_reg[189] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[189]),
        .Q(bram_wrdata_a[189]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[18].bram_wrdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[18]),
        .Q(bram_wrdata_a[18]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[190].bram_wrdata_int_reg[190] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[190]),
        .Q(bram_wrdata_a[190]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[191].bram_wrdata_int_reg[191] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[191]),
        .Q(bram_wrdata_a[191]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[192].bram_wrdata_int_reg[192] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[192]),
        .Q(bram_wrdata_a[192]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[193].bram_wrdata_int_reg[193] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[193]),
        .Q(bram_wrdata_a[193]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[194].bram_wrdata_int_reg[194] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[194]),
        .Q(bram_wrdata_a[194]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[195].bram_wrdata_int_reg[195] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[195]),
        .Q(bram_wrdata_a[195]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[196].bram_wrdata_int_reg[196] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[196]),
        .Q(bram_wrdata_a[196]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[197].bram_wrdata_int_reg[197] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[197]),
        .Q(bram_wrdata_a[197]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[198].bram_wrdata_int_reg[198] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[198]),
        .Q(bram_wrdata_a[198]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[199].bram_wrdata_int_reg[199] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[199]),
        .Q(bram_wrdata_a[199]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[19].bram_wrdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[19]),
        .Q(bram_wrdata_a[19]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[1].bram_wrdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[1]),
        .Q(bram_wrdata_a[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[200].bram_wrdata_int_reg[200] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[200]),
        .Q(bram_wrdata_a[200]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[201].bram_wrdata_int_reg[201] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[201]),
        .Q(bram_wrdata_a[201]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[202].bram_wrdata_int_reg[202] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[202]),
        .Q(bram_wrdata_a[202]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[203].bram_wrdata_int_reg[203] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[203]),
        .Q(bram_wrdata_a[203]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[204].bram_wrdata_int_reg[204] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[204]),
        .Q(bram_wrdata_a[204]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[205].bram_wrdata_int_reg[205] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[205]),
        .Q(bram_wrdata_a[205]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[206].bram_wrdata_int_reg[206] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[206]),
        .Q(bram_wrdata_a[206]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[207].bram_wrdata_int_reg[207] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[207]),
        .Q(bram_wrdata_a[207]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[208].bram_wrdata_int_reg[208] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[208]),
        .Q(bram_wrdata_a[208]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[209].bram_wrdata_int_reg[209] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[209]),
        .Q(bram_wrdata_a[209]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[20].bram_wrdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[20]),
        .Q(bram_wrdata_a[20]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[210].bram_wrdata_int_reg[210] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[210]),
        .Q(bram_wrdata_a[210]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[211].bram_wrdata_int_reg[211] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[211]),
        .Q(bram_wrdata_a[211]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[212].bram_wrdata_int_reg[212] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[212]),
        .Q(bram_wrdata_a[212]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[213].bram_wrdata_int_reg[213] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[213]),
        .Q(bram_wrdata_a[213]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[214].bram_wrdata_int_reg[214] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[214]),
        .Q(bram_wrdata_a[214]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[215].bram_wrdata_int_reg[215] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[215]),
        .Q(bram_wrdata_a[215]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[216].bram_wrdata_int_reg[216] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[216]),
        .Q(bram_wrdata_a[216]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[217].bram_wrdata_int_reg[217] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[217]),
        .Q(bram_wrdata_a[217]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[218].bram_wrdata_int_reg[218] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[218]),
        .Q(bram_wrdata_a[218]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[219].bram_wrdata_int_reg[219] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[219]),
        .Q(bram_wrdata_a[219]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[21].bram_wrdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[21]),
        .Q(bram_wrdata_a[21]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[220].bram_wrdata_int_reg[220] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[220]),
        .Q(bram_wrdata_a[220]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[221].bram_wrdata_int_reg[221] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[221]),
        .Q(bram_wrdata_a[221]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[222].bram_wrdata_int_reg[222] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[222]),
        .Q(bram_wrdata_a[222]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[223].bram_wrdata_int_reg[223] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[223]),
        .Q(bram_wrdata_a[223]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[224].bram_wrdata_int_reg[224] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[224]),
        .Q(bram_wrdata_a[224]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[225].bram_wrdata_int_reg[225] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[225]),
        .Q(bram_wrdata_a[225]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[226].bram_wrdata_int_reg[226] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[226]),
        .Q(bram_wrdata_a[226]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[227].bram_wrdata_int_reg[227] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[227]),
        .Q(bram_wrdata_a[227]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[228].bram_wrdata_int_reg[228] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[228]),
        .Q(bram_wrdata_a[228]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[229].bram_wrdata_int_reg[229] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[229]),
        .Q(bram_wrdata_a[229]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[22].bram_wrdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[22]),
        .Q(bram_wrdata_a[22]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[230].bram_wrdata_int_reg[230] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[230]),
        .Q(bram_wrdata_a[230]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[231].bram_wrdata_int_reg[231] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[231]),
        .Q(bram_wrdata_a[231]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[232].bram_wrdata_int_reg[232] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[232]),
        .Q(bram_wrdata_a[232]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[233].bram_wrdata_int_reg[233] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[233]),
        .Q(bram_wrdata_a[233]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[234].bram_wrdata_int_reg[234] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[234]),
        .Q(bram_wrdata_a[234]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[235].bram_wrdata_int_reg[235] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[235]),
        .Q(bram_wrdata_a[235]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[236].bram_wrdata_int_reg[236] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[236]),
        .Q(bram_wrdata_a[236]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[237].bram_wrdata_int_reg[237] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[237]),
        .Q(bram_wrdata_a[237]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[238].bram_wrdata_int_reg[238] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[238]),
        .Q(bram_wrdata_a[238]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[239].bram_wrdata_int_reg[239] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[239]),
        .Q(bram_wrdata_a[239]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[23].bram_wrdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[23]),
        .Q(bram_wrdata_a[23]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[240].bram_wrdata_int_reg[240] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[240]),
        .Q(bram_wrdata_a[240]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[241].bram_wrdata_int_reg[241] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[241]),
        .Q(bram_wrdata_a[241]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[242].bram_wrdata_int_reg[242] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[242]),
        .Q(bram_wrdata_a[242]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[243].bram_wrdata_int_reg[243] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[243]),
        .Q(bram_wrdata_a[243]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[244].bram_wrdata_int_reg[244] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[244]),
        .Q(bram_wrdata_a[244]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[245].bram_wrdata_int_reg[245] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[245]),
        .Q(bram_wrdata_a[245]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[246].bram_wrdata_int_reg[246] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[246]),
        .Q(bram_wrdata_a[246]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[247].bram_wrdata_int_reg[247] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[247]),
        .Q(bram_wrdata_a[247]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[248].bram_wrdata_int_reg[248] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[248]),
        .Q(bram_wrdata_a[248]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[249].bram_wrdata_int_reg[249] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[249]),
        .Q(bram_wrdata_a[249]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[24].bram_wrdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[24]),
        .Q(bram_wrdata_a[24]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[250].bram_wrdata_int_reg[250] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[250]),
        .Q(bram_wrdata_a[250]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[251].bram_wrdata_int_reg[251] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[251]),
        .Q(bram_wrdata_a[251]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[252].bram_wrdata_int_reg[252] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[252]),
        .Q(bram_wrdata_a[252]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[253].bram_wrdata_int_reg[253] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[253]),
        .Q(bram_wrdata_a[253]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[254].bram_wrdata_int_reg[254] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[254]),
        .Q(bram_wrdata_a[254]),
        .R(1'b0));
LUT4 #(
    .INIT(16'h0CC4)) 
     \GEN_WRDATA[255].bram_wrdata_int[255]_i_1 
       (.I0(axi_wdata_full_reg),
        .I1(s_axi_wvalid),
        .I2(wr_data_sng_sm_cs[0]),
        .I3(wr_data_sng_sm_cs[1]),
        .O(wrdata_reg_ld));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[255].bram_wrdata_int_reg[255] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[255]),
        .Q(bram_wrdata_a[255]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[25].bram_wrdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[25]),
        .Q(bram_wrdata_a[25]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[26].bram_wrdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[26]),
        .Q(bram_wrdata_a[26]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[27].bram_wrdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[27]),
        .Q(bram_wrdata_a[27]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[28].bram_wrdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[28]),
        .Q(bram_wrdata_a[28]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[29].bram_wrdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[29]),
        .Q(bram_wrdata_a[29]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[2].bram_wrdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[2]),
        .Q(bram_wrdata_a[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[30].bram_wrdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[30]),
        .Q(bram_wrdata_a[30]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[31].bram_wrdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[31]),
        .Q(bram_wrdata_a[31]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[32].bram_wrdata_int_reg[32] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[32]),
        .Q(bram_wrdata_a[32]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[33].bram_wrdata_int_reg[33] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[33]),
        .Q(bram_wrdata_a[33]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[34].bram_wrdata_int_reg[34] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[34]),
        .Q(bram_wrdata_a[34]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[35].bram_wrdata_int_reg[35] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[35]),
        .Q(bram_wrdata_a[35]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[36].bram_wrdata_int_reg[36] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[36]),
        .Q(bram_wrdata_a[36]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[37].bram_wrdata_int_reg[37] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[37]),
        .Q(bram_wrdata_a[37]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[38].bram_wrdata_int_reg[38] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[38]),
        .Q(bram_wrdata_a[38]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[39].bram_wrdata_int_reg[39] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[39]),
        .Q(bram_wrdata_a[39]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[3].bram_wrdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[3]),
        .Q(bram_wrdata_a[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[40].bram_wrdata_int_reg[40] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[40]),
        .Q(bram_wrdata_a[40]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[41].bram_wrdata_int_reg[41] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[41]),
        .Q(bram_wrdata_a[41]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[42].bram_wrdata_int_reg[42] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[42]),
        .Q(bram_wrdata_a[42]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[43].bram_wrdata_int_reg[43] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[43]),
        .Q(bram_wrdata_a[43]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[44].bram_wrdata_int_reg[44] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[44]),
        .Q(bram_wrdata_a[44]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[45].bram_wrdata_int_reg[45] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[45]),
        .Q(bram_wrdata_a[45]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[46].bram_wrdata_int_reg[46] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[46]),
        .Q(bram_wrdata_a[46]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[47].bram_wrdata_int_reg[47] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[47]),
        .Q(bram_wrdata_a[47]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[48].bram_wrdata_int_reg[48] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[48]),
        .Q(bram_wrdata_a[48]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[49].bram_wrdata_int_reg[49] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[49]),
        .Q(bram_wrdata_a[49]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[4].bram_wrdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[4]),
        .Q(bram_wrdata_a[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[50].bram_wrdata_int_reg[50] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[50]),
        .Q(bram_wrdata_a[50]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[51].bram_wrdata_int_reg[51] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[51]),
        .Q(bram_wrdata_a[51]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[52].bram_wrdata_int_reg[52] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[52]),
        .Q(bram_wrdata_a[52]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[53].bram_wrdata_int_reg[53] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[53]),
        .Q(bram_wrdata_a[53]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[54].bram_wrdata_int_reg[54] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[54]),
        .Q(bram_wrdata_a[54]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[55].bram_wrdata_int_reg[55] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[55]),
        .Q(bram_wrdata_a[55]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[56].bram_wrdata_int_reg[56] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[56]),
        .Q(bram_wrdata_a[56]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[57].bram_wrdata_int_reg[57] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[57]),
        .Q(bram_wrdata_a[57]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[58].bram_wrdata_int_reg[58] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[58]),
        .Q(bram_wrdata_a[58]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[59].bram_wrdata_int_reg[59] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[59]),
        .Q(bram_wrdata_a[59]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[5].bram_wrdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[5]),
        .Q(bram_wrdata_a[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[60].bram_wrdata_int_reg[60] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[60]),
        .Q(bram_wrdata_a[60]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[61].bram_wrdata_int_reg[61] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[61]),
        .Q(bram_wrdata_a[61]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[62].bram_wrdata_int_reg[62] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[62]),
        .Q(bram_wrdata_a[62]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[63].bram_wrdata_int_reg[63] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[63]),
        .Q(bram_wrdata_a[63]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[64].bram_wrdata_int_reg[64] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[64]),
        .Q(bram_wrdata_a[64]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[65].bram_wrdata_int_reg[65] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[65]),
        .Q(bram_wrdata_a[65]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[66].bram_wrdata_int_reg[66] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[66]),
        .Q(bram_wrdata_a[66]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[67].bram_wrdata_int_reg[67] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[67]),
        .Q(bram_wrdata_a[67]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[68].bram_wrdata_int_reg[68] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[68]),
        .Q(bram_wrdata_a[68]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[69].bram_wrdata_int_reg[69] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[69]),
        .Q(bram_wrdata_a[69]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[6].bram_wrdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[6]),
        .Q(bram_wrdata_a[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[70].bram_wrdata_int_reg[70] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[70]),
        .Q(bram_wrdata_a[70]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[71].bram_wrdata_int_reg[71] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[71]),
        .Q(bram_wrdata_a[71]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[72].bram_wrdata_int_reg[72] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[72]),
        .Q(bram_wrdata_a[72]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[73].bram_wrdata_int_reg[73] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[73]),
        .Q(bram_wrdata_a[73]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[74].bram_wrdata_int_reg[74] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[74]),
        .Q(bram_wrdata_a[74]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[75].bram_wrdata_int_reg[75] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[75]),
        .Q(bram_wrdata_a[75]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[76].bram_wrdata_int_reg[76] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[76]),
        .Q(bram_wrdata_a[76]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[77].bram_wrdata_int_reg[77] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[77]),
        .Q(bram_wrdata_a[77]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[78].bram_wrdata_int_reg[78] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[78]),
        .Q(bram_wrdata_a[78]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[79].bram_wrdata_int_reg[79] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[79]),
        .Q(bram_wrdata_a[79]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[7].bram_wrdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[7]),
        .Q(bram_wrdata_a[7]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[80].bram_wrdata_int_reg[80] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[80]),
        .Q(bram_wrdata_a[80]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[81].bram_wrdata_int_reg[81] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[81]),
        .Q(bram_wrdata_a[81]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[82].bram_wrdata_int_reg[82] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[82]),
        .Q(bram_wrdata_a[82]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[83].bram_wrdata_int_reg[83] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[83]),
        .Q(bram_wrdata_a[83]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[84].bram_wrdata_int_reg[84] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[84]),
        .Q(bram_wrdata_a[84]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[85].bram_wrdata_int_reg[85] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[85]),
        .Q(bram_wrdata_a[85]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[86].bram_wrdata_int_reg[86] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[86]),
        .Q(bram_wrdata_a[86]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[87].bram_wrdata_int_reg[87] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[87]),
        .Q(bram_wrdata_a[87]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[88].bram_wrdata_int_reg[88] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[88]),
        .Q(bram_wrdata_a[88]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[89].bram_wrdata_int_reg[89] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[89]),
        .Q(bram_wrdata_a[89]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[8].bram_wrdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[8]),
        .Q(bram_wrdata_a[8]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[90].bram_wrdata_int_reg[90] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[90]),
        .Q(bram_wrdata_a[90]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[91].bram_wrdata_int_reg[91] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[91]),
        .Q(bram_wrdata_a[91]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[92].bram_wrdata_int_reg[92] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[92]),
        .Q(bram_wrdata_a[92]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[93].bram_wrdata_int_reg[93] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[93]),
        .Q(bram_wrdata_a[93]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[94].bram_wrdata_int_reg[94] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[94]),
        .Q(bram_wrdata_a[94]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[95].bram_wrdata_int_reg[95] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[95]),
        .Q(bram_wrdata_a[95]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[96].bram_wrdata_int_reg[96] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[96]),
        .Q(bram_wrdata_a[96]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[97].bram_wrdata_int_reg[97] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[97]),
        .Q(bram_wrdata_a[97]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[98].bram_wrdata_int_reg[98] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[98]),
        .Q(bram_wrdata_a[98]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[99].bram_wrdata_int_reg[99] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[99]),
        .Q(bram_wrdata_a[99]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[9].bram_wrdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[9]),
        .Q(bram_wrdata_a[9]),
        .R(1'b0));
LUT6 #(
    .INIT(64'hF33B0000FFFFFFFF)) 
     \GEN_WR_NO_ECC.bram_we_int[31]_i_1 
       (.I0(axi_wdata_full_reg),
        .I1(s_axi_wvalid),
        .I2(wr_data_sng_sm_cs[0]),
        .I3(wr_data_sng_sm_cs[1]),
        .I4(clr_bram_we),
        .I5(s_axi_aresetn),
        .O(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[0]),
        .Q(Q[0]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[10]),
        .Q(Q[10]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[11]),
        .Q(Q[11]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[12]),
        .Q(Q[12]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[13]),
        .Q(Q[13]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[14]),
        .Q(Q[14]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[15]),
        .Q(Q[15]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[16]),
        .Q(Q[16]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[17]),
        .Q(Q[17]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[18]),
        .Q(Q[18]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[19]),
        .Q(Q[19]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[1]),
        .Q(Q[1]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[20]),
        .Q(Q[20]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[21]),
        .Q(Q[21]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[22]),
        .Q(Q[22]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[23]),
        .Q(Q[23]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[24]),
        .Q(Q[24]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[25]),
        .Q(Q[25]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[26]),
        .Q(Q[26]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[27]),
        .Q(Q[27]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[28]),
        .Q(Q[28]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[29]),
        .Q(Q[29]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[2]),
        .Q(Q[2]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[30]),
        .Q(Q[30]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[31]),
        .Q(Q[31]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[3]),
        .Q(Q[3]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[4]),
        .Q(Q[4]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[5]),
        .Q(Q[5]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[6]),
        .Q(Q[6]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[7]),
        .Q(Q[7]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[8]),
        .Q(Q[8]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[9]),
        .Q(Q[9]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[31]_i_1 ));
controller_wrap_brst I_WRAP_BRST
       (.D(D),
        .I1(\n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_5 ),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(aw_active_d1),
        .I6(I1),
        .I7(I7),
        .I8(I8),
        .O1(n_9_I_WRAP_BRST),
        .O2(O6),
        .O3(n_13_I_WRAP_BRST),
        .O7(O7),
        .O9(O9),
        .ar_active_re(ar_active_re),
        .aw_active_re(aw_active_re),
        .curr_narrow_burst(curr_narrow_burst),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .narrow_addr_int(narrow_addr_int),
        .narrow_bram_addr_inc(narrow_bram_addr_inc),
        .narrow_bram_addr_inc_d1(narrow_bram_addr_inc_d1),
        .p_1_out(p_1_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_awaddr(s_axi_awaddr[13:5]),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_wvalid(s_axi_wvalid),
        .wr_data_sng_sm_cs(wr_data_sng_sm_cs));
(* SOFT_HLUTNM = "soft_lutpair189" *) 
   LUT2 #(
    .INIT(4'hB)) 
     \arb_sm_cs[1]_i_2 
       (.I0(wr_data_sng_sm_cs[1]),
        .I1(wr_data_sng_sm_cs[0]),
        .O(O10));
FDRE #(
    .INIT(1'b0)) 
     aw_active_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(aw_active_d1),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair194" *) 
   LUT4 #(
    .INIT(16'hD555)) 
     axi_awready_int_i_2
       (.I0(s_axi_awvalid),
        .I1(AW2Arb_BVALID_Cnt[2]),
        .I2(AW2Arb_BVALID_Cnt[0]),
        .I3(AW2Arb_BVALID_Cnt[1]),
        .O(O8));
FDRE #(
    .INIT(1'b0)) 
     \axi_bid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_3_BID_FIFO),
        .Q(s_axi_bid),
        .R(I1));
LUT6 #(
    .INIT(64'hAAAAAAAAAA2AAA0A)) 
     axi_bvalid_int_i_1
       (.I0(s_axi_aresetn),
        .I1(n_1_BID_FIFO),
        .I2(n_0_BID_FIFO),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(AW2Arb_BVALID_Cnt[0]),
        .I5(AW2Arb_BVALID_Cnt[1]),
        .O(n_0_axi_bvalid_int_i_1));
FDRE #(
    .INIT(1'b0)) 
     axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_bvalid_int_i_1),
        .Q(O1),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair196" *) 
   LUT3 #(
    .INIT(8'h74)) 
     axi_wr_burst_i_1
       (.I0(s_axi_wlast),
        .I1(n_0_axi_wr_burst_i_2),
        .I2(axi_wr_burst),
        .O(n_0_axi_wr_burst_i_1));
(* SOFT_HLUTNM = "soft_lutpair184" *) 
   LUT5 #(
    .INIT(32'h0000F2D0)) 
     axi_wr_burst_i_2
       (.I0(axi_wdata_full_reg),
        .I1(wr_data_sng_sm_cs[0]),
        .I2(s_axi_wvalid),
        .I3(p_1_out),
        .I4(wr_data_sng_sm_cs[1]),
        .O(n_0_axi_wr_burst_i_2));
FDRE #(
    .INIT(1'b0)) 
     axi_wr_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_wr_burst_i_1),
        .Q(axi_wr_burst),
        .R(I1));
LUT6 #(
    .INIT(64'h0000AAAA20A820AA)) 
     axi_wready_int_mod_i_1
       (.I0(s_axi_aresetn),
        .I1(wr_data_sng_sm_cs[0]),
        .I2(p_1_out),
        .I3(s_axi_wvalid),
        .I4(axi_wdata_full_reg),
        .I5(wr_data_sng_sm_cs[1]),
        .O(n_0_axi_wready_int_mod_i_1));
FDRE #(
    .INIT(1'b0)) 
     axi_wready_int_mod_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_wready_int_mod_i_1),
        .Q(s_axi_wready),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair194" *) 
   LUT3 #(
    .INIT(8'hFB)) 
     bid_gets_fifo_load_d1_i_2
       (.I0(AW2Arb_BVALID_Cnt[1]),
        .I1(AW2Arb_BVALID_Cnt[0]),
        .I2(AW2Arb_BVALID_Cnt[2]),
        .O(n_0_bid_gets_fifo_load_d1_i_2));
FDRE #(
    .INIT(1'b0)) 
     bid_gets_fifo_load_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bid_gets_fifo_load),
        .Q(bid_gets_fifo_load_d1),
        .R(I1));
LUT2 #(
    .INIT(4'hE)) 
     bram_en_a_INST_0
       (.I0(p_8_in),
        .I1(p_7_in),
        .O(bram_en_a));
LUT6 #(
    .INIT(64'h6A6A6A6A95959555)) 
     \bvalid_cnt[0]_i_1 
       (.I0(n_0_BID_FIFO),
        .I1(O1),
        .I2(s_axi_bready),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(AW2Arb_BVALID_Cnt[1]),
        .I5(AW2Arb_BVALID_Cnt[0]),
        .O(\n_0_bvalid_cnt[0]_i_1 ));
LUT6 #(
    .INIT(64'hEAEA15157F7F8000)) 
     \bvalid_cnt[1]_i_1 
       (.I0(n_0_BID_FIFO),
        .I1(O1),
        .I2(s_axi_bready),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(AW2Arb_BVALID_Cnt[1]),
        .I5(AW2Arb_BVALID_Cnt[0]),
        .O(\n_0_bvalid_cnt[1]_i_1 ));
LUT6 #(
    .INIT(64'hEA15FF00FF007F00)) 
     \bvalid_cnt[2]_i_1 
       (.I0(n_0_BID_FIFO),
        .I1(O1),
        .I2(s_axi_bready),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(AW2Arb_BVALID_Cnt[1]),
        .I5(AW2Arb_BVALID_Cnt[0]),
        .O(\n_0_bvalid_cnt[2]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \bvalid_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_bvalid_cnt[0]_i_1 ),
        .Q(AW2Arb_BVALID_Cnt[0]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \bvalid_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_bvalid_cnt[1]_i_1 ),
        .Q(AW2Arb_BVALID_Cnt[1]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \bvalid_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_bvalid_cnt[2]_i_1 ),
        .Q(AW2Arb_BVALID_Cnt[2]),
        .R(I1));
LUT6 #(
    .INIT(64'h00000000222E0000)) 
     curr_fixed_burst_reg_i_1__0
       (.I0(curr_fixed_burst_reg),
        .I1(aw_active_re),
        .I2(s_axi_awburst[0]),
        .I3(s_axi_awburst[1]),
        .I4(s_axi_aresetn),
        .I5(\n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_3 ),
        .O(n_0_curr_fixed_burst_reg_i_1__0));
FDRE #(
    .INIT(1'b0)) 
     curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_curr_fixed_burst_reg_i_1__0),
        .Q(curr_fixed_burst_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h000000002E220000)) 
     curr_wrap_burst_reg_i_1__0
       (.I0(curr_wrap_burst_reg),
        .I1(aw_active_re),
        .I2(s_axi_awburst[0]),
        .I3(s_axi_awburst[1]),
        .I4(s_axi_aresetn),
        .I5(\n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_3 ),
        .O(n_0_curr_wrap_burst_reg_i_1__0));
FDRE #(
    .INIT(1'b0)) 
     curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_curr_wrap_burst_reg_i_1__0),
        .Q(curr_wrap_burst_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0000000000007F00)) 
     last_arb_won_i_3
       (.I0(AW2Arb_BVALID_Cnt[1]),
        .I1(AW2Arb_BVALID_Cnt[0]),
        .I2(AW2Arb_BVALID_Cnt[2]),
        .I3(s_axi_awvalid),
        .I4(arb_sm_cs[0]),
        .I5(arb_sm_cs[1]),
        .O(O3));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module controller_wrap_brst
   (D,
    O1,
    O2,
    narrow_bram_addr_inc,
    O7,
    O3,
    O9,
    s_axi_awlen,
    s_axi_awsize,
    I2,
    I3,
    I4,
    s_axi_awaddr,
    aw_active_re,
    curr_wrap_burst_reg,
    narrow_bram_addr_inc_d1,
    curr_narrow_burst,
    I1,
    p_1_out,
    I5,
    I7,
    ar_active_re,
    narrow_addr_int,
    s_axi_wvalid,
    wr_data_sng_sm_cs,
    I8,
    I6,
    s_axi_aclk);
  output [8:0]D;
  output O1;
  output O2;
  output narrow_bram_addr_inc;
  output O7;
  output O3;
  output O9;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input I2;
  input I3;
  input I4;
  input [8:0]s_axi_awaddr;
  input aw_active_re;
  input curr_wrap_burst_reg;
  input narrow_bram_addr_inc_d1;
  input curr_narrow_burst;
  input I1;
  input p_1_out;
  input I5;
  input I7;
  input ar_active_re;
  input [4:0]narrow_addr_int;
  input s_axi_wvalid;
  input [1:0]wr_data_sng_sm_cs;
  input I8;
  input I6;
  input s_axi_aclk;

  wire [8:0]D;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire O1;
  wire O2;
  wire O3;
  wire O7;
  wire O9;
  wire ar_active_re;
  wire aw_active_re;
  wire curr_narrow_burst;
  wire curr_wrap_burst_reg;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_6 ;
  wire \n_0_save_init_bram_addr_ld[11]_i_2 ;
  wire \n_0_save_init_bram_addr_ld[11]_i_4 ;
  wire \n_0_save_init_bram_addr_ld[11]_i_5 ;
  wire \n_0_save_init_bram_addr_ld[6]_i_2 ;
  wire \n_0_save_init_bram_addr_ld[7]_i_2 ;
  wire \n_0_save_init_bram_addr_ld[8]_i_2 ;
  wire \n_0_wrap_burst_total[0]_i_2 ;
  wire \n_0_wrap_burst_total[0]_i_3 ;
  wire \n_0_wrap_burst_total[2]_i_2 ;
  wire [4:0]narrow_addr_int;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire p_1_out;
  wire s_axi_aclk;
  wire [8:0]s_axi_awaddr;
  wire [3:0]s_axi_awlen;
  wire [2:0]s_axi_awsize;
  wire s_axi_wvalid;
  wire [14:6]save_init_bram_addr_ld;
  wire [1:0]wr_data_sng_sm_cs;
  wire [2:0]wrap_burst_total;
  wire [2:0]wrap_burst_total_cmb;

LUT4 #(
    .INIT(16'h8000)) 
     \ADDR_SNG_PORT.bram_addr_int[10]_i_2 
       (.I0(I8),
        .I1(I4),
        .I2(I2),
        .I3(I3),
        .O(O9));
LUT6 #(
    .INIT(64'h000000000000DD0D)) 
     \ADDR_SNG_PORT.bram_addr_int[14]_i_4 
       (.I0(I1),
        .I1(\n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_6 ),
        .I2(p_1_out),
        .I3(I5),
        .I4(I7),
        .I5(ar_active_re),
        .O(O7));
LUT5 #(
    .INIT(32'hD5DDFFFF)) 
     \ADDR_SNG_PORT.bram_addr_int[14]_i_6 
       (.I0(curr_wrap_burst_reg),
        .I1(curr_narrow_burst),
        .I2(narrow_bram_addr_inc_d1),
        .I3(narrow_bram_addr_inc),
        .I4(\n_0_save_init_bram_addr_ld[11]_i_2 ),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[14]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1 
       (.I0(O3),
        .I1(narrow_addr_int[2]),
        .I2(narrow_addr_int[0]),
        .I3(narrow_addr_int[1]),
        .I4(narrow_addr_int[3]),
        .I5(narrow_addr_int[4]),
        .O(narrow_bram_addr_inc));
LUT4 #(
    .INIT(16'h0080)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2 
       (.I0(curr_narrow_burst),
        .I1(s_axi_wvalid),
        .I2(wr_data_sng_sm_cs[1]),
        .I3(wr_data_sng_sm_cs[0]),
        .O(O3));
LUT6 #(
    .INIT(64'hAABAAAAAAA8AAAAA)) 
     \save_init_bram_addr_ld[10]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(aw_active_re),
        .I2(\n_0_save_init_bram_addr_ld[11]_i_2 ),
        .I3(O1),
        .I4(curr_wrap_burst_reg),
        .I5(save_init_bram_addr_ld[10]),
        .O(D[4]));
LUT6 #(
    .INIT(64'hAABAAAAAAA8AAAAA)) 
     \save_init_bram_addr_ld[11]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(aw_active_re),
        .I2(\n_0_save_init_bram_addr_ld[11]_i_2 ),
        .I3(O1),
        .I4(curr_wrap_burst_reg),
        .I5(save_init_bram_addr_ld[11]),
        .O(D[5]));
LUT5 #(
    .INIT(32'hFF2F0020)) 
     \save_init_bram_addr_ld[11]_i_2 
       (.I0(O9),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .I4(\n_0_save_init_bram_addr_ld[11]_i_4 ),
        .O(\n_0_save_init_bram_addr_ld[11]_i_2 ));
LUT5 #(
    .INIT(32'hAAAA8AAA)) 
     \save_init_bram_addr_ld[11]_i_3 
       (.I0(curr_narrow_burst),
        .I1(narrow_bram_addr_inc_d1),
        .I2(O3),
        .I3(\n_0_save_init_bram_addr_ld[11]_i_5 ),
        .I4(narrow_addr_int[4]),
        .O(O1));
LUT6 #(
    .INIT(64'h44C004C000C000C0)) 
     \save_init_bram_addr_ld[11]_i_4 
       (.I0(wrap_burst_total[2]),
        .I1(I2),
        .I2(wrap_burst_total[0]),
        .I3(wrap_burst_total[1]),
        .I4(I3),
        .I5(I4),
        .O(\n_0_save_init_bram_addr_ld[11]_i_4 ));
LUT4 #(
    .INIT(16'h0001)) 
     \save_init_bram_addr_ld[11]_i_5 
       (.I0(narrow_addr_int[2]),
        .I1(narrow_addr_int[0]),
        .I2(narrow_addr_int[1]),
        .I3(narrow_addr_int[3]),
        .O(\n_0_save_init_bram_addr_ld[11]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair181" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[12]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(O2),
        .I2(save_init_bram_addr_ld[12]),
        .O(D[6]));
LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[13]_i_1 
       (.I0(s_axi_awaddr[7]),
        .I1(O2),
        .I2(save_init_bram_addr_ld[13]),
        .O(D[7]));
(* SOFT_HLUTNM = "soft_lutpair181" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[14]_i_2 
       (.I0(s_axi_awaddr[8]),
        .I1(O2),
        .I2(save_init_bram_addr_ld[14]),
        .O(D[8]));
LUT6 #(
    .INIT(64'hFFBFBBBBFFFFFFFF)) 
     \save_init_bram_addr_ld[14]_i_3 
       (.I0(aw_active_re),
        .I1(\n_0_save_init_bram_addr_ld[11]_i_2 ),
        .I2(narrow_bram_addr_inc),
        .I3(narrow_bram_addr_inc_d1),
        .I4(curr_narrow_burst),
        .I5(curr_wrap_burst_reg),
        .O(O2));
LUT6 #(
    .INIT(64'hAABAAAAAAA8AAAAA)) 
     \save_init_bram_addr_ld[6]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(aw_active_re),
        .I2(\n_0_save_init_bram_addr_ld[11]_i_2 ),
        .I3(O1),
        .I4(curr_wrap_burst_reg),
        .I5(\n_0_save_init_bram_addr_ld[6]_i_2 ),
        .O(D[0]));
(* SOFT_HLUTNM = "soft_lutpair180" *) 
   LUT4 #(
    .INIT(16'hC0B0)) 
     \save_init_bram_addr_ld[6]_i_2 
       (.I0(wrap_burst_total[0]),
        .I1(wrap_burst_total[2]),
        .I2(save_init_bram_addr_ld[6]),
        .I3(wrap_burst_total[1]),
        .O(\n_0_save_init_bram_addr_ld[6]_i_2 ));
LUT6 #(
    .INIT(64'hAABAAAAAAA8AAAAA)) 
     \save_init_bram_addr_ld[7]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(aw_active_re),
        .I2(\n_0_save_init_bram_addr_ld[11]_i_2 ),
        .I3(O1),
        .I4(curr_wrap_burst_reg),
        .I5(\n_0_save_init_bram_addr_ld[7]_i_2 ),
        .O(D[1]));
LUT4 #(
    .INIT(16'hBD00)) 
     \save_init_bram_addr_ld[7]_i_2 
       (.I0(wrap_burst_total[2]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[1]),
        .I3(save_init_bram_addr_ld[7]),
        .O(\n_0_save_init_bram_addr_ld[7]_i_2 ));
LUT6 #(
    .INIT(64'hAABAAAAAAA8AAAAA)) 
     \save_init_bram_addr_ld[8]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(aw_active_re),
        .I2(\n_0_save_init_bram_addr_ld[11]_i_2 ),
        .I3(O1),
        .I4(curr_wrap_burst_reg),
        .I5(\n_0_save_init_bram_addr_ld[8]_i_2 ),
        .O(D[2]));
(* SOFT_HLUTNM = "soft_lutpair180" *) 
   LUT4 #(
    .INIT(16'hFB00)) 
     \save_init_bram_addr_ld[8]_i_2 
       (.I0(wrap_burst_total[0]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[1]),
        .I3(save_init_bram_addr_ld[8]),
        .O(\n_0_save_init_bram_addr_ld[8]_i_2 ));
LUT6 #(
    .INIT(64'hAABAAAAAAA8AAAAA)) 
     \save_init_bram_addr_ld[9]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(aw_active_re),
        .I2(\n_0_save_init_bram_addr_ld[11]_i_2 ),
        .I3(O1),
        .I4(curr_wrap_burst_reg),
        .I5(save_init_bram_addr_ld[9]),
        .O(D[3]));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[4]),
        .Q(save_init_bram_addr_ld[10]),
        .R(I6));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[5]),
        .Q(save_init_bram_addr_ld[11]),
        .R(I6));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[6]),
        .Q(save_init_bram_addr_ld[12]),
        .R(I6));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[13] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[7]),
        .Q(save_init_bram_addr_ld[13]),
        .R(I6));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[14] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[8]),
        .Q(save_init_bram_addr_ld[14]),
        .R(I6));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[0]),
        .Q(save_init_bram_addr_ld[6]),
        .R(I6));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[1]),
        .Q(save_init_bram_addr_ld[7]),
        .R(I6));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[2]),
        .Q(save_init_bram_addr_ld[8]),
        .R(I6));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(D[3]),
        .Q(save_init_bram_addr_ld[9]),
        .R(I6));
LUT6 #(
    .INIT(64'h2000000080000000)) 
     \wrap_burst_total[0]_i_2 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awlen[3]),
        .I2(s_axi_awlen[2]),
        .I3(s_axi_awlen[0]),
        .I4(s_axi_awlen[1]),
        .I5(s_axi_awsize[0]),
        .O(\n_0_wrap_burst_total[0]_i_2 ));
LUT6 #(
    .INIT(64'h0000000020008060)) 
     \wrap_burst_total[0]_i_3 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awlen[2]),
        .I4(s_axi_awlen[3]),
        .I5(s_axi_awsize[1]),
        .O(\n_0_wrap_burst_total[0]_i_3 ));
LUT6 #(
    .INIT(64'h4000202020002000)) 
     \wrap_burst_total[1]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(\n_0_wrap_burst_total[2]_i_2 ),
        .I3(s_axi_awlen[2]),
        .I4(s_axi_awlen[3]),
        .I5(s_axi_awsize[0]),
        .O(wrap_burst_total_cmb[1]));
LUT6 #(
    .INIT(64'h2000000000000000)) 
     \wrap_burst_total[2]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[3]),
        .I4(s_axi_awlen[2]),
        .I5(\n_0_wrap_burst_total[2]_i_2 ),
        .O(wrap_burst_total_cmb[2]));
LUT2 #(
    .INIT(4'h8)) 
     \wrap_burst_total[2]_i_2 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awlen[1]),
        .O(\n_0_wrap_burst_total[2]_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(wrap_burst_total_cmb[0]),
        .Q(wrap_burst_total[0]),
        .R(I6));
MUXF7 \wrap_burst_total_reg[0]_i_1 
       (.I0(\n_0_wrap_burst_total[0]_i_2 ),
        .I1(\n_0_wrap_burst_total[0]_i_3 ),
        .O(wrap_burst_total_cmb[0]),
        .S(s_axi_awsize[2]));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(wrap_burst_total_cmb[1]),
        .Q(wrap_burst_total[1]),
        .R(I6));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(wrap_burst_total_cmb[2]),
        .Q(wrap_burst_total[2]),
        .R(I6));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module controller_wrap_brst_0
   (O5,
    O1,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O15,
    O2,
    O3,
    bram_addr_inc10_out,
    O4,
    s_axi_arsize,
    s_axi_arlen,
    I2,
    I3,
    I4,
    s_axi_araddr,
    p_0_out,
    I6,
    s_axi_awaddr,
    D,
    Q,
    I1,
    narrow_bram_addr_inc_d1,
    axi_rd_burst,
    I5,
    s_axi_rready,
    I7,
    brst_zero,
    end_brst_rd,
    s_axi_aresetn,
    curr_wrap_burst_reg,
    narrow_addr_int,
    I8,
    ar_active_re,
    s_axi_aclk);
  output O5;
  output O1;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output [2:0]O15;
  output O2;
  output O3;
  output bram_addr_inc10_out;
  output O4;
  input [2:0]s_axi_arsize;
  input [3:0]s_axi_arlen;
  input I2;
  input I3;
  input I4;
  input [9:0]s_axi_araddr;
  input p_0_out;
  input I6;
  input [0:0]s_axi_awaddr;
  input [5:0]D;
  input [3:0]Q;
  input I1;
  input narrow_bram_addr_inc_d1;
  input axi_rd_burst;
  input I5;
  input s_axi_rready;
  input I7;
  input brst_zero;
  input end_brst_rd;
  input s_axi_aresetn;
  input curr_wrap_burst_reg;
  input [4:0]narrow_addr_int;
  input I8;
  input ar_active_re;
  input s_axi_aclk;

  wire [5:0]D;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire [2:0]O15;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O7;
  wire O8;
  wire O9;
  wire [3:0]Q;
  wire [6:1]RdChnl_BRAM_Addr_Ld;
  wire ar_active_re;
  wire axi_rd_burst;
  wire bram_addr_inc10_out;
  wire brst_zero;
  wire curr_wrap_burst_reg;
  wire end_brst_rd;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_3 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_3 ;
  wire \n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_4 ;
  wire \n_0_save_init_bram_addr_ld[14]_i_5 ;
  wire \n_0_save_init_bram_addr_ld[14]_i_6 ;
  wire \n_0_save_init_bram_addr_ld[14]_i_7 ;
  wire \n_0_save_init_bram_addr_ld_reg[10] ;
  wire \n_0_save_init_bram_addr_ld_reg[11] ;
  wire \n_0_save_init_bram_addr_ld_reg[12] ;
  wire \n_0_save_init_bram_addr_ld_reg[13] ;
  wire \n_0_save_init_bram_addr_ld_reg[14] ;
  wire \n_0_save_init_bram_addr_ld_reg[6] ;
  wire \n_0_save_init_bram_addr_ld_reg[7] ;
  wire \n_0_save_init_bram_addr_ld_reg[8] ;
  wire \n_0_save_init_bram_addr_ld_reg[9] ;
  wire \n_0_wrap_burst_total[0]_i_2__0 ;
  wire \n_0_wrap_burst_total[0]_i_3__0 ;
  wire \n_0_wrap_burst_total[2]_i_2__0 ;
  wire \n_0_wrap_burst_total_reg[0] ;
  wire \n_0_wrap_burst_total_reg[1] ;
  wire \n_0_wrap_burst_total_reg[2] ;
  wire [4:0]narrow_addr_int;
  wire narrow_bram_addr_inc_d1;
  wire p_0_out;
  wire s_axi_aclk;
  wire [9:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [3:0]s_axi_arlen;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_awaddr;
  wire s_axi_rready;
  wire [2:0]wrap_burst_total_cmb;

(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT5 #(
    .INIT(32'hB8FFB800)) 
     \ADDR_SNG_PORT.bram_addr_int[10]_i_3 
       (.I0(\n_0_save_init_bram_addr_ld_reg[10] ),
        .I1(O1),
        .I2(s_axi_araddr[5]),
        .I3(p_0_out),
        .I4(D[4]),
        .O(O11));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT5 #(
    .INIT(32'hB8FFB800)) 
     \ADDR_SNG_PORT.bram_addr_int[11]_i_3 
       (.I0(\n_0_save_init_bram_addr_ld_reg[11] ),
        .I1(O1),
        .I2(s_axi_araddr[6]),
        .I3(p_0_out),
        .I4(D[5]),
        .O(O12));
LUT5 #(
    .INIT(32'h2F202020)) 
     \ADDR_SNG_PORT.bram_addr_int[5]_i_2 
       (.I0(s_axi_araddr[0]),
        .I1(O1),
        .I2(p_0_out),
        .I3(I6),
        .I4(s_axi_awaddr),
        .O(O5));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \ADDR_SNG_PORT.bram_addr_int[6]_i_2 
       (.I0(\n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_3 ),
        .I1(O1),
        .I2(s_axi_araddr[1]),
        .I3(p_0_out),
        .I4(D[0]),
        .O(O7));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT4 #(
    .INIT(16'hC0B0)) 
     \ADDR_SNG_PORT.bram_addr_int[6]_i_3 
       (.I0(\n_0_wrap_burst_total_reg[0] ),
        .I1(\n_0_wrap_burst_total_reg[2] ),
        .I2(\n_0_save_init_bram_addr_ld_reg[6] ),
        .I3(\n_0_wrap_burst_total_reg[1] ),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[6]_i_3 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \ADDR_SNG_PORT.bram_addr_int[7]_i_2 
       (.I0(\n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_3 ),
        .I1(O1),
        .I2(s_axi_araddr[2]),
        .I3(p_0_out),
        .I4(D[1]),
        .O(O8));
LUT4 #(
    .INIT(16'hBD00)) 
     \ADDR_SNG_PORT.bram_addr_int[7]_i_3 
       (.I0(\n_0_wrap_burst_total_reg[2] ),
        .I1(\n_0_wrap_burst_total_reg[0] ),
        .I2(\n_0_wrap_burst_total_reg[1] ),
        .I3(\n_0_save_init_bram_addr_ld_reg[7] ),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[7]_i_3 ));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     \ADDR_SNG_PORT.bram_addr_int[8]_i_3 
       (.I0(\n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_4 ),
        .I1(O1),
        .I2(s_axi_araddr[3]),
        .I3(p_0_out),
        .I4(D[2]),
        .O(O9));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT4 #(
    .INIT(16'hFB00)) 
     \ADDR_SNG_PORT.bram_addr_int[8]_i_4 
       (.I0(\n_0_wrap_burst_total_reg[0] ),
        .I1(\n_0_wrap_burst_total_reg[2] ),
        .I2(\n_0_wrap_burst_total_reg[1] ),
        .I3(\n_0_save_init_bram_addr_ld_reg[8] ),
        .O(\n_0_ADDR_SNG_PORT.bram_addr_int[8]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT5 #(
    .INIT(32'hB8FFB800)) 
     \ADDR_SNG_PORT.bram_addr_int[9]_i_2 
       (.I0(\n_0_save_init_bram_addr_ld_reg[9] ),
        .I1(O1),
        .I2(s_axi_araddr[4]),
        .I3(p_0_out),
        .I4(D[3]),
        .O(O10));
LUT6 #(
    .INIT(64'h5554226611100044)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(axi_rd_burst),
        .I3(I5),
        .I4(Q[0]),
        .I5(bram_addr_inc10_out),
        .O(O2));
LUT4 #(
    .INIT(16'h0008)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_4 
       (.I0(s_axi_rready),
        .I1(I7),
        .I2(brst_zero),
        .I3(end_brst_rd),
        .O(bram_addr_inc10_out));
LUT1 #(
    .INIT(2'h1)) 
     bram_rst_a_INST_0
       (.I0(s_axi_aresetn),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[10]_i_1__0 
       (.I0(\n_0_save_init_bram_addr_ld_reg[10] ),
        .I1(O1),
        .I2(s_axi_araddr[5]),
        .O(RdChnl_BRAM_Addr_Ld[5]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[11]_i_1__0 
       (.I0(\n_0_save_init_bram_addr_ld_reg[11] ),
        .I1(O1),
        .I2(s_axi_araddr[6]),
        .O(RdChnl_BRAM_Addr_Ld[6]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[12]_i_1__0 
       (.I0(\n_0_save_init_bram_addr_ld_reg[12] ),
        .I1(O1),
        .I2(s_axi_araddr[7]),
        .O(O15[0]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[13]_i_1__0 
       (.I0(\n_0_save_init_bram_addr_ld_reg[13] ),
        .I1(O1),
        .I2(s_axi_araddr[8]),
        .O(O15[1]));
LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[14]_i_2__0 
       (.I0(\n_0_save_init_bram_addr_ld_reg[14] ),
        .I1(O1),
        .I2(s_axi_araddr[9]),
        .O(O15[2]));
LUT6 #(
    .INIT(64'h0000000004044404)) 
     \save_init_bram_addr_ld[14]_i_3__0 
       (.I0(Q[3]),
        .I1(O2),
        .I2(I1),
        .I3(O3),
        .I4(narrow_bram_addr_inc_d1),
        .I5(\n_0_save_init_bram_addr_ld[14]_i_5 ),
        .O(O1));
LUT5 #(
    .INIT(32'h00000001)) 
     \save_init_bram_addr_ld[14]_i_4 
       (.I0(narrow_addr_int[3]),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .I3(narrow_addr_int[2]),
        .I4(narrow_addr_int[4]),
        .O(O3));
LUT6 #(
    .INIT(64'h7F7775777F777F77)) 
     \save_init_bram_addr_ld[14]_i_5 
       (.I0(curr_wrap_burst_reg),
        .I1(\n_0_save_init_bram_addr_ld[14]_i_6 ),
        .I2(\n_0_wrap_burst_total_reg[1] ),
        .I3(\n_0_wrap_burst_total_reg[2] ),
        .I4(\n_0_wrap_burst_total_reg[0] ),
        .I5(\n_0_save_init_bram_addr_ld[14]_i_7 ),
        .O(\n_0_save_init_bram_addr_ld[14]_i_5 ));
LUT6 #(
    .INIT(64'h44C004C000C000C0)) 
     \save_init_bram_addr_ld[14]_i_6 
       (.I0(\n_0_wrap_burst_total_reg[2] ),
        .I1(I2),
        .I2(\n_0_wrap_burst_total_reg[0] ),
        .I3(\n_0_wrap_burst_total_reg[1] ),
        .I4(I3),
        .I5(I4),
        .O(\n_0_save_init_bram_addr_ld[14]_i_6 ));
LUT4 #(
    .INIT(16'h8000)) 
     \save_init_bram_addr_ld[14]_i_7 
       (.I0(I8),
        .I1(I4),
        .I2(I2),
        .I3(I3),
        .O(\n_0_save_init_bram_addr_ld[14]_i_7 ));
LUT6 #(
    .INIT(64'hC0B0FFFFC0B00000)) 
     \save_init_bram_addr_ld[6]_i_1__0 
       (.I0(\n_0_wrap_burst_total_reg[0] ),
        .I1(\n_0_wrap_burst_total_reg[2] ),
        .I2(\n_0_save_init_bram_addr_ld_reg[6] ),
        .I3(\n_0_wrap_burst_total_reg[1] ),
        .I4(O1),
        .I5(s_axi_araddr[1]),
        .O(RdChnl_BRAM_Addr_Ld[1]));
LUT6 #(
    .INIT(64'hBD00FFFFBD000000)) 
     \save_init_bram_addr_ld[7]_i_1__0 
       (.I0(\n_0_wrap_burst_total_reg[2] ),
        .I1(\n_0_wrap_burst_total_reg[0] ),
        .I2(\n_0_wrap_burst_total_reg[1] ),
        .I3(\n_0_save_init_bram_addr_ld_reg[7] ),
        .I4(O1),
        .I5(s_axi_araddr[2]),
        .O(RdChnl_BRAM_Addr_Ld[2]));
LUT6 #(
    .INIT(64'hFB00FFFFFB000000)) 
     \save_init_bram_addr_ld[8]_i_1__0 
       (.I0(\n_0_wrap_burst_total_reg[0] ),
        .I1(\n_0_wrap_burst_total_reg[2] ),
        .I2(\n_0_wrap_burst_total_reg[1] ),
        .I3(\n_0_save_init_bram_addr_ld_reg[8] ),
        .I4(O1),
        .I5(s_axi_araddr[3]),
        .O(RdChnl_BRAM_Addr_Ld[3]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \save_init_bram_addr_ld[9]_i_1__0 
       (.I0(\n_0_save_init_bram_addr_ld_reg[9] ),
        .I1(O1),
        .I2(s_axi_araddr[4]),
        .O(RdChnl_BRAM_Addr_Ld[4]));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[5]),
        .Q(\n_0_save_init_bram_addr_ld_reg[10] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[6]),
        .Q(\n_0_save_init_bram_addr_ld_reg[11] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(O15[0]),
        .Q(\n_0_save_init_bram_addr_ld_reg[12] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[13] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(O15[1]),
        .Q(\n_0_save_init_bram_addr_ld_reg[13] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[14] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(O15[2]),
        .Q(\n_0_save_init_bram_addr_ld_reg[14] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[1]),
        .Q(\n_0_save_init_bram_addr_ld_reg[6] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[2]),
        .Q(\n_0_save_init_bram_addr_ld_reg[7] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[3]),
        .Q(\n_0_save_init_bram_addr_ld_reg[8] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(RdChnl_BRAM_Addr_Ld[4]),
        .Q(\n_0_save_init_bram_addr_ld_reg[9] ),
        .R(O4));
LUT6 #(
    .INIT(64'h2000000080000000)) 
     \wrap_burst_total[0]_i_2__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arlen[2]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[0]),
        .I5(s_axi_arsize[0]),
        .O(\n_0_wrap_burst_total[0]_i_2__0 ));
LUT6 #(
    .INIT(64'h0000000041009000)) 
     \wrap_burst_total[0]_i_3__0 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arsize[1]),
        .O(\n_0_wrap_burst_total[0]_i_3__0 ));
LUT6 #(
    .INIT(64'h4000202020002000)) 
     \wrap_burst_total[1]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(\n_0_wrap_burst_total[2]_i_2__0 ),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_arlen[3]),
        .I5(s_axi_arsize[0]),
        .O(wrap_burst_total_cmb[1]));
LUT6 #(
    .INIT(64'h2000000000000000)) 
     \wrap_burst_total[2]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arlen[3]),
        .I4(s_axi_arlen[2]),
        .I5(\n_0_wrap_burst_total[2]_i_2__0 ),
        .O(wrap_burst_total_cmb[2]));
LUT2 #(
    .INIT(4'h8)) 
     \wrap_burst_total[2]_i_2__0 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[0]),
        .O(\n_0_wrap_burst_total[2]_i_2__0 ));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(wrap_burst_total_cmb[0]),
        .Q(\n_0_wrap_burst_total_reg[0] ),
        .R(O4));
MUXF7 \wrap_burst_total_reg[0]_i_1__0 
       (.I0(\n_0_wrap_burst_total[0]_i_2__0 ),
        .I1(\n_0_wrap_burst_total[0]_i_3__0 ),
        .O(wrap_burst_total_cmb[0]),
        .S(s_axi_arsize[2]));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(wrap_burst_total_cmb[1]),
        .Q(\n_0_wrap_burst_total_reg[1] ),
        .R(O4));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(ar_active_re),
        .D(wrap_burst_total_cmb[2]),
        .Q(\n_0_wrap_burst_total_reg[2] ),
        .R(O4));
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
