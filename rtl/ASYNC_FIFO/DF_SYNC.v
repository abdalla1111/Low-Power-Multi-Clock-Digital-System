module DF_SYNC #(parameter BUS_WIDTH = 4)
(
    input  [BUS_WIDTH-1:0] unsync_bus,
    input                  clk,
    input                  rst_n,
    output [BUS_WIDTH-1:0] sync_bus
);

reg [BUS_WIDTH-1:0] sync_ff1;
reg [BUS_WIDTH-1:0] sync_ff2;

always @(posedge clk or negedge rst_n)
begin
    if (!rst_n)
        begin
            sync_ff1 <= 'b0;
            sync_ff2 <= 'b0;
        end
    else
        begin
            sync_ff1 <= unsync_bus;
            sync_ff2 <= sync_ff1;
        end
end

assign sync_bus = sync_ff2;

endmodule