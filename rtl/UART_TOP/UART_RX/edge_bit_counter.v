module edge_bit_counter (
input clk,
input rst,    
input enable,
input  [5:0] prescale,
output reg [3:0] bit_cnt,
output reg [5:0] edge_cnt
);

always @(posedge clk or negedge rst)
    begin
        if(!rst)
            begin
                bit_cnt    <= 4'b0;
                edge_cnt    <= 6'b0;
            end
        else if(enable) //enable will send at first data bit
            begin
                if(edge_cnt !=(prescale - 6'd1))
                    begin
                        edge_cnt <= edge_cnt + 1; 
                    end
                else
                    begin
                        edge_cnt <= 0;
                        bit_cnt  <= bit_cnt + 1;
                    end
            end
        else
            begin
                bit_cnt  <= 0;
                edge_cnt <= 0;
            end
    end
endmodule