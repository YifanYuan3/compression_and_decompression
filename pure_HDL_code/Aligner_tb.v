`timescale 1ns/1ns

module Aligner_tb;

	reg 							clk;
	reg								reset;
	reg								wrt_en;
	reg								push;
	reg								pop;
	wire							empty;
	wire							full;
	wire							almost_full;
	reg   [15  : 0]   tag_out;
	reg   [255 : 0]   cpr_data_out;
	reg   [7   : 0]   len_out;
	reg 	[271 : 0]		data_in;
	reg		[7   : 0] 	len;
	wire  [255 : 0]  	data_out;
	wire							valid;
	wire							stall;
	wire  [8   : 0]   new_len;
	wire  [8   : 0]   cur_len;
	wire  [279 : 0]   align_in_data;
	wire  [8   : 0]   fifo_count;
	
	initial 
	begin
		
		clk = 0;
		reset = 1;
		wrt_en = 1;
		data_in = 0;
		push = 0;
		pop = 0;
		len = 16;
		@(negedge clk);
		push = 1;
		reset = 0;
		tag_out = 16'h46DB;
		cpr_data_out = 256'h1234_5678_9ABC_DEF1_2345_6789_ABCD_EF00_0000_0000_0000_0000_0000_0000_0000_0000;
		len_out = 8'h0F;
		@(negedge clk);
		tag_out = 16'hA964;
		cpr_data_out = 256'h1234_5678_9ABC_DEF1_2345_6700_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
		len_out = 8'h0B;
		@(negedge clk);
		tag_out = 16'h0625;
		cpr_data_out = 256'h3456_789A_BCDE_F100_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
		len_out = 8'h07;
		@(negedge clk);
		tag_out = 16'h800B;
		cpr_data_out = 256'h1234_5678_9ABC_DEF1_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
		len_out = 8'h08;
		@(negedge clk);
		tag_out = 16'h0000;
		cpr_data_out = 256'h0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
		len_out = 8'h00;
		@(negedge clk);
		tag_out = 16'hFFFF;
		cpr_data_out = 256'h1234_5678_9ABC_DEF1_2345_6789_ABCD_EF12_3456_789A_BCDE_F123_4567_89AB_CDEF_1234;
		len_out = 8'h20;
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);
		@(negedge clk);		
		$finish;
	end
  
  FIFO #(
  	.DATA_WIDTH (280),	 // 16 + 256 + 8
  	.ADDR_WIDTH (8)
  ) fifo0 (
  	clk,
  	reset,
  	push,
  	pop,
  	{tag_out, cpr_data_out, len_out}, 
  	align_in_data,
  	empty,
  	full,
  	almostfull,
  	fifo_count
  );
  
  Aligner #(
  	.DATA_IN_WIDTH (272),
		.LEN_WIDTH (8),
		.DATA_OUT_WIDTH (256)
  )	ds (
  	clk, 
  	reset, 
  	wrt_en, 
  	align_in_data [279 : 8], // tag + cpr_data
  	align_in_data [7   : 0], // len 
  	data_out, 
  	valid, 
  	stall,
  	new_len
  );
  
  always #1 clk = ~clk;
  
  initial
  begin
    $dumpfile("aligner.vcd");
    $dumpvars(0, Aligner_tb);
  end

endmodule