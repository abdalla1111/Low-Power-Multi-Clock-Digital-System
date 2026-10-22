module fsm #(parameter parallel_data = 8)(
    input clk,
    input rst,
    input rx_in,
    input [3:0] bit_cnt,
    input par_en,
    input [5:0] edge_cnt,
    input [5:0] prescale,
    input par_err,
    input strt_glitch,
    input stp_err,

    output reg dat_samp_en,
    output reg enable_counter,
    output reg deser_en,
    output reg par_chk_en,
    output reg strt_chk_en,
    output reg stp_chk_en,
    output reg data_valid
);

localparam idle        = 3'b000,
           start_bit   = 3'b001,
           data_frame  = 3'b010,
           parity_bit  = 3'b011,
           stop_bit    = 3'b100;

reg [2:0] current_state, next_state;

always @(posedge clk or negedge rst)
begin
    if (!rst)
        current_state <= idle;
    else
        current_state <= next_state;
end

always @(*)
begin
    next_state     = current_state;
    dat_samp_en    = 1'b0;
    enable_counter = 1'b0;
    deser_en       = 1'b0;
    par_chk_en     = 1'b0;
    strt_chk_en    = 1'b0;
    stp_chk_en     = 1'b0;
    data_valid     = 1'b0;

    case (current_state)

        idle:
        begin
            if (!rx_in)
                next_state = start_bit;
        end

        start_bit:
        begin
            enable_counter = 1'b1;
            dat_samp_en    = 1'b1;

            if (edge_cnt == (((prescale - 6'd1) >> 1) + 3))
                strt_chk_en = 1'b1;

            if (edge_cnt == (prescale - 6'd1))
            begin
                if (strt_glitch)
                    next_state = idle;
                else
                    next_state = data_frame;
            end
        end

        data_frame:
        begin
            enable_counter = 1'b1;
            dat_samp_en    = 1'b1;

            if (edge_cnt == (((prescale - 6'd1) >> 1) + 3))
            begin
                deser_en = 1'b1;

                if (bit_cnt == parallel_data)
                    par_chk_en = 1'b1;
            end

            if (edge_cnt == (prescale - 6'd1))
            begin
                if (bit_cnt == parallel_data)
                begin
                    if (par_en)
                        next_state = parity_bit;
                    else
                        next_state = stop_bit;
                end
                else
                begin
                    next_state = data_frame;
                end
            end
        end

        parity_bit:
        begin
            enable_counter = 1'b1;
            dat_samp_en    = 1'b1;

            if (edge_cnt == (((prescale - 6'd1) >> 1) + 3))
                par_chk_en = 1'b1;

            if (edge_cnt == (prescale - 6'd1))
                next_state = stop_bit;
        end

        stop_bit:
        begin
            enable_counter = 1'b1;
            dat_samp_en    = 1'b1;

            if (edge_cnt == (((prescale - 6'd1) >> 1) + 3))
                stp_chk_en = 1'b1;

            if (edge_cnt == (prescale - 6'd1))
            begin
                if (!stp_err && (!par_en || !par_err))
                begin
                    data_valid = 1'b1;
                    next_state = idle;
                end
                else
                begin
                    next_state = idle;
                end
            end
        end

        default:
        begin
            next_state = idle;
        end

    endcase
end

endmodule