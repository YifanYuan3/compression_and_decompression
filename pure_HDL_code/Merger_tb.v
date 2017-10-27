`timescale 1ns/1ns

// module Merger(clk, reset, wrtEn, dataIn0, inLen0, dataIn1, inLen1, dataOut, outLen);

module Merger_tb;

	reg 					clk;
	reg						reset;
	reg 					wrtEn; 
	reg  	[31:0] 	dataIn0;
	reg 	[2:0]		inLen0;
	reg		[31:0] 	dataIn1;
	reg 	[2:0]		inLen1;
	wire	[63:0]	dataOut;
	wire	[5:0]		outLen;
	
	initial 
	begin
		
		clk = 0;
		reset = 0;
		wrtEn = 1;
		dataIn0 = 32'h4567_0000;
		inLen0 = 3'b010;
		dataIn1 = 32'h89AB_CDEF;
		inLen1 = 3'b100;
		@(negedge clk);
		$finish;
	end
  
  Merger #(.DATA_IN_WIDTH(32), .LEN_IN_WIDTH(3)) mg (clk, reset, wrtEn, dataIn0, inLen0, dataIn1, inLen1, dataOut, outLen);
  
  always #1 clk = ~clk;
  
  initial
  begin
    $dumpfile("merger.vcd");
    $dumpvars(0, Merger_tb);
  end

endmodule