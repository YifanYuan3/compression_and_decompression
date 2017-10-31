`timescale 1ns/1ns

module Aligner_tb;

	reg 							clk;
	reg								reset;
	reg								wrt_en;
	reg								push0;
	reg								pop0;
	wire							empty0;
	wire							full0;
	wire							almost_full0;
	reg								push1;
	reg								pop1;
	wire							empty1;
	wire							full1;
	wire							almost_full1;
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
	wire  [279 : 0]   aligner_in;
	wire  [279 : 0]   fifo_out0;
	wire  [8   : 0]   fifo_count0;
	wire  [255 : 0]   fifo_out1;
	wire  [8   : 0]   fifo_count1;
	
	initial 
	begin
		clk = 1;
		reset = 1;
		wrt_en = 1;
		push0 = 0;
		pop0 = 0;
		push1 = 0;
		pop1 = 0;
		@(posedge clk);
		push0 = 1;
		reset = 0;
		cpr_data_out = 256'h0000_0000_0000_0000_0000_0000_A987_6543_21FE_DCBA_9876_5432_1FED_CBA9_8765_4321;
		tag_out		= 16'b1010101010101111;
		len_out = 8'h16;
		$display("fifo_out1 %h", fifo_out1);
		@(posedge clk);
		pop0 = 1;
		if (empty1 == 1'b0) 
			pop1 = 1'b1;
		else
			pop1 = 1'b0;
		$display("fifo_out1 %h", fifo_out1);
		@(posedge clk);
		if (empty1 == 1'b0) 
			pop1 = 1'b1;
		else
			pop1 = 1'b0;
		$display("fifo_out1 %h", fifo_out1);
		@(posedge clk);
		if (empty1 == 1'b0) 
			pop1 = 1'b1;
		else
			pop1 = 1'b0;
		$display("fifo_out1 %h", fifo_out1);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		$finish;
	end
  
  assign aligner_in = (empty0 == 1'b0 & pop0 == 1'b1) ? fifo_out0 : 0;
  
  FIFO #(
  	.DATA_WIDTH (280),	 // 16 + 256 + 8
  	.ADDR_WIDTH (8)
  ) fifo0 (
  	clk,
  	reset,
  	push0,
  	pop0,
  	{cpr_data_out, tag_out, len_out}, 
  	fifo_out0,
  	empty0,
  	full0,
  	almostfull0,
  	fifo_count0
  );
  
  Aligner #(
  	.DATA_IN_WIDTH (272),
		.LEN_WIDTH (8),
		.DATA_OUT_WIDTH (256)
  )	al0 (
  	clk, 
  	reset, 
  	wrt_en, 
  	aligner_in [279 : 8], // tag + cpr_data
  	aligner_in [7   : 0], // len 
  	data_out, 
  	valid, 
  	stall
  );
  
  FIFO #(
  	.DATA_WIDTH (256),	 
  	.ADDR_WIDTH (8)
  ) fifo1 (
  	clk,
  	reset,
  	valid,
  	pop1,
  	data_out, 
  	fifo_out1,
  	empty1,
  	full1,
  	almostfull1,
  	fifo_count1
  );
  
  always #1 clk = ~clk;
  
  initial
  begin
    $dumpfile("aligner.vcd");
    $dumpvars(0, Aligner_tb);
  end

endmodule