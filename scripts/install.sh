#!/usr/bin/env bash
set -e
# Scout v3.3 SOTA — One-line installer
# Usage: curl -fsSL https://raw.githubusercontent.com/jcdavis131/hatch-sota-starter/main/scripts/install.sh | bash

echo "🐱✨ Scout v3.3 SOTA — installing..."

# 1. Bundles
mkdir -p ~/workspace/bundles
if [ -d "./bundles-template" ]; then
  cp -r ./bundles-template/* ~/workspace/bundles/ 2>/dev/null || true
else
  # Curl remote template if run via curl
  TMP=$(mktemp -d)
  git clone -q https://github.com/jcdavis131/hatch-sota-starter $TMP/repo
  cp -r $TMP/repo/bundles-template/* ~/workspace/bundles/
  rm -rf $TMP
fi

# 2. People memory (ACNE)
if [ ! -d ~/workspace/acne ]; then
  git clone -q https://github.com/jcdavis131/acne ~/workspace/acne
fi
cd ~/workspace/acne
pip install -q -e . || pip3 install -q -e .
python3 -m pip list | grep -q acne && echo "✓ ACNE installed"

# 3. Thinking lenses
mkdir -p ~/workspace/bundles/skills
for s in lateral analogy concept-fan inversion provocation random-stimulus scamper six-hats worst-idea; do
  if [ ! -f ~/workspace/bundles/skills/$s.md ]; then
    curl -fsSL https://raw.githubusercontent.com/danium/lateral-thinking/main/skills/$s/SKILL.md -o ~/workspace/bundles/skills/$s.md 2>/dev/null || echo "# $s — fetch manually" > ~/workspace/bundles/skills/$s.md
  fi
done

# 4. Demo seed so resolver works immediately
if command -v acne >/dev/null 2>&1; then
  acne add --name "Alex Rivera" --trigger "my designer" --role designer --confidence 0.88 2>/dev/null || true
fi

echo ""
echo "✅ Done! You now have:"
echo "   - 13 agents (scout-prime coordinator)"
echo "   - 11 skill packs + 9 lateral lenses"
echo "   - People memory that learns 'my designer'"
echo ""
echo "Next: Open your Hatch agent and paste the full prompt from:"
echo "  https://github.com/jcdavis131/hatch-sota-starter/blob/main/FULL_HARNESS_PROMPT.md"
echo ""
echo "🐱 Scout is ready."
