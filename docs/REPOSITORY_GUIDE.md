# File selection and provenance

This repository was assembled from four project submissions:

1. Functional design, integration, and verification RAR.
2. Backend ZIP containing synthesis, DFT, and Formality work.
3. Physical implementation ZIP.
4. GLS and power-analysis ZIP.

The aim is to retain the files needed to understand the design, inspect its evidence, and reproduce the relevant stages with suitable tools and technology inputs.

## Retained

- RTL modules and the distinct functional/DFT-ready integration variants.
- Original self-checking functional and GLS testbenches and wave configurations.
- Adapted launch scripts, implementation recipes, timing/CDC constraints, and supplied waiver files.
- A single copy of the matching final PnR netlist, power/ground netlist, SDF, SPF, and SDC.
- Selected synthesis/DFT/formal/physical/power reports, plus diagnostic logs needed to interpret the headline results.
- Functional verification PDF.
- Design-specific floorplan and macro-interface LEF; these are separate from external foundry cell/technology LEFs.

## Excluded

- Compiled simulator `work/` libraries and waveform databases.
- Synopsys working databases, analysis-library caches, Formality workspaces, session locks, and stale SVFs.
- Encounter session databases, routing caches, backup files, and duplicated intermediate reports.
- Large VCD/FSDB activity dumps that can be regenerated.
- External standard-cell `.db`, `.lib`, cell Verilog, technology LEF, and capacitance-table libraries.
- Duplicate exports of the same final implementation.
- Diploma brochures and personal certificate files, which are separate from the engineering project.

## What was adapted

- Source directories containing spaces were normalized to `UART_RX` / `UART_TX`, with explicit file lists.
- Separate functional and DFT-ready top/clock-gate selections avoid duplicate module definitions.
- EDA scripts use repository-relative inputs and environment-configurable technology paths.
- Launch scripts put new generated outputs in `build/` instead of overwriting archived results.
- Synthesis/DFT scripts close SVF guidance after writing outputs.
- Formality scripts accept optional regenerated SVF guidance; the post-PnR script uses the declared `system_top` name for functional constants/exclusions.
- The GLS launcher preserves maximum-delay annotation and does not carry forward the original `-sdfnoerror` suppression.

These portability edits are not evidence of a fresh commercial-tool run. Original report and export bytes were preserved, including their diagnostic messages.

## Source map

[`SOURCE_MAP.csv`](SOURCE_MAP.csv) records the selected source path, its SHA-256, the repository path, the repository SHA-256, and whether a file was adapted. New documentation and launchers have no source-copy row. Use the source and destination hashes to distinguish exact archived evidence from adapted scripts.
