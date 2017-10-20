module try_tcp(clk, nrst, tvalid, tlast, tready, tdata_in, tdata_out );

input clk;
input nrst;
input tvalid;
input tlast;
input tready;
input [255:0] tdata_in;
output reg [255:0] tdata_out;


reg [20:0] counter;

always@(posedge clk) begin
    if(!nrst)begin
        counter <= 0;
    end
    else begin
        case({tvalid,tready})
            2'b11 : counter <= counter + 1;
            2'b10 : counter <= counter;
            default : counter <= 0;
        endcase
    end
end




reg flag_m;

always@(posedge clk) begin
    if(!nrst)begin
        flag_m <= 0;
    end
    else begin
                                        // ToS                            ether_type: ip                         protocol:  tcp                     length 
        if(counter == 0 && tvalid == 1 /*&& tdata_in[127:120] != 0*/ && (tdata_in[111:96] == 16'h0008) && (tdata_in[191:184] == 8'h06)  /*tdata_in[143:128] == 16'hdc05*/ )begin
            flag_m <= 1;
        end
        else begin
            if(tvalid == 0)begin    
                flag_m <= 0;
            end
            else begin
                flag_m <= flag_m;
            end
        end
    end
end

always@(*) begin
    if(flag_m == 1 && counter >= 4 && !tlast)begin
        tdata_out <= 256'hAAAAAAAA_BBBBBBBB_CCCCCCCC_DDDDDDDD_AAAAAAAA_BBBBBBBB_CCCCCCCC_DDDDDDDD;
    end
    else begin
        tdata_out <= tdata_in;
    end
end

endmodule


endmodule
