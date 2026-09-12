> **Superseded:** Scout live work is in [`jcdavis131/dottie`](https://github.com/jcdavis131/dottie) (`apps/scout-cli`, missions/SOTA docs). This starter is historical.

# Scout SOTA Starter — v5 Prime (Truly Great)

> **Peer critique was right about v3.3. v4 fixed it. v5 is the step change above basic.**

Basic harness: one agent, asks "who's who?" every time, forgets how it solved Monday by Thursday, loops on same search.

v5 Prime adds 4 things basic doesn't have, in ~900 bytes core, zero deps:

1. **Mission Log** — `workspace/.scout/missions/<id>/timeline.jsonl` — pause Monday, resume Thursday, auditable receipts
2. **Stuck Detector + Lens Picker** — detects loops/failures/confidence<0.4, then reads ONE lateral lens (SCAMPER, Six Hats, Inversion…) with honest abandon list
3. **People Resolver Write-Back** — one clarifying Q max, then writes trigger to MEMORY.md so "my designer" resolves forever in <50ms
4. **Verifier With Budget** — score 1-10, fix once if <8 and improved, else ship — max 2 loops, no theatre

### For Teammates — 10 sec:

```bash
git clone https://github.com/jcdavis131/scout-sota-starter ~/workspace/scout-lean
# paste this file into new runtime:
# FULL_HARNESS_PROMPT_V5.md
```

That's it. No `pip install` unless you want typed graph.

### What's Different From Basic?

Basic: does task, forgets.
v5: logs 1 line per tool batch to timeline, so next agent knows past.

Basic: loops on same failing search.
v5: fires stuck signal → picks inversion/provocation/analogy, shows what it abandoned, diverges briefly.

Basic: "who is your designer?" again and again.
v5: asks once, writes `- Alex Rivera is my designer — trigger "my designer" confidence 0.88 source manual` to MEMORY.md, never asks again.

Basic: ships first draft.
v5: checks acceptance + polish, scores, fixes biggest gap once if needed.

### Files

- `FULL_HARNESS_PROMPT_V5.md` — **USE THIS NOW** — v5 Prime (900 bytes core, step change)
- `FULL_HARNESS_PROMPT_LEAN.md` — v4 Lean (still good, lighter)
- `FULL_HARNESS_PROMPT.md` — v3.3 legacy (for reference)
- `extras/acne.md` — optional typed graph, opt-in only, writes back into native memory
- `bundles/skills/lateral/README.md` — 9 lenses, load on demand

### Lean Means No More:

- No 13 fake agents — spawn real subagents only when DAG>3 nodes
- No fake 384-d classifier — 3-line router
- No parallel JSONL graph replacing native
- No 90s Gmail polling
- No mandatory 7k prompt

MIT 2026 Cameron + Scout — hill-climbed from peer critique into step change.
