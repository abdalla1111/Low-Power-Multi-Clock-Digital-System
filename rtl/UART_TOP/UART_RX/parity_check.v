module parity_check #(parameter parallel_data = 8)(

    input clk,
    input rst,
    input par_typ,
    input sampled_bit,
    input par_chk_en,
    input [parallel_data-1:0] p_data,
    input [3:0] bit_cnt,
    output reg par_err
);

reg par_Chk;

always @(posedge clk or negedge rst)
begin
    if (!rst)
    begin
        par_err <= 1'b0;
        par_Chk <= 1'b0;
    end

    else if (par_chk_en && (bit_cnt == 8))
    begin
        par_err <= 1'b0;   // clear every frame (this branch always fires,
                            // regardless of par_en) so a stale error from a
                            // previous frame never leaks into one with no
                            // parity bit

        if (par_typ == 1'b0)
            par_Chk <= ^{sampled_bit, p_data[parallel_data-1:1]};
        else
            par_Chk <= ~^{sampled_bit, p_data[parallel_data-1:1]};
    end

    else if (par_chk_en && (bit_cnt == 9))
    begin
        if (par_Chk == sampled_bit)
            par_err <= 1'b0;
        else
            par_err <= 1'b1;
    end
end

endmodule