
view wave
catch {delete wave *}

# ==================== TEST ====================
add wave -divider {TEST}
add wave -radix ascii sim:/system_tb/test_name
add wave -radix unsigned sim:/system_tb/status
add wave -radix hexadecimal sim:/system_tb/expected
add wave -radix hexadecimal sim:/system_tb/actual

# ==================== UART RX ====================
add wave -divider {UART RX}
add wave sim:/system_tb/RX_IN
add wave -radix unsigned -label data_valid sim:/system_tb/dut/rx_data_valid
add wave -radix hexadecimal -label p_data sim:/system_tb/dut/rx_data_sync

# ==================== REG FILE ====================
add wave -divider {REG FILE}
add wave -label WrEn sim:/system_tb/dut/we_en
add wave -radix hexadecimal -label Address sim:/system_tb/dut/address
add wave -radix hexadecimal -label Wrdata sim:/system_tb/dut/wr_data

catch {add wave -radix binary -label REG0 sim:/system_tb/dut/Reg_file_U0/REG0}
catch {add wave -radix binary -label REG1 sim:/system_tb/dut/Reg_file_U0/REG1}
catch {add wave -radix binary -label REG2 sim:/system_tb/dut/Reg_file_U0/REG2}
catch {add wave -radix binary -label REG3 sim:/system_tb/dut/Reg_file_U0/REG3}

# ==================== UART TX ====================
add wave -divider {UART TX}
add wave sim:/system_tb/TX_OUT

# ==================== CONFIG ====================
add wave -divider {CONFIG}
add wave -radix unsigned -label prescale sim:/system_tb/current_prescale

catch {
    add wave -radix hexadecimal -label {reg_file[4]} sim:/system_tb/dut/Reg_file_U0/reg_file[4]
}

# ==================== DISPLAY ====================
configure wave -namecolwidth 240
configure wave -valuecolwidth 140
configure wave -timelineunits us

wave zoom full

