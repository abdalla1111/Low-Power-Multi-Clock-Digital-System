module fifo_memory 
#(parameter DATA_WIDTH = 8,
  parameter DATA_DEPTH = 8,
  parameter ADDR_WIDTH = $clog2(DATA_DEPTH))
(
    input [DATA_WIDTH-1:0] w_data,
    input [ADDR_WIDTH-1:0] w_addr,
    input [ADDR_WIDTH-1:0] r_addr,
    input w_clk_en,
    input w_clk,
    input rst,
    output [DATA_WIDTH-1:0]r_data
);

reg [DATA_WIDTH-1:0] memory [DATA_DEPTH-1:0];
integer i;

assign r_data = memory[r_addr] ;

always @(posedge w_clk or negedge rst)
    begin
        if(!rst)
            begin
                for(i=0; i<DATA_DEPTH; i=i+1)
                    begin
                        memory[i] <= 'b0;
                    end
            end
        else if(w_clk_en)
            begin
                memory[w_addr] <= w_data;
            end
    end
endmodule