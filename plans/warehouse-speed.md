# Gracchus Fulvia - Warehouse Master

## Status: ✅ IMPLEMENTED (renamed from Marcus to Fulvia)

## Specialist Details

**Name:** Gracchus Fulvia  
**GUID Range:** 2001000013 (Item), 2001000014 (Buff), 2001000015 (Text)  
**Icon:** `icon_3d_roman_male_004.png`  
**Template:** Item (simple, not ItemWithBoost)  
**Effect Scope:** ObjectsInArea (island-wide)  
**Allocation:** GuildHouse  
**Price:** 69 Denarii  
**Rarity:** Legendary  

## Target Buildings

- **GUID 38564** - All warehouses

## Effects Applied

- **Warehouse Loading Speed:** +100% (doubles loading speed)
  - Uses `WarehouseUpgrade > AdditionalLoadingSpeedInPercent`
  - Value: 100 (direct percentage, no Percental flag needed)

## Implementation Notes

- Uses simple `Item` template (not `ItemWithBoost`) following Gracchus Tiberius pattern
- Island-wide effect using `ObjectsInArea` scope
- Affects all warehouses on the island simultaneously
- No `Locked` section needed for straightforward implementation
- Simplified buff structure - only `WarehouseUpgrade` section required

## Template Pattern Comparison

**Similar to:** Gracchus Tiberius (Production Master)  
**Reason:** Both use island-wide effects (`ObjectsInArea`) rather than radius-based

**Different from:** Gracchus Gaius/Cornelia/Scipio  
**Reason:** Those use `ItemWithBoost` with `Radius` scope for localized effects

## Historical Context

Named **Marcus**, a common Roman praenomen (given name), continuing the Gracchi family theme with a focus on logistics and trade efficiency.

## Key Implementation Snippet

```xml
<!-- Simple island-wide warehouse speed buff -->
<Effect>
  <EffectScope>ObjectsInArea</EffectScope>
  <Targets>
    <Item>
      <GUID>38564</GUID> <!-- All warehouses -->
    </Item>
  </Targets>
</Effect>
<WarehouseUpgrade>
  <AdditionalLoadingSpeedInPercent>100</AdditionalLoadingSpeedInPercent>
</WarehouseUpgrade>
```

**Full XML examples in:** `/plans/SYNTAX-REFERENCE.md` (Example 2)
## Files Modified

- `data/base/config/export/assets.xml` - Item and buff definitions
- `data/base/config/gui/texts_english.xml` - Name, description, and buff display text
- Integrated into trader pools (43018, 43021, 43019, 43020)