module decompressor_8(
    input [7:0] data_in,
    output [31:0] data_out
    );

// decompress the 8-bit input into a 32-bit FP number

reg [5:0] total_sum;
wire [7:0] exp;
wire [22:0] mantissa;

always@ (*) begin
    casez(data_in[6:0])
        7'b1??_???? : total_sum = 1;
        7'b01?_???? : total_sum = 2;
        7'b001_???? : total_sum = 3;
        7'b000_1??? : total_sum = 4;
        7'b000_01?? : total_sum = 5;
        7'b000_001? : total_sum = 6;
        7'b000_0001 : total_sum = 7;
        default : total_sum = 0;                
    endcase                
end
    
assign exp = 127 - total_sum;

assign mantissa = {data_in[6:0] << total_sum, 16'b0};
    
assign data_out = {data_in[7], exp, mantissa};


endmodule
