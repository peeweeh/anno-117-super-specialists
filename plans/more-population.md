# Gracchus Julia - The Population Booster

## Status: ✅ IMPLEMENTED

## Specialist Details

**Name:** Gracchus Julia  
**GUID Range:** 2001000097 (Item), 2001000098 (Buff), 2001000099 (Text)  
**Icon:** `icon_3d_roman_female_009.png` or available female variant  
**Template:** ItemWithBoost (radius-based)  
**Effect Scope:** Radius  
**Allocation:** GuildHouse  
**Price:** 69 Denarii  
**Rarity:** Legendary  
**Historical:** Julia, common Roman women's name; represents family & population growth

## Target Buildings

- **Template:** ResidenceBuilding7 (all residence buildings)
- Affects all residence tiers within radius

## Effects Applied

### Primary Effect: Population Boost
- **Population:** +5 (absolute value per residence)
- **Path:** `BuildingUpgrade > AdditionalAttributes > Population > AmountOrPercent`
- **Value:** 3
- **Percental:** 0 (absolute, not percentage)

### Optional Secondary Effects (Choose One)
1. **Happiness Boost** - +5 happiness to support larger population
2. **Health Boost** - +5 health for population density
3. **Residence Capacity** - Investigate if separate capacity upgrade exists

## Implementation Notes

- **Template Pattern:** Follows Gracchus Scipio (residence master) structure
- **Uses ItemWithBoost** for radius-based effect (local area only)
- **Absolute Value:** Population is added directly, not as percentage
- **Stacking:** Can place multiple specialists for cumulative effect
- **Niche:** Civic (matches other residence specialists)

## XML Structure Outline

### Item Asset (GUID 2001000097)

```xml
<ModOp GUID="41350" Type="addNextSibling">
  <Asset>
    <Template>ItemWithBoost</Template>
    <Values>
      <Standard>
        <GUID>2001000097</GUID>
        <Name>Gracchus Julia</Name>
        <IconFilename>data/ui/fhd/base/icon_content/items_specialist/roman_female/icon_3d_roman_female_009.png</IconFilename>
        <InfoDescription>2001000098</InfoDescription>
      </Standard>
      <Text>
        <LocaText>
          <English>
            <Text>Specialist</Text>
            <Status>Exported</Status>
            <ExportCount>1</ExportCount>
          </English>
        </LocaText>
        <OasisId>2001000097</OasisId>
      </Text>
      <Effect>
        <EffectScope>Radius</EffectScope>
        <Buffs>
          <Item>
            <GUID>2001000098</GUID>
          </Item>
        </Buffs>
        <Targets>
          <Item>
            <Template>ResidenceBuilding7</Template>
          </Item>
        </Targets>
      </Effect>
      <Item>
        <MaxStackSize>20</MaxStackSize>
        <Rarity>Legendary</Rarity>
        <ItemType>Specialist</ItemType>
        <Allocation>GuildHouse</Allocation>
        <TradePrice>69</TradePrice>
        <TradePriceOnlineCurrency>69</TradePriceOnlineCurrency>
        <Niche>Civic</Niche>
      </Item>
      <ItemWithBoost>
        <BoostBuffs>
          <Item>
            <GUID>2001000098</GUID>
          </Item>
        </BoostBuffs>
        <BoostHint>-6903508852426753616</BoostHint>
      </ItemWithBoost>
    </Values>
  </Asset>
</ModOp>
```

### Buff Asset (GUID 2001000098)

```xml
<ModOp Type="addNextSibling" GUID="41350">
  <Asset>
    <Template>BuildingBuff</Template>
    <Values>
      <Standard>
        <GUID>2001000098</GUID>
        <Name>Gracchus Julia Buff</Name>
      </Standard>
      <Buff>
        <SourceCategory>Item</SourceCategory>
      </Buff>
      <Text>
        <OasisId>2001000099</OasisId>
      </Text>
      <BuildingUpgrade>
        <AdditionalAttributes>
          <Population>
            <AmountOrPercent>
              <Value>3</Value>
              <Percental>0</Percental>
            </AmountOrPercent>
          </Population>
          <!-- Optional: Add supporting attribute -->
          <Happiness>
            <AmountOrPercent>
              <Value>5</Value>
              <Percental>0</Percental>
            </AmountOrPercent>
          </Happiness>
        </AdditionalAttributes>
      </BuildingUpgrade>
    </Values>
  </Asset>
</ModOp>
```

### Trader Integration

```xml
<ModOp Type="add" GUID="43018,43021,43019,43020" Path="/Values/RewardPool/ItemsPool">
  <Item>
    <ItemLink>2001000097</ItemLink>
    <Weight>99</Weight>
  </Item>
</ModOp>
```

## Text Localization (texts_english.xml)

```xml
<!-- Item Name -->
<ModOp Add="/TextExport/Texts">
  <Text>
    <Text>Gracchus Julia</Text>
    <LineId>2001000097</LineId>
  </Text>
</ModOp>

<!-- Item Description -->
<ModOp Add="/TextExport/Texts">
  <Text>
    <Text>Mother of Rome - This devoted matriarch brings the spirit of growth to your residences, welcoming more families into each dwelling and filling your city with bustling life!</Text>
    <LineId>2001000098</LineId>
  </Text>
</ModOp>

<!-- Buff Display Name -->
<ModOp Add="/TextExport/Texts">
  <Text>
    <Text>Population Growth Miracle</Text>
    <LineId>2001000099</LineId>
  </Text>
</ModOp>
```

## Use Cases

### Primary Use
- **Dense Cities**: Increase population density without building more residences
- **Island Space Constraint**: Maximize population on limited island space
- **Housing Shortage**: Quick population boost for workforce demands
- **Late Game**: Stack multiple specialists for massive population centers

### Synergy With Other Specialists
- **Gracchus Scipio** (residence attributes) - Combine for happy, healthy, populous cities
- **Gracchus Gaius/Cornelia** (workforce) - Population feeds into workforce availability
- **Gracchus Crassus** (tax collector) - More population = more income

### Strategic Considerations
- Place in central Guild Houses for maximum residence coverage
- Stack multiple specialists for exponential population growth
- Combine with happiness/health specialists to offset density negatives
- Use in production-heavy islands needing workforce

## Testing Checklist

- [ ] Verify Population attribute exists in BuildingUpgrade > AdditionalAttributes
- [ ] Test on different residence tiers (Peasant, Citizen, etc.)
- [ ] Confirm +3 population appears per building in radius
- [ ] Check if population increase affects workforce availability
- [ ] Test stacking multiple Julia specialists
- [ ] Verify no negative effects (overcrowding penalties)
- [ ] Confirm trader availability at all trader types
- [ ] Test icon displays correctly in-game
- [ ] Verify text descriptions appear correctly

## Research Notes

**Need to Verify:**
1. Does `Population` attribute exist in `BuildingUpgrade > AdditionalAttributes`?
   - Similar to Happiness, Health, FireSafety used in Gracchus Scipio
   - May be named differently: `PopulationIncrease`, `Capacity`, `MaxResidents`, etc.
   
2. Alternative approaches if Population attribute doesn't exist:
   - Use `ResidenceUpgrade > ResidentMax` or similar
   - Research base game specialist that affects population
   - Check if population is tied to building level/tier instead

3. Does increased population automatically provide workforce?
   - Test if population = workforce pool
   - May need separate workforce addition like Gaius/Cornelia

## Alternative Implementation

If direct Population attribute doesn't exist, consider:

### Option A: Workforce-Based Approach
- Add workforce directly (like Gaius/Cornelia)
- Use `AdditionalWorkforces` with all workforce tiers
- Result: More workers, which implies more population

### Option B: Residence Capacity Increase
- Research if capacity upgrade exists
- May be `ResidenceUpgrade > MaxResidents` or similar
- Percentage-based might be better: +50% capacity

### Option C: Happiness-Based Growth
- High happiness often correlates with population growth
- Extreme happiness boost might trigger population increase
- Indirect but thematically consistent

## Files to Modify

1. **data/base/config/export/assets.xml** - Item and buff definitions
2. **data/base/config/gui/texts_english.xml** - Name, description, buff text (3 entries)
3. Trader pool integration (already in template above)

## Implementation Priority

**Priority:** Medium (experimental/research needed)  
**Depends On:** Verification that Population attribute exists and works  
**Phase:** Phase 5 (Exotic & Experimental) or Phase 6 (Community requests)  
**Confidence:** 75% (syntax correct, but attribute existence uncertain)

## Next Steps

1. Extract base game assets to search for Population/Capacity attributes
2. Check if any base game specialists affect population/capacity
3. Test simplified version with known working attributes first
4. Implement once attribute path confirmed
5. In-game validation before adding to main mod