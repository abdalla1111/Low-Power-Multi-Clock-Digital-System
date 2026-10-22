#!/usr/bin/env bash
set -euo pipefail
repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
mkdir -p "$repo_root/build/synthesis/work"
cd "$repo_root/build/synthesis"
dc_shell -f "$repo_root/synthesis/scripts/syn_script.tcl" | tee run.log
