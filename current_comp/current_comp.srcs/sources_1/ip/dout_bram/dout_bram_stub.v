// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.3.1 (lin64) Build 1056140 Thu Oct 30 16:32:04 MDT 2014
// Date        : Thu Aug 31 11:40:08 2017
// Host        : ubuntu running 64-bit Ubuntu 14.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /media/frankqz/c35fb864-558a-4c20-ae81-7faa0c86f8e4/Xilinx/projects/small_data_compression/small_data_compression.srcs/sources_1/ip/dout_bram/dout_bram_stub.v
// Design      : dout_bram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_2,Vivado 2014.3.1" *)
module dout_bram(clka, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[9:0],dina[255:0],clkb,enb,addrb[9:0],doutb[255:0]" */;
  input clka;
  input [0:0]wea;
  input [9:0]addra;
  input [255:0]dina;
  input clkb;
  input enb;
  input [9:0]addrb;
  output [255:0]doutb;
endmodule
