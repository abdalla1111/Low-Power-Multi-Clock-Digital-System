module ASYNC_FIFO #(
    parameter DATA_WIDTH = 72,
    parameter DATA_DEPTH = 8,
    parameter ADDR_WIDTH = $clog2(DATA_DEPTH)
)(
    input  W_CLK,
    input  W_RST,
    input  W_INC,

    input  R_CLK,
    input  R_RST,
    input  R_INC,

    input  [DATA_WIDTH-1:0] WR_DATA,

    output [DATA_WIDTH-1:0] RD_DATA,
    output FULL,
    output EMPTY
);

    // ============================================
    // Internal Signals
    // ============================================

    wire [ADDR_WIDTH-1:0] w_addr;
    wire [ADDR_WIDTH-1:0] r_addr;

    wire [ADDR_WIDTH:0] w_ptr;
    wire [ADDR_WIDTH:0] r_ptr;

    wire [ADDR_WIDTH:0] w_ptr_gray;
    wire [ADDR_WIDTH:0] r_ptr_gray;

    wire [ADDR_WIDTH:0] wq2_r_ptr;
    wire [ADDR_WIDTH:0] rq2_w_ptr;

    wire w_clk_en;


    // ============================================
    // Write Enable to Memory
    // ============================================

    assign w_clk_en = W_INC && !FULL;


    // ============================================
    // FIFO WRITE BLOCK
    // ============================================

    FIFO_WR #(
        .DATA_DEPTH(DATA_DEPTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) u_fifo_wr (
        .w_en       (W_INC),
        .w_clk      (W_CLK),
        .wrst_n     (W_RST),

        .wq2_r_ptr  (wq2_r_ptr),

        .w_addr     (w_addr),
        .w_ptr      (w_ptr),
        .w_full     (FULL),
        .w_ptr_gray (w_ptr_gray)
    );


    // ============================================
    // FIFO READ BLOCK
    // ============================================

    FIFO_RD #(
        .DATA_DEPTH(DATA_DEPTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) u_fifo_rd (
        .r_en       (R_INC),
        .r_clk      (R_CLK),
        .rrst_n     (R_RST),

        .rq2_w_ptr  (rq2_w_ptr),

        .r_addr     (r_addr),
        .r_ptr      (r_ptr),
        .r_empty    (EMPTY),
        .gray_r_ptr (r_ptr_gray)
    );


    // ============================================
    // Synchronize Read Pointer -> Write Domain
    // ============================================

    DF_SYNC #(
        .BUS_WIDTH(ADDR_WIDTH + 1)
    ) u_sync_r2w (
        .unsync_bus (r_ptr_gray),
        .clk        (W_CLK),
        .rst_n      (W_RST),
        .sync_bus   (wq2_r_ptr)
    );


    // ============================================
    // Synchronize Write Pointer -> Read Domain
    // ============================================

    DF_SYNC #(
        .BUS_WIDTH(ADDR_WIDTH + 1)
    ) u_sync_w2r (
        .unsync_bus (w_ptr_gray),
        .clk        (R_CLK),
        .rst_n      (R_RST),
        .sync_bus   (rq2_w_ptr)
    );


    // ============================================
    // FIFO MEMORY
    // ============================================

    fifo_memory #(
        .DATA_WIDTH (DATA_WIDTH),
        .DATA_DEPTH (DATA_DEPTH),
        .ADDR_WIDTH (ADDR_WIDTH)
    ) u_fifo_memory (
        .w_data   (WR_DATA),
        .w_addr   (w_addr),
        .r_addr   (r_addr),
        .w_clk_en (w_clk_en),
        .w_clk    (W_CLK),
        .rst      (W_RST),

        .r_data   (RD_DATA)
    );

endmodule