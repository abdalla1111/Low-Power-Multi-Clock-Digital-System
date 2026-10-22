###################################################################

# Created by write_sdc on Fri Oct 9 09:29:14 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_wire_load_model -name tsmc13_wl10 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports {SI[4]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports {SI[3]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports {SI[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports {SI[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports {SI[0]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports SE]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports RX_IN]
set_load -pin_load 0.1 [get_ports {SO[4]}]
set_load -pin_load 0.1 [get_ports {SO[3]}]
set_load -pin_load 0.1 [get_ports {SO[2]}]
set_load -pin_load 0.1 [get_ports {SO[1]}]
set_load -pin_load 0.1 [get_ports {SO[0]}]
set_load -pin_load 0.1 [get_ports TX_OUT]
set_load -pin_load 0.1 [get_ports parity_error]
set_load -pin_load 0.1 [get_ports framing_error]
create_clock [get_ports REF_CLK]  -period 20  -waveform {0 10}
set_clock_uncertainty -setup 0.2  [get_clocks REF_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks REF_CLK]
set_clock_transition -min -fall 0.05 [get_clocks REF_CLK]
set_clock_transition -max -fall 0.05 [get_clocks REF_CLK]
set_clock_transition -min -rise 0.05 [get_clocks REF_CLK]
set_clock_transition -max -rise 0.05 [get_clocks REF_CLK]
create_clock [get_ports UART_CLK]  -period 271.267  -waveform {0 135.634}
set_clock_uncertainty -setup 0.2  [get_clocks UART_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks UART_CLK]
set_clock_transition -min -fall 0.05 [get_clocks UART_CLK]
set_clock_transition -max -fall 0.05 [get_clocks UART_CLK]
set_clock_transition -min -rise 0.05 [get_clocks UART_CLK]
set_clock_transition -max -rise 0.05 [get_clocks UART_CLK]
create_clock [get_ports scan_clk]  -name SCAN_CLK  -period 100  -waveform {0 50}
set_clock_uncertainty -setup 0.2  [get_clocks SCAN_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks SCAN_CLK]
create_generated_clock [get_pins CLK_GATE_U0/GATED_CLK]  -name alu_clk  -source [get_ports REF_CLK]  -master_clock REF_CLK  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks alu_clk]
set_clock_uncertainty -hold 0.1  [get_clocks alu_clk]
create_generated_clock [get_pins clk_div_U0/o_div_clk]  -name tx_clk  -source [get_ports UART_CLK]  -master_clock UART_CLK  -divide_by 32  -add
set_clock_uncertainty -setup 0.2  [get_clocks tx_clk]
set_clock_uncertainty -hold 0.1  [get_clocks tx_clk]
create_generated_clock [get_pins clk_div_U1/o_div_clk]  -name rx_clk  -source [get_ports UART_CLK]  -master_clock UART_CLK  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks rx_clk]
set_clock_uncertainty -hold 0.1  [get_clocks rx_clk]
set_input_delay -clock rx_clk  54.253  [get_ports RX_IN]
set_input_delay -clock SCAN_CLK  20  [get_ports {SI[4]}]
set_input_delay -clock SCAN_CLK  20  [get_ports {SI[3]}]
set_input_delay -clock SCAN_CLK  20  [get_ports {SI[2]}]
set_input_delay -clock SCAN_CLK  20  [get_ports {SI[1]}]
set_input_delay -clock SCAN_CLK  20  [get_ports {SI[0]}]
set_input_delay -clock SCAN_CLK  20  [get_ports SE]
set_output_delay -clock tx_clk  1736.11  [get_ports TX_OUT]
set_output_delay -clock rx_clk  54.253  [get_ports parity_error]
set_output_delay -clock rx_clk  54.253  [get_ports framing_error]
set_output_delay -clock SCAN_CLK  20  [get_ports {SO[4]}]
set_output_delay -clock SCAN_CLK  20  [get_ports {SO[3]}]
set_output_delay -clock SCAN_CLK  20  [get_ports {SO[2]}]
set_output_delay -clock SCAN_CLK  20  [get_ports {SO[1]}]
set_output_delay -clock SCAN_CLK  20  [get_ports {SO[0]}]
set_clock_groups -asynchronous -name REF_CLK_1 -group [list [get_clocks REF_CLK] [get_clocks alu_clk]] -group [list [get_clocks UART_CLK] [get_clocks tx_clk] [get_clocks rx_clk]] -group [get_clocks SCAN_CLK]


set_case_analysis 1 [get_ports test_mode]
set_case_analysis 1 [get_ports SE]
