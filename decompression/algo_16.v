module decompressor_16(
    input [15:0] data_in,
    output [31:0] data_out
    );
    
// decompress the 16-bit input into a 32-bit FP number

reg [5:0] total_sum;
wire [7:0] exp;
wire [22:0] mantissa;

always@ (*) begin
    casez(data_in[14:0])
        15'b1??_????_????_???? : total_sum = 1;
        15'b01?_????_????_???? : total_sum = 2;
        15'b001_????_????_???? : total_sum = 3;
        15'b000_1???_????_???? : total_sum = 4;
        15'b000_01??_????_???? : total_sum = 5;
        15'b000_001?_????_???? : total_sum = 6;
        15'b000_0001_????_???? : total_sum = 7;
        15'b000_0000_1???_???? : total_sum = 8;
        15'b000_0000_01??_???? : total_sum = 9;        
        15'b000_0000_001?_???? : total_sum = 10;
        15'b000_0000_0001_???? : total_sum = 11;
        15'b000_0000_0000_1??? : total_sum = 12;
        15'b000_0000_0000_01?? : total_sum = 13;                                
        15'b000_0000_0000_001? : total_sum = 14;
        15'b000_0000_0000_0001 : total_sum = 15;
        default : total_sum = 0;                
    endcase                
end
    
assign exp = 127 - total_sum;

assign mantissa = {data_in[14:0] << total_sum, 8'b0};
    
assign data_out = {data_in[15], exp, mantissa};


endmodule
