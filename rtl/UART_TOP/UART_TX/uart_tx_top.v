module uart_tx #(parameter DATA_WIDTH = 8)(
input [DATA_WIDTH-1:0] P_DATA,
input DATA_VALID, //P_DATA Bus only when Data_Valid Signal is high.
input PAR_EN,  //Parity Enable
input PAR_TYP, //Parity Type
input CLK,
input RST,
output  TX_OUT,
output  BUSY //High signal during transmission,otherwise low
);
wire ser_en_t, ser_done_t,parity_enable_t;
wire ser_data_t,par_bit_t;
wire[1:0] mux_sel_t; 

serializer #(.parallel_data(DATA_WIDTH)) U_serializer
(
    .p_data(P_DATA),
    .clk(CLK),
    .rst(RST),
    .ser_en(ser_en_t),
    .ser_done(ser_done_t),
    .serial_out(ser_data_t)
);
FSM U_FSM 
(
    .data_valid(DATA_VALID),
    .par_en(PAR_EN),
    .ser_done(ser_done_t),
    .clk(CLK),
    .rst(RST),
    .ser_en(ser_en_t),
    .mux_sel(mux_sel_t),
    .busy(BUSY),
    .parity_enable(parity_enable_t)
);
parity_calc #(.parallel_data(DATA_WIDTH)) U_parity_calc
(
    .clk(CLK),
    .rst(RST),
    .p_data(P_DATA),
    .data_valid(DATA_VALID),
    .parity_enable(parity_enable_t),
    .par_typ(PAR_TYP),
    .par_bit(par_bit_t)
);
mux U_mux
(
    .ser_data(ser_data_t),
    .par_bit(par_bit_t),
    .mux_sel(mux_sel_t),
    .tx_out(TX_OUT)
);
endmodule