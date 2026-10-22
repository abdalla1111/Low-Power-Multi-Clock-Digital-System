module system_top #(parameter DATA_WIDTH = 8 , FUN_WIDTH = 4,RATIO_WIDTH = 8,
                     ADDR_WIDHT=4,DATA_DEPTH=16,NUM_STAGES = 2, BUS_WIDTH = 8,num_of_chain = 5) 
(
    input  wire   [num_of_chain-1:0]  SI,
    input  wire                       SE,
    input  wire                       scan_clk,
    input  wire                       scan_rst,
    input  wire                       test_mode,
    output wire   [num_of_chain-1:0]  SO,
    input   REF_CLK,
    input   RST,
    input   UART_CLK,
    input   RX_IN,
    output  TX_OUT,
    output  parity_error,
    output  framing_error

);
//-----SYS_CTRL-----//
wire [DATA_WIDTH-1:0] rx_data_sync;
wire rx_data_valid;
//-----UART-----//
wire [DATA_WIDTH-1:0] rx_data_unsync,UART_Config;
wire tx_busy,rd_inc,rx_out_valid,tx_clk,rx_clk;
wire [RATIO_WIDTH-1:0] DIV_RATIO_RX;
//---------sync reset-----------//
wire sync_rst_domain1;
wire sync_rst_domain2;
//--------clk_div--------------//
wire [DATA_WIDTH-1:0]   div_ratio;
wire                    clk_div_en;                   
//-----ALU-----//
wire [DATA_WIDTH-1:0]   op_A,op_B;
wire                    alu_out_valid,alu_en,alu_clk;
wire [DATA_WIDTH*2-1:0] alu_out;
wire [FUN_WIDTH-1:0]    alu_fun;
//------------FIFO----------//
wire wr_inc,fifo_full,fifo_empty;
wire [DATA_WIDTH-1:0]wr_data_fifo,rd_data_fifo;

//-----reg file----//
wire we_en,rd_en,rd_data_valid;
wire [DATA_WIDTH-1:0]wr_data,rd_data;
wire [ADDR_WIDHT-1:0]address;
//---------clock gating---------//
wire gate_en;
//--------DFT----------//
wire CLK_D1;
wire CLK_D2;
wire gate_en_test;
wire tx_clk_func;
wire rx_clk_func;
wire RST_D1;
wire RST_D2;

assign gate_en_test = gate_en | test_mode;



// Muxing REF_CLK clock
mux2X1 U0_mux2X1 (
.IN_0(REF_CLK),
.IN_1(scan_clk),
.SEL(test_mode),
.OUT(CLK_D1)
); 
// Muxing UART_CLK clock
mux2X1 U1_mux2X1 (
.IN_0(UART_CLK),
.IN_1(scan_clk),
.SEL(test_mode),
.OUT(CLK_D2)
); 
// Muxing tx_clk_func clock
mux2X1 U2_mux2X1 (
    .IN_0(tx_clk_func),
    .IN_1(scan_clk),
    .SEL(test_mode),
    .OUT(tx_clk)
);
// Muxing rx_clk_func clock
mux2X1 U3_mux2X1 (
    .IN_0(rx_clk_func),
    .IN_1(scan_clk),
    .SEL(test_mode),
    .OUT(rx_clk)
);
// Muxing domain1 reset
mux2X1 U4_mux2X1 (
    .IN_0(sync_rst_domain1),
    .IN_1(scan_rst),
    .SEL(test_mode),
    .OUT(RST_D1)
);

// Muxing domain2 reset
mux2X1 U5_mux2X1 (
    .IN_0(sync_rst_domain2),
    .IN_1(scan_rst),
    .SEL(test_mode),
    .OUT(RST_D2)
);


//-----------Regester File-----------//
 Reg_file #(.ADDR_WIDHT(ADDR_WIDHT),.DATA_WIDTH(DATA_WIDTH),.DATA_DEPTH(DATA_DEPTH))
 Reg_file_U0
    (
        .Wrdata(wr_data),
        .Address(address),
        .WrEn(we_en),
        .RdEn(rd_en),
        .CLK(CLK_D1),
        .RST(RST_D1),
        .RdData(rd_data),
        .RdData_Valid(rd_data_valid),
        .REG0(op_A),
        .REG1(op_B),
        .REG2(UART_Config),
        .REG3(div_ratio)
    );

//-----------ALU-----------//
 Alu #(.DATA_WIDTH(DATA_WIDTH), .FUN_WIDTH(FUN_WIDTH))
 Alu_U0
 (
    .A(op_A), 
    .B(op_B),
    .ALU_FUN(alu_fun),
    .CLK(alu_clk),
    .RST(RST_D1),
    .Enalbe(alu_en),
    .ALU_OUT(alu_out),
    .ALU_VALID(alu_out_valid)
  );


//---------SYS_CTRL-----------//
SYS_CTRL #(.DATA_WIDTH(DATA_WIDTH),.ADDR_BUS(ADDR_WIDHT),.FUN_WIDTH(FUN_WIDTH)) 
SYS_CTRL_U0
(
    .CLK(CLK_D1),
    .RST(RST_D1),
    .ALU_OUT(alu_out),
    .OUT_VALID(alu_out_valid), 
    .RX_P_Data(rx_data_sync),
    .RX_D_VLD(rx_data_valid), 
    .Rd_Data(rd_data),
    .RdData_Valid(rd_data_valid),
    .FIFO_FULL(fifo_full),
    .ALU_EN(alu_en),
    .ALU_FUN(alu_fun),
    .CLK_EN(gate_en),
    .Address(address),
    .WrEN(we_en),
    .RdEN(rd_en),
    .WrData(wr_data),
    .TX_P_Data(wr_data_fifo),
    .TX_D_VLD(wr_inc),
    .clk_div_en(clk_div_en)
);

//-----------data_sync-----------//

data_sync #(.NUM_STAGES(NUM_STAGES), .BUS_WIDTH(BUS_WIDTH))
data_sync_U0
(
  .unsync_bus(rx_data_unsync),
  .bus_enable(rx_out_valid),
  .dest_clk(CLK_D1),
  .dest_rst(RST_D1),
  .sync_bus(rx_data_sync),
  .enable_pulse(rx_data_valid)
);


//--------UART----------//
uart_top #(.parallel_data(DATA_WIDTH))
uart_top_U0
(
    .TX_CLK(tx_clk),
    .TX_IN_P(rd_data_fifo),
    .TX_IN_V(!fifo_empty),
    .TX_OUT_S(TX_OUT),
    .TX_OUT_V(tx_busy),

    .RX_CLK(rx_clk),
    .RX_IN_S(RX_IN),
    .Prescale(UART_Config[7:2]),
    .PAR_EN(UART_Config[0]),
    .PAR_TYP(UART_Config[1]),
    .RX_OUT_P(rx_data_unsync),
    .RX_OUT_V(rx_out_valid),   

    .RST(RST_D2),
    .parity_error(parity_error),
    .framing_error(framing_error)
    );

//--------FIFO----------//
 ASYNC_FIFO #(.DATA_WIDTH(DATA_WIDTH),.DATA_DEPTH(8),.ADDR_WIDTH(3))
 ASYNC_FIFO_U0
(
    .W_CLK(CLK_D1),
    .W_RST(RST_D1),
    .W_INC(wr_inc),
    .R_CLK(tx_clk),
    .R_RST(RST_D2),
    .R_INC(rd_inc),
    .WR_DATA(wr_data_fifo),
    .RD_DATA(rd_data_fifo),
    .FULL(fifo_full),
    .EMPTY(fifo_empty)
);


//----------RST_SYNC_DOMAIN1--------//
RST_SYNC #(.NUM_STAGES(NUM_STAGES))
RST_SYNC_U0
(
    .rst(RST),
    .clk(CLK_D1),
    .sync_rst(sync_rst_domain1)
);

//----------RST_SYNC_DOMAIN2--------//
RST_SYNC #(.NUM_STAGES(NUM_STAGES))
RST_SYNC_U1
(
    .rst(RST),
    .clk(CLK_D2),
    .sync_rst(sync_rst_domain2)
);
//--------clockgating--------//
CLK_GATE CLK_GATE_U0
(
    .CLK_EN(gate_en_test),
    .CLK(CLK_D1),
    .GATED_CLK(alu_clk)
);

//-------- clk div 1 ---------//
clk_div #(.RATIO_WIDTH(RATIO_WIDTH))
clk_div_U0
(
    .i_ref_clk(CLK_D2),
    .i_rst_n(RST_D2),
    .i_clk_en(clk_div_en),
    .i_div_ratio(div_ratio),
    .o_div_clk(tx_clk_func)
);

//--------Custom Mux Clock-------//
CLKDIV_MUX CLKDIV_MUX_U0 (
.IN(UART_Config[7:2]),
.OUT(DIV_RATIO_RX)
);
//-------- clk div 2 ---------//
clk_div #(.RATIO_WIDTH(RATIO_WIDTH))
clk_div_U1
(
    .i_ref_clk(CLK_D2),
    .i_rst_n(RST_D2),
    .i_clk_en(clk_div_en),
    .i_div_ratio(DIV_RATIO_RX),
    .o_div_clk(rx_clk_func)
);


//------pulse Gen--------//
PULSE_GEN PULSE_GEN_U0
(
    .clk(tx_clk),
    .rst(RST_D2),
    .lvl_sig(tx_busy),
    .pulse_sig(rd_inc)
);
endmodule
