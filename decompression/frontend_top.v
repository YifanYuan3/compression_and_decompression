module frontend_top(
 (* mark_debug = "true" *)   input          aclk,
    input          aresetn,

   input [255:0]  axis_tdata,
   input [31 :0]  axis_tkeep,
  (* mark_debug = "true" *)  input          axis_tvalid,
  (* mark_debug = "true" *)  input          axis_tlast,
  (* mark_debug = "true" *)  output   reg   axis_tready1,

    output reg [255:0]  dma_tdata,
output reg [31 :0]  dma_tkeep,
output reg          dma_tvalid,
output reg          dma_tlast,
  input      dma_tready,

    output reg need_decomp_reg

);

parameter IDLE =            20'b00000_00000_00000_00001 ;
parameter BYPASS  =         20'b00000_00000_00000_00010 ;
parameter WRITE_HEADER =    20'b00000_00000_00000_00100 ;
parameter CONCAT =          20'b00000_00000_00000_01000 ;
parameter OFFSET1 =         20'b00000_00000_00000_10000 ;
parameter OFFSET2 =         20'b00000_00000_00001_00000 ;
parameter OFFSET3 =         20'b00000_00000_00010_00000 ;
parameter OFFSET4 =         20'b00000_00000_00100_00000 ;
parameter DECOMP =          20'b00000_00000_01000_00000 ;
parameter WRITE_DECOMP =    20'b00000_00000_10000_00000 ;
parameter SPECIAL_CASE =    20'b00000_00001_00000_00000 ;
parameter BUFFER1 =         20'b00000_00010_00000_00000 ;

(* mark_debug = "true" *) reg [19:0]  state;

wire [15:0] length;
wire [15:0] eth_type;
wire [7:0] ip_protocol;
wire [7:0] ToS;

wire need_decomp;

assign eth_type = axis_tdata[111:96];
assign ip_protocol = axis_tdata[191:184];


assign length = {axis_tdata[135:128],axis_tdata[143:136]} + 16'd14;

assign ToS = axis_tdata[127:120];

assign need_decomp = (ip_protocol == 8'h06) && (ToS == 8'h28) && (length == 16'd1514);


(* mark_debug = "true" *) reg [255:0] concat_1;
(* mark_debug = "true" *) wire [255:0] concat_2;
assign concat_2 = axis_tdata;

(* mark_debug = "true" *) reg [15:0] bitmap_in;
(* mark_debug = "true" *) reg [11:0]  cursor;

wire [9:0] offset_reg0;
wire [9:0] offset_reg1;
wire [9:0] offset_reg2;
wire [9:0] offset_reg3;
wire [9:0] offset_reg4;
wire [9:0] offset_reg5;
wire [9:0] offset_reg6;
wire [9:0] offset_reg7;

(* mark_debug = "true" *) reg [9:0] real_offset0;
(* mark_debug = "true" *) reg [9:0] real_offset1;
(* mark_debug = "true" *) reg [9:0] real_offset2;
(* mark_debug = "true" *) reg [9:0] real_offset3;
(* mark_debug = "true" *) reg [9:0] real_offset4;
(* mark_debug = "true" *) reg [9:0] real_offset5;
(* mark_debug = "true" *) reg [9:0] real_offset6;
(* mark_debug = "true" *) reg [9:0] real_offset7;

(* mark_debug = "true" *) reg [9:0] real_offset_cursor;

new_bt bt_inst(
    .aclk(aclk),
    .bitmap(bitmap_in),
    .length_0(offset_reg0),
    .length_1(offset_reg1),
    .length_2(offset_reg2),
    .length_3(offset_reg3),
    .length_4(offset_reg4),
    .length_5(offset_reg5),
    .length_6(offset_reg6),
    .length_7(offset_reg7)
);


reg [31:0] decomp_in0;
reg [31:0] decomp_in1;
reg [31:0] decomp_in2;
reg [31:0] decomp_in3;
reg [31:0] decomp_in4;
reg [31:0] decomp_in5;
reg [31:0] decomp_in6;
reg [31:0] decomp_in7;

wire [31:0] decomp_result_0;
wire [31:0] decomp_result_1;
wire [31:0] decomp_result_2;
wire [31:0] decomp_result_3;
wire [31:0] decomp_result_4;
wire [31:0] decomp_result_5;
wire [31:0] decomp_result_6;
wire [31:0] decomp_result_7;

wire [255:0] decomp_result;
assign decomp_result = {decomp_result_7,decomp_result_6,decomp_result_5,decomp_result_4,decomp_result_3,decomp_result_2,decomp_result_1,decomp_result_0};


decompressor decomp_0(decomp_in0, bitmap_in[1:0],decomp_result_0);
decompressor decomp_1(decomp_in1, bitmap_in[3:2],decomp_result_1);
decompressor decomp_2(decomp_in2, bitmap_in[5:4],decomp_result_2);
decompressor decomp_3(decomp_in3, bitmap_in[7:6],decomp_result_3);
decompressor decomp_4(decomp_in4, bitmap_in[9:8],decomp_result_4);
decompressor decomp_5(decomp_in5, bitmap_in[11:10],decomp_result_5);
decompressor decomp_6(decomp_in6, bitmap_in[13:12],decomp_result_6);
decompressor decomp_7(decomp_in7, bitmap_in[15:14],decomp_result_7);

wire [511:0] concat;
assign concat = {concat_2,concat_1};

reg [255:0] write_1;

reg write_1_ready;

reg special_case;


(* mark_debug = "true" *) reg [7:0] data_counter;


reg [9:0] special_state;

reg   axis_tready;

always@(*)begin
    if(state[0] || state[2])begin
        axis_tready1 <= dma_tready;
    end
    else begin
        axis_tready1 <= axis_tready;
    end
end

always@(posedge aclk)begin
    if(aresetn == 0)begin
        state <= IDLE;
        axis_tready <= 1;
        cursor <= 0;
        write_1_ready <= 0;
        write_1 <= 0;
        concat_1 <= 0;
        bitmap_in <= 0;
        decomp_in0 <= 0 ;
        decomp_in1 <= 0 ;
        decomp_in2 <= 0 ;
        decomp_in3 <= 0 ;
        decomp_in4 <= 0 ;
        decomp_in5 <= 0 ;
        decomp_in6 <= 0 ;
        decomp_in7 <= 0 ;
        special_case <= 0;
        real_offset0 <= 0;
        real_offset1 <= 0;
        real_offset2 <= 0;
        real_offset3 <= 0;
        real_offset4 <= 0;
        real_offset5 <= 0;
        real_offset6 <= 0;
        real_offset7 <= 0;
        real_offset_cursor <= 0;
        need_decomp_reg <= 0;
        data_counter <= 0;
        special_state <= 0;
    end 
    else begin
        case(state)
            IDLE: begin //1
                dma_tdata <= axis_tdata;  
                dma_tkeep <= axis_tkeep;
                dma_tlast <= axis_tlast;
                dma_tvalid <= axis_tvalid;
                axis_tready <= 1;
                if(axis_tvalid == 1 )begin
                    need_decomp_reg <= need_decomp;
                    if(need_decomp == 1)begin
                        state <= WRITE_HEADER;
                        data_counter <= 1;
                    end
                    else begin
                        state <= BYPASS;
                    end
                end
                else begin
                    state <= IDLE;
                end
            end

            BYPASS: begin  //2
                if(axis_tlast == 1)begin
                    state <= IDLE;
                end
                else begin
                    state <= BYPASS;
                end
            end

            WRITE_HEADER: begin  //8
                
                    if(data_counter < 8'd4)begin                       
                        state <= WRITE_HEADER;
                        if(dma_tready == 1) begin
                            dma_tdata <= axis_tdata;
                            dma_tvalid <= axis_tvalid;
                            dma_tkeep <= axis_tkeep;
                            dma_tlast <= axis_tlast;
                            data_counter <= data_counter + axis_tvalid;
                            //axis_tready <= 1;
                        end
                        else begin
                            dma_tdata <=  dma_tdata;
                            dma_tvalid <= dma_tvalid;
                            dma_tkeep <=  dma_tkeep;
                            dma_tlast <=  dma_tlast;
                            data_counter <= data_counter;
                            //axis_tready <= 0;
                        end
                    end
                    else if(axis_tvalid == 1)begin
                        write_1_ready <= 0;
                        cursor <= 0;
                        axis_tready <= 0;
                        concat_1 <= axis_tdata;                   
                        state <= CONCAT;
                        dma_tvalid <= 0;
                        dma_tkeep <= 32'hffffffff;
                        dma_tlast <= 0;
                        dma_tdata <= dma_tdata;
                    end
                    else begin
                        state <= WRITE_HEADER;
                    end                   
            end
            
           /* BUFFER1: begin
                axis_tready <= 0;
                state <= CONCAT;
            end*/
            
            CONCAT: begin  //16
                if(axis_tvalid == 1)begin
                    axis_tready <= 0;
                    if(special_case == 1)begin
                        bitmap_in <= 16'hffff;
                        special_case <= 0;
                    end
                    else begin
                        bitmap_in <= concat >> cursor;
                    end
                    state <= OFFSET1;
                end
                else begin
                    state <= CONCAT;
                end
            end

            OFFSET1: begin  //32
                state <= OFFSET2;
            end
            OFFSET2: begin  //32
                state <= OFFSET3;
            end

            OFFSET3: begin  //64
                real_offset0 <= (cursor + 12'd16 );
                real_offset1 <= (cursor + 12'd16 + offset_reg0);
                real_offset2 <= (cursor + 12'd16 + offset_reg1);
                real_offset3 <= (cursor + 12'd16 + offset_reg2);
                real_offset4 <= (cursor + 12'd16 + offset_reg3);
                real_offset5 <= (cursor + 12'd16 + offset_reg4);
                real_offset6 <= (cursor + 12'd16 + offset_reg5);
                real_offset7 <= (cursor + 12'd16 + offset_reg6);
                real_offset_cursor <= 12'd16 + offset_reg7;
                state <= OFFSET4;
            end

            OFFSET4: begin  //128
                decomp_in0 <= concat >> real_offset0; 
                decomp_in1 <= concat >> real_offset1;
                decomp_in2 <= concat >> real_offset2;
                decomp_in3 <= concat >> real_offset3;
                decomp_in4 <= concat >> real_offset4;
                decomp_in5 <= concat >> real_offset5;
                decomp_in6 <= concat >> real_offset6;
                decomp_in7 <= concat >> real_offset7;
                cursor <= cursor + real_offset_cursor; 
                state <= DECOMP;
            end

            DECOMP: begin  //256
                write_1 <= decomp_result;
                if(write_1_ready == 0)begin                    
                    write_1_ready <= 1;
                    if(cursor >= 12'd256)begin
                        cursor <= cursor - 12'd256;
                        axis_tready <= 1;
                        concat_1 <= axis_tdata;
                        if(cursor > 12'd496)begin
                            state <= SPECIAL_CASE;
                            special_state <= CONCAT;
                        end
                        else begin
                            state <= CONCAT;
                        end
                    end
                    else if(cursor == 12'd248 && concat[263:248] == 16'hffff)begin
                        special_case <= 1;
                        concat_1 <= axis_tdata;
                        state <= CONCAT;
                        axis_tready <= 1;
                        cursor <= -12'd8;
                    end
                    else begin
                        state <= CONCAT;
                    end
                end
                else begin
                    dma_tdata <= {decomp_result[15:0],write_1[255:16]}; //for test
                    //dma_tdata <= {250'habcd,data_counter}; //for test
                    dma_tkeep <= 32'hffffffff;
                    state <= WRITE_DECOMP;
                    dma_tvalid <= 1;
                    data_counter <= data_counter + 1;
                    dma_tlast <= 0;
                end
            end

            WRITE_DECOMP: begin  //512
                if(dma_tready == 1) begin
                    if(data_counter < 8'd47 )begin
                        dma_tvalid <= 0;
                        if(cursor >= 12'd256)begin
                            cursor <= cursor - 12'd256;
                            axis_tready <= 1;
                            concat_1 <= axis_tdata;
                            if(cursor > 12'd496)begin
                                state <= SPECIAL_CASE;
                                special_state <= CONCAT;
                            end
                            else begin
                                state <= CONCAT;
                            end
                        end
                        else if(cursor == 12'd248 && concat[263:248] == 16'hffff)begin
                            special_case <= 1;
                            concat_1 <= axis_tdata;
                            state <= CONCAT;
                            axis_tready <= 1;
                            cursor <= -12'd8;
                        end
                        else begin
                            state <= CONCAT;
                        end
                    end
                    else if(data_counter == 8'd47)begin
                        dma_tvalid <= 1;
                        data_counter <= data_counter + 1;
                        dma_tdata <= {176'h0,write_1[95:16]};// for test
                        //dma_tdata <= {250'hffff,data_counter}; //for test
                        dma_tkeep <= 32'h000003ff;
                        dma_tlast <= 1;
                        state <= WRITE_DECOMP;
                    end
                    else begin
                        dma_tvalid <= 0;
                        dma_tlast <= 0;
                        if(cursor > 12'd256)begin
                            axis_tready <= 1;
                            state <= SPECIAL_CASE;
                            special_state <= IDLE;
                        end
                        else begin
                            state <= IDLE;
                        end
                    end
                end
                else begin
                    state <= WRITE_DECOMP;
                end
            end

            SPECIAL_CASE: begin  //1024
                if(axis_tvalid == 1)begin
                    axis_tready <= (special_state == CONCAT)?0:1;
                    state <= special_state;
                end
                else begin
                    state <= SPECIAL_CASE;
                end
            end

            default: begin
                state <= IDLE;
            end

        endcase
    end

end

endmodule