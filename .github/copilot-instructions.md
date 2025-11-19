
## Core Principles
- Keep everything simple: Short code/docs first—add complexity only for mod features (e.g., specialist tweaks). Why: Faster in-game testing.
- Follow DRY: Reuse XML/Lua snippets across mods; remove obvious fluff (e.g., no redundant imports). Why: Anno mods load quicker.
- Use standard naming: e.g., `gui-plan.md`, `effects-plan.md` in /plans. Limit folders: /gui for UI, /scripts for code, /database for configs, /data for mod.io prep. Why: Matches your repo structure and mod.io upload format.
- Confidence threshold: Always mention confidence per task (e.g., "98% on effect tweak"). If <99%, ask for clarification. Why: Avoids game crashes from unverified mods.
- Wait for user to validate in game and proceed only after confirmation. Why: Ensures mod works before further steps.

## Planning and Updates
- Base everything on /plans files: Use as primary input (e.g., /plans/residence-effect-specialist.md). Create/update plans for all tasks in /plans folder. Why: Centralizes mod ideas without extra files.
- For ticket-specific plans (e.g., ANNO-117-TICK-001), use /plans/ANNO-117-TICK-001/ subfolder with files like `gui-plan.md`. Store overviews/rationale in plan.md or README.md. Why: Organizes variations modularly.
- Handle ad-hoc changes: Integrate into /plans seamlessly; commit often, push at end. Update README/plan.md post-validation only. Why: Keeps repo clean for iterative fun.

## Execution Guidelines
- Code/Mod practices: Short comments with *why* (e.g., "// Boost specialist speed for balance—prevents slow gameplay."). Readable XML/Lua for community fixes. Simple first (tweak existing before new). Why: Anno modders share easily.
- Tools: Focus on local (e.g., text editor for XML); if external (e.g., asset tools), self-run and fix. Skip AWS unless specified. Why: Pure modding stays lightweight.
- Docs: Light with TL;DRs. For README/docs, use emojis (🏠 for residences, ⚡ for effects), bold headers, bullets for nice reading. Explain *why* in comments/docs (e.g., "This mod adds super specialist because..."). Update README/plan.md only after in-game validation—no rewrites without testing. Why: Makes mod.io descriptions engaging and clear.

## Workflow Check
- Always verify: Tasks in /plans done? In-game validated? Confidence >99%? README/plan.md updated? Mod.io-ready? Why: Delivers stable, shareable Anno 117 mods.
