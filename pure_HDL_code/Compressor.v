`define DATA_WIDTH			32
`define NUM_DATA				8
`define TAG_WIDTH				2
`define LEN_WIDTH				8
`define MEM_ADDR_WIDTH 	8

module Compressor (
	input 																			clk,
	input 																			reset, 
	input 																			wrt_en,
	input 	[`DATA_WIDTH * `NUM_DATA - 1 	: 0] 	data_in,
	input 																			push_infifo,		// Question: do I need to check if FIFO is full and avoid pushing data when it's full?
	output	[`DATA_WIDTH * `NUM_DATA - 1 	: 0]	data_out
);
	
	wire 																				pop_infifo, empty_infifo, full_infifo, almost_full_infifo;
	wire 		[`DATA_WIDTH * `NUM_DATA - 1 	: 0] 	infifo_out;
	wire 		[`MEM_ADDR_WIDTH 							: 0] 	infifo_count;
	assign 	push_infifo_	= (full_infifo 	== 1'b0) ? push_infifo : 1'b0;
	assign 	pop_infifo	 	= (empty_infifo == 1'b0) ? 1'b1 : 1'b0;
	FIFO #(
  	.DATA_WIDTH (`DATA_WIDTH * `NUM_DATA),	 
  	.ADDR_WIDTH (`MEM_ADDR_WIDTH)
  ) infifo (
  	clk,
  	reset,
  	push_infifo,
  	pop_infifo,
  	data_in, 
  	infifo_out,
  	empty_infifo,
  	full_infifo,
  	almost_full_infifo,
  	infifo_count
  );
	
	wire 		[`DATA_WIDTH * `NUM_DATA 	- 1 : 0] 	cpr_in, cpr_out;
	wire		[`TAG_WIDTH  * `NUM_DATA 	- 1 : 0]	tag_out;
	wire		[`LEN_WIDTH								- 1	:	0]	len_out;
	wire																				valid_cpr_in, valid_cpr_in_, valid_cpr_out;
	assign 	cpr_in 		= infifo_out;
	Register #(
		.BIT_WIDTH(1)
	) valid_reg0 (
		clk, 
		reset, 
		wrt_en, 
		valid_cpr_in_, 
		valid_cpr_in
	);
	assign	valid_cpr_in_ 	= (pop_infifo == 1'b1) ? 1'b1 : 1'b0;
  EightDataCompressUnit #(
  	.DATA_WIDTH	(`DATA_WIDTH),
  	.TAG_WIDTH	(`TAG_WIDTH	),
  	.LEN_WIDTH	(`LEN_WIDTH	)
  ) cu8 (
  	clk, 
  	reset, 
  	wrt_en, 
  	valid_cpr_in,
  	cpr_in, 
  	cpr_out, 
  	tag_out,
  	len_out,
  	valid_cpr_out
  );
  
  wire		push_cmpfifo, pop_cmpfifo, empty_cmpfifo, full_cmpfifo, almost_full_cmpfifo;
	wire 		[`MEM_ADDR_WIDTH 																						: 0] 	cmpfifo_count;
	wire 		[(`DATA_WIDTH + `TAG_WIDTH) * `NUM_DATA + `LEN_WIDTH	- 1 	:	0] 	cmpfifo_in, cmpfifo_out;
	assign 	push_cmpfifo 	= (almost_full_cmpfifo == 1'b0 && valid_cpr_out == 1'b1) ? 1'b1 : 1'b0;
	assign 	pop_cmpfifo 	= (empty_cmpfifo == 1'b0 && stall == 1'b0) ? 1'b1 : 1'b0;
	assign 	cmpfifo_in 		= (push_cmpfifo == 1'b1) ? {cpr_out, tag_out, len_out} : 0;
	
  FIFO #(
  	.DATA_WIDTH ((`DATA_WIDTH + `TAG_WIDTH) * `NUM_DATA + `LEN_WIDTH),	 
  	.ADDR_WIDTH (`MEM_ADDR_WIDTH)
  ) cmpfifo (
  	clk,
  	reset,
  	push_cmpfifo,
  	pop_cmpfifo,
		cmpfifo_in, 
  	cmpfifo_out,
  	empty_cmpfifo,
  	full_cmpfifo,
  	almost_full_cmpfifo,
  	cmpfifo_count
  );

  wire																																			valid, stall, valid_ali_in_, valid_ali_in;
  wire 		[(`DATA_WIDTH + `TAG_WIDTH) * `NUM_DATA + `LEN_WIDTH	- 1 	:	0]	aligner_in;
  wire		[`DATA_WIDTH * `NUM_DATA 															-	1		:	0]	aligner_out;
	Register #(
		.BIT_WIDTH(1)
	) valid_reg1 (
		clk, 
		reset, 
		wrt_en, 
		valid_ali_in_, 
		valid_ali_in
	);
	assign 	valid_ali_in_ = (pop_cmpfifo == 1'b1) ? 1'b1 : 1'b0;
  assign 	aligner_in 		= (valid_ali_in == 1'b1) ? cmpfifo_out : 0;
  Aligner #(
  	.DATA_IN_WIDTH 	((`DATA_WIDTH + `TAG_WIDTH) * `NUM_DATA),
		.LEN_WIDTH 			(`LEN_WIDTH),
		.DATA_OUT_WIDTH (`DATA_WIDTH * `NUM_DATA)
  )	al0 (
  	clk, 
  	reset, 
  	wrt_en, 
  	aligner_in [(`DATA_WIDTH + `TAG_WIDTH) * `NUM_DATA + `LEN_WIDTH		- 1	:	 `LEN_WIDTH], // tag + cpr_data
  	aligner_in [`LEN_WIDTH																						- 1	:						0], // len 
  	aligner_out, 
  	valid, 
  	stall
  );
  
  wire		push_outfifo, pop_outfifo, empty_outfifo, full_outfifo, almost_full_outfifo;
 	wire 		[`MEM_ADDR_WIDTH	: 0] 	outfifo_count;
  assign 	push_outfifo = (full_outfifo == 1'b0 && valid == 1'b1) ? 1'b1 : 1'b0 ;	
  assign 	pop_outfifo = (empty_outfifo == 1'b0) ? 1'b1 : 1'b0;
  FIFO #(
  	.DATA_WIDTH (`DATA_WIDTH * `NUM_DATA),	 
  	.ADDR_WIDTH (`MEM_ADDR_WIDTH)
  ) outfifo (
  	clk,
  	reset,
  	push_outfifo,
  	pop_outfifo,
  	aligner_out, 
  	data_out,
  	empty_outfifo,
  	full_outfifo,
  	almost_full_outfifo,
  	outfifo_count
  );

endmodule