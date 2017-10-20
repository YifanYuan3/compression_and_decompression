`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2017 03:19:36 PM
// Design Name: 
// Module Name: shift_debug
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module shift_debug(
    input                                              clk,
    input                                              resetn,
    
//signals for axi4-stream
    input                  [ 255 : 0 ]                 tdata,
    // input                  [ 31 : 0 ]                  tkeep,
    output                                             tready,
    input                                              tvalid,
    input                                              tlast,
    
//output signals    
    output                 [ 255 : 0 ]                 dout,
    output                                             is_header,
    // output                 [ 31 : 0 ]                  keep,
    input                                              ready,
    // output reg                                         valid,
    // output reg                                         last
    output                                             valid0,
    output                                             last0
);
    
    reg                                                 valid;
    reg                                                 last;    
    reg                    [ 5 : 0 ]                    cnt;
    reg                    [ 175 : 0 ]                  tail;
    reg                    [ 175 : 0 ]                  tail_i;    
    reg                    [ 255 : 0 ]                  dout_i;
    reg                                                 is_header_i;
    reg                                                 valid_i;
    reg                                                 last_i;
    reg                                                 tlast_i;    
    reg                    [ 5 : 0 ]                    cnt_i;
    
    assign tready = ready;
    
    assign dout = dout_i;
    assign is_header = is_header_i;

// valid_i
always@ (tvalid or tready or cnt) begin
    if (tvalid == 1'b1 && tready == 1'b1)
        valid_i = 1'b1;
    else begin
        if (tlast_i == 1'b1)
            valid_i = 1'b0;
        else
            valid_i = valid;
    end
end

// last_i
always@ (tvalid or tready or tlast or cnt) begin
    if (tvalid == 1'b1 && tready == 1'b1)
        last_i = tlast;
    else begin
        if (tlast_i == 1'b1)
            last_i = 1'b0;
        else
            last_i = last;
    end
end

// is_header_i
always@ (tvalid or tready or cnt) begin
    if (tvalid == 1'b1 && tready == 1'b1) begin
        if (cnt <= 4)
            is_header_i = 1'b1;
        else
            is_header_i = 1'b0;
    end
    else begin
        if (cnt == 0)
            is_header_i = 1'b0;
        else
            is_header_i = is_header;
    end
end

// dout_i
always@ (tvalid or tready or cnt) begin
    if (tvalid == 1'b1 && tready == 1'b1) begin
        if (cnt == 1)
            dout_i = {tdata[255 : 112], 16'h0008, tdata[95 : 0]};
        else if (cnt > 4)
            dout_i = {tdata[79 : 0], tail};
        else
            dout_i = tdata;
    end
    else begin
        if (cnt == 0)
            dout_i = 0;
        else
            dout_i = dout;
    end
end

// cnt_i
always@ (tvalid or tready or tlast_i or cnt) begin
    if (tlast_i == 1'b1)
        cnt_i = 0;
    else if (tvalid == 1'b1 && tready == 1'b1)
        cnt_i = cnt + 1;
    else
        cnt_i = cnt;
end


// sequential
always@ (posedge clk or negedge resetn) begin
    if (resetn == 1'b0) begin
        valid <= 1'b0;
        last <= 1'b0;
        is_header_i <= 1'b0;
        dout_i <= 256'b0;
        cnt <= 0;
    end
    else begin
        valid <= valid_i;
        last <= last_i;
        // is_header <= is_header_i;
        // dout <= dout_i;
        // cnt <= cnt_i;
        tail_i <= tdata[255 : 80];
        tail <= tail_i;
        cnt <= cnt_i;
    end
end

always@ (posedge clk or negedge resetn) begin
    if (resetn == 1'b0) begin
        tlast_i <= 1'b0;
    end
    else begin
        if (tvalid == 1'b1 && tready == 1'b1 && tlast == 1'b1)
            tlast_i <= 1'b1;
        else
            tlast_i <= 1'b0;
    end
end

/*
always@ (posedge clk or negedge resetn) begin
    if (resetn == 1'b0) begin
        valid <= 1'b0;
        last <= 1'b0;
        is_header <= 1'b0;
        tail <= 176'b0;
        dout <= 256'b0;
        state <= `BYTE_0;
    end
    else begin
        case (state)
            `BYTE_0 : begin 
                if (tvalid == 1'b1 && tready == 1'b1) begin
                    valid <= 1'b1;
                    last <= tlast;
                    is_header <= 1'b1;
                    tail <= 176'b0;
                    dout <= {tdata[255 : 112], 16'h0008, tdata[95 : 0]};
                    if (tlast == 1'b0)
                        state <= `BYTE_1;                    
                    else
                        state <= `BYTE_0;
                end
                else begin
                    valid <= 1'b0;
                    last <= 1'b0;
                    is_header <= 1'b0;
                    tail <= 176'b0;
                    dout <= 256'b0;
                end
            end
            `BYTE_1 : begin
                if (tvalid == 1'b1 && tready == 1'b1) begin
                    valid <= 1'b1;
                    last <= tlast;
                    is_header <= 1'b1;
                    tail <= 176'b0;                    
                    dout <= tdata;
                    if (tlast == 1'b0)
                        state <= `BYTE_2;
                    else
                        state <= `BYTE_0;                  
                end
            end
            `BYTE_2 : begin
                if (tvalid == 1'b1 && tready == 1'b1) begin
                    valid <= 1'b1;
                    last <= tlast;
                    is_header <= 1'b1;
                    tail <= 176'b0;                    
                    dout <= tdata;                
                    if (tlast == 1'b0)
                        state <= `BYTE_3;
                    else 
                        state <= `BYTE_0;
                end
            end
            `BYTE_3 : begin
                if (tvalid == 1'b1 && tready == 1'b1) begin
                    valid <= 1'b1;
                    last <= tlast;
                    is_header <= 1'b1;
                    tail <= tdata[255 : 80];                    
                    dout <= tdata;
                    if (tlast == 1'b0)                    
                        state <= `BYTE_4PLUS;
                    else
                        state <= `BYTE_0;
                end
            end
            `BYTE_4PLUS : begin
                if (tvalid == 1'b1 && tready == 1'b1) begin
                    valid <= 1'b1;
                    last <= tlast;
                    is_header <= 1'b0;
                    tail <= tdata[255 : 80];
                    dout <= {tdata[79 : 0], tail};
                    if (tlast == 1'b0)
                        state <= `BYTE_4PLUS;
                    else
                        state <= `BYTE_0;
                end
            end            
        endcase
    end
end
*/

/*
always@ ( posedge clk or negedge resetn )
    begin
        if ( resetn == 0 )
            begin
                valid0 <= 0;
                last0 <= 0;
            end
        else
            begin
                valid0 <= valid;
                last0 <= last;
            end
    end
    */

    assign valid0 = valid;
    assign last0 = last;

initial begin
    valid = 1'b0;
    last = 1'b0;
    // is_header = 1'b0;
    // dout = 256'b0;
    cnt = 6'b0;
    
    valid_i = 1'b0;
    last_i = 1'b0;
    is_header_i = 1'b0;
    dout_i = 256'b0;
    cnt_i = 6'b0;
    
    tail = 256'b0;
    tlast_i = 1'b0;
end

endmodule
