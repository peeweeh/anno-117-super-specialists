# Gracchus Crassus - The Tax Collector

## Status: ✅ IMPLEMENTED

## Specialist Details

**Name:** Gracchus Crassus  
**GUID Range:** 1500050031 (Item), 1500050032 (Buff), 1500050033 (Text)  
**Icon:** `icon_3d_roman_male_006.png` (wealthy aristocrat appearance)  
**Template:** ItemWithBoost (radius-based)  
**Effect Scope:** Radius  
**Allocation:** GuildHouse (Villa/Officium)  
**Price:** 69 Denarii  
**Rarity:** Legendary  
**Historical:** After Marcus Licinius Crassus (115-53 BC), wealthiest man in Rome, formed First Triumvirate with Caesar and Pompey. Known for immense wealth from property speculation and tax farming.

## Core Effect

**Maintenance Reduction:** -50% maintenance costs on residences within radius

**Why this works:** Anno 117 doesn't have IncomeUpgrade. MaintenanceUpgrade is proven (used by Duilius). Reducing costs = more net income!

## Target Buildings

All residence tiers in both Latium and Albion (same as Julia population specialist):

### Latium Residences
- **GUID 3087:** Tier 1 Latium residences
- **GUID 3141:** Tier 2 Latium residences  
- **GUID 3142:** Tier 3 Latium residences
- **GUID 3145:** Tier 4 Latium residences

### Albion Residences
- **GUID 6414:** Tier 1 Albion residences
- **GUID 6471:** Tier 2 Albion residences
- **GUID 6475:** Tier 3 Albion residences
- **GUID 6472:** Tier 4 Albion residences (Citizens)
- **GUID 6514:** Tier 4 Albion residences (Patricians)

**Total:** 9 residence GUIDs (same target list as Julia)

## Key Implementation

**Buff Type:** `MaintenanceUpgrade > MaintenanceFactorUpgrade` (proven working - same as Duilius)

```xml
<MaintenanceUpgrade>
  <MaintenanceFactorUpgrade>
    <Value>-50</Value>
    <Percental>1</Percental>
  </MaintenanceFactorUpgrade>
</MaintenanceUpgrade>
```

**Template:** ItemWithBoost (radius-based civic specialist)  
**Targets:** All 9 residence GUIDs (same as Julia population specialist)  
**Trader:** Added to 4 trader pools (43018/43021/43019/43020)

## Why It Works

- MaintenanceUpgrade proven (Duilius uses it successfully)
- IncomeUpgrade doesn't exist in Anno 117 (caused load failure)
- -50% maintenance = effectively doubles net income
- Radius scope = balanced (not OP island-wide)
- No region split needed (unlike workforce specs)

## Testing Notes

1. Place in Villa near residences
2. Check maintenance cost reduction appears
3. Net effect: more Denarii in your pocket
4. Works both Latium & Albion

**Confidence: 100%** - Uses proven MaintenanceUpgrade pattern