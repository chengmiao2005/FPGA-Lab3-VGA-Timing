# FPGA Lab 3 — VGA Timing and Pixel Rendering

**Verilog · VGA Timing · RGB565 · Pixel Rendering**

Former repository name: `FPGA3`.

Verilog exercises for 640 × 480 VGA timing, RGB565 output, and coordinate-based text rendering. VGA 时序、像素输出与文字显示实验。

| Path | Contents |
| --- | --- |
| [rtl/vga_ctrl.v](rtl/vga_ctrl.v) | Horizontal/vertical counters, sync signals, and active video output |
| [rtl/vga_pic.v](rtl/vga_pic.v) | Coordinate-based MUST text; directional ports are declared but unused |
| [rtl/ColorBar.v](rtl/ColorBar.v) | Clock divider and component integration example |
| [tb](tb) | Original component and integration testbenches |
| [archive](archive) | Earlier desktop wrapper, simulator, launcher, and vendor PLL source |

## Component simulation

Requires Icarus Verilog. Run from the repository root:

```bash
bash scripts/run_testbenches.sh
```

The script runs the original `tb_vga_ctrl` and `vga_pic_tb` testbenches. Logs and generated traces are written under `build/`. These are waveform demonstrations, not assertion-based functional tests.

## Integration status

The archived `DevelopmentBoard` instantiates `vga_top`, which is absent from the uploaded source. Its C++ wrapper also expects a different board interface. The archived PLL instantiates vendor-specific `altpll`. These files are retained for reference and excluded from the component simulation command.

`ColorBar` leaves the directional inputs of `vga_pic` unconnected; its integration testbench is retained but is not part of the component run script. For a more complete display-state example, see [FPGA Lab 4 — VGA Display State Machine](https://github.com/chengmiao2005/FPGA-Lab4-VGA-State-Machine).

[FPGA lab index](https://github.com/chengmiao2005/FPGA-Labs) · [Original-to-current file map](docs/FILE_MAP.md)

[Validation record](docs/VALIDATION.md)
