module mux (
    input ser_data,
    input par_bit,
    input [1:0]mux_sel,
    output reg tx_out
);
always @(*)
    begin
        case(mux_sel)
            2'b00:  begin
                        tx_out <= 'b0;
                    end
            2'b01:  begin
                        tx_out <= 'b1;
                    end
            2'b10:  begin
                        tx_out <= ser_data;
                    end
            2'b11:  begin
                        tx_out <= par_bit;
                    end
        endcase
    end
endmodule