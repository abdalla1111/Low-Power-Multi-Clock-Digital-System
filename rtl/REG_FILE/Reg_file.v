    module Reg_file#(parameter ADDR_WIDHT=4,DATA_WIDTH=8,DATA_DEPTH=16)
    (
    input [DATA_WIDTH-1:0] Wrdata,
    input [ADDR_WIDHT-1:0] Address,
    input WrEn,
    input RdEn,
    input CLK,
    input RST,
    output reg [DATA_WIDTH-1:0] RdData,
    output reg RdData_Valid,
    output wire [DATA_WIDTH-1:0]REG0,
    output wire [DATA_WIDTH-1:0]REG1,
    output wire [DATA_WIDTH-1:0]REG2,
    output wire [DATA_WIDTH-1:0]REG3
    );
    reg [DATA_WIDTH-1:0] reg_file [0:DATA_DEPTH-1];
    integer i;
    assign REG0 = reg_file[0]; 
    assign REG1 = reg_file[1]; 
    assign REG2 = reg_file[2]; 
    assign REG3 = reg_file[3]; 

    always @(posedge CLK or negedge RST)
    begin
        if (!RST)
            begin
                for(i = 0 ; i < DATA_DEPTH ; i = i + 1)
                    begin
                        case(i)
                            2: reg_file[2] <= 'd129;
                            3: reg_file[3] <= 'd32;
                            default: reg_file[i] <= 'b0;
                        endcase
                    end
                
                RdData <= 'b0;
                RdData_Valid <= 1'b0;
            end
        else if (WrEn && !RdEn)
            begin
                    reg_file[Address] <= Wrdata;
                    RdData_Valid <=1'b0;
            end
        else if (RdEn && !WrEn)
            begin
                RdData <= reg_file[Address];
                RdData_Valid <= 1'b1 ;
            end
        else
            begin
                RdData_Valid <=1'b0;
            end
    end
    endmodule