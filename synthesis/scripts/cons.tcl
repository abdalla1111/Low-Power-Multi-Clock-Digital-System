
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. #set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

#1. Master Clocks

create_clock -period 20 -name REF_CLK [get_ports REF_CLK]
create_clock -period 271.26736 -name UART_CLK [get_ports UART_CLK]
#2. Generated clocks
create_generated_clock -name alu_clk -master_clock REF_CLK -source [get_ports REF_CLK] -divide_by 1 [get_pins CLK_GATE_U0/GATED_CLK]

create_generated_clock -name tx_clk -master_clock UART_CLK -source [get_ports UART_CLK] -divide_by 32 [get_pins clk_div_U0/o_div_clk]

create_generated_clock -name rx_clk -master_clock UART_CLK -source [get_ports UART_CLK] -divide_by 1 [get_pins clk_div_U1/o_div_clk]

set_clock_groups -asynchronous -group [get_clocks {REF_CLK alu_clk}] -group [get_clocks {UART_CLK tx_clk rx_clk}]


####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################

set_clock_uncertainty -setup 0.2 [all_clocks]
set_clock_uncertainty -hold  0.1 [all_clocks]
set_clock_transition -rise 0.05 [get_clocks {REF_CLK UART_CLK}]
set_clock_transition -fall 0.05 [get_clocks {REF_CLK UART_CLK}]


set_dont_touch_network [get_clocks {REF_CLK UART_CLK alu_clk tx_clk rx_clk}]
set_dont_touch_network [get_ports RST]
####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################
set_input_delay 54.253  -clock rx_clk [get_ports RX_IN]

set_output_delay 1736.111  -clock tx_clk [get_ports TX_OUT]

set_output_delay 54.253  -clock rx_clk [get_ports {parity_error framing_error}]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports {RX_IN}]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################
set_load 0.1 [get_ports {TX_OUT parity_error framing_error}]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################
set_wire_load_model -name "tsmc13_wl10" -library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"


####################################################################################
           #########################################################
                  #### Section 8 : premapped cells ####
           #########################################################
####################################################################################


####################################################################################

