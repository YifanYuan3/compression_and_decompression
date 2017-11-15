module decompressor(
    input [31:0] decomp_in,
    input [1:0]  bitmap,
    output reg [31:0] result
);

wire [7:0] in_8;
wire [15:0] in_16;

wire [31:0] result_8;
wire [31:0] result_16;

assign in_8 = decomp_in[7:0];
assign in_16 = decomp_in[15:0];

decompressor_8 d8_inst(in_8,result_8);
decompressor_16 d16_inst(in_16,result_16);

always@(*)begin
    case(bitmap)
        2'b00: result <= 0;
        2'b01: result <= {result_8[7:0],result_8[15:8],result_8[23:16],result_8[31:24]};
        2'b10: result <= {result_16[7:0],result_16[15:8],result_16[23:16],result_16[31:24]};
        2'b11: result <= decomp_in;
    endcase
end
endmodule