# Physical implementation

The archived result is from **Cadence First Encounter 08.10-p004_1**. Matching technology libraries, LEFs, and capacitance tables must be supplied locally.

## Files

- `results/`: final functional and power/ground netlists, SDF, SPF, and SDC.
- `reports/`: selected post-route timing, power, geometry, connectivity, and antenna results.
- `floorplan/`: original design floorplan and placement file.
- `scripts/`: original phase recipes with normalized paths, a CTS specification, and the design-specific macro-interface LEF.

## Reproduction sequence

1. Set the technology environment variables in [RUNNING.md](../docs/RUNNING.md).
2. Run `encounter -init pnr/run.tcl` from the repository root. It creates `build/pnr`, copies the working scripts/imports, imports the DFT netlist, and creates the floorplan.
3. Complete power planning and review pin placement in the GUI. The original run included interactive power-grid edits; inspect the saved floorplan as a reference.
4. Source `placement.tcl`, check pre-CTS timing, and review setup/hold and design-rule constraints.
5. Source `cts.tcl`, inspect clock-tree reports, and perform the required post-CTS hold optimization.
6. Review `routing.tcl` before sourcing it. The submitted recipe selects ECO routing, which assumes existing routing; select the full-routing branch for a fresh implementation.
7. Source `chip_finish.tcl`, rerun timing/physical checks, and source `outputs_gen.tcl` to export the result.

Use the supplied phase scripts as the recorded flow recipe. Tool-version changes and local technology setup can require adjustments. In particular, the archived setup report contains max-capacitance/max-transition DRVs and the geometry report used `-noMinArea`; review [RESULTS.md](../docs/RESULTS.md) before treating these checks as signoff.
