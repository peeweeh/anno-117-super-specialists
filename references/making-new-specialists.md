# Making New Specialists - Anno 117: Pax Romana

Based on working specialists in this mod + real game specialists in /real-specialists/

## Working Examples in This Mod

### 1. Dirk Diggler - Production Master
- **GUIDs:** 2001000001 / 2001000002 / 2001000003
- **Effect:** +400% productivity
- **Template:** Item
- **Targets:** 38370 (All Production Buildings)
- **Icon:** icon_3d_roman_male_033.png

### 2. Roger Rabbit - Workforce Booster  
- **GUIDs:** 2001000004 / 2001000005 / 2001000006
- **Effect:** Adds peasant workforce
- **Template:** ItemWithBoost
- **Targets:** 3142 (Cooper), 3145 (Cookhouse)
- **Icon:** icon_3d_roman_male_72.png

### 3. Tony Stark - Workshop Booster
- **GUIDs:** 2001000007 / 2001000008 / 2001000009
- **Effect:** Adds peasant workforce  
- **Template:** ItemWithBoost
- **Targets:** 6471, 6475, 6472 (Albion workshops)
- **Icon:** icon_3d_roman_male_014.png

## Real Game Specialists Reference

Check /real-specialists/ folder for base game examples:

- **agriculture.xml** - Farms/plantations specialist with patron condition (Ceres)
- **dorian.xml** - Cooper/Cookhouse specialist with health condition
- **livia.xml** - Dresser/Artisan specialist with prestige condition
- **tarragon.xml** - Fishery/Pasture specialist with happiness condition

## GUID Structure (Critical!)

Each specialist needs **3 consecutive GUIDs**:
- **X** - Item/specialist name
- **X+1** - Description text
- **X+2** - Buff display name

**Next available:** 2001000010, 2001000011, 2001000012

**Safe range:** 2,001,000,000 - 2,001,009,999 (see /references/guid.md)

## Step-by-Step: Create New Specialist

### Step 1: Choose GUIDs and Icon

Pick 3 consecutive GUIDs (e.g., 2001000010-12)
Choose icon from /references/extracted_specialist_icons.txt

### Step 2: Add Item to assets.xml

Copy Roger Rabbit or Tony Stark item structure. Key sections:

**Standard:**
"'xml
<Standard>
  <GUID>YOUR_GUID_X</GUID>
  <Name>Your Specialist Name</Name>
  <IconFilename>data/ui/fhd/base/icon_content/items_specialist/roman_male/icon_XXX.png</IconFilename>
  <InfoDescription>YOUR_GUID_X+1</InfoDescription>
</Standard>
"'

**Text (for ItemWithBoost):**
"'xml
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
"'

**Effect:**
"'xml
<Effect>
  <EffectScope>Radius</EffectScope>
  <Buffs>
    <Item><GUID>YOUR_GUID_X+1</GUID></Item>
  </Buffs>
  <Targets>
    <Item><GUID>TARGET_BUILDING_GUID</GUID></Item>
  </Targets>
</Effect>
"'

**Item properties:**
"'xml
<Item>
  <MaxStackSize>20</MaxStackSize>
  <Rarity>Legendary</Rarity>
  <ItemType>Specialist</ItemType>
  <Allocation>GuildHouse</Allocation>
  <TradePrice>69</TradePrice>
  <TradePriceOnlineCurrency>69</TradePriceOnlineCurrency>
  <Niche>Civic</Niche>
</Item>
"'

**ItemWithBoost (if using ItemWithBoost template):**
"'xml
<ItemWithBoost>
  <BoostBuffs>
    <Item><GUID>YOUR_GUID_X+1</GUID></Item>
  </BoostBuffs>
  <BoostHint>-6903508852426753616</BoostHint>
</ItemWithBoost>
"'

### Step 3: Add Buff to assets.xml

"'xml
<ModOp Type=""addNextSibling"" GUID=""41350"">
  <Asset>
    <Template>BuildingBuff</Template>
    <Values>
      <Standard>
        <GUID>YOUR_GUID_X+1</GUID>
        <Name>Your Specialist Buff</Name>
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
"'

### Step 4: Add Texts to texts_english.xml

"'xml
<ModOp Add=""/TextExport/Texts"">
  <Text>
    <Text>Your Specialist Name</Text>
    <LineId>YOUR_GUID_X</LineId>
  </Text>
</ModOp>

<ModOp Add=""/TextExport/Texts"">
  <Text>
    <Text>Long description explaining what this specialist does...</Text>
    <LineId>YOUR_GUID_X+1</LineId>
  </Text>
</ModOp>

<ModOp Add=""/TextExport/Texts"">
  <Text>
    <Text>Buff Name</Text>
    <LineId>YOUR_GUID_X+2</LineId>
  </Text>
</ModOp>
"'

### Step 5: Add to Trader Pools

"'xml
<ModOp Type=""add"" GUID=""43018,43021,43019,43020"" Path=""/Values/RewardPool/ItemsPool"">
  <Item>
    <ItemLink>YOUR_GUID_X</ItemLink>
  </Item>
</ModOp>
"'

## Buff Types

### Productivity Boost (like Dirk Diggler)

"'xml
<FactoryUpgrade>
  <ProductivityUpgrade>
    <Value>400</Value>
    <Percental>1</Percental>
  </ProductivityUpgrade>
</FactoryUpgrade>
"'

### Additional Workforce (like Roger/Tony)

"'xml
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
"'

### Maintenance Reduction

"'xml
<BuildingUpgrade>
  <MaintenanceUpgrade>
    <Value>-20</Value>
    <Percental>1</Percental>
  </MaintenanceUpgrade>
</BuildingUpgrade>
"'

## Finding Target Building GUIDs

Look in /real-specialists/*.xml for examples:

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

**Pattern:** Building pools (GUID 50XXX, 42XXX) affect all buildings of that type. Individual GUIDs (3XXX, 6XXX) affect specific buildings.

## Template Comparison

### Item Template (Simple - Dirk Diggler)
- No ItemWithBoost section
- Uses <EffectScope>ObjectsInArea</EffectScope>
- Buff uses FactoryUpgrade for productivity
- Best for: Simple production/maintenance buffs

### ItemWithBoost Template (Advanced - Roger/Tony)
- Requires ItemWithBoost section with BoostBuffs + BoostHint
- Uses <EffectScope>Radius</EffectScope>
- Buff uses BuildingUpgrade for workforce
- Best for: Workforce additions, conditional effects

## Advanced: Conditional Boosts

From /real-specialists/agriculture.xml - boost when Ceres patron is dominant:

"'xml
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
"'

Other conditions from real specialists:
- **Health condition** (dorian.xml): NeedAttributeType = Health, Amount = 800
- **Prestige condition** (livia.xml): NeedAttributeType = Prestige, Amount = 10000  
- **Happiness condition** (tarragon.xml): NeedAttributeType = Happiness, Amount = 800

## Common Mistakes

1.  Using 2 GUIDs instead of 3 (need name + description + buff name)
2.  Buff OasisId = X+1 (should be X+2)
3.  Item OasisId = X+1 (should be X)
4.  Missing BoostHint in ItemWithBoost
5.  Wrong buff GUID in Item Effect (should be X+1)
6.  Copy-pasting without changing ALL GUIDs
7.  Wrong icon path (check extracted_specialist_icons.txt)

## Testing Checklist

- [ ] 3 unique consecutive GUIDs chosen
- [ ] All GUID references updated (X, X+1, X+2)
- [ ] Icon path exists in extracted list
- [ ] 3 text entries added to texts_english.xml
- [ ] Target building GUIDs are valid
- [ ] Buff type matches desired effect
- [ ] Added to trader pools (43018,43021,43019,43020)
- [ ] Load game and check trader inventory

## Quick Clone Method

1. Open /data/base/config/export/assets.xml
2. Find Roger Rabbit or Tony Stark (lines 103-200)
3. Copy entire Item + Buff sections
4. Find/Replace all GUIDs (2001000004  2001000010, etc.)
5. Update Name, Icon, Targets, Workforce/Buff values
6. Copy 3 text blocks from texts_english.xml
7. Update text content
8. Add to trader pool
9. Save and test

## Resources

- **Working examples:** /data/base/config/export/assets.xml (this mod)
- **Real specialists:** /real-specialists/*.xml (base game)
- **Icon list:** /references/extracted_specialist_icons.txt
- **GUID ranges:** /references/guid.md
- **Text strings:** /data/base/config/gui/texts_english.xml

## Tips

- Start by copying an existing working specialist
- Change one thing at a time
- Test after each change
- Use Find/Replace for GUID changes (be careful!)
- Add XML comments for clarity
- Keep backup of working version
