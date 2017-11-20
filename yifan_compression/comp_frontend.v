
module comp_frontend(
    input          aclk,
    input          aresetn,

   input [255:0]  axis_tdata,
   input [31 :0]  axis_tkeep,
   input          axis_tvalid,
   input          axis_tlast,
   output   reg   axis_tready1,

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
parameter CONCAT1 =         20'b00000_00000_00000_01000 ;
parameter OFFSET =          20'b00000_00000_00000_10000 ;
parameter COMP =            20'b00000_00000_01000_00000 ;
parameter MERGE1 =          20'b00000_00000_10000_00000 ;
parameter MERGE2 =          20'b00000_00001_00000_00000 ;
parameter MERGE3 =          20'b00000_00010_00000_00000 ;
parameter SHIFT =           20'b00000_00100_00000_00000 ;
parameter WRITE_OUT =       20'b00000_01000_00000_00000 ;
parameter WRITE_DATA =      20'b00000_10000_00000_00000 ;
parameter WRITE_DONE =      20'b00001_00000_00000_00000 ;
parameter CONCAT2    =      20'b00010_00000_00000_00000 ;
reg [19:0]  state;

wire [15:0] length;
wire [15:0] eth_type;
wire [7:0] ip_protocol;
wire [7:0] ToS;

wire need_decomp;

assign eth_type = axis_tdata[111:96];
assign ip_protocol = axis_tdata[191:184];


assign length = {axis_tdata[135:128],axis_tdata[143:136]} + 16'd14;

assign ToS = axis_tdata[127:120];



assign need_decomp = /*(ip_protocol == 8'h06) &&*/ (ToS == 8'h28 || ToS == 8'h20) && (length == 16'd1514) ;


reg [255:0] data_in;

reg [519:0] out_buffer;

wire [9:0] length_0;
wire [9:0] length_1;
wire [9:0] length_2;
wire [9:0] length_3;
wire [9:0] length_4;
wire [9:0] length_5;
wire [9:0] length_6;
wire [9:0] length_7;

wire [15:0] bitmap_wire;

wire [31:0] data_out_0;
wire [31:0] data_out_1;
wire [31:0] data_out_2;
wire [31:0] data_out_3;
wire [31:0] data_out_4;
wire [31:0] data_out_5;
wire [31:0] data_out_6;
wire [31:0] data_out_7;

reg [271:0] data_out_shift_0;
reg [271:0] data_out_shift_1;
reg [271:0] data_out_shift_2;
reg [271:0] data_out_shift_3;
reg [271:0] data_out_shift_4;
reg [271:0] data_out_shift_5;
reg [271:0] data_out_shift_6;
reg [271:0] data_out_shift_7;
reg [271:0] data_out_concat;

wire [519:0] data_out_520;

assign data_out_520 = {248'h0, data_out_concat};

reg [9:0] offset_0;
reg [9:0] offset_1;
reg [9:0] offset_2;
reg [9:0] offset_3;
reg [9:0] offset_4;
reg [9:0] offset_5;
reg [9:0] offset_6;
reg [9:0] offset_7;

reg [9:0] group_length;

reg [9:0] offset_tmp0;
reg [9:0] offset_tmp1;
reg [9:0] offset_tmp2;
reg [9:0] offset_tmp3;

compress_unit cu_0(.data_in(data_in[31:0]),.bitmap(bitmap_wire[1:0]),.length(length_0),.data_out(data_out_0));
compress_unit cu_1(.data_in(data_in[63:32]),.bitmap(bitmap_wire[3:2]),.length(length_1),.data_out(data_out_1));
compress_unit cu_2(.data_in(data_in[95:64]),.bitmap(bitmap_wire[5:4]),.length(length_2),.data_out(data_out_2));
compress_unit cu_3(.data_in(data_in[127:96]),.bitmap(bitmap_wire[7:6]),.length(length_3),.data_out(data_out_3));
compress_unit cu_4(.data_in(data_in[159:128]),.bitmap(bitmap_wire[9:8]),.length(length_4),.data_out(data_out_4));
compress_unit cu_5(.data_in(data_in[191:160]),.bitmap(bitmap_wire[11:10]),.length(length_5),.data_out(data_out_5));
compress_unit cu_6(.data_in(data_in[223:192]),.bitmap(bitmap_wire[13:12]),.length(length_6),.data_out(data_out_6));
compress_unit cu_7(.data_in(data_in[255:224]),.bitmap(bitmap_wire[15:14]),.length(length_7),.data_out(data_out_7));

reg [10:0] cursor;

reg   axis_tready;
reg is_last;
reg [7:0] data_counter;

reg special_case;



always@(*)begin
    if(state[0] /*|| state[2]*/)begin
        axis_tready1 <= dma_tready;
    end
    else begin
        axis_tready1 <= axis_tready;
    end
end

always@(posedge aclk)begin
    if(axis_tready == 1 && axis_tvalid == 1)begin  
        is_last <= axis_tlast;
    end
    else begin
        is_last <= is_last;
    end
end

always@(posedge aclk)begin
    if(aresetn == 0)begin
        state <= IDLE;
        axis_tready <= 1;
        cursor <= 0;
        need_decomp_reg <= 0;
        data_counter <= 0;
        offset_0 <= 0;
        offset_1 <= 0;
        offset_2 <= 0;
        offset_3 <= 0;
        offset_4 <= 0;
        offset_5 <= 0;
        offset_6 <= 0;
        offset_7 <= 0;
        offset_tmp0 <= 0;
        offset_tmp1 <= 0;
        offset_tmp2 <= 0;
        offset_tmp3 <= 0;
        group_length <= 0;
        data_out_shift_0 <= 0;
        data_out_shift_1 <= 0;
        data_out_shift_2 <= 0;
        data_out_shift_3 <= 0;
        data_out_shift_4 <= 0;
        data_out_shift_5 <= 0;
        data_out_shift_6 <= 0;
        data_out_shift_7 <= 0;
        data_out_concat <= 0;
        out_buffer <= 0;
        data_in <= 0;
        special_case <= 0;

        
        
        
    end 
    else begin
        case(state)
            IDLE: begin //1
                cursor <= 0;
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
                
                    if(data_counter < 8'd3)begin                       
                        
                        if(dma_tready == 1) begin
                            dma_tdata <= axis_tdata;
                            dma_tvalid <= axis_tvalid;
                            dma_tkeep <= axis_tkeep;
                            dma_tlast <= axis_tlast;
                            data_counter <= data_counter + axis_tvalid;
                            if(data_counter == 8'd2 && axis_tvalid == 1 && axis_tdata[167:128] == 40'h04f1a50000)begin
                                need_decomp_reg <= 0;
                                state <= BYPASS;
                            end
                            else begin
                                state <= WRITE_HEADER;
                            end
                        end
                        else begin
                            dma_tdata <=  dma_tdata;
                            dma_tvalid <= dma_tvalid;
                            dma_tkeep <=  dma_tkeep;
                            dma_tlast <=  dma_tlast;
                            data_counter <= data_counter;
                            state <= WRITE_HEADER;
                        end
                    end
                    else if(data_counter == 8'd3)begin
                        state <= WRITE_HEADER;
                        if(dma_tready == 1) begin
                            dma_tdata <= axis_tdata;
                            dma_tvalid <= axis_tvalid;
                            dma_tkeep <= axis_tkeep;
                            dma_tlast <= axis_tlast;
                            data_counter <= data_counter + axis_tvalid;
                            axis_tready <= ~axis_tvalid;
                        end
                        
                    end
                    else if(axis_tvalid == 1)begin                    
                        data_in[15:0] <= dma_tdata[255:240];
                        cursor <= 0;
                        axis_tready <= 0;
                        state <= CONCAT1;
                        dma_tvalid <= 0;
                        dma_tkeep <= 32'hffffffff;
                        dma_tlast <= 0;
                        dma_tdata <= dma_tdata;
                    end
                    else begin
                        state <= WRITE_HEADER;
                    end                   
            end
            CONCAT1: begin
                dma_tvalid <= 0;
                if(axis_tvalid == 1)begin
                    axis_tready <= 0;

                    state <= CONCAT2;
                end
                else begin
                    state <= CONCAT1;
                end
            end
            CONCAT2: begin
                dma_tvalid <= 0;
                if(axis_tvalid == 1)begin
                    axis_tready <= 0;
                    data_in[255:16] <= axis_tdata[239:0];
                    state <= COMP;
                    data_counter <= data_counter + 1;
                end
                else begin
                    state <= CONCAT2;
                end
            end
            COMP: begin
               data_out_concat[15:0] <= bitmap_wire;
               data_out_concat[271:16] <= 0; 
               offset_0 <= length_0;
               offset_1 <= length_1;
               offset_2 <= length_2;
               offset_3 <= length_3;
               offset_4 <= length_4;
               offset_5 <= length_5;
               offset_6 <= length_6;
               offset_7 <= length_7;
               offset_tmp0 <= length_0 + length_1;
               offset_tmp1 <= length_2 + length_3;
               offset_tmp2 <= length_4 + length_5;
               offset_tmp3 <= length_6 + length_7;
               data_out_shift_0 <= {240'h0, data_out_0};
               data_out_shift_1 <= {240'h0, data_out_1};
               data_out_shift_2 <= {240'h0, data_out_2};
               data_out_shift_3 <= {240'h0, data_out_3};
               data_out_shift_4 <= {240'h0, data_out_4};
               data_out_shift_5 <= {240'h0, data_out_5};
               data_out_shift_6 <= {240'h0, data_out_6};
               data_out_shift_7 <= {240'h0, data_out_7};
               state <= OFFSET;
            end

            OFFSET: begin
               offset_0 <= offset_0;
               offset_1 <= offset_tmp0;
               offset_2 <= offset_tmp0 + offset_2;
               offset_3 <= offset_tmp0 + offset_tmp1;
               offset_4 <= offset_4 + (offset_tmp0 + offset_tmp1);
               offset_5 <= (offset_tmp0 + offset_tmp1) + offset_tmp2;
               offset_6 <= (offset_tmp0 + offset_tmp1) + (offset_tmp2 + offset_6);
               offset_7 <= (offset_tmp0 + offset_tmp1) + (offset_tmp2 + offset_tmp3);
               state <= SHIFT;
               if(is_last == 1)begin    
                    data_out_concat[15:6] <= 0;
               end
            end
            SHIFT: begin
                data_out_shift_0 <= data_out_shift_0 << 16;
                data_out_shift_1 <= data_out_shift_1 << (16 + offset_0);
                data_out_shift_2 <= data_out_shift_2 << (16 + offset_1);
                data_out_shift_3 <= data_out_shift_3 << (16 + offset_2);
                data_out_shift_4 <= data_out_shift_4 << (16 + offset_3);
                data_out_shift_5 <= data_out_shift_5 << (16 + offset_4);
                data_out_shift_6 <= data_out_shift_6 << (16 + offset_5);
                data_out_shift_7 <= data_out_shift_7 << (16 + offset_6);
                group_length <= 16 + offset_7;
                state <= MERGE1;
            end
            /*MERGE1: begin
                data_out_shift_0 <= (data_out_shift_0 | data_out_shift_1) | (data_out_shift_2 | data_out_shift_3);
                data_out_shift_4 <= (data_out_shift_4 | data_out_shift_5) | (data_out_shift_6 | data_out_shift_7);
                state <= MERGE2;
            end*/
            MERGE1: begin   
                data_out_concat <= data_out_concat | ((data_out_shift_0 | data_out_shift_1) | (data_out_shift_2 | data_out_shift_3)) | ((data_out_shift_4 | data_out_shift_5) | (data_out_shift_6 | data_out_shift_7));
                state <= MERGE3;
            end
            MERGE3: begin
                out_buffer <= (data_out_520 << cursor) | out_buffer;
                cursor <= cursor + group_length;
                state <= WRITE_OUT;
            end

            WRITE_OUT: begin 
                data_in[15:0] <= axis_tdata[255:240];
                
                if(is_last == 1)begin
                    if(cursor >= 256)begin
                        dma_tdata <= out_buffer[255:0];
                        out_buffer <= out_buffer >> 256;
                        dma_tkeep <= 32'hffffffff;
                        dma_tvalid <= 1;
                        state <= WRITE_DATA;
                        special_case <= 1;
                    end
                    else begin  
                        dma_tdata <= out_buffer[255:0];
                        dma_tkeep <= 32'hffffffff;
                        dma_tvalid <= 1;
                        dma_tlast <= 1;
                        state <= WRITE_DONE;
                    end
                end
                else begin
                    if(cursor >= 256)begin
                        dma_tdata <= out_buffer[255:0];
                        out_buffer <= out_buffer >> 256;
                        cursor <= cursor - 256;
                        dma_tkeep <= 32'hffffffff;
                        dma_tvalid <= 1;
                        state <= WRITE_DATA;
                        special_case <= 0;
                    end
                    else begin  
                        state <= CONCAT1;
                        axis_tready <= 1;
                    end
                end
            end

            WRITE_DATA: begin
                 if(dma_tready == 1)begin
                    if(special_case == 0)begin   
                       dma_tvalid <= 0;
                       dma_tlast <= 0;
                       state <= CONCAT1;
                       axis_tready <= 1;
                    end
                    else begin
                        dma_tdata <= out_buffer[255:0];
                        dma_tlast <= 1;
                        state <= WRITE_DONE;
                    end
                end
                else begin
                    state <= WRITE_DATA;
                end
            end

            WRITE_DONE: begin
                if(dma_tready == 1)begin   
                    dma_tvalid <= 0;
                    dma_tlast <= 0;
                    state <= IDLE;
                    axis_tready <= 1;
                end
                else begin
                    state <= WRITE_DONE;
                end
            end
            default: begin  
                state <= IDLE;
            end
        endcase
    end
end


endmodule