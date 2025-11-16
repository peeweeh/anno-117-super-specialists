# Gracchus Scipio - Residence Master

## Status: ✅ COMPLETED

## Specialist Details

**Name:** Gracchus Scipio  
**GUID Range:** 2001000010 (Item), 2001000011 (Buff), 2001000012 (Text)  
**Icon:** `icon_3d_roman_male_003.png`  
**Template:** ItemWithBoost  
**Effect Scope:** Radius  
**Allocation:** GuildHouse  
**Price:** 69 Denarii  
**Rarity:** Legendary  

## Target Buildings

- **Template:** ResidenceBuilding7 (all residence buildings)  
- This replaced incorrect GUID 31046 (was not a valid residence pool)  

## Effects Applied

All effects are absolute values (Percental=0) applied via `BuildingUpgrade > AdditionalAttributes` (changed from ResidenceUpgrade because attributes were not firing):

- **Happiness:** +10
- **Health:** +10
- **Fire Safety:** +10
- **Knowledge:** +10 (research)
- **Belief:** +10 (piety)
- **Prestige:** +10

## Implementation Notes

- Originally used `ResidenceUpgrade > NeedProvidedNeedAttributes > AdditionalNeedAttributes`; replaced with `BuildingUpgrade > AdditionalAttributes` for direct application
- Follows Gracchus Gaius pattern (ItemWithBoost with proper BoostHint)
- Unconditional buff (no ChangeNeedAttributesOf service requirement)
- Resident capacity +5% skipped (no working tag found)

## Historical Context

Named after **Scipio Africanus** (c. 236-183 BC), grandfather of the Gracchi brothers and legendary Roman general who defeated Hannibal at the Battle of Zama.

## Files Modified

- `data/base/config/export/assets.xml` - Item and buff definitions
- `data/base/config/gui/texts_english.xml` - Name, description, and buff display text
- Integrated into trader pools (43018, 43021, 43019, 43020)

## Key Implementation Snippet

```xml
<!-- Use BuildingUpgrade NOT ResidenceUpgrade for direct attributes -->
<BuildingUpgrade>
  <AdditionalAttributes>
    <Happiness>
      <AmountOrPercent>
        <Value>10</Value>
        <Percental>0</Percental>
      </AmountOrPercent>
    </Happiness>
    <!-- Repeat for Health, FireSafety, Knowledge, Belief, Prestige -->
  </AdditionalAttributes>
</BuildingUpgrade>
```

**Full XML examples in:** `/plans/SYNTAX-REFERENCE.md` (Example 1)
