#!/usr/bin/env bash
set -euo pipefail
repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
for tool in iverilog vvp; do
    if ! command -v "$tool" >/dev/null 2>&1; then
        echo "Missing required tool: $tool" >&2
        exit 127
    fi
done
mkdir -p "$repo_dir/build"
cd "$repo_dir/build"
iverilog -g2012 -s tb_vga_ctrl -o vga_ctrl.vvp "$repo_dir/rtl/vga_ctrl.v" "$repo_dir/tb/tb_vga_ctrl.v"
vvp -n vga_ctrl.vvp > vga_ctrl.log
iverilog -g2012 -s vga_pic_tb -o vga_pic.vvp "$repo_dir/rtl/vga_pic.v" "$repo_dir/tb/vga_pic_tb.v"
vvp -n vga_pic.vvp > vga_pic.log
echo "Component simulations finished. Review build/*.log and generated VCD files."
