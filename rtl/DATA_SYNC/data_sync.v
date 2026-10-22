module data_sync #(parameter NUM_STAGES = 2, BUS_WIDTH = 8)
(
    input [BUS_WIDTH-1:0] unsync_bus,
    input bus_enable,
    input dest_clk,
    input dest_rst,
    output reg [BUS_WIDTH-1:0] sync_bus,
    output reg  enable_pulse
);

wire pulse_gen;
reg q;
reg [NUM_STAGES-1 : 0] multi_ff ; 

assign pulse_gen = !q && multi_ff[NUM_STAGES-1];

always @(posedge dest_clk or negedge dest_rst)
    begin
        if(!dest_rst)
            begin
                sync_bus <= 0;
                multi_ff <= 0 ;
		q <= 0;
                enable_pulse <=0;
            end
        else
            begin
                multi_ff <= {multi_ff[NUM_STAGES-2:0], bus_enable};
                q <= multi_ff[NUM_STAGES-1]; //ff of pulse_gen
                enable_pulse <= pulse_gen;
                if (pulse_gen)
                    begin
                        sync_bus <= unsync_bus;
                    end
            end
        
    end
endmodule
