################################ Variables ####################################

set NUM_SCAN_CHAINS 5
set load_fp 0

################# Define Top Module & Gate Level Netlist ######################
set top_module system_top
set gate_level_netlist "$REPO_ROOT/dft/results/system_top.v"

setUIVar rda_Input ui_topcell $top_module
setUIVar rda_Input ui_netlist $gate_level_netlist	

##################### Define Tech Libraries Timing Views ######################
set FFLIB "$LIB_LIB_DIR/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
set SSLIB "$LIB_LIB_DIR/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
set TTLIB "$LIB_LIB_DIR/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib"

setUIVar rda_Input ui_timelib,min $FFLIB
setUIVar rda_Input ui_timelib,max $SSLIB
setUIVar rda_Input ui_timelib $TTLIB

##################### Define Tech Libraries LEF Views #########################
set TECH_LEF   $TECH_LEF
set MACRO_LEF  $MACRO_LEF
set DESIGN_LEF "$REPO_ROOT/pnr/scripts/import/system_top_5.lef"
if {$load_fp == 0} {
    setUIVar rda_Input ui_leffile [list $TECH_LEF $MACRO_LEF $DESIGN_LEF]
} else {
    setUIVar rda_Input ui_leffile [list $TECH_LEF $MACRO_LEF]
}

######################## Define Capacitance Table #############################
set CAP_TABLE_FILE  $CAP_TABLE

setUIVar rda_Input ui_captbl_file $CAP_TABLE_FILE
                    
######################### Define Constraints File #############################
set SDC_FILE "$REPO_ROOT/dft/results/system_top.sdc"

setUIVar rda_Input ui_timingcon_file $SDC_FILE  

############################# Define PG Pins  #################################
set gnd_net_name VSS
set pwr_net_name VDD

setUIVar rda_Input ui_pwrnet $pwr_net_name
setUIVar rda_Input ui_gndnet $gnd_net_name


commitConfig



################ Define Multi Mode Multi Corner Analysis  #####################

source ./import/MMMC.tcl


