# Lessons Learned — Every Mistake Paired

## 2026-08-07 — ava.rl shim
- **Cause**: sys.modules replacement
- **Lesson**: re-export only
- **Fixed**: canonical dottie/rl package

## 2026-08-07 — dual lockfiles
- **Cause**: bun + npm
- **Lesson**: one PM per app

## 2026-08-07 — duplicate bundles
- **Cause**: mirrors not pruned
- **Lesson**: one canonical + prune monthly
