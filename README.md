# Scout SOTA Starter — v3.3

> **Send this one line to your teammate:**
> ```
> curl -fsSL https://raw.githubusercontent.com/jcdavis131/hatch-sota-starter/main/scripts/install.sh | bash
> ```
> 30 seconds later they're SOTA.

## For Teammates — You're 30s from SOTA

1. Run that one line above in terminal
2. Open your new agent runtime, paste this prompt:

Open `FULL_HARNESS_PROMPT.md` and paste it all — that's Scout's brain. Copy from here:
https://raw.githubusercontent.com/jcdavis131/hatch-sota-starter/main/FULL_HARNESS_PROMPT.md

3. Say `acne resolve "my designer"` — if it says Alex Rivera, you're live.

Done. You now have:
- 13 agents that actually talk to each other (not 13 copies of same chat)
- Memory that learns "my X is Y" once and works everywhere
- 9 thinking lenses that kick in when you're stuck
- Cheap cache so second run costs almost nothing

## What's "Smarter" Mean Here?

Normal agent: one agent, asks you "who is who?" every time, re-reads everything.

This: scout-prime figures out what kind of problem it is, picks the right 2-3 agents, they run a tiny DAG, critic scores it, checkpoint saves it so you can pause days and resume. And when you say "my designer is Alex" it remembers forever in `~/workspace/bundles/memory/contacts_harness/` — all harnesses point there.

See `bundle-diagram.md` if you like pictures, or just trust the 30s install.

---
Full docs & system map in `FULL_HARNESS_PROMPT.md` — MIT 2026 Cameron + Scout
