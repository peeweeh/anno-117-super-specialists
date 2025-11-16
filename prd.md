Now let me create the complete PRD for the full roster:

---

# **Product Requirements Document (PRD)**
## **Super Specialists Mod - Complete 9-Specialist Pack**
### **Anno 117: Pax Romana**

***

## **Document Information**

| Field | Value |
|-------|-------|
| **Version** | 2.0 (Full Roster) |
| **Date** | November 15, 2025 |
| **Author** | P (Roger Sterling's Protégé) |
| **Mod Name** | super-specialists |
| **Target Game** | Anno 117: Pax Romana |
| **Mod Type** | Gameplay Enhancement |

***

## **1. Executive Summary**

The **Super Specialists** mod adds **an overpowered specialist** to Anno 117, purchaseable from traders. This specialist provides extreme buffs for production gameplay. Designed for power players who want to dominate their empire efficiently. Currently focused on Dirk Diggler, with plans to expand to more specialists later.

**Key Features:**
- 1 unique specialist with production specialization
- Purchaseable from traders (no quest/research grinding)
- Epic rarity with premium pricing
- GUID-safe implementation (2001000001-2001000002 range)
- Balanced pricing (150,000 Denarii)

***

## **2. Specialist Roster Overview**

### **2.1 Current Lineup**

| # | Name | Category | Price | Rarity | Specialization |
|---|------|----------|-------|--------|----------------|
| 1 | **Dirk Diggler** | Production Master | 150,000 | Epic | All production buildings |

**Total Collection Cost:** 150,000 Denarii

***

## **2.2 Removed Specialists (For Future Implementation)**

The following specialists were removed from the current version to focus on Dirk Diggler first. They will be re-implemented later once Dirk Diggler is working properly.

| # | Original Name | Category | Specialization | Status |
|---|----------------|----------|----------------|--------|
| 2 | **Maximus Wealthus** (Tony Stark) | Wealth Master | Residences & income | Removed |
| 3 | **Speedicus Maximus** (Captain Jack Sparrow) | Naval Master | Ships & naval warfare | Removed |
| 4 | **Agricola Prime** (Clark Kent) | Farm Master | Farms only | Removed |
| 5 | **Constructus Rapidus** (Bob the Builder) | Construction Master | Building construction | Removed |
| 6 | **Militarius Invictus** (Captain America) | Military Master | Military units | Removed |
| 7 | **Scientia Magnus** (Doc Brown) | Research Master | Research & knowledge | Removed |
| 8 | **Mercator Superior** (Gordon Gekko) | Trade Master | Trade & warehouses | Removed |
| 9 | **Fortuna Maxima** | Luck Master | Universal buffs | Removed |

***

## **3. Detailed Specialist Specifications**

### **3.1 Dirk Diggler - Production Master**
```
GUID: Item 1750001 | Buff 1750002
Icon: roman_male/icon_3d_roman_male_010.png
Price: 150,000 Denarii | Rarity: Epic
Target: FarmBuilding, FactoryBuilding7, WorkshopBuilding
```

**Effects:**
- ✅ +400% Productivity (5x production speed)
- ✅ -50% Maintenance cost
- ✅ -75% Workforce requirements

**Use Case:** General production powerhouse for any production island

***

### **3.2 Maximus Wealthus - Wealth Master**
```
GUID: Item 1750003 | Buff 1750004
Icon: roman_male/icon_3d_roman_male_020.png
Price: 120,000 Denarii | Rarity: Epic
Target: ResidenceBuilding7
```

**Effects:**
- ✅ +200% Income from residences
- ✅ +2.0 Happiness bonus
- ✅ -75% Maintenance cost

**Use Case:** Maximize income from populated residential islands

***

### **3.3 Speedicus Maximus - Naval Master**
```
GUID: Item 1750005 | Buff 1750006
Icon: roman_male/icon_3d_roman_male_015.png
Price: 100,000 Denarii | Rarity: Epic
Target: NavalUnit (Ships)
```

**Effects:**
- ✅ +300% Ship speed (4x faster travel)
- ✅ +100% Ship HP
- ✅ +100% Loading speed

**Use Case:** Slot into individual ships for ultra-fast trade routes

***

### **3.4 Agricola Prime - Farm Master**
```
GUID: Item 1750007 | Buff 1750008
Icon: celtic_male/icon_3d_celtic_male_005.png
Price: 110,000 Denarii | Rarity: Epic
Target: FarmBuilding (Farms only)
```

**Effects:**
- ✅ +500% Farm productivity (6x speed)
- ✅ -60% Maintenance cost
- ✅ -80% Workforce requirements

**Use Case:** Dedicated agricultural islands with maximum efficiency

***

### **3.5 Constructus Rapidus - Construction Master**
```
GUID: Item 1750009 | Buff 1750010
Icon: other_male/icon_3d_other_male_010.png
Price: 140,000 Denarii | Rarity: Epic
Target: All Buildings
```

**Effects:**
- ✅ -90% Construction time (10x faster building)
- ✅ -70% Construction cost

**Use Case:** Rapid city expansion and development

***

### **3.6 Militarius Invictus - Military Master**
```
GUID: Item 1750011 | Buff 1750012
Icon: roman_male/icon_3d_roman_male_025.png
Price: 130,000 Denarii | Rarity: Epic
Target: MilitaryBuilding, NavalUnit
```

**Effects:**
- ✅ +300% Attack damage
- ✅ +100% Attack range
- ✅ +200% HP

**Use Case:** Dominate military campaigns and naval warfare

***

### **3.7 Scientia Magnus - Research Master**
```
GUID: Item 1750013 | Buff 1750014
Icon: roman_female/icon_3d_roman_female_015.png
Price: 200,000 Denarii | Rarity: Legendary
Target: ResearchBuilding, PublicServiceBuilding
```

**Effects:**
- ✅ +500% Research speed (6x faster)
- ✅ +3.0 Belief bonus
- ✅ +3.0 Knowledge bonus

**Use Case:** Accelerate technology tree and cultural development

***

### **3.8 Mercator Superior - Trade Master**
```
GUID: Item 1750015 | Buff 1750016
Icon: celtic_female/icon_3d_celtic_female_012.png
Price: 125,000 Denarii | Rarity: Epic
Target: Warehouse, Harbor
```

**Effects:**
- ✅ +250% Trade income
- ✅ +200% Storage capacity
- ✅ +150% Trade route efficiency

**Use Case:** Maximize trade empire profits and logistics

***

### **3.9 Fortuna Maxima - Luck Master**
```
GUID: Item 1750017 | Buff 1750018
Icon: roman_female/icon_3d_roman_female_020.png
Price: 250,000 Denarii | Rarity: Legendary
Target: All Buildings (Universal)
```

**Effects:**
- ✅ +300% Income
- ✅ +300% Productivity
- ✅ +5.0 Happiness
- ✅ -90% Maintenance cost

**Use Case:** Ultimate game-breaking specialist for complete domination

***

## **4. Mod Structure & File Organization**

### **4.1 Folder Structure**
```
super-specialists/
├── modinfo.json
├── references/
│   ├── specialists.xml      (Base game reference)
│   └── traders.xml          (Trader GUID reference)
├── data/
│   └── config/
│       └── assets/
│           └── assets.xml   (Main mod file)
└── README.md
```

### **4.2 File Purposes**

| File | Purpose |
|------|---------|
| **modinfo.json** | Mod metadata & registration |
| **assets.xml** | All specialist definitions & trader integration |
| **specialists.xml** | Reference file (base game specialists) |
| **traders.xml** | Reference file (trader GUID lookup) |
| **README.md** | User installation & usage guide |

***

## **5. Technical Implementation**

### **5.1 GUID Allocation Strategy**

**Reserved Range:** 1750001-1750018 (9 specialists × 2 GUIDs each)

| Specialist | Item GUID | Buff GUID |
|------------|-----------|-----------|
| Dirk Diggler | 1750001 | 1750002 |
| Maximus Wealthus | 1750003 | 1750004 |
| Speedicus Maximus | 1750005 | 1750006 |
| Agricola Prime | 1750007 | 1750008 |
| Constructus Rapidus | 1750009 | 1750010 |
| Militarius Invictus | 1750011 | 1750012 |
| Scientia Magnus | 1750013 | 1750014 |
| Mercator Superior | 1750015 | 1750016 |
| Fortuna Maxima | 1750017 | 1750018 |

**Future Expansion:** 1750019-1750099 available (40+ more specialists possible)

***

### **5.2 Trader Integration**

**Trader GUIDs:** 43018, 43021, 43019, 43020

All specialists added via:
```xml
<ModOp Type="add" GUID="43018,43021,43019,43020" Path="/Values/RewardPool/ItemsPool">
  <Item><ItemLink>1750001</ItemLink></Item>
  <!-- ... all 9 specialists ... -->
</ModOp>
```

***

### **5.3 Icon Asset Map**

| Specialist | Icon Category | Icon Number | Visual Theme |
|------------|---------------|-------------|--------------|
| Dirk Diggler | roman_male | 010 | Distinguished craftsman |
| Maximus Wealthus | roman_male | 020 | Wealthy patrician |
| Speedicus Maximus | roman_male | 015 | Naval commander |
| Agricola Prime | celtic_male | 005 | Rugged farmer |
| Constructus Rapidus | other_male | 010 | Master builder |
| Militarius Invictus | roman_male | 025 | Battle-hardened general |
| Scientia Magnus | roman_female | 015 | Scholarly sage |
| Mercator Superior | celtic_female | 012 | Shrewd merchant |
| Fortuna Maxima | roman_female | 020 | Divine empress |

***

## **6. Pricing & Balance Strategy**

### **6.1 Price Tiers**

| Tier | Price Range | Rarity | Power Level |
|------|-------------|--------|-------------|
| **Entry** | 100k-120k | Epic | Specialized buffs |
| **Mid** | 125k-140k | Epic | Strong universal impact |
| **Premium** | 150k | Epic | Game-changing single domain |
| **Legendary** | 200k-250k | Legendary | Ultimate power |

### **6.2 Rarity Distribution**
- **Epic (7):** Purchaseable anytime from traders
- **Legendary (2):** High cost but still purchaseable (unlike quest-locked legendaries)

### **6.3 Balance Philosophy**
**Intentionally Overpowered** - These specialists are designed for:
- Late-game players with excess wealth
- Players who want to skip grinding
- Creative/sandbox mode play
- Achievement farming

**Not Balanced for Competitive Play**

***

## **7. Implementation Code Structure**

### **7.1 Specialist Template Pattern**

Each specialist requires **2 assets**:

```xml
<!-- ITEM (What you slot into Villa) -->
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
        <Rarity>[RARITY]</Rarity>
        <TradePrice>[PRICE]</TradePrice>
      </Item>
    </Values>
  </Asset>
</ModOp>

<!-- BUFF (What it does) -->
<ModOp Type="addNextSibling" GUID="51886">
  <Asset>
    <Template>BuildingBuffTemplate</Template> <!-- or ShipBuffTemplate -->
    <Values>
      <Standard>
        <GUID>[BUFF_GUID]</GUID>
        <Name>[NAME] Buff</Name>
      </Standard>
      <[BuffCategory]Upgrade>
        <[EffectType]>
          <Value>[VALUE]</Value>
          <Percental>[0_OR_1]</Percental>
        </[EffectType]>
      </[BuffCategory]Upgrade>
    </Values>
  </Asset>
</ModOp>
```

***

## **8. Vibe Coding Implementation Guide**

### **8.1 Development Workflow**

For each specialist:

1. **Copy Template** from Dirk Diggler
2. **Update GUIDs** (item GUID, buff GUID)
3. **Change Icon** path
4. **Modify Target** templates
5. **Adjust Effects** values
6. **Set Price & Rarity**
7. **Add to Trader Pool**

### **8.2 GitHub Copilot Prompts**

When adding a specialist, use these prompts:

```
"Add [NAME] specialist with GUID [ITEM_GUID]/[BUFF_GUID], 
targeting [TEMPLATE], with +[VALUE]% [EFFECT_TYPE], 
price [PRICE], icon [ICON_PATH], epic rarity"
```

**Example:**
```
"Add Agricola Prime specialist with GUID 1750007/1750008, 
targeting FarmBuilding, with +500% ProductivityUpgrade, 
price 110000, icon celtic_male_005, epic rarity"
```

***

## **9. Target Templates Reference**

### **9.1 Common Building Templates**

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

### **9.2 Universal Targeting**

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

***

## **10. Effect Types Reference**

### **10.1 Production Effects**

```xml
<FactoryUpgrade>
  <ProductivityUpgrade>
    <Value>400</Value>
    <Percental>1</Percental>
  </ProductivityUpgrade>
</FactoryUpgrade>
```

### **10.2 Economic Effects**

```xml
<ResidenceUpgrade>
  <IncomeUpgrade>
    <Value>200</Value>
    <Percental>1</Percental>
  </IncomeUpgrade>
</ResidenceUpgrade>
```

### **10.3 Maintenance Effects**

```xml
<MaintenanceUpgrade>
  <MaintenanceFactorUpgrade>
    <Value>-50</Value>
    <Percental>1</Percental>
  </MaintenanceFactorUpgrade>
  <WorkforceMaintenanceFactorUpgrade>
    <Value>-75</Value>
    <Percental>1</Percental>
  </WorkforceMaintenanceFactorUpgrade>
</MaintenanceUpgrade>
```

### **10.4 Ship Effects**

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

### **10.5 Military Effects**

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

### **10.6 Construction Effects**

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

***

## **11. Testing Requirements**

### **11.1 Installation Testing**
- [ ] Mod loads without errors
- [ ] All 9 specialists appear in trader inventory
- [ ] Icons display correctly
- [ ] No GUID conflicts

### **11.2 Functional Testing**

Per specialist:
- [ ] Can purchase from trader
- [ ] Correct price charged
- [ ] Can slot into Villa/Officium/Ship
- [ ] Buff icon appears on affected buildings
- [ ] Effects apply correctly (verify percentages)

### **11.3 Balance Testing**
- [ ] No game crashes with extreme values
- [ ] UI displays properly with multiple specialists
- [ ] Save/load preserves specialist data

***

## **12. User Documentation**

### **12.1 README.md Contents**

```markdown
# Super Specialists Mod

## Overview
9 overpowered specialists purchaseable from traders.

## Installation
1. Extract to `Documents/Anno 117/mods/`
2. Launch game
3. Visit any trader → Specialists tab

## Specialist List
[Table with all 9 specialists, prices, effects]

## Tips
- Dirk Diggler: Best all-around production
- Fortuna Maxima: Ultimate game-breaker (250k)
- Speedicus Maximus: Slot into ships for 4x speed

## Balance
These specialists are INTENTIONALLY overpowered.
Not recommended for competitive play.

## Compatibility
Works with existing saves.
May conflict with other specialist mods.
```

***

## **13. Deployment Checklist**

### **13.1 Pre-Release**
- [ ] All 9 specialists coded in assets.xml
- [ ] All GUIDs sequential and documented
- [ ] All icons verified in game files
- [ ] Trader integration code added
- [ ] modinfo.json complete
- [ ] README.md written

### **13.2 Release Package**
- [ ] Folder structure correct
- [ ] Reference files included
- [ ] Test on clean Anno 117 install
- [ ] Create .zip distribution
- [ ] Upload to Nexus Mods / mod.io

***

## **14. Future Enhancements**

### **14.1 Phase 2 (Optional)**
- Custom description text (requires texts_english.xml)
- Visual FX on specialist activation
- Specialist synergy bonuses (multiple specialists stacking)
- Rarity variants (Common/Rare versions with lower buffs)

### **14.2 Phase 3 (Community Requests)**
- Quest chain to unlock specialists
- Specialist upgrade system
- Seasonal event specialists
- Player-customizable buff values

***

## **15. Known Limitations**

1. **Not Island-Wide:** Effects limited to Villa/Officium radius (engine limitation)
2. **No Custom Text:** Uses generic text IDs (future enhancement)
3. **Legendary Still Purchaseable:** Unlike base game legendaries (by design)
4. **No Stacking Limits:** Players can equip multiple of same specialist (feature not bug)

***

## **16. Support Information**

### **16.1 Common Issues**

**Specialists not appearing:**
- Check mod is active in Mod Manager
- Refresh trader inventory (costs Denarii)
- Epic rarity should spawn regularly

**Effects not working:**
- Verify building is within Villa radius
- Check affected buildings show buff icon
- Reload save/session if needed

**Game crashes:**
- Disable mod, test base game
- Check for GUID conflicts with other mods
- Verify XML syntax validity

***

## **17. Version History**

| Version | Date | Changes |
|---------|------|---------|
| 1.0 | Nov 15, 2025 | Initial release (Dirk Diggler + 2 specialists) |
| 2.0 | Nov 15, 2025 | Full roster (9 specialists complete) |

***

## **18. Credits & License**

**Created by:** P (Roger Sterling's Protégé)  
**Based on:** Anno 117: Pax Romana by Ubisoft Mainz  
**Modding Framework:** Anno Mod Loader  
**License:** Free to use and modify  

***

## **19. Acceptance Criteria**

✅ **Must Have (MVP):**
- All 9 specialists functional
- Purchaseable from traders
- No game crashes
- GUID-safe implementation

✅ **Should Have:**
- README documentation
- Reference files included
- Clear pricing structure

✅ **Nice to Have:**
- Custom descriptions
- Visual polish
- Community feedback integration

***

**Status:** ✅ **READY FOR VIBE CODING IMPLEMENTATION**

**Next Steps:**
1. Generate complete assets.xml from this PRD
2. Add reference files to `/references/` folder
3. Write README.md
4. Test all 9 specialists
5. Package and release

***

This PRD provides everything needed for vibe coding/GitHub Copilot to generate the complete mod. Just feed it the specialist specifications and templates!
