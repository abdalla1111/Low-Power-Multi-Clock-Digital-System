#!/usr/bin/env bash
set -euo pipefail
repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$repo_root"
mkdir -p build/rtl
iverilog -g2012 -s system_tb -o build/rtl/system_tb -c rtl/files.f verification/rtl/system_tb.v
vvp build/rtl/system_tb | tee build/rtl/transcript.log
grep -q 'TOTAL=28 | PASS=28 | FAIL=0' build/rtl/transcript.log
