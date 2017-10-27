module Tag2Len #(
	parameter 										TAG_WIDTH = 2,
	parameter 										LEN_WIDTH = 3
)
(
	input  		[TAG_WIDTH - 1 : 0]	tag,
	output 		[LEN_WIDTH - 1 : 0]	len
);
	reg 			[LEN_WIDTH - 1 : 0]	len;

	always @ (tag)
	case (tag)
		2'b00: 		len = 3'b000;
		2'b01: 		len = 3'b001;
		2'b10: 		len = 3'b010;
		2'b11: 		len = 3'b100;
		default:	len = 3'b100; 
	endcase
endmodule