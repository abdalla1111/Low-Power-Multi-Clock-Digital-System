# Setup and run instructions

Run commands from the repository root unless a section states otherwise. New outputs go under the ignored `build/` directory. Archived results remain under each stage's `reports/` and `results/` directories.

## Functional RTL

The functional top uses behavioral clock gating, so no vendor models are required.

```bash
bash verification/rtl/run_iverilog.sh
```

Required executables: `iverilog` and `vvp`. The script returns an error if the expected `TOTAL=28 | PASS=28 | FAIL=0` summary is absent.

With ModelSim/Questa:

```bash
NO_GUI=1 vsim -c -do verification/rtl/run.do
# Or open the original wave setup interactively:
vsim -do verification/rtl/run.do
```

## Source variants

| File list | Top | Clock gate | Purpose |
|---|---|---|---|
| `rtl/files.f` | `rtl/System_Top/System_Top.v` | Behavioral latch/AND | Original functional simulation and SpyGlass inputs |
| `rtl/files_dft.f` | `rtl/dft/System_Top.v` | `TLATNCAX12M` cell | Scan-ready implementation flow |

The second list needs the matching cell definition/library. Both tops define module `system_top`; compile one list, not both. Common subblocks are shared. The DFT-ready top was copied from the final GLS RTL snapshot; its commented-out duplicate functional top was removed.

## External technology inputs

Configure these paths for your local installation. The names below match the original flow; directory paths are examples.

```bash
export LIB_DB_DIR=/path/to/std_cells
export LIB_LIB_DIR=/path/to/std_cells/libs
export CELL_VERILOG=/path/to/std_cells/tsmc13_m.v
export TECH_LEF=/path/to/std_cells/lef/tsmc13fsg_7lm_tech.lef
export MACRO_LEF=/path/to/std_cells/lef/tsmc13_m_macros.lef
export CAP_TABLE=/path/to/std_cells/captables/tsmc13fsg.capTbl
```

`LIB_DB_DIR` must contain the SS/TT/FF `scmetro_tsmc_cl013g_rvt_*.db` libraries referenced by [`config/paths.tcl`](../config/paths.tcl). `LIB_LIB_DIR` must contain the corresponding `.lib` files. Use technology files compatible with the checked-in netlist, LEFs, and SDF.

Tool licenses and local technology installations are required for the commercial flow. They are not included in this repository.

## Synthesis and DFT

```bash
bash synthesis/run.sh
bash dft/run.sh
```

Both launch Design Compiler in stage-specific build directories. The scripts retain the submitted constraints and compilation recipes, use `rtl/files_dft.f`, and close the SVF after writing results. Review the operating-condition diagnostics described in [RESULTS.md](RESULTS.md).

The new outputs are under `build/synthesis/results` and `build/dft/results`. Downstream reference scripts default to **checked-in historical netlists**. To evaluate a new implementation, update the downstream input paths to your new outputs and regenerate the corresponding constraints, PnR result, SDF, and formal proofs consistently.

## Formality

```bash
bash formality/run.sh post-syn
bash formality/run.sh post-dft
bash formality/run.sh post-pnr
```

These scripts use the checked-in synthesis, DFT, and PnR netlists. When valid guidance is available, set `SVF_FILE` to its absolute path before running the corresponding phase. Machine-local original SVFs were not retained; the historical logs include invalid-SVF diagnostics.

The post-synthesis and post-DFT scripts compare against the scan-ready RTL list, following the supplied reference setup. Reconfirm reference models, constants, compare-point exclusions, and diagnostics for your installed version.

## Physical implementation

```bash
encounter -init pnr/run.tcl
```

This initializes the design and floorplan using the configured technology inputs. Continue with the phase recipes documented in [`pnr/README.md`](../pnr/README.md). The original flow contains interactive floorplan/power-grid edits, so this is an interactive reproduction guide, not a certified unattended build of the archived layout.

## Post-PnR GLS

```bash
NO_GUI=1 vsim -c -do verification/gls/run.do
```

This compiles the matching external standard-cell Verilog model, the final mapped netlist, and the original four-test GLS bench. The run uses the final SDF at maximum delays and ties scan/test inputs to functional mode.

Inspect the complete simulator output, not just the scoreboard. The archived run has a passing functional scoreboard and timing-check diagnostics. The new launcher does not suppress SDF errors.

The original testbench requests a VCD at `build/gls/VCD/Final_System.vcd`. Check that your simulator creates the dump; use its VCD commands if needed.

## Time-based power

After generating the activity file:

```bash
pt_shell -f power/scripts/PT.tcl
```

Override `VCD_FILE` with an absolute path if you use a different activity dump. The script strips `system_tb/dut`, reads the archived PnR netlist/SDF/SDC, and uses the SS library as in the original submission. New reports are written to `build/power/reports/`.

## Lint and CDC

```bash
spyglass -project lint_cdc/project.prj
```

The project lists the canonical functional RTL paths and the original prescale-32 SGDC. Supplied waivers are retained for reference; they include original hierarchy/source locations and must be reviewed before application in a relocated project. The repository project does not automatically apply them. Original report snapshots remain under `lint_cdc/reports/`.
