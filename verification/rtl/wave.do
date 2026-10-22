view wave
catch {delete wave *}

add wave -divider {TEST - status: 0 running / 1 PASS / 2 FAIL}
add wave -radix unsigned sim:/system_tb/test_id
add wave -radix ascii sim:/system_tb/test_name
add wave -radix unsigned sim:/system_tb/status
add wave -radix hexadecimal sim:/system_tb/expected sim:/system_tb/actual
add wave -radix unsigned sim:/system_tb/passed sim:/system_tb/failed

add wave -divider {ACTUAL PRESCALE AND RX CLOCK}
add wave -radix unsigned sim:/system_tb/prescale
add wave sim:/system_tb/changing_prescale
catch {add wave -radix hexadecimal sim:/system_tb/dut/Reg_file_U0/REG2}
catch {add wave -radix unsigned sim:/system_tb/dut/DIV_RATIO_RX}
catch {add wave sim:/system_tb/dut/rx_clk sim:/system_tb/dut/tx_clk}

add wave -divider {UART}
add wave sim:/system_tb/RST sim:/system_tb/RX_IN sim:/system_tb/TX_OUT
add wave sim:/system_tb/parity_error sim:/system_tb/framing_error
add wave -radix hexadecimal sim:/system_tb/reply
add wave -radix unsigned sim:/system_tb/byte_count

add wave -divider {REGISTER FILE AND ALU}
foreach signal {address wr_data rd_data op_A op_B alu_fun alu_out} {
    catch {add wave -radix hexadecimal sim:/system_tb/dut/$signal}
}
foreach signal {we_en rd_en alu_en alu_out_valid gate_en} {
    catch {add wave sim:/system_tb/dut/$signal}
}
add wave -divider {FIFO}
foreach signal {wr_inc wr_data_fifo rd_inc rd_data_fifo fifo_empty fifo_full tx_busy} {
    catch {add wave -radix hexadecimal sim:/system_tb/dut/$signal}
}
configure wave -namecolwidth 240
configure wave -valuecolwidth 140
configure wave -timelineunits us
wave zoom range 0us 1500us
