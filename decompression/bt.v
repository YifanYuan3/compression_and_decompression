module new_bt(
    input aclk,
    input      [15:0] bitmap,
    output  reg   [9:0] length_0 , 
    output  reg   [9:0] length_1 , 
    output  reg   [9:0] length_2 , 
    output  reg   [9:0] length_3 , 
    output  reg   [9:0] length_4 , 
    output  reg   [9:0] length_5 , 
    output  reg   [9:0] length_6 , 
    output  reg   [9:0] length_7  
);

reg [9:0] offset0 ;
reg [9:0] offset1 ;
reg [9:0] offset2 ;
reg [9:0] offset3 ;
reg [9:0] offset4 ;
reg [9:0] offset5 ;
reg [9:0] offset6 ;
reg [9:0] offset7 ;

reg [9:0] tmp0;
reg [9:0] tmp1;
reg [9:0] tmp2;
reg [9:0] tmp3;



always@(posedge aclk)begin
    length_0 <= offset0;
    length_1 <= tmp0;
    length_2 <= tmp0 + offset2;
    length_3 <= tmp0 + tmp1;
    length_4 <= (tmp0 + tmp1) + offset4;
    length_5 <= (tmp0 + tmp1) + tmp2;
    length_6 <= (tmp0 + tmp1) + (tmp2 + offset6);
    length_7 <= (tmp0 + tmp1) + (tmp2 +tmp3);
end

always@(posedge aclk)begin
    case(bitmap[1:0])
        2'b00: offset0 <= 10'd0;
        2'b01: offset0 <= 10'd8;
        2'b10: offset0 <= 10'd16;
        2'b11: offset0 <= 10'd32;
    endcase
end
always@(posedge aclk)begin
    case(bitmap[3:2])
        2'b00: offset1 <= 10'd0;
        2'b01: offset1 <= 10'd8;
        2'b10: offset1 <= 10'd16;
        2'b11: offset1 <= 10'd32;
    endcase
end
always@(posedge aclk)begin
    case(bitmap[5:4])
        2'b00: offset2 <= 10'd0;
        2'b01: offset2 <= 10'd8;
        2'b10: offset2 <= 10'd16;
        2'b11: offset2 <= 10'd32;
    endcase
end
always@(posedge aclk)begin
    case(bitmap[7:6])
        2'b00: offset3 <= 10'd0;
        2'b01: offset3 <= 10'd8;
        2'b10: offset3 <= 10'd16;
        2'b11: offset3 <= 10'd32;
    endcase
end
always@(posedge aclk)begin
    case(bitmap[9:8])
        2'b00: offset4 <= 10'd0;
        2'b01: offset4 <= 10'd8;
        2'b10: offset4 <= 10'd16;
        2'b11: offset4 <= 10'd32;
    endcase
end
always@(posedge aclk)begin
    case(bitmap[11:10])
        2'b00: offset5 <= 10'd0;
        2'b01: offset5 <= 10'd8;
        2'b10: offset5 <= 10'd16;
        2'b11: offset5 <= 10'd32;
    endcase
end
always@(posedge aclk)begin
    case(bitmap[13:12])
        2'b00: offset6 <= 10'd0;
        2'b01: offset6 <= 10'd8;
        2'b10: offset6 <= 10'd16;
        2'b11: offset6 <= 10'd32;
    endcase
end
always@(posedge aclk)begin
    case(bitmap[15:14])
        2'b00: offset7 <= 10'd0;
        2'b01: offset7 <= 10'd8;
        2'b10: offset7 <= 10'd16;
        2'b11: offset7 <= 10'd32;
    endcase
end

always@(posedge aclk)begin
    case(bitmap[3:0])
        4'b0000:                 tmp0 <= 10'd0;
        4'b0001,4'b0100:         tmp0 <= 10'd8;
        4'b0010,4'b1000,4'b0101: tmp0 <= 10'd16;
        4'b1001,4'b0110:         tmp0 <= 10'd24;
        4'b0011,4'b1100,4'b1010: tmp0 <= 10'd32;
        4'b0111,4'b1101:         tmp0 <= 10'd40;
        4'b1011,4'b1110:         tmp0 <= 10'd48;
        4'b1111:                 tmp0 <= 10'd64;
    endcase
end

always@(posedge aclk)begin
    case(bitmap[7:4])
        4'b0000:                 tmp1 <= 10'd0;
        4'b0001,4'b0100:         tmp1 <= 10'd8;
        4'b0010,4'b1000,4'b0101: tmp1 <= 10'd16;
        4'b1001,4'b0110:         tmp1 <= 10'd24;
        4'b0011,4'b1100,4'b1010: tmp1 <= 10'd32;
        4'b0111,4'b1101:         tmp1 <= 10'd40;
        4'b1011,4'b1110:         tmp1 <= 10'd48;
        4'b1111:                 tmp1 <= 10'd64;
    endcase
end
always@(posedge aclk)begin
    case(bitmap[11:8])
        4'b0000:                 tmp2 <= 10'd0;
        4'b0001,4'b0100:         tmp2 <= 10'd8;
        4'b0010,4'b1000,4'b0101: tmp2 <= 10'd16;
        4'b1001,4'b0110:         tmp2 <= 10'd24;
        4'b0011,4'b1100,4'b1010: tmp2 <= 10'd32;
        4'b0111,4'b1101:         tmp2 <= 10'd40;
        4'b1011,4'b1110:         tmp2 <= 10'd48;
        4'b1111:                 tmp2 <= 10'd64;
    endcase
end
always@(posedge aclk)begin
    case(bitmap[15:12])
        4'b0000:                 tmp3 <= 10'd0;
        4'b0001,4'b0100:         tmp3 <= 10'd8;
        4'b0010,4'b1000,4'b0101: tmp3 <= 10'd16;
        4'b1001,4'b0110:         tmp3 <= 10'd24;
        4'b0011,4'b1100,4'b1010: tmp3 <= 10'd32;
        4'b0111,4'b1101:         tmp3 <= 10'd40;
        4'b1011,4'b1110:         tmp3 <= 10'd48;
        4'b1111:                 tmp3 <= 10'd64;
    endcase
end
endmodule