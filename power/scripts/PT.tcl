source [file join [file dirname [info script]] ../../config/paths.tcl]

#------------------------------------------------------------------------------
# Power Analysis Setup
#------------------------------------------------------------------------------
set_app_var power_enable_analysis true
set_app_var power_analysis_mode time_based
set power_vcd_time_unit 1ns

set report_dir [file join $REPO_ROOT build power reports]
file mkdir $report_dir

set Out_report final-system_pw

#------------------------------------------------------------------------------
# Libraries
#------------------------------------------------------------------------------
set lib_dir $LIB_DB_DIR

lappend search_path $lib_dir

set SSLIB "$lib_dir/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "$lib_dir/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "$lib_dir/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

# Use SS corner for this analysis
set target_library [list $SSLIB]
set link_library [list * $SSLIB]

#------------------------------------------------------------------------------
# Read Design Files
#------------------------------------------------------------------------------
read_verilog $REPO_ROOT/pnr/results/system_top.v

current_design system_top
link_design

#------------------------------------------------------------------------------
# Read SDF and SDC
#------------------------------------------------------------------------------
# Diagnostic ordering to investigate PTE-015
read_sdf $REPO_ROOT/pnr/results/system_top.sdf

read_sdc $REPO_ROOT/pnr/results/system_top.sdc

#------------------------------------------------------------------------------
# Read Switching Activity
#------------------------------------------------------------------------------
set VCD_FILE [project_env VCD_FILE [file join $REPO_ROOT build gls VCD Final_System.vcd]]

if {![file exists $VCD_FILE]} {
    echo "ERROR: VCD file not found"
    exit
}

read_vcd -strip_path system_tb/dut $VCD_FILE

#------------------------------------------------------------------------------
# Power Analysis
#------------------------------------------------------------------------------
update_power

#------------------------------------------------------------------------------
# Reports
#------------------------------------------------------------------------------
redirect -file "$report_dir/${Out_report}.rpt" {
    report_power
}

echo "----------------------------------------"
echo "PrimeTime PX Analysis Finished"
echo "Reports saved in: $report_dir"
echo "----------------------------------------"

exit

