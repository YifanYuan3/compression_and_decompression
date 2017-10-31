`timescale 1ns/1ns

module EightDataCompressUnit_tb;

	reg 										clk;
	reg											reset;
	reg 										wrtEn; 
	reg 	[32 * 8 - 1 : 0]	dataIn;
	wire  [32 * 8 - 1 : 0]  dataOut;
	wire	[2  * 8 - 1 : 0]  tagOut;
	wire  [7          : 0]  lenOut; 
	
	initial 
	begin
		
		clk = 0;
		reset = 0;
		wrtEn = 1;
		@(negedge clk);
// 		dataIn = 256'hFEDC_BA98_0000_7654_0000_0032_1FED_CBA9_0000_8765_0000_0043_0000_0000_0000_0021;
		dataIn = 256'hFEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98_FEDC_BA98;
		$display("dataOut %h", dataOut);
		@(negedge clk);
		$display("dataOut %h", dataOut);
		@(negedge clk);
		$display("dataOut %h", dataOut);
		@(negedge clk);
		$display("dataOut %h", dataOut);
		@(negedge clk);
		$display("dataOut %h", dataOut);
		@(negedge clk);
		$display("dataOut %h", dataOut);
		@(negedge clk);
		$display("dataOut %h", dataOut);
		@(negedge clk);
		$display("dataOut %h", dataOut);
		@(negedge clk);
		$display("dataOut %h", dataOut);
		@(negedge clk);
		$finish;
	end
  
  EightDataCompressUnit 
  	cu8 (
  	clk, 
  	reset, 
  	wrtEn, 
  	dataIn, 
  	dataOut, 
  	tagOut, 
  	lenOut
  );
  
  always #1 clk = ~clk;
  
  initial
  begin
    $dumpfile("eight.vcd");
    $dumpvars(0, EightDataCompressUnit_tb);
  end

endmodule