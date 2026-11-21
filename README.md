# Super Specialists - Anno 117: Pax Romana

[![Anno 117](https://img.shields.io/badge/Anno%20117-Pax%20Romana-red)](https://www.anno-union.com/games/anno-117-pax-romana/)
[![Version](https://img.shields.io/badge/version-2.1.0-blue)](https://github.com/peeweeh/anno-117-super-specialists/releases)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)
[![Ko-fi](https://img.shields.io/badge/Ko--fi-Support%20Me-FF5E5B?logo=ko-fi&logoColor=white)](https://ko-fi.com/mrfixit027)

Overpowered specialists for Anno 117: Pax Romana, all bearing the Gracchus name. The 12-item roster includes one all-residence stat specialist, a residence workforce specialist and a fertility specialist for each region, plus production, army, and ship specialists. It is sold by traders and granted by the Gracchi Legacy Chest.

## 📋 Table of Contents
- [Features](#-features)
- [Installation](#-installation)
- [Specialists](#-specialists)
- [Usage](#-usage)
- [Contributing](#-contributing)
- [Development](#-development)
- [License](#-license)

## ✨ Features

- **12 Gracchus Specialists** - One all-residence stat specialist, a residence workforce specialist for each region, two production tiers, a warehouse specialist, an army master, a ship captain, and a fertility specialist for each region
- **99 Denarii Each** - Purchasable from traders or granted by the
  **Gracchi Legacy Chest** (auto-granted at game start)
- **Materials Care Package** - One-use chest with 100 of each of the 13 Construction Materials
- **Warehouse Storage** - Adds 50t to each normal warehouse tier and every Granary tier, including upgrades and the embankment tiers
- **Warehouse Ramps** - Doubles the parallel loading slots of every warehouse and Granary tier (level 1: 2 to 4, level 2: 4 to 8, level 3: 6 to 12), so the gain grows with the level
- **Regional Fertility** - Latinus, Britannicus, and Aegyptus give the island they are equipped on every fertility and lode of Latium, Albion, or Aegyptus
- **Extreme Buffs** - Designed for late-game empire domination
- **Two Production Tiers** - +150% or +450% productivity
- **Warehouse Speed** - Fulvia adds +450% loading speed to warehouses, granaries, trading posts, and piers
- **Breaking Update** - The roster changes are not backward compatible with old specialist items
- **GUID Tracked** - Mod-owned and target GUIDs are indexed in `references/guid.md`

## 📦 Installation

### For Players

1. Download the latest release from [mod.io](https://mod.io/g/anno-117-pax-romana) or [GitHub Releases](https://github.com/peeweeh/anno-117-super-specialists/releases)
2. Extract to your Anno 117 mods folder (typically `Documents/Anno 117/mods/`)
3. Launch Anno 117 and enable the mod in-game
4. Visit any trader and check the Specialists tab

### For Developers

```bash
git clone https://github.com/peeweeh/anno-117-super-specialists.git
cd anno-117-super-specialists
```

## 🎭 Specialists

All specialists follow the **lastname firstname** naming convention (e.g., "Gracchus Tiberius") for thematic consistency.

| Name | Region/Role | What They Do |
|------|-------------|--------------|
| **Gracchus Tiberius** | Production tier 1 | +150% productivity |
| **Gracchus Fulvia** | Warehouse speed | +450% loading speed for warehouses, granaries, trading posts, and piers |
| **Gracchus Crassus** | Production tier 2 | +450% productivity |
| **Gracchus Scipio** | All residences | +5 population, +15 happiness, +10 health, fire safety, knowledge, belief, and prestige |
| **Gracchus Gaius** | Latium workforce | Supplies all Latium workforce tiers to Latium residences within radius |
| **Gracchus Lucius** | Albion workforce | Supplies all Albion workforce tiers to Albion residences within radius |
| **Gracchus Agrippa** | Aegyptus workforce | Supplies all Aegyptus workforce tiers to Aegyptus residences within radius |
| **Gracchus Marcellus** | Army recruitment | -75% recruitment cost, +300% recruitment speed; +100% troop health, morale, and movement; +100 offense, defense, armor, shields, and attack speed |
| **Gracchus Duilius** | Ships | +300% speed and attack speed, +5000 hull, +9 cargo, +100 discovery, -75% maintenance |
| **Gracchus Latinus** | Latium fertility | Gives the island all 14 Latium fertilities and lodes at 100% |
| **Gracchus Britannicus** | Albion fertility | Gives the island all 15 Albion fertilities and lodes at 100% |
| **Gracchus Aegyptius** | Aegyptus fertility | Gives the island all 15 Aegyptus fertilities and lodes at 100% |

Scipio adds +5 population, +15 happiness, and +10 health, fire safety, knowledge, belief, and prestige to all 14 residence types. Gaius, Lucius, and Agrippa supply the workforce tiers of Latium, Albion, and Aegyptus to that region's residences.

The fertility specialists work island-wide: equip one on an island to give that island every fertility and lode of its region at 100%. Other islands are unaffected. They add fertility to the buildings that need it; the island's own fertility list does not change, and mines and quarries still need their mountain slots.

**Total Cost:** 1188 Denarii (12 specialists × 99 each)

### Historical Context

Each specialist is named after a real Roman historical figure:

- **Tiberius Gracchus** (163-133 BC) - Tribune who championed land reform
- **Gaius Gracchus** (154-121 BC) - Brother who continued reform efforts
- **Scipio Africanus** (c. 236-183 BC) - Grandfather, legendary general
- **Fulvia** (c. 83-40 BC) - Powerful political administrator
- **Gaius Duilius** (c. 260 BC) - First Roman admiral with major naval victory
- **Marcellus** - Marcus Claudius Marcellus, Roman general known for campaigning against Carthage
- **Crassus** - Marcus Licinius Crassus (115-53 BC), wealthiest man in Rome who subsidizes your housing costs
- **Lucius** - Lucius Licinius Lucullus (118-56 BC), wealthy Roman general and administrator
- **Agrippa** - Marcus Vipsanius Agrippa (63-12 BC), general and public builder under Augustus
- **Latinus, Britannicus, Aegyptius** - Roman epithets meaning "of Latium", "of Britain", and "of Egypt"; each grants the fertilities of the matching region

## 🎮 Usage

1. **Purchase** - Visit a trader and buy any specialist for 99 Denarii
2. **Equip** - Slot into Guild House or ship
3. **Enjoy** - Effects apply automatically within radius or island-wide

### 🎁 Gracchi Legacy Chest

The Legacy Chest is auto-granted once at game start and contains all 12 specialists plus 75 each of
Timber, Tiles, Concrete, Marble, Mosaics, Wattle & Daub, and Granite. The trader purchase option still
works independently if you'd rather buy specialists one at a time.

### 🎁 Gracchi Materials Care Package

A separate one-use chest, auto-granted by its own trigger, contains 100 each of Timber, Tiles, Concrete,
Marble, Mosaics, Rope, Sails, Weapons, Armour, Wattle & Daub, Granite, Mud Bricks, and Limestone Bricks.

### Balance Notes

- Intentionally overpowered for late-game dominance
- Most effects limited to Villa/Officium radius
- Affordable pricing for easy testing

### Production and Warehouse Specialists

Choose between the two Gracchus production specialists: +150% or +450% productivity. Warehouse effects are separate: Fulvia adds +450% loading speed to warehouses, granaries, trading posts, and piers. Storage (+50t) and ramps (doubled parallel loading slots) are always on for every warehouse and Granary tier, because specialists cannot change them. The values are fixed, with no global power toggle.

## ⚠️ Compatibility

### Conflicts with other trader/item mods

This mod merges into the Roman trader `RewardPool`/`ItemsPool` assets (GUIDs
`43018,43021,43019,43020`) and tests inferred Aegyptus reward-pool candidates (`153068,153070`). The
Port of Naukratis building (`153121`) has no matching pool node in the loader log. Item-slot unlocks
also target Epistrategos Heron and Kandis of Kashta (`153067,153069`); confirm the candidate pool targets
with a fresh loader log and in-game check. Mods that **replace** (rather than merge/add to)
those same pools - such as "All Items at Traders"-style mods - can overwrite this mod's entries depending
on load order, causing some or all specialists to not appear at traders.

**Workarounds:**
- Check `mod-loader.log` for merge order/conflicts on the affected GUIDs.
- Use [`LoadAfter`](https://jakobharder.github.io/anno-mod-loader/modinfo/#dependencies) in the other mod's
  `modinfo.json` (or a small patch mod) so it loads before this one and its `add`/`merge` ops apply on top.
- If items still don't show, try a clean profile with only this mod active to confirm it's a conflict
  before reporting a bug.

## 🤝 Contributing

Contributions welcome! Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details.

### Quick Start for Modders

See [DEVELOPMENT.md](DEVELOPMENT.md) for comprehensive documentation:

- Step-by-step guide to creating new specialists
- GUID structure and management
- Buff types and XML templates
- Testing checklist and debugging tips

## 🛠️ Development

### Project Structure

```
anno-117-super-specialists/
├── data/
│   └── base/
│       └── config/
│           ├── export/
│           │   ├── assets.xml           # Specialist definitions
│           │   └── fertility.include.xml # Regional fertility specialists
│           └── gui/
│               └── texts_english.xml    # Localization
├── plans/                               # Development plans
├── references/                          # Reference documentation
├── scripts/                             # Helper scripts
├── modinfo.json                         # Mod metadata
└── README.md
```

### Building for Release

See [DEVELOPMENT.md](DEVELOPMENT.md#modio-packaging) for complete packaging instructions.

```bash
# Quick package command (auto-detects version from modinfo.json)
zip -r super-specialists-v$(jq -r '.Version' modinfo.json).zip \
  modinfo.json data/ README.md LICENSE \
  -x "*.git*" "*.github*" "*.vscode*" "*plans/*" "*references/*" "*scripts/*" "*guids*" "*.zip"
```
### Assigned GUIDs
See [references/guid.md](references/guid.md) for all assigned and base-game target GUIDs.

### Versioning

Follow [Semantic Versioning](https://semver.org/):

- **MAJOR.x.x** - Breaking changes, incompatible with saves
- **x.MINOR.x** - New specialists/features, backward compatible
- **x.x.PATCH** - Bug fixes, balance tweaks

Before releasing:
1. Update `Version` in `modinfo.json`
2. Add entry to changelog below
3. Test in-game
4. Create release package
5. Upload to mod.io and GitHub

## 📝 Changelog
- Latest: **2.1.0 (2026-11-09)** – Added a second auto-granted chest with 100 of every Construction Material.
- Full history: see [CHANGELOG.md](CHANGELOG.md).

## 📜 License

This project is licensed under the MIT License - see [LICENSE](LICENSE) for details.

## 🙏 Credits

- **Icons** - Sourced from Anno 117: Pax Romana base game assets
- **Modding Framework** - Anno modding community
- **Inspiration** - Historical Gracchi family of Rome
- **Support** - ☕ [Buy me a coffee on Ko-fi](https://ko-fi.com/mrfixit027)

## 🔗 Links

- [mod.io Page](https://mod.io/g/anno-117-pax-romana)
- [Anno Discord](https://discord.anno-mods.dev)
- [Modding Guide](https://github.com/anno-mods/modding-guide)

---

## 📝 mod.io Submission Guide

When uploading to mod.io, use these details:

**Name:** Super Specialists

**Summary:** 12 Gracchus specialists for three regions, including a workforce and a fertility specialist per region, an all-residence stat specialist, and an army master, with a one-use materials chest.

**Description:**
```html
<p style="text-align: center;"><a href="https://ko-fi.com/mrfixit027"><img src="https://storage.ko-fi.com/cdn/brandasset/kofi_button_red.png" alt="Ko-fi" width="200" /></a></p>
<p style="text-align: center;">⚠️ Found a bug? Report it on <a href="https://github.com/peeweeh/anno-117-super-specialists/issues">GitHub Issues</a> ⚠️</p>

<hr />

<p>12 Gracchus specialists across Latium, Albion, and Aegyptus: Scipio buffs all residences, Gaius, Lucius, and Agrippa supply each region's workforces, Marcellus streamlines and strengthens army recruitment, and Latinus, Britannicus, and Aegyptius give an island every fertility of their region. A separate one-use chest grants 100 of each Construction Material. Each specialist costs 99 Denarii.</p>

<h3>🎭 THE SPECIALISTS (99 Denarii each)</h3>

<ul>
<li><strong>Gracchus Tiberius</strong> - +150% production</li>
<li><strong>Gracchus Fulvia</strong> - +450% loading speed for warehouses, granaries, trading posts, and piers</li>
<li><strong>Gracchus Crassus</strong> - +450% production</li>
<li><strong>Gracchus Scipio</strong> - +5 population, +15 happiness, and +10 to five residence attributes across all 14 residence types</li>
<li><strong>Gracchus Gaius</strong> - Adds all Latium workforce tiers to nearby Latium residences</li>
<li><strong>Gracchus Lucius</strong> - Adds all Albion workforce tiers to nearby Albion residences</li>
<li><strong>Gracchus Agrippa</strong> - Adds all Aegyptus workforce tiers to nearby Aegyptus residences</li>
<li><strong>Gracchus Marcellus</strong> - -75% troop recruitment cost, +300% recruitment speed, +100% troop health/morale/movement, and +100 offense/defense/armor/shields/attack speed</li>
<li><strong>Gracchus Duilius</strong> - Ship captain for heavy Roman warships</li>
<li><strong>Gracchus Latinus</strong> - Gives the island all 14 Latium fertilities and lodes</li>
<li><strong>Gracchus Britannicus</strong> - Gives the island all 15 Albion fertilities and lodes</li>
<li><strong>Gracchus Aegyptius</strong> - Gives the island all 15 Aegyptus fertilities and lodes</li>
</ul>

<p>Scipio buffs all 14 residence types; Gaius, Lucius, and Agrippa supply the workforce tiers of Latium, Albion, and Aegyptus.</p>
<p><strong>Total Cost:</strong> 1188 Denarii (12 × 99 each)</p>

<h3>✨ WHY THIS MOD ROCKS</h3>

<ul>
<li>12 Gracchus specialists across three regions, including a workforce and a fertility specialist for each</li>
<li>One care package chest with 100 of all 13 Construction Materials</li>
<li>Fixed +150% and +450% production tiers, plus a separate warehouse speed specialist</li>
<li>+50t storage and doubled loading ramps on every warehouse and Granary tier</li>
<li>Instant Access - Buy specialists from traders or use either auto-granted chest</li>
<li>Extreme Buffs - For when "balanced" is boring</li>
<li>Mod Compatible - Safe GUID range, plays nice with others</li>
</ul>

<p>Open the Legacy Chest for specialists and the Materials Care Package for building supplies.</p>

```

**Tags:** specialists, gameplay, balance, overpowered, late-game, traders, buffs

**Maturity Rating:** Everyone

**File to Upload:** `super-specialists-v2.1.0.zip` (from GitHub Releases)

**Changelog:**
```
## [2.1.0] - 2026-11-09
- Added a separate one-use Materials Care Package chest with 100 of each of the 13 Construction Materials
- Added a distinct auto-grant trigger so existing saves receive the new chest

## [2.0.0] - 2026-11-09
- Rebuilt the roster as 13 Gracchus specialists: two home tiers and one industry item per region, three production/warehouse tiers, and Duilius
- Every specialist costs 99 Denarii
- Removed the intensity option; production tiers are fixed at +100%, +250%, and +450%, each with +150% loading speed
- Added Aegyptus farms and regional vendor stock; updated the Legacy Chest roster
- Breaking roster change; old specialist assets are not preserved
```

---

Made with ⚡ for the Anno community
