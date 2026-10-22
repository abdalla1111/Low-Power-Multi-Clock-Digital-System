module FSM (
    input data_valid,
    input par_en,
    input ser_done,
    input clk,
    input rst,
    output reg ser_en,
    output reg parity_enable,
    output reg [1:0] mux_sel,
    output reg busy
);

localparam  idle                   = 3'b000,
            start_bit              = 3'b001,
            data_frame_with_parity = 3'b010,
            data_frame_no_parity   = 3'b011,
            parity_bit             = 3'b100,
            stop_bit               = 3'b101;
            
reg [2:0] current_state, next_state;

// Block 1: Sequential (State Memory)
always @(posedge clk or negedge rst) begin
    if (!rst)
        current_state <= idle;
    else
        current_state <= next_state;
end

// Block 2: Combinational (Next State & Outputs)
always @(*) begin
    // Default values
    mux_sel = 2'd1; 
    busy = 1'b1;
    parity_enable = 0;
    //ser_en = 1'b0;
    case(current_state)
        idle:
            begin
                busy = 1'b0;
                mux_sel = 2'd1; 
                ser_en = 1'b0;
                if(data_valid)
                    begin
                        next_state = start_bit;
                        if(par_en)
                            begin
                                parity_enable = 1;
                            end
                        else
                            begin
                                parity_enable = 0;
                            end
                    end
                else
                    begin
                      next_state = idle;
                    end
            end
        
        start_bit: 
            begin
                parity_enable = 0;
                mux_sel = 2'b00; // Output Start Bit (0)
                ser_en = 1'b1;
                if(par_en)
                    begin
                        next_state = data_frame_with_parity;
                    end
                else
                    begin
                        next_state = data_frame_no_parity;
                    end
            end  
        
        data_frame_with_parity : 
            begin
                mux_sel = 2'd2;  // Output Serial Data                    
                    if(ser_done) 
                      begin
                            next_state = parity_bit;
                            ser_en = 1'b0;

                        end
                    else
                        begin
                            next_state = data_frame_with_parity;
                            ser_en = 1'b1;                      
                        end
                    
            end
        
        data_frame_no_parity: 
            begin
                mux_sel = 2'd2;  // Output Serial Data    
                    if(ser_done) 
                        begin
                            next_state = stop_bit;
                            ser_en = 1'b0;
                        end
                    else
                        begin
                        next_state = data_frame_no_parity;
                        ser_en = 1'b1;                      
                        end
            end
        
        parity_bit: 
            begin
                mux_sel = 2'd3;  // Output Parity Bit
                ser_en = 1'b0;
                next_state = stop_bit;
            end
        
        stop_bit: 
            begin
                mux_sel = 2'd1;  // Output Stop Bit (1)
                ser_en = 1'b0;
                next_state = idle;
            end
        
        default:
            begin
                next_state = idle;
                ser_en = 1'b0;
            end
    endcase
end
endmodule