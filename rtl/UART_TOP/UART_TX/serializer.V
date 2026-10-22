module serializer #(parameter parallel_data = 8)(
    input  [parallel_data-1:0] p_data,
    input                      clk,
    input                      rst,
    input                      ser_en,
    output reg                 ser_done,
    output reg                 serial_out
);

reg [parallel_data-2:0] serial_reg;
reg [2:0] count;

always @(posedge clk or negedge rst)
begin
    if (!rst)
    begin
        serial_out <= 1'b1;
        serial_reg <= 'b1;
        count      <= 3'd0;
        ser_done   <= 1'b0;
    end

    else if (ser_en)
    begin
        // Load + send bit 0
        if (count == 3'd0)
        begin
            serial_out <= p_data[0];

            // Shift immediately so bit 1 is not sent again
            serial_reg <= p_data[parallel_data-1:1];

            count    <= 3'd1;
            ser_done <= 1'b0;
        end

        // Send remaining bits
        else
        begin
            serial_out <= serial_reg[0];

            serial_reg <= {1'b1, serial_reg[parallel_data-2:1]};

            if (count == 3'd7)
            begin
                ser_done <= 1'b1;
                count    <= 3'd0;
            end
            else
            begin
                count    <= count + 1'b1;
                ser_done <= 1'b0;
            end
        end
    end

    else
    begin
        ser_done <= 1'b0;
        count    <= 3'd0;
    end
end

endmodule