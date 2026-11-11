
## Core Principles
- Keep docs concise; add detail only where the mod changes gameplay.
- DRY docs: avoid repeating long instructions between README and DEVELOPMENT; link instead.
- Standard naming: /data for game files, /plans and /references for internal docs.

## Release Workflow (when user says "release")
1) Bump version in modinfo.json; update README badge + Latest Release summary.
2) Sync docs to assets.xml reality: specialist stats/effects match actual ModOps and texts.
3) Update changelog in CHANGELOG.md; keep README to short highlights + link.
4) Refresh mod.io block (summary, stats, changelog snippet, File to Upload `super-specialists-v<version>.zip`).
5) Package: zip modinfo.json data/ README.md LICENSE; exclude .git/ .github/ .vscode/ plans/ references/ scripts/ guids/ old zips.
6) git status → commit "Release <version>" → tag v<version> → push + push tags.

## Execution Guidelines
- Keep comments minimal and explain intent when non-obvious.
- Prefer merge ModOps; keep XML readable.
- Confirm in-game when possible; if not confirmed, state validation pending.

## Planning and Updates
- Use /plans for ideas; keep README user-facing, DEVELOPMENT for maintainers.

## Workflow Check
- Before finishing: versions aligned, docs synced, mod.io text updated, package command ready, git clean or changes intentional.
