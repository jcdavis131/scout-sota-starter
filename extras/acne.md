# ACNE — Optional Heavy Mode (only if you want typed provenance)

Most teams don't need this. Scout Lean works fine with native MEMORY.md + people pages.

Use ACNE if you want:

- `my designer` → `Alex Rivera <alex@studio.com> confidence 0.88 source manual`
- Edges typed: `AUTHORED`, `EMPLOYED_BY`, `SAME_AS` with document → chunk → `EXTRACTED_FROM` edge, checksum, timestamp
- 5-layer cache so second read is ~70-88% smaller (varies)

**Opt-in only:**

```bash
git clone https://github.com/jcdavis131/acne ~/workspace/acne
pip install -e ~/workspace/acne
acne init
acne add --name "Alex Rivera" --trigger "my designer" --role designer
```

**Rule:** ACNE must write back into `MEMORY.md` and `~/memory/people/` — not replace them. If it conflicts with native memory, native wins.

If you don't need provenance graphs, skip this file entirely. Lean stays at zero deps.

Import to use:

```python
from acne.integrations import get_runtime_tools, get_scout_tools
# get_scout_tools = pre-wired for Scout, get_runtime_tools = generic
tools = get_scout_tools(hub=hub) # 8 tools, local-first
```

That's it. Don't load unless you need it.
