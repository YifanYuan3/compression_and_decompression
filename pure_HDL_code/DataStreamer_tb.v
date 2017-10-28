`timescale 1ns/1ns

module DataStreamer_tb;

	reg 							clk;
	reg								reset;
	reg								wrtEn;
	reg 	[271 : 0]		dataIn;
	reg		[7   : 0] 	len;
	wire  [255 : 0]  	dataOut;
	wire							valid;
	wire  [8   : 0]   newLen;
	wire  [8   : 0]   curLen;
	
	initial 
	begin
		
		clk = 0;
		reset = 1;
		wrtEn = 1;
		dataIn = 0;
		len = 32;
		@(negedge clk);
		reset = 0;
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		$finish;
	end
  
  DataStreamer ds (clk, reset, wrtEn, dataIn, len, dataOut, valid, newLen);
  
  always #1 clk = ~clk;
  
  initial
  begin
    $dumpfile("ds.vcd");
    $dumpvars(0, DataStreamer_tb);
  end

endmodule