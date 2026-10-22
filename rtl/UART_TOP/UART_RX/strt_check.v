module strt_check (
    input clk,
    input rst,
    input sampled_bit,
    input strt_chk_en,
    output reg strt_glitch
);

always @(posedge clk or negedge rst)
begin
    if (!rst)
        strt_glitch <= 0;
    else if (strt_chk_en)
    begin
        if (sampled_bit == 1)
            strt_glitch <= 1;   // line already back high → false start
        else
            strt_glitch <= 0;   // still low → confirmed valid start bit
    end
end

endmodule