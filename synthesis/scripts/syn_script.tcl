# Adapted paths/file list for this repository; archived reports predate these edits.
source [file join [file dirname [info script]] ../../config/paths.tcl]
########################### Define Top Module ############################
                                                   
set top_module system_top

##################### Define Working Library Directory ######################
                                                   
define_design_lib WORK -path ./work

######################## Output Directories Setup ############################

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

# Add the path of the libraries to the search_path variable
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

#################### Linking All The Design Parts #########################

puts "###############################################"
puts "######## Linking All The Design Parts #########"
puts "###############################################"

link

#################### Checking Design Consistency ###########################

puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design > $REPORTS_DIR/check_design.rpt

#################### Define Design Constraints ############################

puts "###############################################"
puts "############ Design Constraints ###############"
puts "###############################################"

source -echo [file join $REPO_ROOT synthesis scripts cons.tcl]

###################### Mapping and Optimization ############################

puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile

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
