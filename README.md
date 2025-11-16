# Super Specialists Mod for Anno 117: Pax Romana

## Overview
This mod adds **overpowered specialists** to Anno 117: Pax Romana, featuring three powerful specialists. All specialists are purchaseable directly from traders and provide extreme buffs. Designed for players who want to dominate their empire efficiently.

## Installation
1. Locate your Anno 117 mods folder (typically in game installation directory)
2. Copy the entire `super-specialists` folder into the mods directory
3. Launch Anno 117: Pax Romana
4. Enable the mod in the in-game Mod Manager (if available)
5. Visit any trader and check the Specialists tab

## Current Specialists

| Name | Category | Price | Rarity | Key Effects |
|------|----------|-------|--------|-------------|
| **Dirk Diggler** | Production Master | 69 | Legendary | +400% productivity for all production buildings |
| **Roger Rabbit** | Workforce Master | 69 | Legendary | Adds extra Peasant workforce to Coopers and Cookhouses |
| **Tony Stark** | Workshop Master | 69 | Legendary | Adds extra Peasant workforce to Albion Artisans and Dressers |

**Total Cost:** 207 Denarii

## How to Use
1. Visit any trader ship or harbor
2. Navigate to the Specialists tab
3. Purchase your desired specialist(s)
4. Slot the specialist into your Guild House or appropriate building
5. Effects apply to buildings within the specialist's radius or globally (depending on specialist)

## Balance Notes
- **Intentionally Overpowered**: Designed for late-game players
- **Radius Limited**: Effects only apply within Villa/Officium influence radius
- **Affordable**: Easy to acquire for testing

## Guide to Creating Great Specialists

Based on our development experience, here's how to create effective and fun specialists:

### 1. **Structure Requirements**
- **Template**: Use `ItemWithBoost` for the specialist item
- **GUID Assignment**: Use safe GUIDs (e.g., 2001000001+ for items, buffs)
- **OasisId Separation**: Use **3 separate OasisIds** for:
  - Item name (Text > OasisId)
  - Item description (InfoDescription)
  - Buff effect name (Buff Text > OasisId)

### 2. **Text Localization**
- **Item Name**: Short, memorable (e.g., "Dirk Diggler")
- **Description**: Funny/pop culture reference (e.g., "The Ultimate Production Overlord")
- **Effect Name**: Short and clear (e.g., "900% Productivity Boost")
- **File**: Add to `texts_english.xml` with matching LineIds

### 3. **Buff Design**
- **Template**: `BuildingBuff` for most, `ShipBuffTemplate` for naval
- **Targets**: Use GUID pools (e.g., 38370 for all production buildings)
- **Enhancements**: Add `AdditionalWorkforces` for diversity
- **Conditional**: Use `<Need><Template>Profile_3rdParty_PatronX</Template></Need>` for patron-specific specialists

### 4. **Item Properties**
- **Rarity**: Legendary for premium feel
- **Allocation**: GuildHouse
- **Niche**: "Specialist" or specific type
- **Locked/Hide**: Set appropriately
- **Icon**: Choose from extracted list using the PowerShell script

### 5. **Trader Integration**
- Add to trader pools: `43018,43021,43019,43020`
- Path: `/Values/RewardPool/ItemsPool`

### 6. **Testing Tips**
- Start simple: Focus on one buff type
- Use PowerShell scripts for icon extraction
- Test loading and in-game display
- Ensure OasisIds match localization

### 7. **Expansion Ideas**
- Pop culture themes for fun naming
- Patron conditions for variety
- Stacking effects for power players
- Different rarities for progression

## File Structure
```
super-specialists/
├── .gitignore           # Git ignore rules
├── modinfo.json         # Mod metadata
├── prd.md              # Product requirements document
├── README.md           # This file
├── data/
│   ├── base/
│   │   └── config/
│   │       ├── export/
│   │       │   └── assets.xml      # Specialist definitions
│   │       └── gui/
│   │           └── texts_english.xml # English localization
│   └── graphics/       # (Reserved for custom graphics)
├── references/         # Reference files and documentation
│   ├── extracted_specialist_icons.txt
│   ├── guid.md
│   ├── making-new-specialists.md
│   └── traders.xml
├── real-specialists/   # Original specialist XML for reference
└── scripts/           # PowerShell helper scripts
    └── extract_specialist_icons.ps1
```

## Modification Guide

### Adding New Specialists
Each specialist requires two assets:
1. **Item Asset**: What you purchase and slot (GUID: odd numbers)
2. **Buff Asset**: The actual effects (GUID: even numbers)

Template:
```xml
<!-- ITEM ASSET -->
<ModOp Type="addNextSibling" GUID="51885">
  <Asset>
    <Template>ItemTemplate</Template>
    <Values>
      <Standard>
        <GUID>[ITEM_GUID]</GUID>
        <Name>[NAME]</Name>
        <IconFilename>[ICON_PATH]</IconFilename>
        <InfoDescription>[BUFF_GUID]</InfoDescription>
      </Standard>
      <Effect>
        <EffectScope>Radius</EffectScope>
        <Buffs><Item><GUID>[BUFF_GUID]</GUID></Item></Buffs>
        <Targets>
          <Item><Template>[TARGET_TEMPLATE]</Template></Item>
        </Targets>
      </Effect>
      <Item>
        <Rarity>[EPIC/LEGENDARY]</Rarity>
        <TradePrice>[PRICE]</TradePrice>
      </Item>
    </Values>
  </Asset>
</ModOp>

<!-- BUFF ASSET -->
<ModOp Type="addNextSibling" GUID="51886">
  <Asset>
    <Template>BuildingBuffTemplate</Template>
    <Values>
      <Standard>
        <GUID>[BUFF_GUID]</GUID>
        <Name>[NAME] Buff</Name>
      </Standard>
      <[UpgradeType]>
        <[EffectType]>
          <Value>[VALUE]</Value>
          <Percental>[0_OR_1]</Percental>
        </[EffectType]>
      </[UpgradeType]>
    </Values>
  </Asset>
</ModOp>
```

### Common Upgrade Types
- `FactoryUpgrade`: Production buildings
- `ResidenceUpgrade`: Housing
- `VehicleUpgrade`: Ships
- `BuildingUpgrade`: Construction
- `AttackUpgrade`: Military
- `ResearchUpgrade`: Science
- `WarehouseUpgrade`: Trade
- `MaintenanceUpgrade`: Costs

### Target Templates
- `FarmBuilding`: Farms
- `FactoryBuilding7`: All production
- `WorkshopBuilding`: Workshops
- `ResidenceBuilding7`: Residences
- `NavalUnit`: Ships
- `MilitaryBuilding`: Military structures
- `ResearchBuilding`: Labs
- `Warehouse`: Storage
- `Harbor`: Ports
- `All`: Everything

### Effect Values
- **Percental="1"**: Percentage bonus (400 = +400%)
- **Percental="0"**: Absolute bonus (2.0 = +2.0 happiness)
- **Negative values**: Reductions (-50 = -50%)

## Troubleshooting
- **Specialists not appearing**: Refresh trader inventory, check mod is active
- **Effects not working**: Ensure buildings are within Villa radius, verify buff icons appear
- **Game crashes**: Disable mod, check for GUID conflicts
- **Icons missing**: Verify icon paths exist in game files

## Compatibility
- Works with existing saves
- Compatible with most other mods
- May conflict with other specialist mods using similar GUIDs

## Credits
Created using Anno 1800 modding framework. Icons sourced from base game assets.

## Development
- **Repository**: Ready for version control with .gitignore
- **Scripts**: PowerShell scripts available for icon extraction
- **Documentation**: Comprehensive reference files in `/references/`

## Version History
- **v0.3.0**: Three working specialists (Dirk Diggler, Roger Rabbit, Tony Stark)
- **v0.2.0**: Added Roger Rabbit and Tony Stark with workforce buffs
- **v0.1.0**: Initial release with Dirk Diggler production specialist

## Contributing
Feel free to fork and extend this mod! Check `/references/making-new-specialists.md` for detailed guidance on creating new specialists.