module Aligner #(
	parameter DATA_IN_WIDTH 	= 272,
	parameter LEN_WIDTH     	= 8,
	parameter DATA_OUT_WIDTH 	= 256
)
(
	input																clk,
	input 															reset,
	input 															wrt_en,
	input 		[DATA_IN_WIDTH 	- 1	: 0] 	data_in,
	input 		[LEN_WIDTH  		- 1	: 0] 	len,
	output		[DATA_OUT_WIDTH - 1 : 0] 	data_out,
	output															valid,
	output															stall
);
	wire																valid;
	wire																stall_in;
	wire																stall_out;
	wire 			[LEN_WIDTH  				: 0]  in_data_len;
	wire 			[LEN_WIDTH  		+ 1	: 0]  merged_len;
	wire 			[LEN_WIDTH  				: 0] 	remained_len_in;
	wire			[LEN_WIDTH  		    : 0] 	remained_len_out;

	assign in_data_len 				= len << 3;
	assign merged_len   			= remained_len_out + in_data_len;
	assign valid_in 					= (merged_len >= 256) ? 1'b1 : 1'b0;
	assign remained_len_in   	= valid_in ? merged_len - 256 : merged_len;
	assign stall_in						= merged_len >= 512 ? 1'b1 : 1'b0;
	assign valid 							= valid_in;
	assign stall							= stall_out;
	
	Register #(
		.BIT_WIDTH(1)
	) valid_reg (
		clk, 
		reset, 
		wrt_en, 
		valid_in, 
		valid_out
	);
	
	Register #(
		.BIT_WIDTH(1)
	) stall_reg (
		clk, 
		reset, 
		wrt_en, 
		stall_in, 
		stall_out
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
	assign data_out 				= new_out[DATA_OUT_WIDTH - 1 : 0];

endmodule