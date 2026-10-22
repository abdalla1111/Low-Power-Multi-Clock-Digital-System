#!/usr/bin/env bash
set -euo pipefail
repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
phase="${1:-post-pnr}"
case "$phase" in
  post-syn) script=syn_fm_script.tcl ;;
  post-dft) script=dft_fm_script.tcl ;;
  post-pnr) script=pnr_fm_script.tcl ;;
  *) echo "Usage: $0 {post-syn|post-dft|post-pnr}" >&2; exit 2 ;;
esac
mkdir -p "$repo_root/build/formality/$phase"
cd "$repo_root/build/formality/$phase"
fm_shell -f "$repo_root/formality/$phase/$script" | tee run.log
