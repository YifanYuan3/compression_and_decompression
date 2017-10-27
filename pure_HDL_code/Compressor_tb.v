`timescale 1ns/1ns

module Compressor_tb;

	reg 						clk;
	reg							reset;
	reg 						wrtEn; 
	reg 	[32 * 8 - 1 : 0]	dataIn;
	reg 	[32 * 8 - 1 : 0]	cprDataIn;	// debug
	reg		[2  * 8 - 1 : 0]  tagIn;		// debug
	wire  [32 * 8 - 1 : 0]  dataOut;
	wire	[2  * 8 - 1 : 0]  tagOut;
	
	initial 
	begin
		
		clk = 0;
		reset = 0;
		wrtEn = 1;
		@(negedge clk);
		
		cprDataIn = 256'h1200_0000_0000_0000_3400_0000_5678_0000_9ABC_DEF1_2300_0000_4567_0000_89AB_CDEF;
		tagIn		= 16'b0100011011011011;
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		$finish;
	end
  
  Compressor cprs (clk, reset, wrtEn, dataIn, cprDataIn, tagIn, dataOut, tagOut);
  
  always #1 clk = ~clk;
  
  initial
  begin
    $dumpfile("compressor.vcd");
    $dumpvars(0, Compressor_tb);
  end

endmodule