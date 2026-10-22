module FIFO_WR 
#(parameter DATA_DEPTH = 8,
  parameter ADDR_WIDTH = $clog2(DATA_DEPTH)
 )
(
    input w_en,
    input w_clk,
    input wrst_n,
    input [ADDR_WIDTH:0]wq2_r_ptr,
    output  [ADDR_WIDTH-1:0] w_addr,
    output reg [ADDR_WIDTH:0]w_ptr,
    output reg w_full,
    output reg [ADDR_WIDTH:0] w_ptr_gray

);
wire [ADDR_WIDTH:0] w_ptr_next;
wire [ADDR_WIDTH:0] gray_w_ptr_next;

assign w_addr = w_ptr[ADDR_WIDTH-1:0];
assign w_ptr_next = w_ptr + ((w_en && !w_full) ? 1'b1 : 1'b0);
assign gray_w_ptr_next = w_ptr_next ^ (w_ptr_next >> 1);

always @(posedge w_clk or negedge wrst_n)
    begin
        if(!wrst_n)
            begin
                w_ptr  <= 0;
                w_ptr_gray <= 0;
                w_full <= 0;
            end
        else
            begin
                     w_ptr <= w_ptr_next;
                     w_ptr_gray <= gray_w_ptr_next;
                     w_full <= (
                                gray_w_ptr_next[ADDR_WIDTH] != wq2_r_ptr[ADDR_WIDTH] &&
                                gray_w_ptr_next[ADDR_WIDTH-1] != wq2_r_ptr[ADDR_WIDTH-1] &&
                                gray_w_ptr_next[ADDR_WIDTH-2:0] == wq2_r_ptr[ADDR_WIDTH-2:0]
                               );
            end
    end
endmodule