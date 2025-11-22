# Super Specialists - Anno 117: Pax Romana

[![Anno 117](https://img.shields.io/badge/Anno%20117-Pax%20Romana-red)](https://www.anno-union.com/games/anno-117-pax-romana/)
[![Version](https://img.shields.io/badge/version-1.0.0-blue)](https://github.com/peeweeh/anno-117-super-specialists/releases)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)
[![Ko-fi](https://img.shields.io/badge/Ko--fi-Support%20Me-FF5E5B?logo=ko-fi&logoColor=white)](https://ko-fi.com/mrfixit027)

Overpowered specialists mod for Anno 117: Pax Romana featuring 12 legendary Gracchi family members. All purchasable from traders with extreme buffs for dominating your empire.

## 📋 Table of Contents
- [Features](#-features)
- [Installation](#-installation)
- [Specialists](#-specialists)
- [Usage](#-usage)
- [Contributing](#-contributing)
- [Development](#-development)
- [License](#-license)

## ✨ Features

- **12 Legendary Specialists** - Based on historical Roman Gracchi family
- **Instant Access** - Purchasable from any trader for 69 Denarii each
- **Extreme Buffs** - Designed for late-game empire domination
- **Save Compatible** - Works with existing saves
- **Mod Compatible** - Safe GUID range (1500050000-1500059999)

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

| Name | Vibe | Scope | What They Do |
|------|------|-------|--------------|
| **Tiberius** | Production go BRRR | Island | +400% productivity (factories on steroids) |
| **Gaius** | Guy with a van | Radius | Free peasant workers for Coopers & Cookhouses |
| **Cornelia** | Temp agency queen | Radius | Free Albion peasant workers for workshops |
| **Scipio** | Defeated Hannibal | Radius | +10 to EVERYTHING (happiness/health/fire safety/knowledge/belief/prestige) |
| **Fulvia** | Scary warehouse boss | Island | +100% warehouse speed (goods go zoom) |
| **Duilius** | Death boat admiral | Ship | +300% speed, +5000 HP, +9 slots, 3x attack, -75% maintenance |
| **Julia** | Baby boom consultant | Radius | +5 pop + +5 happiness per residence |
| **Lucius** | Latium labor hacker | Radius | Elite workers (Citizens/Patricians) in Tier 1 Latium housing |
| **Cassius** | Albion MLM guru | Radius | Elite workers (Patricians) in Tier 1 Albion housing |
| **Sextus** | LinkedIn influencer | Radius | Peasants appear at Tier 3 & 4 Latium buildings |
| **Decimus** | Uber for peasants | Radius | Peasants appear at Tier 3 & 4 Albion buildings |
| **Crassus** | Rich benefactor | Radius | -50% residence maintenance (more money in pocket!) |

**Total Cost:** 828 Denarii (12 specialists × 69 each)

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
- **Sextus** - Common Roman praenomen meaning "sixth," representing the people's recruiter
- **Decimus** - Common Roman praenomen meaning "tenth," representing the people's organizer
- **Crassus** - Marcus Licinius Crassus (115-53 BC), wealthiest man in Rome who subsidizes your housing costs

## 🎮 Usage

1. **Purchase** - Visit any trader and buy specialists for 69 Denarii each
2. **Equip** - Slot into Guild House or ship
3. **Enjoy** - Effects apply automatically within radius or island-wide

### Balance Notes

- Intentionally overpowered for late-game dominance
- Most effects limited to Villa/Officium radius
- Affordable pricing for easy testing

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
  modinfo.json data/ README.md \
  -x "*.git*" "*.vscode*" "*plans/*" "*references/*" "*scripts/*" "*guids.md"
```
### Assigned GUIDs
1500050000->1500059999

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

### [1.3.0] - 2024-11-22
- Added Gracchus Crassus: Rich Benefactor (-50% residence maintenance within radius)
- Removed Gracchus Columella: Effects were out of whack
- Fixed broken icons for Cassius, Duilius, and Decimus
- Fixed Crassus using MaintenanceUpgrade (income boost doesn't exist in Anno 117)
- Total specialists: 12
- Total cost: 828 Denarii

### [1.2.0] - 2024-11-22
- Added Gracchus Lucius: Patrician Workforce Master for Latium (adds Latium Citizen & Patrician workforce to Tier 1 Latium residences)
- Added Gracchus Cassius: Patrician Workforce Master for Albion (adds Albion Patrician workforce to Tier 1 Albion residences)
- Added Gracchus Sextus: Peasant Workforce Master for Latium (adds Latium Peasant workforce to Tier 3 & 4 Latium buildings)
- Added Gracchus Decimus: Peasant Workforce Master for Albion (adds Albion Peasant workforce to Tier 3 & 4 Albion buildings)
- All workforce specialists now region-specific to prevent cross-region conflicts
- Total specialists: 12

### [1.1.0] - 2024-11-20
- Added Gracchus Julia: Population Booster (+5 pop per residence, +5 happiness)
- Added Gracchus Columella: Harvest Master (-50% workforce, +50% field capacity, +50% transporter range, +10 happiness)
- Updated trader integration: All specialists now available from traders
- Added icons for all specialists
- Total specialists: 8

### [1.0.0] - 2024-11-19
- Initial public release
- 6 specialists: Tiberius, Gaius, Cornelia, Scipio, Fulvia, Duilius
- GUID range: 1500050000-1500059999

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

**Summary:** 12 overpowered legendary specialists from the Gracchi family - purchasable from traders for 69 Denarii each

**Description:**
```
Overpowered specialists mod featuring 12 legendary Gracchi family members. All purchasable from traders with extreme buffs for dominating your empire.

🎭 THE SPECIALISTS

• Tiberius - +400% production (factories on steroids)
• Gaius - Free peasant workers for Coopers & Cookhouses
• Cornelia - Free Albion peasant workers for workshops
• Scipio - +10 to ALL residence attributes
• Fulvia - +100% warehouse speed (island-wide)
• Duilius - Ship buffs (+300% speed, +5000 HP, +9 slots, 3x attack, -75% maintenance)
• Julia - +5 pop +5 happiness per residence
• Lucius - Elite workers (Citizens/Patricians) in Tier 1 Latium housing
• Cassius - Elite workers (Patricians) in Tier 1 Albion housing
• Sextus - Peasants appear at Tier 3 & 4 Latium buildings
• Decimus - Peasants appear at Tier 3 & 4 Albion buildings
• Crassus - -50% residence maintenance (more money!)

Total Cost: 828 Denarii (12 × 69 each)

✨ FEATURES

• 12 Legendary Specialists based on historical Romans
• Instant Access - Purchasable from any trader
• Extreme Buffs - Designed for late-game domination
• Save Compatible - Works with existing saves
• Mod Compatible - Safe GUID range

📦 INSTALLATION

1. Download and extract to Anno 117 mods folder
2. Enable in-game mod menu
3. Visit traders and start buying!

☕ Support: https://ko-fi.com/mrfixit027
🔗 GitHub: https://github.com/peeweeh/anno-117-super-specialists
```

**Tags:** specialists, gameplay, balance, overpowered, late-game, traders, buffs

**Maturity Rating:** Everyone

**File to Upload:** `super-specialists-v1.0.0.zip` (from GitHub Releases)

**Changelog (v1.0.0):**
```
Initial release with 12 specialists:
- Production, workforce, residence, warehouse, and ship specialists
- All purchasable from traders for 69 Denarii each
- Extreme buffs for late-game empire domination
- Safe GUID range (1500050000-1500059999)
```

---

Made with ⚡ for the Anno community
