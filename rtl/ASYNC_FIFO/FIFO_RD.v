module FIFO_RD
#(parameter DATA_DEPTH = 8,
  parameter ADDR_WIDTH = $clog2(DATA_DEPTH)
 )
(
    input r_en,
    input r_clk,
    input rrst_n,
    input [ADDR_WIDTH:0]rq2_w_ptr,
    output  [ADDR_WIDTH-1:0] r_addr,
    output reg [ADDR_WIDTH:0]r_ptr,
    output reg r_empty,
    output reg [ADDR_WIDTH:0] gray_r_ptr

);

wire [ADDR_WIDTH:0] r_ptr_next;
wire [ADDR_WIDTH:0] gray_r_ptr_next;

assign r_addr = r_ptr[ADDR_WIDTH-1:0];
assign r_ptr_next = r_ptr + ((r_en && !r_empty) ? 1'b1 : 1'b0);

assign gray_r_ptr_next = r_ptr_next ^ (r_ptr_next >> 1);

always @(posedge r_clk or negedge rrst_n)
    begin
        if(!rrst_n)
            begin
                r_ptr  <= 0;
                gray_r_ptr <= 0;
                r_empty <= 1;
            end
        else
            begin
                     r_ptr  <= r_ptr_next;
                     gray_r_ptr <= gray_r_ptr_next;
                     r_empty <= (gray_r_ptr_next == rq2_w_ptr);
            end
    end
endmodule