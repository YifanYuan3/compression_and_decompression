`define DATA_WIDTH	32
`define NUM_DATA		8
`define TAG_WIDTH		2
`define LEN_WIDTH		8

module Compressor (
	input 																			clk,
	input 																			reset, 
	input 																			wrtEn,
	input 	[`DATA_WIDTH * `NUM_DATA - 1 : 0] 	dataIn,
	input 	[`DATA_WIDTH * `NUM_DATA - 1 : 0] 	cprDataIn,
	input		[`TAG_WIDTH  * `NUM_DATA - 1 : 0]		tagIn,						
	output	[`DATA_WIDTH * `NUM_DATA - 1 : 0]		dataOut,
	output	[`TAG_WIDTH  * `NUM_DATA - 1 : 0]		tagOut
);
	
	wire [`LEN_WIDTH - 1 : 0] lenOut;
  EightDataCompressUnit #(
  	.DATA_WIDTH	(`DATA_WIDTH),
  	.TAG_WIDTH	(`TAG_WIDTH	),
  	.LEN_WIDTH	(`LEN_WIDTH	)
  ) cu8 (
  	clk, 
  	reset, 
  	wrtEn, 
  	dataIn, 
  	cprDataIn, 
  	tagIn, 
  	dataOut, 
  	tagOut,
  	lenOut
  );
  	
endmodule