# Source this from any EDA shell; set environment paths for your installation.
set REPO_ROOT [file normalize [file join [file dirname [info script]] ..]]
proc project_env {name fallback} {
    if {[info exists ::env($name)] && $::env($name) ne ""} {return $::env($name)}
    return $fallback
}
set LIB_DB_DIR [project_env LIB_DB_DIR [file join $REPO_ROOT local std_cells]]
set LIB_LIB_DIR [project_env LIB_LIB_DIR [file join $REPO_ROOT local std_cells libs]]
set SSLIB [file join $LIB_DB_DIR scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db]
set TTLIB [file join $LIB_DB_DIR scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db]
set FFLIB [file join $LIB_DB_DIR scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db]
proc project_rtl {filelist} {
    set fh [open [file join $::REPO_ROOT rtl $filelist] r]
    set result {}
    foreach line [split [read $fh] "\n"] {
        set line [string trim $line]
        if {$line eq "" || [string match "#*" $line]} {continue}
        lappend result [file join $::REPO_ROOT $line]
    }
    close $fh
    return $result
}
