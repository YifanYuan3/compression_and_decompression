module Aligner #(
	parameter DATA_IN_WIDTH 	= 272,
	parameter TAG_WIDTH     	= 16,
	parameter LEN_WIDTH     	= 8,
	parameter DATA_OUT_WIDTH 	= 256
)
(
	input																clk,
	input 															reset,
	input 															wrt_en,
	input 		[DATA_IN_WIDTH 	- 1	: 0] 	data_in,
	input 		[LEN_WIDTH  		- 1	: 0] 	len,
	input			[3									:	0]  flags_in,		// valid_align, tlast_in, flag_compression, is_header
	output		[DATA_OUT_WIDTH - 1 : 0] 	data_out,
	output		[2									:	0]	flags_out 	// valid, stall, tlast_out
);
	wire																valid, stall, tlast_in, flag_compression, is_header, tlast_out; 		
	wire 			[LEN_WIDTH  				: 0]  in_data_len;
	wire 			[LEN_WIDTH  		+ 1	: 0]  merged_len;
	wire 			[LEN_WIDTH  				: 0] 	remained_len_in;
	wire			[LEN_WIDTH  		    : 0] 	remained_len_out;

	assign valid_align				= flags_in[3];
	assign tlast_in 					= (valid_align == 1'b1) ? flags_in[2] : 0;
	assign flag_compression		= (valid_align == 1'b1) ? flags_in[1] : 0;
	assign is_header					= (valid_align == 1'b1) ? flags_in[0] : 0;
	
	assign in_data_len 				= len << 3;
	assign merged_len   			= (flag_compression == 1'b0 || is_header == 1'b1) ? 256 : remained_len_out + in_data_len;
	assign remained_len_in   	= filled ? merged_len - 256 : merged_len;
	assign filled 						= (merged_len >= 256) ? 1'b1 : 1'b0;
	assign valid 							= valid_align & (filled | tlast_out);
	assign stall							= merged_len >= 512 ? 1'b1 : 1'b0;
	assign flags_out					= {valid, stall, tlast_out};
	
	Register #(
		.BIT_WIDTH(2)
	) valid_reg (
		clk, 
		reset, 
		wrt_en, 
		{filled, 	tlast_in}, 
		{valid_out, tlast_out}
	);
	
	Register #(
		.BIT_WIDTH(LEN_WIDTH + 1)
	) len_reg (
		clk, 
		reset, 
		wrt_en, 
		remained_len_in, 
		remained_len_out
	);
	
	wire			[DATA_OUT_WIDTH * 2 + 8 - 1 : 0]	shifted_data_in;
	wire			[DATA_OUT_WIDTH * 2 + 8 - 1 : 0]	remained_data;
	wire			[DATA_OUT_WIDTH * 2 + 8 - 1 : 0]	new_out;
	wire			[DATA_OUT_WIDTH * 2 + 8 - 1 : 0]	old_out;
	
	Register #(
		.BIT_WIDTH(DATA_OUT_WIDTH * 2 + 8)
	) rem_out_reg (
		clk,
		reset, 
		wrt_en, 
		new_out,
		old_out		
	);

	assign shifted_data_in 	= data_in << remained_len_out;
	assign remained_data 		= (valid_out == 1'b1) ? old_out >> DATA_OUT_WIDTH : (old_out << DATA_OUT_WIDTH + 8) >> (DATA_OUT_WIDTH + 8);
	assign new_out 					= shifted_data_in | remained_data;
	assign data_out 				= ((flag_compression == 1'b0) || (is_header == 1'b1)) ? data_in >> TAG_WIDTH : new_out[DATA_OUT_WIDTH - 1 : 0];

endmodule