#!/usr/bin/env bash
set -euo pipefail
echo "Scout v3.3 SOTA init"
mkdir -p ~/workspace/bundles
cp -r bundles-template/* ~/workspace/bundles/ 2>/dev/null || cp -r ./bundles-template ~/workspace/bundles
echo "Done: ~/workspace/bundles ready - 13 agents, 11 packs"
echo "Next: pip install -e ~/workspace/acne && paste FULL_HARNESS_PROMPT.md into new agent runtime"
