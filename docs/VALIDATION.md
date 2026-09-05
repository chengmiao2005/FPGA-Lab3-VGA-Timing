# Validation record

Date: 5 September 2026.

## Completed checks

Static SystemVerilog compilation/elaboration with `pyslang 11.0.0`, an explicit top module, and default time scale `1ns/1ps`:

| Top module | Result |
| --- | --- |
| `tb_vga_ctrl` | Passed |
| `vga_pic_tb` | Passed |

The launcher scripts were also checked with `bash -n` where present.

## Scope

This compiles/elaborates the listed Verilog sources. It does not run behavioral simulation or prove output correctness. Existing testbenches remain observational or retain their original assertions. Icarus/Verilator execution, C++/OpenGL builds, FPGA synthesis, and board operation were not run in this environment. Archived FPGA3 integration files are outside the checked source sets.

The README documents dependencies and commands for the next execution check.
