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
	input 																			tvalid_in,			// incoming data
	input																				tlast_in,				// incoming data
	input																				tready_in,			// outgoing data
	output	[`DATA_WIDTH * `NUM_DATA - 1 	: 0]	data_out,
	output																			tvalid_out,			// outgoing data: not empty at outfifo
	output																			tlast_out,			// outgoing data: aligner should generate this signal
	output	[`DATA_WIDTH 						 - 1	:	0]	tkeep
);
	
	wire	[2 : 0]	state;
	wire					push_infifo, pop_infifo, empty_infifo, full_infifo, almost_full_infifo, tready, flag_compression, is_header;
	
	CompressorController cc (
		clk,
		reset,
		wrt_en,
		tvalid_in,
		tlast_in,
		full_infifo,
		empty_infifo,
		data_in,
		state,
		push_infifo,
		pop_infifo,
		flag_compression,
		is_header
	);

	wire 		[`DATA_WIDTH * `NUM_DATA + 3 - 1 	: 0] 	infifo_in, infifo_out;		// tlast_in, flag_compression, is_header
	wire 		[`MEM_ADDR_WIDTH 									: 0] 	infifo_count;
	wire																						valid_cpr_in, valid_cpr_out;
	
	assign 	infifo_in		=	{data_in, tlast_in, flag_compression, is_header};
	assign	tready_out	=	!full_infifo;
	FIFO #(
  	.DATA_WIDTH ((`DATA_WIDTH * `NUM_DATA) + 3),	 
  	.ADDR_WIDTH (`MEM_ADDR_WIDTH)
  ) infifo (
  	clk,
  	reset,
  	push_infifo,
  	pop_infifo,
  	infifo_in, 
  	infifo_out,
  	empty_infifo,
  	full_infifo,
  	almost_full_infifo,
  	infifo_count
  );

	assign	valid_cpr_in	 			= pop_infifo;
	Register #(
		.BIT_WIDTH(1)
	) valid_reg0 (
		clk, 
		reset, 
		wrt_en, 
		valid_cpr_in, 
		valid_cpr_out
	);

	wire		[3													 : 0]	flags_from_infifo;
	wire		[3													 : 0]	flags_from_eight;
	wire 		[`DATA_WIDTH * `NUM_DATA - 1 : 0] cpr_in, cpr_out;
	wire		[`TAG_WIDTH  * `NUM_DATA - 1 : 0]	tag_out;
	wire		[`LEN_WIDTH							 - 1 : 0]	len_out;

	assign  flags_from_infifo		= {valid_cpr_out, infifo_out [2:0]}; 	
	assign 	cpr_in 							= infifo_out[`DATA_WIDTH * `NUM_DATA + 3 - 1 	: 3];

  EightDataCompressUnit #(
  	.DATA_WIDTH	(`DATA_WIDTH),
  	.TAG_WIDTH	(`TAG_WIDTH	),
  	.LEN_WIDTH	(`LEN_WIDTH	)
  ) cu8 (
  	clk, 
  	reset, 
  	wrt_en, 
  	flags_from_infifo,
  	cpr_in, 
  	cpr_out, 
  	tag_out,
  	len_out,
  	flags_from_eight
  );
  
  wire		push_cmpfifo, pop_cmpfifo, empty_cmpfifo, full_cmpfifo, almost_full_cmpfifo, valid_eight;
	wire 		[`MEM_ADDR_WIDTH 																							: 0] 	cmpfifo_count;
	wire 		[(`DATA_WIDTH + `TAG_WIDTH) * `NUM_DATA + `LEN_WIDTH + 3 - 1 	:	0] 	cmpfifo_in, cmpfifo_out;
	assign 	valid_eight		= flags_from_eight[3];
	assign 	push_cmpfifo 	= (almost_full_cmpfifo == 1'b0 && valid_eight == 1'b1) ? 1'b1 : 1'b0;
	assign 	pop_cmpfifo 	= (empty_cmpfifo == 1'b0 && stall == 1'b0) ? 1'b1 : 1'b0;
	assign 	cmpfifo_in 		= (push_cmpfifo == 1'b1) ? {cpr_out, tag_out, len_out, flags_from_eight[2:0]} : 0;
	
  FIFO #(
  	.DATA_WIDTH ((`DATA_WIDTH + `TAG_WIDTH) * `NUM_DATA + `LEN_WIDTH + 3),	 
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

  wire																																			valid_aligner, stall, valid_ali_in, valid_ali_in_;
	wire		[3													 																: 0]	flags_from_cmpfifo;
	wire		[2																													:	0]	flags_from_aligner;
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
	assign 	valid_ali_in_	 			= (pop_cmpfifo == 1'b1) ? 1'b1 : 1'b0;
  assign 	aligner_in 					= (valid_ali_in == 1'b1) ? cmpfifo_out[(`DATA_WIDTH + `TAG_WIDTH) * `NUM_DATA + `LEN_WIDTH + 3 - 1	: 3] : 0;
	assign 	flags_from_cmpfifo 	= {valid_ali_in, cmpfifo_out[2:0]};
  Aligner #(
  	.DATA_IN_WIDTH 	((`DATA_WIDTH + `TAG_WIDTH) * `NUM_DATA),
		.LEN_WIDTH 			(`LEN_WIDTH),
		.DATA_OUT_WIDTH (`DATA_WIDTH * `NUM_DATA)
  )	al0 (
  	clk, 
  	reset, 
  	wrt_en, 
  	aligner_in [(`DATA_WIDTH + `TAG_WIDTH) * `NUM_DATA + `LEN_WIDTH		- 1	:	 `LEN_WIDTH], // {cpr_data, tag}
  	aligner_in [`LEN_WIDTH																						- 1	:						0], // len 
  	flags_from_cmpfifo,
  	aligner_out, 
  	flags_from_aligner, // valid_aligner[2], stall[1], tlast_out[0]
  	tkeep
  );
  
  wire		push_outfifo, pop_outfifo, empty_outfifo, full_outfifo, almost_full_outfifo, align_tlast, tlast_out_, tvalid_out_;
 	wire 		[`MEM_ADDR_WIDTH	: 0] 	outfifo_count;
 	assign  valid_aligner	=	flags_from_aligner[2];
 	assign 	stall					= flags_from_aligner[1];
 	assign	align_tlast		=	flags_from_aligner[0];
  assign 	push_outfifo 	= (full_outfifo == 1'b0 && valid_aligner == 1'b1) ? 1'b1 : 1'b0 ;	
  assign 	pop_outfifo 	= (empty_outfifo == 1'b0 &&  tready_in == 1'b1) ? 1'b1 : 1'b0;
  assign 	tvalid_out_		=	pop_outfifo;
  FIFO #(
  	.DATA_WIDTH (`DATA_WIDTH * `NUM_DATA + 1),	 
  	.ADDR_WIDTH (`MEM_ADDR_WIDTH)
  ) outfifo (
  	clk,
  	reset,
  	push_outfifo,
  	pop_outfifo,
  	{aligner_out, align_tlast}, 
  	{data_out, tlast_out_},
  	empty_outfifo,
  	full_outfifo,
  	almost_full_outfifo,
  	outfifo_count
  );
  
	Register #(
		.BIT_WIDTH(1)
	) tvalid_out_reg (
		clk, 
		reset, 
		wrt_en, 
		tvalid_out_, 
		tvalid_out
	);

	assign tlast_out 	= tlast_out_ & tvalid_out;

endmodule