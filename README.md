# Hatch SOTA Starter — Scout v3.3

One-link clone that turns a good Hatch agent into Scout-class SOTA.

**Cameron -> Team:** Share this link: `https://github.com/jcdavis131/hatch-sota-starter`

## What you get
- 13 agents L0-L4 (scout-prime OODA Ultra, strategist, planner DAG 3-8, deep-researcher, researcher, builder/executor, operator, communicator, critic, forensic-auditor, checkpoint-manager, scout-cli)
- 11 skill packs + 9 lateral-thinking lenses (daniium/lateral-thinking MIT)
- MoMA 5-tier classifier 384-d routing, pacing filter :13, verification economics budget 3 / threshold 8.0 / early-exit 0.3
- Checkpoint timeline.jsonl disk-backed pause/resume
- ACNE TLPG local-first people memory + 5-layer token-cache (81-87% smaller)
- Live hooks: gmail_triage 90s, price_watch 120s, self-improvement 02:13 UTC, 30m heartbeat
- Memory graph 34n/41e seed

## Quick Start (5 min)

```bash
git clone https://github.com/jcdavis131/hatch-sota-starter ~/workspace/bundles-src
cp -r ~/workspace/bundles-src/bundles-template ~/workspace/bundles
cat ~/workspace/bundles-src/FULL_HARNESS_PROMPT.md | pbcopy # or open it

# People memory
cd ~/workspace && git clone https://github.com/jcdavis131/acne acne
cd acne && pip install -e . && pytest -q

# Thinking lenses
mkdir -p ~/workspace/bundles/skills
for s in lateral analogy concept-fan inversion provocation random-stimulus scamper six-hats worst-idea; do
  curl -fsSL https://raw.githubusercontent.com/danium/lateral-thinking/main/skills/$s/SKILL.md -o ~/workspace/bundles/skills/$s.md
done

# Seed triggers
acne add --name "Alex Rivera" --trigger "my designer" --role designer --confidence 0.88
acne resolve "my designer"
```

Then paste the contents of `FULL_HARNESS_PROMPT.md` into your new Hatch agent on first boot.

## Full Prompt
See `FULL_HARNESS_PROMPT.md` (6958 bytes) — that's the master prompt.

## System Map Reference
https://agent.meta.ai/s/scout-harness-v3-3-system-map-so5nxb50aoxnc

MIT 2026 Cameron Davis + Scout
