`timescale 1ns/1ns

module Tag2Len_tb;

	reg  [1:0] tag;
	wire [2:0] len;
	
	initial 
	begin
		tag = 0;
		#1;		
		tag = 0;
		#1;
		tag = 1;
		#1;
		tag = 2;
		#1;
		tag = 3;
		#1;
		$stop;
	end
  
  Tag2Len #(.TAG_WIDTH(2), .LEN_WIDTH(3)) t2l (tag, len);
  
  initial
  begin
    $dumpfile("tag2len.vcd");
    $dumpvars(0, Tag2Len_tb);
  end

endmodule