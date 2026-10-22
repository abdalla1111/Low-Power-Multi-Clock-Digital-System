# Low-Power Configurable Multi-Clock Digital System

**Verilog RTL → Synthesis → DFT → Physical Design → GDSII → Post-Layout Verification**

A UART-controlled digital system designed and verified as the final project of the Digital IC Design Diploma, supervised by **Eng. Ali M. Eltemsah**.

The project implements register-file access and ALU processing across multiple clock domains, with an asynchronous FIFO, clock and reset synchronizers, configurable UART clocks, and ALU clock gating. This repository brings together the RTL, self-checking testbenches, implementation scripts, and selected results from the complete ASIC flow.

**Author:** Abdalla Mohamed Abdelaziz

## System architecture

![System architecture](https://github.com/user-attachments/assets/1cff87b6-d351-487c-9950-965bcd8d2018)

- **UART:** 8-bit data, configurable parity and RX prescale; the supplied tests use 115200 baud and even parity.
- **Register file:** 16 × 8 bits. REG0/REG1 store ALU operands, REG2 configures UART, and REG3 sets the TX clock divider.
- **ALU:** 8-bit operands and a 16-bit result; arithmetic, logic, comparison, and shift operations.
- **CDC:** enable-based RX data synchronization and an 8-entry asynchronous FIFO on the TX path.
- **Clock/reset management:** two-stage reset synchronizers, integer clock dividers, and clock gating for the ALU.
- **DFT-ready top:** test clock/reset selection and five scan input/output ports.

### UART commands

Values below are hexadecimal; operands and addresses occupy one byte each.

| Command | Frame payload | Operation |
|---|---|---|
| `AA` | `AA address data` | Write a register |
| `BB` | `BB address` | Read a register; returns one byte |
| `CC` | `CC operand_A operand_B function` | ALU operation with new operands; returns two bytes |
| `DD` | `DD function` | ALU operation using stored operands; returns two bytes |

ALU replies send the low byte first. For example, addition with `CC C8 64 00` produces `2C 01` (300 decimal).

## Physical implementation

The design was implemented using Cadence First Encounter, covering floorplanning, placement, clock tree synthesis, routing, and GDSII generation. The selected post-route reports and exported netlists, SDF, SPF, and SDC are available in [`pnr/`](pnr/).

<!-- PNR_IMAGE_HERE
Add the PnR layout screenshot here:
1. Open README.md in GitHub's editor.
2. Delete this entire comment block.
3. Drag the PnR screenshot into this position; GitHub will insert its image link.
-->

## Results at a glance

| Stage | Recorded result | Evidence |
|---|---|---|
| Functional RTL | **28/28 tests passed** on Icarus Verilog 12.0 during repository preparation | [Simulation transcript](verification/rtl/reports/iverilog.log) |
| DFT | **99.38% estimated stuck-at test coverage**, 18,013 detected faults | [Coverage summary](dft/reports/coverage_summary.rpt) · [DFT log](dft/reports/dft.log) |
| Post-layout power | **0.442 mW total** for the recorded simulation activity | [Time-based power report](power/reports/final-system_pw.rpt) |
| Formality, post-PnR | **381 passing compare points, 0 failing** | [Verification log](formality/post-pnr/reports/fm.log) |
| Formality, post-synthesis / post-DFT | **376 passing compare points** in each run | [Post-synthesis](formality/post-syn/reports/fm.log) · [Post-DFT](formality/post-dft/reports/fm.log) |
| Post-PnR GLS | **4/4 functional scoreboard tests passed** at UART prescale 32 | [GLS transcript](verification/gls/reports/transcript.log) |
| Post-route setup | **WNS +3.231 ns**, TNS 0, 0 violating paths | [Setup summary](pnr/reports/timing/system_top_postRoute.summary) |
| Post-route hold | **WNS +0.048 ns**, TNS 0, 0 violating paths | [Hold summary](pnr/reports/timing/system_top_postRoute_hold.summary) |
| Physical checks | No violations in the supplied geometry/antenna checks; connectivity check found no problems | [Geometry](pnr/reports/system_top.geom.rpt) · [Antenna](pnr/reports/system_top.antenna.rpt) · [Connectivity](pnr/reports/system_top.conn.rpt) |

These are results from the submitted runs. The logs also contain SVF guidance errors, GLS timing-check messages, and post-route design-rule constraint violations; their scope and interpretation are documented in [Results and run notes](docs/RESULTS.md). They are not a claim of complete signoff.

## Repository map

| Directory | Contents |
|---|---|
| [`rtl/`](rtl/) | Functional RTL, shared blocks, and separate DFT-ready top/clock-gate files |
| [`verification/`](verification/) | Original 28-test functional bench, 4-test GLS bench, run scripts, wave setups, and GLS transcript |
| [`lint_cdc/`](lint_cdc/) | SpyGlass project, SGDC constraints, report snapshots, and supplied waivers |
| [`synthesis/`](synthesis/) | Design Compiler script, constraints, mapped netlist, SDC, and reports |
| [`dft/`](dft/) | Scan insertion script, DFT netlist, SDC, reports, and coverage evidence |
| [`formality/`](formality/) | Post-synthesis, post-DFT, and post-PnR equivalence checks and reports |
| [`pnr/`](pnr/) | Encounter phase scripts, floorplan, final netlists/SDF/SPF/SDC, and selected post-route reports |
| [`power/`](power/) | PrimeTime PX time-based power script and report |
| [`docs/`](docs/) | Functional verification PDF, results, setup instructions, and source provenance |
| [`config/`](config/) | Shared paths for external standard-cell libraries |

## Run the functional simulation

The functional RTL uses a behavioral clock gate and needs no standard-cell library. Run from the repository root with Icarus Verilog installed:

```bash
bash verification/rtl/run_iverilog.sh
```

The existing testbench exercises **28 cases** across prescales **32, 16, and 8**, including register access and ALU commands. It checks received byte counts, parity/framing, and expected data.

For ModelSim/Questa:

```bash
NO_GUI=1 vsim -c -do verification/rtl/run.do
# Interactive wave view:
vsim -do verification/rtl/run.do
```

Compile **one file list at a time**: `rtl/files.f` selects the functional top; `rtl/files_dft.f` selects the scan-ready top and mapped clock gate. Both tops are named `system_top`.

## ASIC flow and post-layout simulation

The recorded flow used Synopsys Design Compiler / DFT Compiler, SpyGlass, Formality, Cadence First Encounter, ModelSim, and PrimeTime PX with a TSMC 130 nm standard-cell library.

Commercial tools and matching technology files are external dependencies. Configure their paths using [Setup and run instructions](docs/RUNNING.md). Generated runs write under `build/`; the checked-in reports and exported results remain separate snapshots.

The submitted functional testbench uses **REF_CLK = 100 MHz**. Synthesis/PnR constraints and the GLS testbench use **REF_CLK = 50 MHz**. UART_CLK is approximately **3.6864 MHz** in both. See [Results and run notes](docs/RESULTS.md) before comparing these runs.

## Project documentation

- [Functional verification report (PDF)](docs/reports/functional_verification.pdf)
- [Results and run notes](docs/RESULTS.md)
- [Setup and run instructions](docs/RUNNING.md)
- [File selection and provenance](docs/REPOSITORY_GUIDE.md)

## Acknowledgments

Thanks to **Eng. Ali M. Eltemsah**, **Mina Ehab**, **Mohamed Abdelsalam**, and **Ayman Mohamed** for their guidance, reviews, and support throughout the diploma.
