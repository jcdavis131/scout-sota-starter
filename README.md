# Scout SOTA Starter — v4 Lean (Hill-Climbed)

> **Peer feedback was right.** The old v3.3 built parallel systems that duplicated what your runtime already does well. This v4 keeps only what adds real value.

### Send your teammate this:
```bash
git clone https://github.com/jcdavis131/scout-sota-starter ~/workspace/scout-lean
# open FULL_HARNESS_PROMPT_LEAN.md and paste it
```

### What's actually in Lean?

**Keeps:**
- OODA + Recovery ladder (retry → patch → replan → escalate) — what good agents already do, now explicit
- Simple router: direct / 1 researcher / coordinator+workers — not a fake 384-d classifier
- 9 lateral thinking lenses (SCAMPER, Six Hats, Inversion, etc.) — the one genuinely new piece worth keeping

**Removes:**
- 13 markdown "agents" that were just prompt templates — use real subagents when you actually need them
- 5-layer token cache theatre — rely on file + memory cache you already have
- Parallel JSONL memory graph that conflicts with native MEMORY.md + people pages + device contacts
- Aggressive 90s Gmail polling — now 15m heartbeat, respectful
- 7k mandatory prompt — now <800 byte core, skills loaded on demand

### Honest Trade

Old: SOTA by infrastructure diagrams.
New: SOTA by staying lean and complementing native system.

If you want the typed graph (ACNE) for "my designer authored Q4" with provenance edges, it's still there as *optional* — it writes back into MEMORY.md, doesn't replace it.

### Files

- `FULL_HARNESS_PROMPT_LEAN.md` — **use this now** (peer-reviewed, lean)
- `FULL_HARNESS_PROMPT.md` — legacy v3.3 full (kept for reference)
- `bundles-template/` — legacy templates, now optional
- `scripts/install.sh` — 30s full install, still works if you want it

MIT 2026 Cameron + Scout — built from real peer critique.
