module stop_check (
    input clk,
    input rst,
    input stp_chk_en,
    input sampled_bit,
    output reg stp_err
);

always @(posedge clk or negedge rst)
    begin
        if(!rst)
            begin
                stp_err <= 0 ;
            end
        else if(stp_chk_en)
            begin
                if(sampled_bit == 1)
                    stp_err <= 0 ;
                else 
                    stp_err <= 1 ;
            end
    end
endmodule