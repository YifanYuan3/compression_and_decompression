`define DATA_WIDTH	32
`define NUM_DATA		8
`define TAG_WIDTH		2
`define LEN_WIDTH		8

module Compressor (
	input 																			clk,
	input 																			reset, 
	input 																			wrt_en,
	input 	[`DATA_WIDTH * `NUM_DATA - 1 : 0] 	data_int,
	input 	[`DATA_WIDTH * `NUM_DATA - 1 : 0] 	cpr_data_in,
	input		[`TAG_WIDTH  * `NUM_DATA - 1 : 0]		tag_in,						
	output	[`DATA_WIDTH * `NUM_DATA - 1 : 0]		cpr_data_out,
	output	[`TAG_WIDTH  * `NUM_DATA - 1 : 0]		tag_out
);
	
	wire [`LEN_WIDTH - 1 : 0] len_out;
	wire [`DATA_WIDTH * `NUM_DATA - 1 : 0] cpr_data_out;
  EightDataCompressUnit #(
  	.DATA_WIDTH	(`DATA_WIDTH),
  	.TAG_WIDTH	(`TAG_WIDTH	),
  	.LEN_WIDTH	(`LEN_WIDTH	)
  ) cu8 (
  	clk, 
  	reset, 
  	wrt_en, 
  	data_in, 
  	cpr_data_in, 
  	tag_in, 
  	cpr_data_out, 
  	tag_out,
  	len_out
  );
  
  wire push, pop, empty, full, almostfull;
  FIFO #(
  	.DATA_WIDTH (280), // 16 + 256 + 8
  	.ADDR_WIDTH (8)
  ) fifo0 (
  	clk,
  	reset,
  	push,
  	pop,
  	{tag_out, cpr_data_out, len_out}, 
  	data_out,
  	empty,
  	full,
  	almostfull,
  	fifo_count
  );
  	
endmodule