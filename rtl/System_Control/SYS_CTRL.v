module SYS_CTRL#(parameter DATA_WIDTH = 8,ADDR_BUS=4,FUN_WIDTH=4) (
                    //----inputs-----//
input                                   CLK,
input                                   RST,
input      [DATA_WIDTH*2-1:0]           ALU_OUT,
input                                   OUT_VALID, //FOR ALU
input      [DATA_WIDTH-1:0]             RX_P_Data,
input                                   RX_D_VLD, // IF VALID USE RX_P_Data
input      [DATA_WIDTH-1:0]             Rd_Data,
input                                   RdData_Valid,
input                                   FIFO_FULL,
                    //-----outputs-----/
output reg                              ALU_EN,
output reg [FUN_WIDTH-1:0]              ALU_FUN,
output reg                              CLK_EN,
output reg [ADDR_BUS-1:0]               Address,
output reg                              WrEN,
output reg                              RdEN,
output reg [DATA_WIDTH-1:0]             WrData,
output reg [DATA_WIDTH-1:0]             TX_P_Data,
output reg                              TX_D_VLD,
output reg                              clk_div_en
);

reg [3:0]current_state,next_state;
localparam[3:0] idle                = 0,
				Reg_Wr              = 1,
				Reg_Addr            = 2,
				Reg_Wr_data         = 3,
				Reg_Rd              = 4,
				Reg_Rd_send         = 5,
				Alu_with_op         = 6,
				wr_op_A_Reg0        = 7,
				wr_op_B_Reg1        = 8,
				Alu_fun_s           = 9,
				Alu_no_op           = 10,
				fifo_send           = 12, // only one clk cycle
				fifo_send_alu1      = 13, // only one clk cycle
				fifo_send_alu2      = 14, // only one clk cycle
				Alu_result          = 15; // only one clk cycle
//---------------------------------//
reg [ADDR_BUS-1:0]      addr_reg;
reg [DATA_WIDTH-1:0]    data_reg;
reg [FUN_WIDTH-1:0]     fun_reg;
reg [DATA_WIDTH*2-1:0]  result_reg;
reg                     byte_sel;

reg [ADDR_BUS-1:0]     addr_next;
reg [DATA_WIDTH-1:0]   data_next;
reg [FUN_WIDTH-1:0]    fun_next;
reg [DATA_WIDTH*2-1:0] result_next;
reg                    byte_sel_next;

always @(posedge CLK or negedge RST)
    begin
        if(!RST)
            begin
                current_state <= idle;
                addr_reg   <= 0 ;
                data_reg   <= 0 ;
                fun_reg    <= 0 ;
                result_reg <= 0 ;
                byte_sel   <= 0 ;
            end
        else
            begin
                current_state <= next_state;
                addr_reg      <= addr_next;
                data_reg      <= data_next;
                fun_reg       <= fun_next;
                result_reg    <= result_next;
                byte_sel      <= byte_sel_next;
            end
    end

//--------------------------------//

always @(*)
    begin

    //-------------Default Value-----------------//
        ALU_EN          = 0;
        ALU_FUN         = 0;
        CLK_EN          = 0;
        Address         = 0;
        WrEN            = 0;
        RdEN            = 0;
        WrData          = 0;
        TX_P_Data       = 0;
        TX_D_VLD        = 0;
        clk_div_en      = 1;
        addr_next       = addr_reg;
        data_next       = data_reg;
        fun_next        = fun_reg;
        result_next     = result_reg;
        byte_sel_next   = byte_sel;
        next_state      = current_state;
    //------------------------------------------//

        case (current_state)
            idle:
                begin
                    if(RX_D_VLD == 0)
                        begin
                            next_state = idle;
                        end
                    else
                        begin
                            case(RX_P_Data)
                                8'hAA: next_state = Reg_Wr;
                                8'hBB: next_state = Reg_Rd;
                                8'hCC:   begin 
                                            next_state = Alu_with_op;
                                            CLK_EN = 1;
                                        end
                                8'hDD:   begin 
                                            next_state = Alu_no_op;
                                            CLK_EN = 1;
                                        end
                            endcase
                        end
                end
//****************Reg_Wr******************//
            Reg_Wr:
                begin
                    if(RX_D_VLD)
                        begin
                            next_state = Reg_Addr;
                            addr_next = RX_P_Data[ADDR_BUS-1:0];
                        end
                    else
                        begin
                            next_state = Reg_Wr;
                        end
                end
//****************Reg_Addr******************//
            Reg_Addr:
                begin
                    if(RX_D_VLD)
                        begin
                            data_next = RX_P_Data;
                            next_state = Reg_Wr_data;
                        end
                    else
                        begin
                            next_state = Reg_Addr;
                        end
                end
//****************Reg_Wr_data******************//
            Reg_Wr_data:
                begin
                    WrEN = 1;    
                    WrData = data_reg;
                    Address = addr_reg;
                    next_state = idle;
                end
//****************Reg_Rd******************//
            Reg_Rd:
                begin
                    if(RX_D_VLD)
                        begin
                            addr_next  = RX_P_Data[ADDR_BUS-1:0];
                            next_state = Reg_Rd_send;
                        end
                end
//**********************************//
            Reg_Rd_send:
                begin
                    RdEN = 1;
                    Address = addr_reg;
                    if(RdData_Valid)
                        begin
                            data_next = Rd_Data;
                            next_state = fifo_send;
                        end
                end
//**********************************//
            fifo_send:
                begin
                    if(!FIFO_FULL)
                        begin
                            TX_P_Data = data_next;
                            TX_D_VLD = 1;
                            next_state = idle;
                        end
                end
//**********************************//
            Alu_with_op:
                begin
                    if(RX_D_VLD)
                        begin
                            data_next  = RX_P_Data;
                            next_state = wr_op_A_Reg0;
                        end
                    else
                        begin
                            next_state = Alu_with_op;
                        end
                end
//**********************************//
            wr_op_A_Reg0:
                begin
                    CLK_EN = 1'b1;
                    WrEN = 1 ;
                    Address = 0 ;
                    WrData = data_reg;
                    if(RX_D_VLD)
                        begin
                            data_next  = RX_P_Data;
                            next_state = wr_op_B_Reg1;
                        end
                    else
                        begin
                            next_state = wr_op_A_Reg0;
                        end
                end
//**********************************//
            wr_op_B_Reg1:
                begin
                    CLK_EN = 1'b1;
                    WrEN = 1 ;
                    Address = 1 ;
                    WrData = data_reg;
                    if(RX_D_VLD)
                        begin
                            fun_next   = RX_P_Data[FUN_WIDTH-1:0];
                            next_state = Alu_fun_s;
                        end
                    else
                        begin
                            next_state = wr_op_B_Reg1;
                        end
                end
//**********************************//
            Alu_fun_s:
                begin
                    CLK_EN = 1'b1;
                    ALU_EN = 1;
                    ALU_FUN = fun_reg ;
                    next_state = Alu_result;
                end
//**********************************//
            Alu_result:
                begin
                    CLK_EN = 1'b1;
                    if (OUT_VALID)
                        begin
                            result_next = ALU_OUT;
                            next_state = fifo_send_alu1;
                        end
                    else
                        begin
                            next_state = Alu_result;
                        end
                end
//**********************************//
            fifo_send_alu1:
                begin
                    if(!FIFO_FULL)
                        begin
                            TX_P_Data  = result_reg[7:0];
                            TX_D_VLD   = 1;
                            next_state = fifo_send_alu2;
                        end
                    else
                        begin
                            next_state = fifo_send_alu1;
                        end

                end
//**********************************//
            fifo_send_alu2:
                begin
                    if(!FIFO_FULL)
                        begin
                            TX_P_Data  = result_reg[15:8];
                            TX_D_VLD   = 1;
                            next_state = idle;
                        end
                    else
                        begin
                            next_state = fifo_send_alu2;
                        end
                end
//**********************************//
            Alu_no_op:
                begin
                    CLK_EN = 1'b1;
                    if(RX_D_VLD)
                        begin
                            fun_next = RX_P_Data[FUN_WIDTH-1:0];
                            next_state = Alu_fun_s;
                        end
                    else
                        begin
                            next_state = Alu_no_op;
                        end
                end
//**********************************//
            default:
                begin
                    next_state = idle;
                end
//**********************************//
        endcase 
    end
endmodule