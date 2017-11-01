`timescale 1ns/1ns
// 	input														clk,
// 	input														reset,
// 	input 													wrt_en,
// 	input 													tvalid,
// 	input														tlast,
// 	input														full_infifo,
// 	input														empty_infifo,
// 	input 	[`BURST_WIDTH -	1	:	0]	data_in,
// 	output	[2								:	0] 	state,
// 	output													push_infifo,
// 	output													pop_infifo,
// 	output													flag_compression,
// 	output													is_header

module CompressorController_tb;
	reg 					clk;
	reg 					reset;
	reg 					wrt_en; 
	reg 					tvalid;
	reg 					tlast;
	reg 					full_infifo;
	reg 					empty_infifo;
	reg  [255:0]	data_in;
	wire [2  :0]	state;
	wire					push_infifo;
	wire					pop_infifo;
	wire					flag_compression;
	wire					is_header;
	
	initial 
	begin
		clk = 0;
		reset = 1;
		wrt_en = 1;
		@(negedge clk);
		reset = 0;
		tvalid = 1;
		tlast = 0;
		full_infifo = 0;
		empty_infifo = 1;

		data_in = 256'h0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
		data_in[111:96] = 16'h0008;
		data_in[143:128] = 16'hdc05;
		data_in[127:120] = 8'h28;
		data_in[191:184] = 8'h06;
		@(negedge clk);
		empty_infifo = 0;
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		tlast = 1;
		@(negedge clk);
		tlast = 0;
		data_in = 256'h0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		tlast = 1;
		@(negedge clk);
		tlast = 0;
		data_in = 256'h0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
		data_in[111:96] = 16'h0008;
		data_in[143:128] = 16'hdc05;
		data_in[127:120] = 8'h28;
		data_in[191:184] = 8'h06;
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		$finish;
	end
	
	CompressorController cc (
		clk,
		reset,
		wrt_en,
		tvalid,
		tlast,
		full_infifo,
		empty_infifo,
		data_in,
		state,
		push_infifo,
		pop_infifo,
		flag_compression,
		is_header
	);
	
  always #1 clk = ~clk;
  
  initial
  begin
    $dumpfile("controller.vcd");
    $dumpvars(0, CompressorController_tb);
  end
endmodule