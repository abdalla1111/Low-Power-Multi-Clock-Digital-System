`timescale 1ns/1ps
module system_tb;
    parameter PAUSE_AFTER_TEST = 0;
    localparam real BIT_TIME = 8680.55552; // 115200 baud
    reg REF_CLK, UART_CLK, RST, RX_IN;
    wire TX_OUT, parity_error, framing_error;
    system_top dut (.REF_CLK(REF_CLK), .UART_CLK(UART_CLK), .RST(RST),
        .RX_IN(RX_IN), .TX_OUT(TX_OUT), .parity_error(parity_error),
        .framing_error(framing_error));
    always #5 REF_CLK = ~REF_CLK;
    always #135.63368 UART_CLK = ~UART_CLK;

    // These signals appear at the top of the Wave window.
    integer test_id, passed, failed;
    reg [8*40-1:0] test_name;
    reg [15:0] expected, actual;
    reg [1:0] status; // 0=running, 1=PASS, 2=FAIL
    wire [5:0] prescale = dut.Reg_file_U0.REG2[7:2];
    reg changing_prescale;

    // Independent TX receiver: keeps listening while commands are sent.
    // Only two bytes are needed for an ALU result; no buffer array.
    reg [15:0] reply;
    reg [7:0] rx_byte;
    integer byte_count, bit_no;
    reg frame_error, rx_error, receiving;
    always @(posedge REF_CLK)
        if (RST && (parity_error === 1'b1 || framing_error === 1'b1))
            rx_error = 1;

    always @(negedge TX_OUT) begin
        if (RST) begin
            receiving = 1;
            #(BIT_TIME/2.0);
            if (TX_OUT !== 0) frame_error = 1; // middle of start bit
            for (bit_no=0; bit_no<8; bit_no=bit_no+1) begin
                #(BIT_TIME);
                rx_byte[bit_no] = TX_OUT;
            end
            #(BIT_TIME); // even parity
            if ((^rx_byte) === 1'bx || TX_OUT !== (^rx_byte)) frame_error = 1;
            #(BIT_TIME); // stop bit
            if (TX_OUT !== 1'b1) frame_error = 1;
            if (byte_count==0) reply[7:0] = rx_byte;
            if (byte_count==1) reply[15:8] = rx_byte;
            byte_count = byte_count+1;
            receiving = 0;
            $display("    TX byte = %02h",rx_byte);
        end
    end

    // 1. Send one UART byte: start, data LSB first, even parity, stop.
    task send_byte;
        input [7:0] data;
        integer i;
        begin
            RX_IN=0; #(BIT_TIME);
            for (i=0; i<8; i=i+1) begin
                RX_IN=data[i]; #(BIT_TIME);
            end
            RX_IN=^data; #(BIT_TIME);
            RX_IN=1; #(2.0*BIT_TIME); // stop + one idle bit
        end
    endtask

    // 2. One task for the four commands.
    // AA: x=address, y=data. BB: x=address.
    // CC: x=A, y=B, fun=operation. DD: fun=operation.
    task test;
        input [8*40-1:0] name;
        input [7:0] command, x, y;
        input [3:0] fun;
        input [15:0] answer;
        integer wanted;
        begin
            test_id=test_id+1; test_name=name; status=0;
            expected=answer; actual=16'hxxxx;
            reply=0; byte_count=0; frame_error=0; rx_error=0;
            $display("\nTEST %0d | PRESCALE=%0d | %0s",test_id,prescale,name);
            send_byte(command);
            case (command)
                8'hAA: begin send_byte(x); send_byte(y); wanted=0; end
                8'hBB: begin send_byte(x); wanted=1; end
                8'hCC: begin
                    send_byte(x); send_byte(y); send_byte({4'b0,fun}); wanted=2;
                end
                8'hDD: begin send_byte({4'b0,fun}); wanted=2; end
            endcase
            // Fixed, bounded wait: enough for two frames and TX idle cycles.
            // Missing replies fail the byte-count check; no infinite waits.
            #(35.0*BIT_TIME);
            if (command==8'hAA)
                actual={8'b0,dut.Reg_file_U0.reg_file[x]};
            else
                actual=reply;
            if (actual===expected && byte_count==wanted &&
                !frame_error && !rx_error && !receiving) begin
                passed=passed+1; status=1;
                $display("PASS | EXPECTED=%04h ACTUAL=%04h",expected,actual);
            end else begin
                failed=failed+1; status=2;
                $display("FAIL | EXPECTED=%04h ACTUAL=%04h",expected,actual);
                $display("Bytes=%0d expected=%0d frame_error=%b rx_error=%b receiving=%b",
                         byte_count,wanted,frame_error,rx_error,receiving);
            end
            #(2.0*BIT_TIME); // leave PASS/FAIL visible before next case
            if (PAUSE_AFTER_TEST) $stop;
        end
    endtask

    // 3. Change REG2 using a real UART WRITE. Not counted as a test.
    // Config: {prescale[5:0], odd=0, parity_enable=1}.
    task set_prescale;
        input [5:0] value;
        begin
            changing_prescale=1; test_name="CHANGE PRESCALE"; status=0;
            byte_count=0; frame_error=0; rx_error=0;
            $display("\n===== CHANGE PRESCALE: %0d -> %0d =====",prescale,value);
            send_byte(8'hAA); send_byte(8'h02); send_byte({value,2'b01});
            #(35.0*BIT_TIME);
            if (dut.Reg_file_U0.REG2 !== {value,2'b01} ||
                byte_count!=0 || receiving || frame_error || rx_error) begin
                $display("SETUP FAIL: REG2=%02h, requested prescale=%0d",
                         dut.Reg_file_U0.REG2,value);
                $display("ABORTED after %0d tests: PASS=%0d FAIL=%0d",test_id,passed,failed);
                $finish;
            end
            $display("===== ACTUAL PRESCALE=%0d | REG2=%02h =====\n",
                     prescale,dut.Reg_file_U0.REG2);
            changing_prescale=0;
        end
    endtask

    initial begin
        REF_CLK=0; UART_CLK=0; RST=0; RX_IN=1;
        test_id=0; passed=0; failed=0; status=0; test_name="RESET";
        reply=0; byte_count=0; frame_error=0; rx_error=0; receiving=0;
        changing_prescale=0; expected=0; actual=0;
        repeat (10) @(negedge UART_CLK);
        RST=1; #(4.0*BIT_TIME);
        $display("\nSIMPLE_28_V2 | 28 TESTS | PRESCALE 32 -> 16 -> 8");
        if (dut.Reg_file_U0.REG2 !== 8'h81 || dut.Reg_file_U0.REG3 !== 8'h20) begin
            $display("SETUP FAIL: expected reset REG2=81 and REG3=20");
            $finish;
        end

        //                       NAME                  CMD   X   Y  FUN EXPECTED
        // Prescale 32: five WRITE, five READ, five DD, five CC.
        test("01 Write REG4",                         8'hAA, 4, 10, 0, 10);
        test("02 Write REG5",                         8'hAA, 5,255, 0,255);
        test("03 Write REG15",                        8'hAA,15, 85, 0, 85);
        test("04 Write operand A=9",                  8'hAA, 0,  9, 0,  9);
        test("05 Write operand B=3",                  8'hAA, 1,  3, 0,  3);
        test("06 Read REG4",                          8'hBB, 4,  0, 0, 10);
        test("07 Read REG5",                          8'hBB, 5,  0, 0,255);
        test("08 Read REG15",                         8'hBB,15,  0, 0, 85);
        test("09 Read operand A",                     8'hBB, 0,  0, 0,  9);
        test("10 Read operand B",                     8'hBB, 1,  0, 0,  3);
        test("11 DD: 9+3",                            8'hDD, 0,  0, 0, 12);
        test("12 DD: 9-3",                            8'hDD, 0,  0, 1,  6);
        test("13 DD: 9*3",                            8'hDD, 0,  0, 2, 27);
        test("14 DD: 9/3",                            8'hDD, 0,  0, 3,  3);
        test("15 DD: 9 AND 3",                        8'hDD, 0,  0, 4,  1);
        test("16 CC: 200+100",                        8'hCC,200,100,0,300);
        test("17 CC: 20-7",                           8'hCC,20,  7, 1, 13);
        test("18 CC: 20*20",                          8'hCC,20, 20, 2,400);
        test("19 CC: 100/4",                          8'hCC,100, 4, 3, 25);
        test("20 CC: F0 AND 3C",                      8'hCC,8'hF0,8'h3C,4,48);

        set_prescale(16);
        test("21 PS16: Write REG4=A5",                8'hAA, 4,165, 0,165);
        test("22 PS16: Read REG4",                    8'hBB, 4,  0, 0,165);
        test("23 PS16: CC 20==20",                    8'hCC,20, 20,4'hA,1);
        test("24 PS16: DD 20>>1",                     8'hDD, 0,  0,4'hD,10);

        set_prescale(8);
        test("25 PS8: Write REG15=5A",                8'hAA,15, 90, 0, 90);
        test("26 PS8: Read REG15",                    8'hBB,15,  0, 0, 90);
        test("27 PS8: CC 128<<1",                     8'hCC,128, 1,4'hE,256);
        test("28 PS8: DD 128>1",                      8'hDD, 0,  0,4'hB,2);

        $display("\nTOTAL=%0d | PASS=%0d | FAIL=%0d",test_id,passed,failed);
        if (passed==28 && failed==0) $display("ALL 28 TESTS PASSED");
        else $display("TESTS FAILED");
        $finish;
    end
endmodule
