# CELL_VERILOG must point to the matching external standard-cell model.
onerror {quit -code 1 -f}
set repo_root [file normalize [file join [file dirname [info script]] ../..]]
if {![info exists ::env(CELL_VERILOG)]} {error "Set CELL_VERILOG to the matching tsmc13_m.v model"}
set build_dir [file join $repo_root build gls]
file mkdir [file join $build_dir VCD]
cd $build_dir
vlib work
vmap work work
vlog -sv $::env(CELL_VERILOG)
vlog -sv [file join $repo_root pnr results system_top.v]
vlog -sv [file join $repo_root verification gls system_tb.v]
vsim -onfinish stop -voptargs=+acc -sdfmax /system_tb/dut=[file join $repo_root pnr results system_top.sdf] work.system_tb
if {![info exists ::env(NO_GUI)]} {do [file join $repo_root verification gls wave.do]}
run -all
if {[examine -radix decimal sim:/system_tb/failed] != 0 || [examine -radix decimal sim:/system_tb/passed] != 4} {quit -code 1 -f}
if {[info exists ::env(NO_GUI)]} {quit -code 0 -f}
