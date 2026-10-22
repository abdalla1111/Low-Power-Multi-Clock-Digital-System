# Start with: encounter -init pnr/run.tcl (from the repository root).
source [file join [file dirname [info script]] ../config/paths.tcl]
foreach name {TECH_LEF MACRO_LEF CAP_TABLE} {
    if {![info exists ::env($name)]} {error "Set $name to your local technology file"}
    set $name $::env($name)
}
set stage [file join $REPO_ROOT build pnr]
file mkdir $stage
foreach dir {export report clock_report timingReports} {file mkdir [file join $stage $dir]}
file copy -force [file join $REPO_ROOT pnr scripts import] $stage
foreach n {floorplan.tcl placement.tcl cts.tcl routing.tcl chip_finish.tcl outputs_gen.tcl des_import.tcl Clock.ctstch} {
    file copy -force [file join $REPO_ROOT pnr scripts $n] $stage
}
cd $stage
source des_import.tcl
source floorplan.tcl
# Complete power planning and pin placement for your installed technology before
# running the remaining phase recipes; see pnr/README.md.
