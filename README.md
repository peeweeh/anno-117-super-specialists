# Super Specialists - Anno 117: Pax Romana

[![Anno 117](https://img.shields.io/badge/Anno%20117-Pax%20Romana-red)](https://www.anno-union.com/games/anno-117-pax-romana/)
[![Version](https://img.shields.io/badge/version-2.1.0-blue)](https://github.com/peeweeh/anno-117-super-specialists/releases)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)
[![Ko-fi](https://img.shields.io/badge/Ko--fi-Support%20Me-FF5E5B?logo=ko-fi&logoColor=white)](https://ko-fi.com/mrfixit027)

Overpowered specialists for Anno 117: Pax Romana, all bearing the Gracchus name. The 13-item roster is sold by traders and granted by the Gracchi Legacy Chest; a separate care package provides building materials.

## 📋 Table of Contents
- [Features](#-features)
- [Installation](#-installation)
- [Specialists](#-specialists)
- [Usage](#-usage)
- [Contributing](#-contributing)
- [Development](#-development)
- [License](#-license)

## ✨ Features

- **13 Gracchus Specialists** - Two home specialists and one industry specialist for each region, three production tiers, and a ship captain
- **99 Denarii Each** - Purchasable from traders or granted by the
  **Gracchi Legacy Chest** (auto-granted at game start)
- **Materials Care Package** - One-use chest with 100 of each of the 13 Construction Materials
- **Extreme Buffs** - Designed for late-game empire domination
- **Three Fixed Production Tiers** - +100%, +250%, or +450% productivity, each with +150% warehouse and trading-post loading speed
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
| **Gracchus Tiberius** | Production tier 1 | +100% productivity; +150% warehouse and trading-post loading |
| **Gracchus Fulvia** | Production tier 2 | +250% productivity; +150% warehouse and trading-post loading |
| **Gracchus Crassus** | Production tier 3 | +450% productivity; +150% warehouse and trading-post loading |
| **Gracchus Julia** | Latium lower homes | Core residence stats and higher-tier workforce |
| **Gracchus Scipio** | Latium higher homes | Core residence stats and lower-tier workforce |
| **Gracchus Cassius** | Albion lower homes | Core residence stats and higher-tier workforce |
| **Gracchus Cornelia** | Albion higher homes | Core residence stats and lower-tier workforce |
| **Gracchus Marius** | Aegyptus lower homes | Core residence stats and higher-tier workforce |
| **Gracchus Appius** | Aegyptus higher homes | Core residence stats and lower-tier workforce |
| **Gracchus Gaius** | Latium industry | Adds Latium workforce to production buildings |
| **Gracchus Lucius** | Albion industry | Adds Albion workforce to production buildings |
| **Gracchus Agrippa** | Aegyptus industry | Adds Aegyptus workforce to production buildings |
| **Gracchus Duilius** | Ships | +300% speed and attack speed, +5000 hull, +9 cargo, +100 discovery, -75% maintenance |

Each home specialist adds +5 population, +15 happiness, and +10 health, fire safety, knowledge, belief, and prestige. The two Aegyptus home items cover Thresher/Potter/Scribe and Chanter/Gymnasiarch residences separately.

**Total Cost:** 1,287 Denarii (13 specialists × 99 each)

### Historical Context

Each specialist is named after a real Roman historical figure:

- **Tiberius Gracchus** (163-133 BC) - Tribune who championed land reform
- **Gaius Gracchus** (154-121 BC) - Brother who continued reform efforts
- **Cornelia Africana** (c. 190-100 BC) - Mother of the Gracchi, celebrated for wisdom
- **Scipio Africanus** (c. 236-183 BC) - Grandfather, legendary general
- **Fulvia** (c. 83-40 BC) - Powerful political administrator
- **Gaius Duilius** (c. 260 BC) - First Roman admiral with major naval victory
- **Julia** - Common Roman women's name representing family & population growth
- **Lucius** - Lucius Licinius Lucullus (118-56 BC), wealthy Roman general and administrator
- **Cassius** - Gaius Cassius Longinus, Roman senator known for organization and strategy
- **Crassus** - Marcus Licinius Crassus (115-53 BC), wealthiest man in Rome who subsidizes your housing costs
- **Marius** - Gaius Marius (157-86 BC), general who reformed the Roman legions
- **Appius** - Appius Claudius Caecus (c. 340-273 BC), censor known for public order and the Via Appia
- **Agrippa** - Marcus Vipsanius Agrippa (63-12 BC), engineer who built Rome's Portus harbor

## 🎮 Usage

1. **Purchase** - Visit a trader and buy any specialist for 99 Denarii
2. **Equip** - Slot into Guild House or ship
3. **Enjoy** - Effects apply automatically within radius or island-wide

### 🎁 Gracchi Legacy Chest

The Legacy Chest is auto-granted once at game start and contains all 13 specialists plus 75 each of
Timber, Tiles, Concrete, Marble, Mosaics, Wattle & Daub, and Granite. The trader purchase option still
works independently if you'd rather buy specialists one at a time.

### 🎁 Gracchi Materials Care Package

A separate one-use chest, auto-granted by its own trigger, contains 100 each of Timber, Tiles, Concrete,
Marble, Mosaics, Rope, Sails, Weapons, Armour, Wattle & Daub, Granite, Mud Bricks, and Limestone Bricks.

### Balance Notes

- Intentionally overpowered for late-game dominance
- Most effects limited to Villa/Officium radius
- Affordable pricing for easy testing

### Production Variants

Choose among the three Gracchus production specialists: +100%, +250%, or +450% productivity. All three also add +150% loading speed to warehouses and trading posts; the values are fixed, with no global power toggle.

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
│           │   └── assets.xml           # Specialist definitions
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

**Summary:** 13 Gracchus specialists for three regions, plus a one-use chest with 100 of each Construction Material.

**Description:**
```html
<p style="text-align: center;"><a href="https://ko-fi.com/mrfixit027"><img src="https://storage.ko-fi.com/cdn/brandasset/kofi_button_red.png" alt="Ko-fi" width="200" /></a></p>
<p style="text-align: center;">⚠️ Found a bug? Report it on <a href="https://github.com/peeweeh/anno-117-super-specialists/issues">GitHub Issues</a> ⚠️</p>

<hr />

<p>13 Gracchus specialists across Latium, Albion, and Aegyptus, plus a separate one-use chest with 100 of each Construction Material. Buy specialists from traders or claim them in the Gracchi Legacy Chest; each specialist costs 99 Denarii.</p>

<h3>🎭 THE SPECIALISTS (99 Denarii each)</h3>

<ul>
<li><strong>Gracchus Tiberius</strong> - +100% production, +150% warehouse and trading-post loading</li>
<li><strong>Gracchus Fulvia</strong> - +250% production, +150% warehouse and trading-post loading</li>
<li><strong>Gracchus Crassus</strong> - +450% production, +150% warehouse and trading-post loading</li>
<li><strong>Gracchus Julia</strong> - Latium lower homes: core residence stats and higher-tier workers</li>
<li><strong>Gracchus Scipio</strong> - Latium higher homes: core residence stats and lower-tier workers</li>
<li><strong>Gracchus Cassius</strong> - Albion lower homes: core residence stats and higher-tier workers</li>
<li><strong>Gracchus Cornelia</strong> - Albion higher homes: core residence stats and lower-tier workers</li>
<li><strong>Gracchus Marius</strong> - Aegyptus lower homes: core residence stats and higher-tier workers</li>
<li><strong>Gracchus Appius</strong> - Aegyptus higher homes: core residence stats and lower-tier workers</li>
<li><strong>Gracchus Gaius</strong> - Adds Latium workforce to production buildings</li>
<li><strong>Gracchus Lucius</strong> - Adds Albion workforce to production buildings</li>
<li><strong>Gracchus Agrippa</strong> - Adds Aegyptus workforce to production buildings</li>
<li><strong>Gracchus Duilius</strong> - Ship captain for heavy Roman warships</li>
</ul>

<p>Residence specialists add +5 population, +15 happiness, and +10 health, fire safety, knowledge, belief, and prestige. Each region has lower- and higher-home variants.</p>
<p><strong>Total Cost:</strong> 1,287 Denarii (13 × 99 each)</p>

<h3>✨ WHY THIS MOD ROCKS</h3>

<ul>
<li>13 Gracchus specialists across three regions</li>
<li>One care package chest with 100 of all 13 Construction Materials</li>
<li>Fixed +100%, +250%, and +450% production variants</li>
<li>+150% warehouse and trading-post loading on every production variant</li>
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
