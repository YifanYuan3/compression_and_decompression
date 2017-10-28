`timescale 1ns/1ns

// module Merger(clk, reset, wrtEn, dataIn0, inLen0, dataIn1, inLen1, dataOut, outLen);
// 	input															clk,
// 	input															reset,
// 	input															wrtEn,
// 	input 	[DATA_WIDTH     - 1 : 0] 	dataIn0,
// 	input 	[TAG_WIDTH      - 1 : 0] 	inTag0,
// 	input 	[LEN_WIDTH      - 1 : 0] 	inLen0,
// 	input 	[DATA_WIDTH     - 1 : 0] 	dataIn1,
// 	input 	[TAG_WIDTH      - 1 : 0] 	inTag1,
// 	input  	[LEN_WIDTH      - 1 : 0] 	inLen1,
// 	output 	[DATA_WIDTH * 2 - 1 : 0] 	dataOut,
// 	output 	[TAG_WIDTH  * 2 - 1 : 0] 	outTag,
// 	output 	[LEN_WIDTH      - 1 : 0] 	outLen

module Merger_tb;

	reg 					clk;
	reg						reset;
	reg 					wrtEn; 
	reg  	[31:0] 	dataIn0;
	reg   [1:0]   inTag0;
	reg 	[7:0]		inLen0;
	reg		[31:0] 	dataIn1;
	reg   [1:0]   inTag1;
	reg 	[7:0]		inLen1;
	wire	[63:0]	dataOut;
	wire  [3:0]   outTag;
	wire	[7:0]		outLen;
	
	initial 
	begin
		
		clk = 0;
		reset = 0;
		wrtEn = 1;
		dataIn0 = 32'h4567_0000;
		inTag0 = 2'b10;
		inLen0 = 8'b00000010;
		dataIn1 = 32'h89AB_CDEF;
		inTag1 = 2'b11;
		inLen1 = 8'b00000100;
		@(negedge clk);
		@(negedge clk);
		$finish;
	end
  
  Merger #(.DATA_WIDTH(32), .TAG_WIDTH(2), .LEN_WIDTH(8)) mg (clk, reset, wrtEn, dataIn0, inTag0, inLen0, dataIn1, inTag1, inLen1, dataOut, outTag, outLen);
  
  always #1 clk = ~clk;
  
  initial
  begin
    $dumpfile("merger.vcd");
    $dumpvars(0, Merger_tb);
  end

endmodule