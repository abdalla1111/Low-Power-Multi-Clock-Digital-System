module RST_SYNC #(parameter NUM_STAGES = 2)
(
    input rst,
    input clk,
    output sync_rst
);
    
    reg [NUM_STAGES-1:0] res_sync_reg;
    assign sync_rst = res_sync_reg[0];

        always @(posedge clk or negedge rst)
        begin
            if(!rst)
                begin
                    res_sync_reg <= 'b0;
                end
            else
                begin
                    res_sync_reg <= {1'b1, res_sync_reg[NUM_STAGES-1:1]};
                end
        end
endmodule