
`timescale 1ns/1ps
module system_tb;
    parameter PAUSE_AFTER_TEST = 0;
    localparam real BIT_TIME = 8680.55552;

    reg REF_CLK, UART_CLK, RST, RX_IN;
    wire TX_OUT, parity_error, framing_error;

    system_top dut (
        .REF_CLK(REF_CLK), .UART_CLK(UART_CLK), .RST(RST),
        .RX_IN(RX_IN), .TX_OUT(TX_OUT),
        .parity_error(parity_error), .framing_error(framing_error),
        .scan_clk(1'b0), .scan_rst(1'b1),
        .test_mode(1'b0), .SE(1'b0),
        .SI(5'b00000), .SO()
    );

    always #10 REF_CLK = ~REF_CLK;
    always #135.63368 UART_CLK = ~UART_CLK;

    integer test_id, passed, failed;
    integer byte_count, bit_no;
    reg [8*40-1:0] test_name;
    reg [15:0] expected, actual, reply;
    reg [7:0] rx_byte;
    reg [1:0] status;
    reg [5:0] current_prescale;
    reg changing_prescale, frame_error, rx_error, receiving;

    
    initial begin
        $dumpfile("VCD/Final_System.vcd");
        $dumpvars(0, system_tb);
    end
    

    always @(posedge REF_CLK)
        if (RST && (parity_error === 1'b1 || framing_error === 1'b1))
            rx_error = 1;

    // Independent UART TX receiver
    always @(negedge TX_OUT) begin
        if (RST) begin
            receiving = 1;
            #(BIT_TIME/2.0);
            if (TX_OUT !== 0) frame_error = 1;
            for (bit_no=0; bit_no<8; bit_no=bit_no+1) begin
                #(BIT_TIME);
                rx_byte[bit_no] = TX_OUT;
            end
            #(BIT_TIME);
            if ((^rx_byte) === 1'bx || TX_OUT !== (^rx_byte))
                frame_error = 1;
            #(BIT_TIME);
            if (TX_OUT !== 1'b1) frame_error = 1;
            if (byte_count==0) reply[7:0] = rx_byte;
            if (byte_count==1) reply[15:8] = rx_byte;
            byte_count = byte_count+1;
            receiving = 0;
            $display("    TX byte = %02h",rx_byte);
        end
    end

    task send_byte;
        input [7:0] data;
        integer i;
        begin
            RX_IN=0; #(BIT_TIME);
            for (i=0; i<8; i=i+1) begin
                RX_IN=data[i]; #(BIT_TIME);
            end
            RX_IN=^data; #(BIT_TIME);
            RX_IN=1; #(2.0*BIT_TIME);
        end
    endtask

    task clear_response;
        begin
            reply=0; byte_count=0;
            frame_error=0; rx_error=0;
        end
    endtask

    task read_register;
        input [7:0] address;
        begin
            clear_response();
            send_byte(8'hBB);
            send_byte(address);
            #(35.0*BIT_TIME);
        end
    endtask

    task test;
        input [8*40-1:0] name;
        input [7:0] command, x, y;
        input [3:0] fun;
        input [15:0] answer;
        integer wanted;
        begin
            test_id=test_id+1; test_name=name; status=0;
            expected=answer; actual=16'hxxxx;
            clear_response();
            $display("\nTEST %0d | PRESCALE=%0d | %0s",
                     test_id,current_prescale,name);

            send_byte(command);
            case (command)
                8'hAA: begin
                    send_byte(x); send_byte(y);
                    #(4.0*BIT_TIME);
                    read_register(x);
                    wanted=1;
                    actual={8'b0,reply[7:0]};
                end
                8'hBB: begin
                    send_byte(x);
                    wanted=1;
                    #(35.0*BIT_TIME);
                    actual={8'b0,reply[7:0]};
                end
                8'hCC: begin
                    send_byte(x); send_byte(y);
                    send_byte({4'b0,fun});
                    wanted=2;
                    #(35.0*BIT_TIME);
                    actual=reply;
                end
                8'hDD: begin
                    send_byte({4'b0,fun});
                    wanted=2;
                    #(35.0*BIT_TIME);
                    actual=reply;
                end
                default: begin wanted=-1; #(35.0*BIT_TIME); end
            endcase

            if (actual===expected && byte_count==wanted &&
                !frame_error && !rx_error && !receiving) begin
                passed=passed+1; status=1;
                $display("PASS | EXPECTED=%04h ACTUAL=%04h",
                         expected,actual);
            end else begin
                failed=failed+1; status=2;
                $display("FAIL | EXPECTED=%04h ACTUAL=%04h",
                         expected,actual);
                $display("Bytes=%0d expected=%0d frame_error=%b rx_error=%b receiving=%b",
                         byte_count,wanted,frame_error,rx_error,receiving);
            end
            #(2.0*BIT_TIME);
            if (PAUSE_AFTER_TEST) $stop;
        end
    endtask

    task set_prescale;
        input [5:0] value;
        begin
            changing_prescale=1;
            test_name="CHANGE PRESCALE"; status=0;
            clear_response();
            $display("\n===== CHANGE PRESCALE: %0d -> %0d =====",
                     current_prescale,value);

            send_byte(8'hAA);
            send_byte(8'h02);
            send_byte({value,2'b01});
            #(35.0*BIT_TIME);
            read_register(8'h02);

            if (reply[7:0] !== {value,2'b01} ||
                byte_count!=1 || receiving || frame_error || rx_error) begin
                $display("SETUP FAIL: REG2=%02h requested=%0d",
                         reply[7:0],value);
                $finish;
            end

            current_prescale=value;
            changing_prescale=0;
            $display("===== PRESCALE=%0d | REG2=%02h =====",
                     current_prescale,reply[7:0]);
            #(2.0*BIT_TIME);
        end
    endtask

    initial begin
        REF_CLK=0; UART_CLK=0; RST=0; RX_IN=1;
        test_id=0; passed=0; failed=0; status=0;
        test_name="RESET"; expected=0; actual=0;
        reply=0; rx_byte=0; byte_count=0; bit_no=0;
        frame_error=0; rx_error=0; receiving=0;
        changing_prescale=0; current_prescale=32;

        repeat (10) @(negedge UART_CLK);
        RST=1; #(4.0*BIT_TIME);
        $display("\nPOST-PNR GLS | 4 TESTS | PRESCALE 32");

        read_register(8'h02);
        if (byte_count!=1 || reply[7:0]!==8'h81 ||
            frame_error || rx_error || receiving) begin
            $display("SETUP FAIL: expected REG2=81");
            $finish;
        end
        read_register(8'h03);
        if (byte_count!=1 || reply[7:0]!==8'h20 ||
            frame_error || rx_error || receiving) begin
            $display("SETUP FAIL: expected REG3=20");
            $finish;
        end

        // Prescale 32
        test("01 Write REG4",       8'hAA,  4, 10,0,10);
    /*  test("02 Write REG5",       8'hAA,  5,255,0,255);
        test("03 Write REG15",      8'hAA, 15, 85,0,85);
        test("04 Write A=9",        8'hAA,  0,  9,0,9);
        test("05 Write B=3",        8'hAA,  1,  3,0,3);
    */  test("06 Read REG4",        8'hBB,  4,  0,0,10);
    /*  test("07 Read REG5",        8'hBB,  5,  0,0,255);
        test("08 Read REG15",       8'hBB, 15,  0,0,85);
        test("09 Read A",           8'hBB,  0,  0,0,9);
        test("10 Read B",           8'hBB,  1,  0,0,3);
        test("11 DD: 9+3",          8'hDD,  0,  0,0,12);
        test("12 DD: 9-3",          8'hDD,  0,  0,1,6);
        test("13 DD: 9*3",          8'hDD,  0,  0,2,27);
        test("14 DD: 9/3",          8'hDD,  0,  0,3,3);
        test("15 DD: 9 AND 3",      8'hDD,  0,  0,4,1);
    */  test("16 CC: 200+100",      8'hCC,200,100,0,300);
    /*  test("17 CC: 20-7",         8'hCC, 20,  7,1,13);
        test("18 CC: 20*20",        8'hCC, 20, 20,2,400);
        test("19 CC: 100/4",        8'hCC,100,  4,3,25);
        test("20 CC: F0 AND 3C",    8'hCC,8'hF0,8'h3C,4,48);
    */

        // Test DD using operands stored by CC
        test("DD: 200+100",        8'hDD,  0,  0,0,300);

        // Prescale 16
    /*  set_prescale(16);
        test("21 PS16: Write A5",   8'hAA,  4,165,0,165);
        test("22 PS16: Read A5",    8'hBB,  4,  0,0,165);
        test("23 PS16: 20==20",     8'hCC, 20, 20,4'hA,1);
        test("24 PS16: 20>>1",      8'hDD,  0,  0,4'hD,10);
    */

        // Prescale 8
    /*  set_prescale(8);
        test("25 PS8: Write 5A",    8'hAA, 15, 90,0,90);
        test("26 PS8: Read 5A",     8'hBB, 15,  0,0,90);
        test("27 PS8: 128<<1",      8'hCC,128,  1,4'hE,256);
        test("28 PS8: 128>1",       8'hDD,  0,  0,4'hB,2);
    */

        $display("\nTOTAL=%0d | PASS=%0d | FAIL=%0d",
                 test_id,passed,failed);
        if (passed==4 && failed==0)
            $display("ALL 4 TESTS PASSED");
        else
            $display("TESTS FAILED");
        $finish;
    end
endmodule

