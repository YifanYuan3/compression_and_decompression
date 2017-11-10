module Aligner #(
	parameter DATA_IN_WIDTH 	= 272,
	parameter TAG_WIDTH     	= 16,
	parameter LEN_WIDTH     	= 8,
	parameter DATA_OUT_WIDTH 	= 256,
	parameter TKEEP_WIDTH			= 32
)
(
	input																		clk,
	input 																	reset,
	input 																	wrt_en,
	input 		[DATA_IN_WIDTH 			- 1	: 0] 	data_in,
	input 		[LEN_WIDTH  				- 1	: 0] 	len,
	input			[TKEEP_WIDTH + 4 		- 1	:	0]  flags_in,		// valid_align, tkeep_in, tlast_in, flag_compression, is_header
	output		[DATA_OUT_WIDTH 		- 1	: 0] 	data_out,
	output		[3									- 1	:	0]	flags_out, 	// valid, stall, tlast_out
	output		[DATA_OUT_WIDTH / 8 - 1 : 0]	tkeep
);
	wire																					valid, valid_, stall, stall_, tlast_in, tlast_in_, flag_compression, is_header, tlast_out, tlast_out_, tlast_out__; 		
	wire																					prev_valid_out, prev_flag_compression, prev_is_header;
	wire 			[LEN_WIDTH  									: 0]  in_data_len;
	wire 			[LEN_WIDTH  						 + 1	: 0]  merged_len;
	wire 			[LEN_WIDTH  									: 0] 	remained_len_in;
	wire			[LEN_WIDTH  				    			: 0] 	remained_len_out;
	wire			[LEN_WIDTH  				    			: 0] 	prev_remained_len_out;
	wire			[DATA_OUT_WIDTH * 3 + 16 - 1 	: 0]	shifted_data_in;
	wire			[DATA_OUT_WIDTH * 3 + 16 - 1 	: 0]	remained_data;
	wire			[DATA_OUT_WIDTH * 3 + 16 - 1 	: 0]	new_out;
	wire			[DATA_OUT_WIDTH * 3 + 16 - 1 	: 0]	old_out;
	wire 			[DATA_IN_WIDTH 					 - 1	: 0] 	prev_data_in;
	wire			[DATA_OUT_WIDTH / 8 		 - 1 	: 0]	tkeep_, tkeep_in;
	
	assign valid_align				= flags_in[TKEEP_WIDTH + 4 - 1];
	assign tkeep_in						= flags_in[TKEEP_WIDTH + 4 - 2 : 3];
	assign tlast_in 					= (valid_align == 1'b1) ? flags_in[2] : 0;
	assign flag_compression		= (valid_align == 1'b1) ? flags_in[1] : 0;
	assign is_header					= (valid_align == 1'b1) ? flags_in[0] : 0;
	
	assign in_data_len 				= len << 3;
	assign merged_len   			= (flag_compression == 1'b0 || is_header == 1'b1) ? 256 : remained_len_out + in_data_len;
	assign remained_len_in   	= filled ? merged_len - 256 : merged_len;
	assign filled 						= (merged_len >= 256) ? 1'b1 : 1'b0;
	assign overflow 					= (merged_len > 256) ? 1'b1 : 1'b0;
	assign valid_							= valid_align & (filled | tlast_out__);
	assign stall_							= merged_len >= 512 ? 1'b1 : 1'b0;

	assign tlast_in_					= (overflow == 1'b1) & (tlast_in == 1'b1) ? 1'b1 : 1'b0;
	assign tlast_out__				= (overflow == 1'b0) & (tlast_in == 1'b1) ? 1'b1 : tlast_out_;
	assign tkeep_							= (filled == 1'b0) & (tlast_in == 1'b1) ? 32'hFFFFFFFF >> ((256 - merged_len) >> 3) : tkeep_in;
	assign flags_out					= {valid, stall, tlast_out};
	
	Register #(
		.BIT_WIDTH(2 + LEN_WIDTH + 1)
	) first_reg (
		clk, 
		reset, 
		wrt_en, 
		{filled, 		tlast_in_, 	remained_len_in}, 
		{valid_out, tlast_out_, remained_len_out}
	);
	
	Register #(
		.BIT_WIDTH(DATA_IN_WIDTH)
	) data_in_reg (
		clk,
		reset, 
		wrt_en, 
		data_in,
		prev_data_in		
	);
	
	Register #(
		.BIT_WIDTH(DATA_OUT_WIDTH * 3 + 16)
	) rem_out_reg (
		clk,
		reset, 
		wrt_en, 
		new_out,
		old_out		
	);

	Register #(
		.BIT_WIDTH(LEN_WIDTH + 1 + 3)
	) prev_reg (
		clk,
		reset, 
		wrt_en, 
		{remained_len_out, 			valid_out, 			flag_compression, 			is_header},
		{prev_remained_len_out, prev_valid_out,	prev_flag_compression,	prev_is_header}		
	);
	
	Register #(
		.BIT_WIDTH(1 + 1 + 32 + 1)
	) last_reg (
		clk,
		reset, 
		wrt_en, 
		{valid_,	tlast_out__,	tkeep_, stall_},
		{valid,		tlast_out,		tkeep,	stall}
	);

	assign shifted_data_in 	= prev_data_in << prev_remained_len_out;
	assign remained_data 		= (prev_valid_out == 1'b1) ? old_out >> DATA_OUT_WIDTH : (old_out << DATA_OUT_WIDTH + 8) >> (DATA_OUT_WIDTH + 8);
	assign new_out 					= ((prev_flag_compression == 1'b0) || (prev_is_header == 1'b1)) ? 0 : shifted_data_in | remained_data;
	assign data_out 				= ((prev_flag_compression == 1'b0) || (prev_is_header == 1'b1)) ? prev_data_in >> TAG_WIDTH : new_out[DATA_OUT_WIDTH - 1 : 0];

endmodule