module deserializer #(parameter parallel_data = 8)(
    input clk,
    input rst,
    input deser_en,
    input [3:0] bit_cnt,
    input sampled_bit,
    output reg [parallel_data-1:0] p_data
);

always @(posedge clk or negedge rst)
begin
    if (!rst)
    begin
        p_data <= 'b0;
    end

    else if (deser_en &&
             (bit_cnt > 0) &&
             (bit_cnt <= parallel_data))
    begin
        p_data <= {sampled_bit, p_data[parallel_data-1:1]};
    end
end

endmodule