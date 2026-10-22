module parity_calc #(parameter parallel_data =8)(
    input [parallel_data-1:0] p_data,
    input data_valid,
    input par_typ,
    input parity_enable,
    input clk,
    input rst,
    output reg par_bit
);
always @(posedge clk or negedge rst)
    begin
        if(!rst)
            begin
                par_bit <= 1'b0;
            end
        else if(data_valid&&parity_enable)
                begin
                    if(par_typ)
                        par_bit <= ~(^p_data); // Odd parity
                    else
                        par_bit <= ^p_data; // Even parity
                end
    end
endmodule