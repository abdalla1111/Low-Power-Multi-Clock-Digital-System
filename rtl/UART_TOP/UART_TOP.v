    module uart_top #(parameter parallel_data = 8)(
    input                       TX_CLK,
    input [parallel_data-1:0]   TX_IN_P,
    input                       TX_IN_V,
    output                      TX_OUT_S,
    output                      TX_OUT_V,

    input                       RX_CLK,
    input                       RX_IN_S,
    input [5:0]                 Prescale,
    input                       PAR_EN,
    input                       PAR_TYP,
    output [parallel_data-1:0]  RX_OUT_P,
    output                      RX_OUT_V,   
    
    input                       RST,
    output                      parity_error,
    output                      framing_error
    );

    uart_rx #(.parallel_data(parallel_data))
        uart_rx_U
        (
            .clk(RX_CLK),
            .rst(RST),
            .rx_in(RX_IN_S),
            .par_en(PAR_EN),
            .par_typ(PAR_TYP),
            .prescale(Prescale),
            .p_data(RX_OUT_P),
            .par_err(parity_error),
            .stp_err(framing_error),
            .data_valid(RX_OUT_V)
        );

    uart_tx #(.DATA_WIDTH(parallel_data))
        uart_tx_U
        (
            .P_DATA(TX_IN_P),
            .DATA_VALID(TX_IN_V),
            .PAR_EN(PAR_EN), 
            .PAR_TYP(PAR_TYP),
            .CLK(TX_CLK),
            .RST(RST),
            .TX_OUT(TX_OUT_S),
            .BUSY(TX_OUT_V)
        );
    endmodule