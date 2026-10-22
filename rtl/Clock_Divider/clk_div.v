module clk_div #(parameter RATIO_WIDTH = 8)
(
    input  wire i_ref_clk,
    input  wire i_rst_n,
    input  wire i_clk_en,
    input  wire [RATIO_WIDTH-1:0] i_div_ratio,
    output wire o_div_clk
);

    reg [RATIO_WIDTH-1:0] counter;
    reg pos_clk;
    reg neg_clk;

    // MULTIPLEXER TO SELECT OUTPUT
    assign o_div_clk = ~(|i_div_ratio[RATIO_WIDTH-1:1]) ? i_ref_clk : 
                       (i_div_ratio[0] ? (pos_clk | neg_clk) : pos_clk);

    // POSITIVE EDGE BLOCK
    always @(posedge i_ref_clk or negedge i_rst_n) 
    begin
        if (!i_rst_n) 
        begin
            counter <= 0;
            pos_clk <= 1'b0;
        end
        else if (i_clk_en && (|i_div_ratio[RATIO_WIDTH-1:1])) 
        begin
            if (counter == i_div_ratio - 1)
                counter <= 0;
            else
                counter <= counter + 1;

            if (counter == 0)
                pos_clk <= 1'b1;
            else if (counter == (i_div_ratio >> 1))
                pos_clk <= 1'b0;
        end 
        else 
        begin
            counter <= 0;
            pos_clk <= 1'b0;
        end
    end

    // NEGATIVE EDGE BLOCK
    always @(negedge i_ref_clk or negedge i_rst_n) 
    begin
        if (!i_rst_n) 
        begin
            neg_clk <= 1'b0;
        end 
        else if (i_clk_en && (|i_div_ratio[RATIO_WIDTH-1:1]) && i_div_ratio[0]) 
        begin
            neg_clk <= pos_clk;
        end 
        else 
        begin
            neg_clk <= 1'b0;
        end
    end

endmodule