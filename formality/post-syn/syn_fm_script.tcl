# Adapted paths and top-name references; historical fm.log files are unchanged.
source [file join [file dirname [info script]] ../../config/paths.tcl]
########################### Define Top Module ############################

set top_module system_top

######################### Formality Setup File ###########################

set synopsys_auto_setup true

# Optional valid guidance can be supplied after rerunning synthesis/DFT.
if {[info exists ::env(SVF_FILE)]} {set_svf $::env(SVF_FILE)}

######################## Technology Libraries ############################


file mkdir reports

######################### Reference Container ############################

## Read Reference technology libraries
read_db -container r $SSLIB
read_db -container r $TTLIB
read_db -container r $FFLIB

## Read Reference Design Files
set designs [project_rtl files_dft.f]

read_verilog -container r -libname WORK $designs

## set the top Reference Design
set_top r:/WORK/$top_module

######################## Implementation Container #########################

## Read Implementation technology libraries
read_db -container i $SSLIB
read_db -container i $TTLIB
read_db -container i $FFLIB

## Read Implementation Design Files
read_verilog -container i -libname WORK \
    $REPO_ROOT/synthesis/results/$top_module.v

## set the top Implementation Design
set_top i:/WORK/$top_module

######################## Matching / Verification ##########################

match

set successful [verify]

if {!$successful} {
    diagnose
    analyze_points -failing
}

######################## Reports ##########################################

report_passing_points   > reports/passing_points.rpt
report_failing_points   > reports/failing_points.rpt
report_aborted_points   > reports/aborted_points.rpt
report_unverified_points > reports/unverified_points.rpt

# Enable start_gui here for an interactive session.
