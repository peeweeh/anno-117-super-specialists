# Super Specialists - Anno 117: Pax Romana

[![Anno 117](https://img.shields.io/badge/Anno%20117-Pax%20Romana-red)](https://www.anno-union.com/games/anno-117-pax-romana/)
[![Version](https://img.shields.io/badge/version-1.0.0-blue)](https://github.com/peeweeh/anno-117-super-specialists/releases)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)

Overpowered specialists mod for Anno 117: Pax Romana featuring 6 legendary Gracchi family members. All purchasable from traders with extreme buffs for dominating your empire.

## 📋 Table of Contents
- [Features](#-features)
- [Installation](#-installation)
- [Specialists](#-specialists)
- [Usage](#-usage)
- [Contributing](#-contributing)
- [Development](#-development)
- [License](#-license)

## ✨ Features

- **6 Legendary Specialists** - Based on historical Roman Gracchi family
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

| Name | Type | Scope | Effects |
|------|------|-------|---------|
| **Gracchus Tiberius** | Production Master | Island | +400% productivity for all production buildings |
| **Gracchus Gaius** | Workforce Master | Radius | Adds Peasant workforce to Coopers & Cookhouses |
| **Gracchus Cornelia** | Workshop Master | Radius | Adds Peasant workforce to Albion workshops |
| **Gracchus Scipio** | Residence Master | Radius | +10 happiness, health, fire safety, knowledge, belief, prestige |
| **Gracchus Fulvia** | Warehouse Master | Island | +100% warehouse loading speed |
| **Gracchus Duilius** | Ship Captain | Ship | +300% speed, +5000 HP, +9 slots, -75% maintenance, 3x attack speed |

**Total Cost:** 414 Denarii (6 specialists)

### Historical Context

Each specialist is named after a real Roman historical figure:

- **Tiberius Gracchus** (163-133 BC) - Tribune who championed land reform
- **Gaius Gracchus** (154-121 BC) - Brother who continued reform efforts
- **Cornelia Africana** (c. 190-100 BC) - Mother of the Gracchi, celebrated for wisdom
- **Scipio Africanus** (c. 236-183 BC) - Grandfather, legendary general
- **Fulvia** (c. 83-40 BC) - Powerful political administrator
- **Gaius Duilius** (c. 260 BC) - First Roman admiral with major naval victory

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

## 🔗 Links

- [mod.io Page](https://mod.io/g/anno-117-pax-romana)
- [Anno Discord](https://discord.anno-mods.dev)
- [Modding Guide](https://github.com/anno-mods/modding-guide)

---

Made with ⚡ for the Anno community
