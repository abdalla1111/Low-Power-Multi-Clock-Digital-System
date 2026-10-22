# Adapted paths/file list for this repository; archived reports predate these edits.
source [file join [file dirname [info script]] ../../config/paths.tcl]

########################### Define Top Module ############################
                                                   
set top_module system_top

##################### Define Working Library Directory ######################
                                                   
define_design_lib WORK -path ./work

file mkdir results
file mkdir reports

set RESULTS_DIR results
set REPORTS_DIR reports

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
lappend search_path $LIB_DB_DIR


## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format verilog

set designs [project_rtl files_dft.f]

analyze -format $file_format -library WORK $designs
elaborate $top_module -library WORK


###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source [file join $REPO_ROOT dft scripts cons.tcl]

#################### Archirecture Scan Chains #########################
puts "###############################################"
puts "############ Configure scan chains ############"
puts "###############################################"

set_scan_configuration -max_length 100
#set_scan_configuration -chain_count 4

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

#test_ready compile
compile -scan

################################################################### 
# Setting Test Timing Variables
################################################################### 

# Preclock Measure Protocol (default protocol)
set test_default_period 100
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

########################## Define DFT Signals ##########################

set_dft_signal -port [get_ports scan_clk]  -type ScanClock   -view existing_dft -timing {30 60}
set_dft_signal -port [get_ports scan_rst]  -type Reset       -view existing_dft -active_state 0
set_dft_signal -port [get_ports RST]       -type Reset       -view existing_dft -active_state 0
set_dft_signal -port [get_ports test_mode] -type Constant    -view existing_dft -active_state 1
set_dft_signal -port [get_ports test_mode] -type TestMode    -view spec         -active_state 1
set_dft_signal -port [get_ports SE]        -type ScanEnable  -view spec         -active_state 1 -usage scan
set_dft_signal -port [get_ports SI]        -type ScanDataIn  -view spec
set_dft_signal -port [get_ports SO]        -type ScanDataOut -view spec

############################# Create Test Protocol #######################

create_test_protocol

###################### Pre-DFT Design Rule Checking #######################

dft_drc -verbose

############################# Preview DFT ##############################

preview_dft -show scan_summary

############################# Insert DFT ##############################

insert_dft
compile -scan -incremental

###################### Design Rule Checking #######################

dft_drc -verbose -coverage_estimate

#############################################################################
# Write out files
#############################################################################

puts "###############################################"
puts "############ Writing Design Files #############"
puts "###############################################"

write_file -format ddc     -hierarchy -output $RESULTS_DIR/$top_module.ddc
write_file -format verilog -hierarchy -output $RESULTS_DIR/$top_module.v
write_sdf  $RESULTS_DIR/$top_module.sdf
write_sdc  -nosplit $RESULTS_DIR/$top_module.sdc

####################### Reporting ##########################################

puts "###############################################"
puts "################ Writing Reports ##############"
puts "###############################################"

report_area -hierarchy > $REPORTS_DIR/area.rpt
report_power -hierarchy > $REPORTS_DIR/power.rpt
report_timing -delay_type min -max_paths 100 > $REPORTS_DIR/hold.rpt
report_timing -delay_type max -max_paths 100 > $REPORTS_DIR/setup.rpt
report_clock -attributes > $REPORTS_DIR/clocks.rpt
report_constraint -all_violators -nosplit > $REPORTS_DIR/constraints.rpt

################# Starting Graphical User Interface #########################

# gui_start
# exit

# Flush the SVF guidance file before another tool reads it.
set_svf -off
