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
		
		// len = F
		cprDataIn = 256'h1200_0000_0000_0000_3400_0000_5678_0000_9ABC_DEF1_2300_0000_4567_0000_89AB_CDEF;
		tagIn		= 16'b0100011011011011;
		@(negedge clk);
		// len = B
		cprDataIn = 256'h1234_0000_5678_0000_9ABC_0000_DE00_0000_F100_0000_2345_0000_6700_0000_0000_0000;
		tagIn		= 16'b1010100101100100;
		@(negedge clk);
		// len = 7
		cprDataIn = 256'h0000_0000_0000_0000_3400_0000_5678_0000_0000_0000_9ABC_0000_DE00_0000_F100_0000;
		tagIn		= 16'b0000011000100101;
		@(negedge clk);
		// len = 8
		cprDataIn = 256'h1234_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_5678_0000_9ABC_DEF1;
		tagIn		= 16'b1000000000001011;
		@(negedge clk);
		// len = 0
		cprDataIn = 256'h0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
		tagIn		= 16'b0000000000000000;
		@(negedge clk);
		// len = 20
		cprDataIn = 256'h1234_5678_9ABC_DEF1_2345_6789_ABCD_EF12_3456_789A_BCDE_F123_4567_89AB_CDEF_1234;
		tagIn		= 16'b1111111111111111;
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