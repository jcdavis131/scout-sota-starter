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

## v0.3.0 Scout v5 Prime Deep Polish (Lane 2 2026-08-06)

- Spec 1005 lines `docs/SCOUT_V5_PRIME_DEEP_SPEC.md` — 4 real additions complement native runtime, not 13 agents theatre:
  - Mission Log 10 lines code `workspace/.scout/missions/<id>/timeline.jsonl` each line JSON t/agent/action/lat_ms/tokens/status — rotate >500 — you can cat timeline|tail, resume days later, show receipts without re-doing
  - Stuck Detector triggers same tool 2× / 2 failures / search 0 / confidence<0.4 / user "hmm,stuck,not quite,meh" → ONE lateral lens only 9 lenses SCAMPER/Six Hats/Inversion/Provocation/Random Stimulus/Analogy/Concept Fan/Lateral/Worst Idea MIT danium/lateral-thinking — honest mechanic show abandonment
  - People Resolver write-back One clarifying Q max then never ask again — memory_search([query,trigger]) >0.85 hit → device contacts → ask once → append MEMORY.md `- Alex Rivera <alex@studio.com> is my designer — trigger "my designer" confidence 0.88 source manual 2026-08-05` + extras/acne.md opted `acne add --trigger` typed edge — next time 0.92 <50ms no LLM
  - Verifier budget score 1-10 max 2 loops Acceptance does output match user asked? Polish would you push publicly? typos missing links fake URLs Score 1-10 if <8 and improved >0.3 and tries<2 fix one biggest else ship
- What Basic Runtime Does Well vs Missing — memory_search+MEMORY.md+people pages+device contacts+spawn subagents+hooks/cron/heartbeat+you ask it does — missing mission log, stuck detector, person resolver write-back, verifier — v5 fixes just those
- Explicitly Do NOT Build — no 13 markdown agents pretending persistent, no 384-d Qdrant classifier 3-line heuristic router direct/1 researcher/coordinator+workers, no 5-layer cache diagram rely file mtime+memory_search cache, no parallel JSONL contacts graph replacing native write back into native, no 90s Gmail polling use heartbeat 15m or on-demand, no 7k prompt core stays <900 bytes
- Boot Sequence Observe memory_search+list files if needed, Orient detect stuck signals, Decide lightest path + does this need mission log?, Act do it, append 1 line to timeline, resolve people with write-back, verify max 2 loops, Extras only if opted read `extras/acne.md` typed graph
- Folder Layout lean `workspace/scout-lean` `.scout/missions/<mission-id>/timeline.jsonl` `bundles/skills/lateral/9 md` `extras/acne.md` — No pip No agents No theatre Just four fixes basic doesn't have each saves real time — Scout v5 Prime truly great means resume Thursday where left off Monday, never ask "who's your designer?" twice, diverge only when stuck, ship second draft when first 7/10
- Canonical onboarding https://arxiviq.com/starter serves Scout v5 Prime / FULL_HARNESS_PROMPT_V5.md — arxiviq.com domain stays tied to Dottie repo — Hatch-private branding scrubbed Scout runtime / agent runtime zero Hatch mentions — 7/7 checkpoint OK, no torch, branch-per-task, candidate.json first, triple-write 7-field.

