module data_sampling (
    input        clk,
    input        rst,
    input  [5:0] prescale,
    input        rx_in,
    input        dat_samp_en,
    input  [5:0] edge_cnt,
    output reg   sampled_bit
);

reg [2:0] samples;

wire [5:0] sample_center;

// Preserve the sampling timing of the original RX.
assign sample_center = (prescale - 6'd1) >> 1;

always @(posedge clk or negedge rst)
begin
    if (!rst)
    begin
        sampled_bit <= 1'b1;
        samples     <= 3'b111;
    end
    else if (dat_samp_en)
    begin
        if (edge_cnt == (sample_center - 6'd1))
            samples[0] <= rx_in;

        else if (edge_cnt == sample_center)
            samples[1] <= rx_in;

        else if (edge_cnt == (sample_center + 6'd1))
            samples[2] <= rx_in;

        else
            sampled_bit <= (samples[0] & samples[1]) |
                           (samples[1] & samples[2]) |
                           (samples[0] & samples[2]);
    end
end

endmodule