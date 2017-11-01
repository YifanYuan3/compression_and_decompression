`define BURST_WIDTH 256

module CompressorController (
	input														clk,
	input														reset,
	input 													wrt_en,
	input 													tvalid,
	input														tlast,
	input														full_infifo,
	input														empty_infifo,
	input 	[`BURST_WIDTH -	1	:	0]	data_in,
	output	[2								:	0] 	state,
	output													push_infifo,
	output													pop_infifo,
	output													flag_compression,
	output													is_header
);
	localparam integer IDLE = 0, H0 = 1, H1 = 2, H2 = 3, H3 = 4, DATA = 5;

	reg			[2								:	0]	state;		
	reg			[2								:	0]	next_state;	
	reg															flag_compression;
	reg															is_header;
	
	always @*
	begin
		next_state = state;
		//todo maybe I need to initialize flag_compression here? 
		case (state)
			IDLE: begin
				if (tvalid && tready)
					next_state 				= H0;
					flag_compression 	= 1'b0;
					is_header 				= 1'b1;
			end
			H0: begin
				if (tvalid && tready)
					next_state 				= H1;			
					flag_compression 	= (tvalid == 1) && (data_in[111:96] == 16'h0008) && (data_in[191:184] == 8'h06) && (data_in[143:128] == 16'hdc05) && (data_in[127:120] == 8'h28);
					is_header					=	1'b1;
			end 
			H1: begin
				if (tvalid && tready)
					next_state = H2;
					flag_compression = flag_compression;
					is_header					=	1'b1;
			end
			H2: begin
				if (tvalid && tready)
					next_state = H3;
					flag_compression = flag_compression;
					is_header					=	1'b1;
			end
			H3: begin
				if (tvalid && tready)
					next_state = DATA;
					flag_compression = flag_compression;
					is_header					=	1'b0;
			end
			DATA: begin
				if (tlast && tvalid && tready)
					next_state = IDLE;
					flag_compression = flag_compression;
					is_header					=	1'b0;
			end
		endcase
	end
	
	always @(posedge clk)
  begin
    if (reset)
      state <= IDLE;
    else
      state <= next_state;
  end
	
	assign	tready 			= !full_infifo;
	assign 	push_infifo = tvalid & tready;
	assign 	pop_infifo	= (empty_infifo == 1'b0) ? 1'b1 : 1'b0;
	
endmodule