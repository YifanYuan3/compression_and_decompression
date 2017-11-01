`timescale 1ns/1ns
// module CompressorController (
// 	input														clk,
// 	input														reset,
// 	input 													wrt_en,
// 	input 													tvalid,
// 	input														tlast,
// 	input														infifo_full,
// 	input 	[BURST_WIDTH 	-	1	:	0]	data_in,
// 	output	[2								:	0] 	state,
// 	output													infifo_push,
// 	output 													tready, 
// 	output													flag_compression
// );

module CompressorController_tb;
	reg 					clk;
	reg 					reset;
	reg 					wrt_en; 
	reg 					tvalid;
	reg 					tlast;
	reg 					infifo_full;
	reg  [255:0]	data_in;
	wire [2  :0]	state;
	wire					infifo_push;
	wire					tready;
	wire					flag_compression;
	
	initial 
	begin
		clk = 0;
		reset = 1;
		wrt_en = 1;
		@(negedge clk);
		reset = 0;
		tvalid = 1;
		tlast = 0;
		infifo_full = 0;

		data_in = 256'h1000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
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
		infifo_full,
		data_in,
		state,
		infifo_push,
		tready,
		flag_compression
	);
	
  always #1 clk = ~clk;
  
  initial
  begin
    $dumpfile("controller.vcd");
    $dumpvars(0, CompressorController_tb);
  end
endmodule