# Super Specialists Mod for Anno 117: Pax Romana

## Overview
This mod adds **overpowered specialists** to Anno 117: Pax Romana, featuring three powerful specialists based on the historical Gracchi family. All specialists are purchaseable directly from traders and provide extreme buffs. Designed for players who want to dominate their empire efficiently.

**Naming Convention:** All specialists use the **lastname firstname** format (e.g., "Gracchus Tiberius") to avoid copyright conflicts while maintaining thematic authenticity with Roman history.

## Installation
1. Locate your Anno 117 mods folder (typically in game installation directory)
2. Copy the entire `super-specialists` folder into the mods directory
3. Launch Anno 117: Pax Romana
4. Enable the mod in the in-game Mod Manager (if available)
5. Visit any trader and check the Specialists tab

## Current Specialists

All specialists are named after the historical **Gracchi family** of Roman reformers, following the **lastname firstname** naming convention.

| Name | Category | Icon | Scope | Price | Key Effects |
|------|----------|------|-------|-------|-------------|
| **Gracchus Tiberius** | Production Master | roman_male_002 | Island-wide | 69 | +400% productivity for all production buildings |
| **Gracchus Gaius** | Workforce Master | roman_male_001 | Radius | 69 | Adds extra Peasant workforce to Coopers and Cookhouses |
| **Gracchus Cornelia** | Workshop Master | roman_female_001 | Radius | 69 | Adds extra Peasant workforce to Albion Artisans and Dressers |
| **Gracchus Scipio** | Residence Master | roman_male_003 | Radius | 69 | +10 happiness, health, fire safety, knowledge, belief, prestige (all residences) |
| **Gracchus Marcus** | Warehouse Master | roman_male_004 | Island-wide | 69 | +100% warehouse loading speed (doubles speed) |

**Total Cost:** 345 Denarii (5 specialists)

### Historical Context
- **Tiberius Gracchus** (163-133 BC): Roman tribune who championed land reform for the common people
- **Gaius Gracchus** (154-121 BC): Younger brother who continued reform efforts with grain subsidies and colonies
- **Cornelia Africana** (c. 190-100 BC): Mother of the Gracchi, celebrated for her wisdom and influence in Roman society
- **Scipio Africanus** (c. 236-183 BC): Grandfather of the Gracchi, legendary general who defeated Hannibal at Zama
- **Marcus**: Common Roman praenomen representing the family's practical approach to logistics and trade

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
- **Item Name**: Lastname Firstname format (e.g., "Gracchus Tiberius")
- **Description**: Thematic, historically-inspired flavor text (e.g., "The People's Tribune")
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

**Naming Convention:** Use lastname firstname format (e.g., "Gracchus [Name]") to maintain consistency.

Template:
```xml
<!-- ITEM ASSET -->
<ModOp Type="addNextSibling" GUID="51885">
  <Asset>
    <Template>ItemTemplate</Template>
    <Values>
      <Standard>
        <GUID>[ITEM_GUID]</GUID>
        <Name>[LASTNAME FIRSTNAME]</Name>
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
- **v1.1.0**: Added Gracchus Scipio (residence buffs) and Gracchus Marcus (warehouse speed) - 5 specialists total
- **v1.0.0**: Renamed to Gracchi family (Tiberius, Gaius, Cornelia) with semi-realistic icons - ready for public release
- **v0.3.0**: Three working specialists with production and workforce buffs
- **v0.2.0**: Added workforce specialists with proper ItemWithBoost structure
- **v0.1.0**: Initial release with production specialist

## Contributing
Feel free to fork and extend this mod! This README contains comprehensive guidance for creating new specialists.

---

## Creating New Specialists - Detailed Guide

### Working Examples in This Mod

#### 1. Gracchus Tiberius - Production Master
- **GUIDs:** 2001000001 / 2001000002 / 2001000003
- **Effect:** +400% productivity
- **Template:** Item
- **Scope:** ObjectsInArea (island-wide)
- **Targets:** 38370 (All Production Buildings)
- **Icon:** icon_3d_roman_male_002.png

#### 2. Gracchus Gaius - Workforce Master
- **GUIDs:** 2001000004 / 2001000005 / 2001000006
- **Effect:** Adds peasant workforce
- **Template:** ItemWithBoost
- **Scope:** Radius
- **Targets:** 3142 (Cooper), 3145 (Cookhouse)
- **Icon:** icon_3d_roman_male_001.png

#### 3. Gracchus Cornelia - Workshop Master
- **GUIDs:** 2001000007 / 2001000008 / 2001000009
- **Effect:** Adds peasant workforce
- **Template:** ItemWithBoost
- **Scope:** Radius
- **Targets:** 6471, 6475, 6472 (Albion workshops)
- **Icon:** icon_3d_roman_female_001.png

#### 4. Gracchus Scipio - Residence Master
- **GUIDs:** 2001000010 / 2001000011 / 2001000012
- **Effect:** +10 to 6 residence attributes
- **Template:** ItemWithBoost
- **Scope:** Radius
- **Targets:** ResidenceBuilding7 (all residences)
- **Icon:** icon_3d_roman_male_003.png

#### 5. Gracchus Marcus - Warehouse Master
- **GUIDs:** 2001000013 / 2001000014 / 2001000015
- **Effect:** +100% warehouse loading speed
- **Template:** Item
- **Scope:** ObjectsInArea (island-wide)
- **Targets:** 38564 (All Warehouses)
- **Icon:** icon_3d_roman_male_004.png

### Real Game Specialists Reference

Check `/real-specialists/` folder for base game examples:

- **agriculture.xml** - Farms/plantations specialist with patron condition (Ceres)
- **dorian.xml** - Cooper/Cookhouse specialist with health condition
- **livia.xml** - Dresser/Artisan specialist with prestige condition
- **tarragon.xml** - Fishery/Pasture specialist with happiness condition

### GUID Structure (Critical!)

Each specialist needs **3 consecutive GUIDs**:
- **X** - Item/specialist name (used in Item's `<GUID>` and `<OasisId>`)
- **X+1** - Buff GUID (used in Item's `<InfoDescription>` and Buff's `<GUID>`)
- **X+2** - Buff display text (used in Buff's Text `<OasisId>`)

**Next available:** 2001000016, 2001000017, 2001000018

**Safe range:** 2,001,000,000 - 2,001,009,999 (see `/references/guid.md`)

### Step-by-Step: Create New Specialist

#### Step 1: Choose GUIDs and Icon

Pick 3 consecutive GUIDs (e.g., 2001000016-18)
Choose icon from `/references/extracted_specialist_icons.txt`

#### Step 2: Add Item to assets.xml

Copy Gracchus Gaius or Gracchus Tiberius item structure. Key sections:

**Standard:**
```xml
<Standard>
  <GUID>YOUR_GUID_X</GUID>
  <Name>Gracchus YourName</Name>
  <IconFilename>data/ui/fhd/base/icon_content/items_specialist/roman_male/icon_XXX.png</IconFilename>
  <InfoDescription>YOUR_GUID_X+1</InfoDescription>
</Standard>
```

**Text (for ItemWithBoost):**
```xml
<Text>
  <LocaText>
    <English>
      <Text>Specialist</Text>
      <Status>Exported</Status>
      <ExportCount>1</ExportCount>
    </English>
  </LocaText>
  <OasisId>YOUR_GUID_X</OasisId>
</Text>
```

**Effect:**
```xml
<Effect>
  <EffectScope>Radius</EffectScope>
  <Buffs>
    <Item><GUID>YOUR_GUID_X+1</GUID></Item>
  </Buffs>
  <Targets>
    <Item><GUID>TARGET_BUILDING_GUID</GUID></Item>
  </Targets>
</Effect>
```

**Item properties:**
```xml
<Item>
  <MaxStackSize>20</MaxStackSize>
  <Rarity>Legendary</Rarity>
  <ItemType>Specialist</ItemType>
  <Allocation>GuildHouse</Allocation>
  <TradePrice>69</TradePrice>
  <TradePriceOnlineCurrency>69</TradePriceOnlineCurrency>
  <Niche>Civic</Niche>
</Item>
```

**ItemWithBoost (if using ItemWithBoost template):**
```xml
<ItemWithBoost>
  <BoostBuffs>
    <Item><GUID>YOUR_GUID_X+1</GUID></Item>
  </BoostBuffs>
  <BoostHint>-6903508852426753616</BoostHint>
</ItemWithBoost>
```

#### Step 3: Add Buff to assets.xml

```xml
<ModOp Type="addNextSibling" GUID="41350">
  <Asset>
    <Template>BuildingBuff</Template>
    <Values>
      <Standard>
        <GUID>YOUR_GUID_X+1</GUID>
        <Name>Gracchus YourName Buff</Name>
      </Standard>
      <Buff>
        <SourceCategory>Item</SourceCategory>
      </Buff>
      <Text>
        <OasisId>YOUR_GUID_X+2</OasisId>
      </Text>
      <BuildingUpgrade>
        <!-- Your buff effects here -->
      </BuildingUpgrade>
    </Values>
  </Asset>
</ModOp>
```

#### Step 4: Add Texts to texts_english.xml

```xml
<ModOp Add="/TextExport/Texts">
  <Text>
    <Text>Gracchus YourName</Text>
    <LineId>YOUR_GUID_X</LineId>
  </Text>
</ModOp>

<ModOp Add="/TextExport/Texts">
  <Text>
    <Text>Long description explaining what this specialist does...</Text>
    <LineId>YOUR_GUID_X+1</LineId>
  </Text>
</ModOp>

<ModOp Add="/TextExport/Texts">
  <Text>
    <Text>Buff Name</Text>
    <LineId>YOUR_GUID_X+2</LineId>
  </Text>
</ModOp>
```

#### Step 5: Add to Trader Pools

```xml
<ModOp Type="add" GUID="43018,43021,43019,43020" Path="/Values/RewardPool/ItemsPool">
  <Item>
    <ItemLink>YOUR_GUID_X</ItemLink>
  </Item>
</ModOp>
```

### Buff Types Examples

#### Productivity Boost (like Gracchus Tiberius)

```xml
<FactoryUpgrade>
  <ProductivityUpgrade>
    <Value>400</Value>
    <Percental>1</Percental>
  </ProductivityUpgrade>
</FactoryUpgrade>
```

#### Additional Workforce (like Gracchus Gaius/Cornelia)

```xml
<BuildingUpgrade>
  <AdditionalWorkforces>
    <Item>
      <WorkforceGUID>2181</WorkforceGUID>
    </Item>
    <Item>
      <WorkforceGUID>2192</WorkforceGUID>
    </Item>
  </AdditionalWorkforces>
</BuildingUpgrade>
```

#### Building Attributes (like Gracchus Scipio)

```xml
<BuildingUpgrade>
  <AdditionalAttributes>
    <Happiness>
      <AmountOrPercent>
        <Value>10</Value>
        <Percental>0</Percental>
      </AmountOrPercent>
    </Happiness>
    <Health>
      <AmountOrPercent>
        <Value>10</Value>
        <Percental>0</Percental>
      </AmountOrPercent>
    </Health>
    <!-- Add more attributes as needed -->
  </AdditionalAttributes>
</BuildingUpgrade>
```

#### Warehouse Speed (like Gracchus Marcus)

```xml
<WarehouseUpgrade>
  <AdditionalLoadingSpeedInPercent>100</AdditionalLoadingSpeedInPercent>
</WarehouseUpgrade>
```

#### Maintenance Reduction

```xml
<MaintenanceUpgrade>
  <MaintenanceFactorUpgrade>
    <Value>-50</Value>
    <Percental>1</Percental>
  </MaintenanceFactorUpgrade>
</MaintenanceUpgrade>
```

### Finding Target Building GUIDs

Look in `/real-specialists/*.xml` for examples:

**From agriculture.xml:**
- 42602 - All Farms pool
- 51905 - All Plantations pool

**From dorian.xml:**
- 50606 - All Coopers pool
- 50610 - All Cookhouses pool
- 3142 - Individual Cooper building

**From livia.xml:**
- 50611 - All Dressers pool
- 50604 - All Artisans pool

**From tarragon.xml:**
- 50601 - All Fisheries pool
- 50224 - All Pastures pool

**Other common targets:**
- 38370 - All production buildings
- 38564 - All warehouses
- ResidenceBuilding7 - All residences (use Template instead of GUID)

**Pattern:** Building pools (GUID 50XXX, 42XXX) affect all buildings of that type. Individual GUIDs (3XXX, 6XXX) affect specific buildings.

### Template Comparison

#### Item Template (Simple - Gracchus Tiberius/Marcus)
- No ItemWithBoost section
- Uses `<EffectScope>ObjectsInArea</EffectScope>` (island-wide)
- Niche: `None`
- Best for: Simple production/warehouse/maintenance buffs

#### ItemWithBoost Template (Advanced - Gracchus Gaius/Cornelia/Scipio)
- Requires ItemWithBoost section with BoostBuffs + BoostHint
- Uses `<EffectScope>Radius</EffectScope>` (local area)
- Niche: `Civic`
- Best for: Workforce additions, building attributes, conditional effects

### Advanced: Conditional Boosts

From `/real-specialists/agriculture.xml` - boost when Ceres patron is dominant:

```xml
<ItemWithBoost>
  <BoostCondition>
    <IsBaseAutoCreateAsset>1</IsBaseAutoCreateAsset>
    <Values>
      <PreConditionList>
        <Condition>
          <Template>ConditionDominantPatron</Template>
          <Values>
            <Condition/>
            <ConditionDominantPatron>
              <PatronGUID>43594</PatronGUID>
            </ConditionDominantPatron>
          </Values>
        </Condition>
      </PreConditionList>
    </Values>
  </BoostCondition>
  <BoostBuffs>
    <Item><GUID>BOOSTED_BUFF_GUID</GUID></Item>
  </BoostBuffs>
  <BoostHint>-6904324744489641815</BoostHint>
</ItemWithBoost>
```

Other conditions from real specialists:
- **Health condition** (dorian.xml): NeedAttributeType = Health, Amount = 800
- **Prestige condition** (livia.xml): NeedAttributeType = Prestige, Amount = 10000
- **Happiness condition** (tarragon.xml): NeedAttributeType = Happiness, Amount = 800

### Common Mistakes

1. Using 2 GUIDs instead of 3 (need name + description + buff name)
2. Buff OasisId = X+1 (should be X+2)
3. Item OasisId = X+1 (should be X)
4. Missing BoostHint in ItemWithBoost
5. Wrong buff GUID in Item Effect (should be X+1)
6. Copy-pasting without changing ALL GUIDs
7. Wrong icon path (check extracted_specialist_icons.txt)
8. Using ResidenceUpgrade for attributes (use BuildingUpgrade > AdditionalAttributes)
9. Wrong EffectScope (ObjectsInArea for island-wide, Radius for local)

### Testing Checklist

- [ ] 3 unique consecutive GUIDs chosen
- [ ] All GUID references updated (X, X+1, X+2)
- [ ] Icon path exists in extracted list
- [ ] 3 text entries added to texts_english.xml
- [ ] Target building GUIDs are valid
- [ ] Buff type matches desired effect
- [ ] Correct template (Item vs ItemWithBoost)
- [ ] Correct EffectScope (ObjectsInArea vs Radius)
- [ ] Added to trader pools (43018,43021,43019,43020)
- [ ] Load game and check trader inventory
- [ ] Verify buffs apply and icons show

### Quick Clone Method

1. Open `/data/base/config/export/assets.xml`
2. Find Gracchus Gaius or Gracchus Tiberius (depending on your needs)
3. Copy entire Item + Buff sections
4. Find/Replace all GUIDs (2001000004 → 2001000016, etc.)
5. Update Name, Icon, Targets, Effect values
6. Copy 3 text blocks from texts_english.xml
7. Update text content
8. Add to trader pool
9. Save and test

### Resources

- **Working examples:** `/data/base/config/export/assets.xml` (this mod)
- **Real specialists:** `/real-specialists/*.xml` (base game)
- **Icon list:** `/references/extracted_specialist_icons.txt`
- **GUID ranges:** `/references/guid.md`
- **Text strings:** `/data/base/config/gui/texts_english.xml`

### Tips

- Start by copying an existing working specialist
- Change one thing at a time
- Test after each change
- Use Find/Replace for GUID changes (be careful!)
- Add XML comments for clarity
- Keep backup of working version

---

## Technical Reference from PRD

### Effect Types Reference

#### Production Effects

```xml
<FactoryUpgrade>
  <ProductivityUpgrade>
    <Value>400</Value>
    <Percental>1</Percental>
  </ProductivityUpgrade>
</FactoryUpgrade>
```

#### Economic Effects

```xml
<ResidenceUpgrade>
  <IncomeUpgrade>
    <Value>200</Value>
    <Percental>1</Percental>
  </IncomeUpgrade>
</ResidenceUpgrade>
```

#### Ship Effects

```xml
<VehicleUpgrade>
  <SpeedUpgrade>
    <Value>300</Value>
    <Percental>1</Percental>
  </SpeedUpgrade>
  <MaxHitpointsUpgrade>
    <Value>100</Value>
    <Percental>1</Percental>
  </MaxHitpointsUpgrade>
</VehicleUpgrade>
```

#### Military Effects

```xml
<AttackUpgrade>
  <AttackUpgrade>
    <Value>300</Value>
    <Percental>1</Percental>
  </AttackUpgrade>
  <AttackRangeUpgrade>
    <Value>100</Value>
    <Percental>1</Percental>
  </AttackRangeUpgrade>
</AttackUpgrade>
```

#### Construction Effects

```xml
<BuildingUpgrade>
  <ConstructionCostUpgrade>
    <Value>-70</Value>
    <Percental>1</Percental>
  </ConstructionCostUpgrade>
  <ConstructionTimeUpgrade>
    <Value>-90</Value>
    <Percental>1</Percental>
  </ConstructionTimeUpgrade>
</BuildingUpgrade>
```

### Target Templates Reference

| Template | Affects |
|----------|---------|
| `FarmBuilding` | All farms |
| `FactoryBuilding7` | All factories/production |
| `WorkshopBuilding` | All workshops |
| `ResidenceBuilding7` | All residences |
| `NavalUnit` | All ships |
| `MilitaryBuilding` | Military structures |
| `PublicServiceBuilding` | Public buildings |
| `ResearchBuilding` | Research facilities |
| `Warehouse` | Storage buildings |
| `Harbor` | Port/harbor structures |

### Universal Targeting

For specialists affecting everything:
```xml
<Targets>
  <Item><Template>FarmBuilding</Template></Item>
  <Item><Template>FactoryBuilding7</Template></Item>
  <Item><Template>WorkshopBuilding</Template></Item>
  <Item><Template>ResidenceBuilding7</Template></Item>
  <Item><Template>PublicServiceBuilding</Template></Item>
</Targets>
```