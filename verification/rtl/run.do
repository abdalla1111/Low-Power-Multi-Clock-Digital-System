onerror {quit -code 1 -f}
set repo_root [file normalize [file join [file dirname [info script]] ../..]]
set wave_file [file join $repo_root verification rtl wave.do]
set build_dir [file join $repo_root build rtl]
file mkdir $build_dir
cd $build_dir
vlib work
vmap work work
set fh [open [file join $repo_root rtl files.f] r]
foreach line [split [read $fh] "\n"] {
    set line [string trim $line]
    if {$line ne ""} {vlog -sv [file join $repo_root $line]}
}
close $fh
vlog -sv [file join $repo_root verification rtl system_tb.v]
vsim -onfinish stop -voptargs=+acc work.system_tb
if {![info exists ::env(NO_GUI)]} {do $wave_file}
run -all
if {[examine -radix decimal sim:/system_tb/failed] != 0 || [examine -radix decimal sim:/system_tb/passed] != 28} {quit -code 1 -f}
if {[info exists ::env(NO_GUI)]} {quit -code 0 -f}
