#!/usr/bin/env bash
set -euo pipefail
repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
mkdir -p "$repo_root/build/dft/work"
cd "$repo_root/build/dft"
dc_shell -f "$repo_root/dft/scripts/dft_script.tcl" | tee run.log
