module uart_rx #(parameter parallel_data = 8)(
    input clk,
    input rst,
    input rx_in,
    input par_en,
    input par_typ,
    input [5:0] prescale,
    output [parallel_data-1:0] p_data,
    output par_err,
    output stp_err,
    output reg data_valid
);
wire [3:0] bit_cnt;
wire [5:0] edge_cnt;
wire dat_samp_en;
wire enable_counter;
wire deser_en;
wire par_chk_en;
wire strt_chk_en;
wire stp_chk_en;
wire sampled_bit;
wire strt_glitch;
wire data_valid_int;
fsm #(
    .parallel_data(parallel_data)
) fsm_inst (
    .clk(clk),
    .rst(rst),
    .rx_in(rx_in),
    .bit_cnt(bit_cnt),
    .par_en(par_en),
    .edge_cnt(edge_cnt),
    .prescale(prescale),
    .par_err(par_err),
    .strt_glitch(strt_glitch),
    .stp_err(stp_err),
    .dat_samp_en(dat_samp_en),
    .enable_counter(enable_counter),
    .deser_en(deser_en),
    .par_chk_en(par_chk_en),
    .strt_chk_en(strt_chk_en),
    .stp_chk_en(stp_chk_en),
    .data_valid(data_valid_int)
);
edge_bit_counter counter_inst (
    .clk(clk),
    .rst(rst),
    .enable(enable_counter),
    .prescale(prescale),
    .bit_cnt(bit_cnt),
    .edge_cnt(edge_cnt)
);
data_sampling sampler_inst (
    .clk(clk),
    .rst(rst),
    .prescale(prescale),
    .rx_in(rx_in),
    .dat_samp_en(dat_samp_en),
    .edge_cnt(edge_cnt),
    .sampled_bit(sampled_bit)
);
deserializer #(
    .parallel_data(parallel_data)
) deserializer_inst (
    .clk(clk),
    .rst(rst),
    .deser_en(deser_en),
    .bit_cnt(bit_cnt),
    .sampled_bit(sampled_bit),
    .p_data(p_data)
);
parity_check #(
    .parallel_data(parallel_data)
) parity_inst (
    .clk(clk),
    .rst(rst),
    .par_typ(par_typ),
    .sampled_bit(sampled_bit),
    .par_chk_en(par_chk_en),
    .p_data(p_data),
    .bit_cnt(bit_cnt),
    .par_err(par_err)
);
strt_check start_check_inst (
    .clk(clk),
    .rst(rst),
    .sampled_bit(sampled_bit),
    .strt_chk_en(strt_chk_en),
    .strt_glitch(strt_glitch)
);
stop_check stop_check_inst (
    .clk(clk),
    .rst(rst),
    .stp_chk_en(stp_chk_en),
    .sampled_bit(sampled_bit),
    .stp_err(stp_err)
);
always @(posedge clk or negedge rst)
begin
    if (!rst)
        data_valid <= 1'b0;
    else
        data_valid <= data_valid_int;
end
endmodule