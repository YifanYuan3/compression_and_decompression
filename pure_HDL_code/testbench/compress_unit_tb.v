module CompressUnitTB;

  reg  [31:0] data_in;
  wire [31:0] data_out;
  wire [1:0] bitmap;

  integer i;
  initial begin
	  data_in = 32'h01bea23f;
	  #3;
    $finish;
  end
  
//   always #1 clk = ~clk;

	compress_unit cu (data_in, bitmap, data_out);

  initial
  begin
    $dumpfile("jongse.vcd");
    $dumpvars(0,CompressUnitTB);
  end

endmodule
