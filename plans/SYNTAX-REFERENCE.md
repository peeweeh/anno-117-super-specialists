# Anno 117 Specialist XML Syntax Reference

**Purpose:** Critical syntax patterns from base game specialists to avoid common errors when creating new specialists.

## Complete Working Example: Dorian (Base Game)

### Item Structure (ItemWithBoost Template)

```xml
<Asset>
  <Template>ItemWithBoost</Template>
  <Values>
    <Standard>
      <GUID>41350</GUID>
      <Name>Specialist Rival 01 Dorian</Name>
      <IconFilename>data/ui/2kimages/portraits/rival_01_dorian.png</IconFilename>
      <InfoDescription>-6910700460068032447</InfoDescription>
    </Standard>
    <Effect>
      <EffectScope>Radius</EffectScope>
      <Buffs>
        <Item>
          <GUID>40496</GUID> <!-- Points to buff GUID -->
        </Item>
      </Buffs>
      <Targets>
        <Item>
          <GUID>50606</GUID> <!-- Asset Pool Production All Coopers -->
        </Item>
        <Item>
          <GUID>50610</GUID> <!-- Asset Pool Production All Cookhouses -->
        </Item>
      </Targets>
      <HideInGovernorsBar>1</HideInGovernorsBar>
    </Effect>
    <Item>
      <Rarity>Unique</Rarity>
      <Niche>Culture</Niche>
      <BarkPool>90850</BarkPool>
    </Item>
    <Locked>
      <DefaultLockedState>0</DefaultLockedState>
    </Locked>
    <Text>
      <OasisId>-6910154242256392644</OasisId> <!-- Item name text -->
    </Text>
    <ItemWithBoost>
      <BoostCondition>
        <IsBaseAutoCreateAsset>1</IsBaseAutoCreateAsset>
        <Values>
          <PreConditionList>
            <Condition>
              <Template>ConditionNeedAttributeCounter</Template>
              <Values>
                <Condition/>
                <ConditionNeedAttributeCounter>
                  <NeedAttributeType>Health</NeedAttributeType>
                  <NeedAttributeAmount>800</NeedAttributeAmount>
                </ConditionNeedAttributeCounter>
                <ConditionLocationFilter>
                  <LocationFilter>
                    <IsBaseAutoCreateAsset>1</IsBaseAutoCreateAsset>
                    <Values>
                      <LocationFilter>
                        <ObjectLocations>
                          <ObjectFilter>
                            <Template>ObjectFilter</Template>
                            <Values>
                              <ObjectFilter>
                                <UseContextObjects>1</UseContextObjects>
                              </ObjectFilter>
                            </Values>
                          </ObjectFilter>
                        </ObjectLocations>
                      </LocationFilter>
                    </Values>
                  </LocationFilter>
                </ConditionLocationFilter>
                <ConditionCounterProps/>
                <ConditionPropsComparable/>
              </Values>
            </Condition>
          </PreConditionList>
        </Values>
      </BoostCondition>
      <BoostBuffs>
        <Item>
          <GUID>113061</GUID> <!-- Boosted buff GUID -->
        </Item>
      </BoostBuffs>
      <BoostHint>-6900310240908301779</BoostHint>
    </ItemWithBoost>
  </Values>
</Asset>
```

### Buff Structure (BuildingBuff Template)

```xml
<Asset>
  <Template>BuildingBuff</Template>
  <Values>
    <Standard>
      <GUID>40496</GUID>
      <Name>Specialist Rival 01 Dorian Buff</Name>
      <IconFilename>data/ui/2kimages/portraits/rival_01_dorian.png</IconFilename>
    </Standard>
    <Text>
      <OasisId>-6914359904474013107</OasisId> <!-- Buff display text -->
    </Text>
    <Buff>
      <SourceCategory>Item</SourceCategory>
    </Buff>
    
    <!-- Workforce Addition -->
    <BuildingUpgrade>
      <AdditionalWorkforces>
        <Item>
          <WorkforceGUID>2181</WorkforceGUID> <!-- Peasants -->
        </Item>
      </AdditionalWorkforces>
    </BuildingUpgrade>
    
    <!-- Production Boost -->
    <FactoryUpgrade>
      <ProductivityUpgrade>
        <Value>50</Value>
        <Percental>1</Percental> <!-- 1 = percentage, 0 = absolute -->
      </ProductivityUpgrade>
    </FactoryUpgrade>
    
    <!-- Residence Effects (Conditional on Service) -->
    <ResidenceUpgrade>
      <NeedProvidedNeedAttributes>
        <ChangeNeedAttributesOf>
          <Item>
            <ProvidedProduct>2685</ProvidedProduct> <!-- Service Roman Baths -->
          </Item>
        </ChangeNeedAttributesOf>
        <AdditionalNeedAttributes>
          <Health>
            <AmountOrPercent>
              <Value>5</Value>
              <Percental>0</Percental>
            </AmountOrPercent>
          </Health>
          <FireSafety>
            <AmountOrPercent>
              <Value>2</Value>
              <Percental>0</Percental>
            </AmountOrPercent>
          </FireSafety>
        </AdditionalNeedAttributes>
      </NeedProvidedNeedAttributes>
    </ResidenceUpgrade>
    
    <!-- Empty upgrade sections (must exist) -->
    <HealthUpgrade/>
    <DistributionUpgrade/>
    <ModuleOwnerUpgrade/>
    <MaintenanceUpgrade/>
    <CityInstitutionUpgrade/>
    <IncidentInfectableUpgrade/>
    <RecruitmentUpgrade/>
    <AqueductUpgrade/>
    <WarehouseUpgrade/>
    <IrrigationUpgrade/>
  </Values>
</Asset>
```

## Critical Syntax Rules

### 1. GUID References Must Match
```xml
<!-- Item references buff -->
<Effect>
  <Buffs>
    <Item>
      <GUID>40496</GUID> <!-- Must match buff's GUID -->
    </Item>
  </Buffs>
</Effect>

<!-- Buff definition -->
<Standard>
  <GUID>40496</GUID> <!-- Same GUID -->
</Standard>
```

### 2. OasisId for Text (3 Required per Specialist)
```xml
<!-- Item name text -->
<Text>
  <OasisId>2001000016</OasisId> <!-- Item name -->
</Text>

<!-- Item description -->
<Standard>
  <InfoDescription>2001000017</InfoDescription> <!-- Description -->
</Standard>

<!-- Buff display text -->
<Text>
  <OasisId>2001000018</OasisId> <!-- Buff name -->
</Text>
```

### 3. Percental Flag (CRITICAL)
```xml
<!-- 0 = Absolute value -->
<Value>10</Value>
<Percental>0</Percental>  <!-- Adds exactly 10 -->

<!-- 1 = Percentage -->
<Value>50</Value>
<Percental>1</Percental>  <!-- Adds 50% -->
```

### 4. Template Targeting
```xml
<!-- Use Template for building types -->
<Targets>
  <Item>
    <Template>ResidenceBuilding7</Template>
  </Item>
</Targets>

<!-- Use GUID for specific buildings/pools -->
<Targets>
  <Item>
    <GUID>38564</GUID> <!-- All warehouses -->
  </Item>
</Targets>
```

### 5. Effect Scope
```xml
<!-- Radius-based (local area) -->
<EffectScope>Radius</EffectScope>

<!-- Island-wide -->
<EffectScope>ObjectsInArea</EffectScope>
```

### 6. ItemWithBoost vs Item Template

**Use ItemWithBoost when:**
- Radius-based effects
- Conditional boosts needed
- Multiple buff states

**Use Item when:**
- Island-wide effects (ObjectsInArea)
- Simple unconditional buffs
- Single buff state

```xml
<!-- ItemWithBoost requires -->
<ItemWithBoost>
  <BoostBuffs>
    <Item>
      <GUID>BUFF_GUID</GUID>
    </Item>
  </BoostBuffs>
  <BoostHint>-6903508852426753616</BoostHint>
</ItemWithBoost>

<!-- Item template does NOT have ItemWithBoost section -->
```

## Common Error Patterns

### ❌ WRONG: Missing Percental Flag
```xml
<ProductivityUpgrade>
  <Value>400</Value>
  <!-- Missing Percental flag - behavior undefined -->
</ProductivityUpgrade>
```

### ✅ CORRECT: Always Include Percental
```xml
<ProductivityUpgrade>
  <Value>400</Value>
  <Percental>1</Percental> <!-- Explicitly set -->
</ProductivityUpgrade>
```

### ❌ WRONG: Mismatched GUID References
```xml
<!-- Item -->
<Buffs>
  <Item>
    <GUID>2001000017</GUID>
  </Item>
</Buffs>

<!-- Buff -->
<Standard>
  <GUID>2001000018</GUID> <!-- Different GUID! -->
</Standard>
```

### ✅ CORRECT: Matching GUIDs
```xml
<!-- Item -->
<Buffs>
  <Item>
    <GUID>2001000017</GUID>
  </Item>
</Buffs>

<!-- Buff -->
<Standard>
  <GUID>2001000017</GUID> <!-- Same GUID -->
</Standard>
```

### ❌ WRONG: Missing OasisId in Buff
```xml
<Asset>
  <Template>BuildingBuff</Template>
  <Values>
    <Standard>
      <GUID>2001000017</GUID>
    </Standard>
    <!-- Missing Text/OasisId - buff name won't display -->
  </Values>
</Asset>
```

### ✅ CORRECT: OasisId for Buff Text
```xml
<Asset>
  <Template>BuildingBuff</Template>
  <Values>
    <Standard>
      <GUID>2001000017</GUID>
    </Standard>
    <Text>
      <OasisId>2001000018</OasisId> <!-- Buff display name -->
    </Text>
  </Values>
</Asset>
```

### ❌ WRONG: Using ResidenceUpgrade for Unconditional Attributes
```xml
<ResidenceUpgrade>
  <AdditionalAttributes>
    <Happiness>
      <Value>10</Value>
    </Happiness>
  </AdditionalAttributes>
</ResidenceUpgrade>
<!-- ResidenceUpgrade doesn't have AdditionalAttributes -->
```

### ✅ CORRECT: Use BuildingUpgrade for Direct Attributes
```xml
<BuildingUpgrade>
  <AdditionalAttributes>
    <Happiness>
      <AmountOrPercent>
        <Value>10</Value>
        <Percental>0</Percental>
      </AmountOrPercent>
    </Happiness>
  </AdditionalAttributes>
</BuildingUpgrade>
```

## Buff Type Reference

### Productivity
```xml
<FactoryUpgrade>
  <ProductivityUpgrade>
    <Value>400</Value>
    <Percental>1</Percental>
  </ProductivityUpgrade>
</FactoryUpgrade>
```

### Workforce
```xml
<BuildingUpgrade>
  <AdditionalWorkforces>
    <Item>
      <WorkforceGUID>2181</WorkforceGUID> <!-- Peasants -->
    </Item>
    <Item>
      <WorkforceGUID>2184</WorkforceGUID> <!-- Citizens -->
    </Item>
  </AdditionalWorkforces>
</BuildingUpgrade>
```

### Building Attributes (Residences)
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
  </AdditionalAttributes>
</BuildingUpgrade>
```

### Warehouse Speed
```xml
<WarehouseUpgrade>
  <AdditionalLoadingSpeedInPercent>100</AdditionalLoadingSpeedInPercent>
</WarehouseUpgrade>
```

### Ship Buffs
```xml
<HealthUpgrade>
  <BaseHealthUpgrade>
    <Value>5000</Value>
    <Percental>0</Percental>
  </BaseHealthUpgrade>
</HealthUpgrade>

<MovementUpgrade>
  <BuffBaseSpeedUpgrade>
    <Value>300</Value>
    <Percental>1</Percental>
  </BuffBaseSpeedUpgrade>
</MovementUpgrade>

<MaintenanceUpgrade>
  <MaintenanceFactorUpgrade>
    <Value>-75</Value>
    <Percental>1</Percental>
  </MaintenanceFactorUpgrade>
</MaintenanceUpgrade>

<ItemContainerUpgrade>
  <AdditionalSlots>9</AdditionalSlots>
</ItemContainerUpgrade>

<UnitUpgrade>
  <DiscoveryRadiusUpgrade>
    <Value>100</Value>
    <Percental>0</Percental>
  </DiscoveryRadiusUpgrade>
  <AttackSpeedArcherModulePercentualUpgrade>
    <Value>300</Value>
    <Percental>0</Percental>
  </AttackSpeedArcherModulePercentualUpgrade>
</UnitUpgrade>
```

## Testing Checklist

Before testing a new specialist:

- [ ] Item GUID matches buff reference in `<Buffs><Item><GUID>`
- [ ] Buff GUID matches in `<Standard><GUID>`
- [ ] 3 OasisIds defined (item name, description, buff display)
- [ ] All 3 text entries added to `texts_english.xml` with matching LineIds
- [ ] Percental flag explicitly set (0 or 1) in all value upgrades
- [ ] Template choice matches effect scope (Item vs ItemWithBoost)
- [ ] EffectScope matches intent (Radius vs ObjectsInArea)
- [ ] Target GUIDs/Templates are valid
- [ ] Icon path exists in extracted specialist icons list
- [ ] Added to trader pools (43018,43021,43019,43020)

## Quick Reference: Common GUIDs

### Building Pools
- 38370 - All production buildings
- 38564 - All warehouses
- 38995 - All ships
- 50606 - All Coopers
- 50610 - All Cookhouses
- 50611 - All Dressers
- 50604 - All Artisans

### Workforce
- 2181 - Peasants
- 2184 - Citizens
- 2192 - Laborers

### Ship Types
- 37224 - Roman Quinquireme
- 37223 - Roman Trireme
- 37222 - Roman Penteconter
- 5473 - Latium Flagship
- 39570 - Celtic Quinquireme
- 39571 - Celtic Trireme
- 39572 - Celtic Penteconter
- 39573 - Albion Flagship

### Trader Pools
- 43018, 43021, 43019, 43020 - Standard trader item pools

---

## Implementation Examples from This Mod

### Example 1: Gracchus Scipio (Residence Master)

**Spec:** +10 to 6 residence attributes (happiness, health, fire safety, knowledge, belief, prestige)

**Key Implementation Details:**
- **Template:** ItemWithBoost
- **Scope:** Radius
- **Target:** ResidenceBuilding7 (template, not GUID)
- **Buff Type:** BuildingUpgrade > AdditionalAttributes
- **Critical Fix:** Originally used ResidenceUpgrade > NeedProvidedNeedAttributes but attributes didn't fire; changed to BuildingUpgrade

```xml
<!-- Gracchus Scipio Buff (GUID 2001000011) -->
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
    <FireSafety>
      <AmountOrPercent>
        <Value>10</Value>
        <Percental>0</Percental>
      </AmountOrPercent>
    </FireSafety>
    <Knowledge>
      <AmountOrPercent>
        <Value>10</Value>
        <Percental>0</Percental>
      </AmountOrPercent>
    </Knowledge>
    <Belief>
      <AmountOrPercent>
        <Value>10</Value>
        <Percental>0</Percental>
      </AmountOrPercent>
    </Belief>
    <Prestige>
      <AmountOrPercent>
        <Value>10</Value>
        <Percental>0</Percental>
      </AmountOrPercent>
    </Prestige>
  </AdditionalAttributes>
</BuildingUpgrade>
```

**Lesson:** For unconditional residence attribute buffs, use BuildingUpgrade NOT ResidenceUpgrade.

---

### Example 2: Gracchus Fulvia (Warehouse Master)

**Spec:** +100% warehouse loading speed (island-wide)

**Key Implementation Details:**
- **Template:** Item (NOT ItemWithBoost)
- **Scope:** ObjectsInArea (island-wide)
- **Target:** GUID 38564 (all warehouses)
- **Buff Type:** WarehouseUpgrade > AdditionalLoadingSpeedInPercent
- **Pattern:** Follows Gracchus Tiberius (simple Item template for island-wide effects)

```xml
<!-- Item Effect Section -->
<Effect>
  <EffectScope>ObjectsInArea</EffectScope>
  <Buffs>
    <Item>
      <GUID>2001000014</GUID>
    </Item>
  </Buffs>
  <Targets>
    <Item>
      <GUID>38564</GUID> <!-- All warehouses -->
    </Item>
  </Targets>
  <HideInGovernorsBar>1</HideInGovernorsBar>
</Effect>

<!-- Buff (GUID 2001000014) -->
<WarehouseUpgrade>
  <AdditionalLoadingSpeedInPercent>100</AdditionalLoadingSpeedInPercent>
</WarehouseUpgrade>
```

**Lesson:** Island-wide buffs use simple Item template + ObjectsInArea scope. No ItemWithBoost section needed.

---

### Example 3: Gracchus Duilius (Ship Captain)

**Spec:** Super warship captain (300% speed, 5000 health, 9 slots, +100 discovery, -75% maintenance, 3x attack speed) - large warships only

**Key Implementation Details:**
- **Template:** ItemWithBoost (ships use this pattern)
- **Scope:** Ship allocation (individual targets, not pool)
- **Targets:** 6 specific ship GUIDs (excludes Penteconter and pirates)
- **Buff Type:** ShipBuff with multiple upgrade sections
- **No Conditions:** Removed BoostCondition to make it always active

```xml
<!-- Item Targets (excludes small ships) -->
<Targets>
  <Item><GUID>37224</GUID></Item> <!-- Roman Quinquireme -->
  <Item><GUID>37223</GUID></Item> <!-- Roman Trireme -->
  <Item><GUID>5473</GUID></Item>  <!-- Latium Flagship -->
  <Item><GUID>39570</GUID></Item> <!-- Celtic Quinquireme -->
  <Item><GUID>39571</GUID></Item> <!-- Celtic Trireme -->
  <Item><GUID>39573</GUID></Item> <!-- Albion Flagship -->
</Targets>

<!-- ShipBuff (GUID 2001000017) -->
<HealthUpgrade>
  <BaseHealthUpgrade>
    <Value>5000</Value>
    <Percental>0</Percental>
  </BaseHealthUpgrade>
</HealthUpgrade>

<MovementUpgrade>
  <BuffBaseSpeedUpgrade>
    <Value>300</Value>
    <Percental>1</Percental> <!-- 300% = 4x speed -->
  </BuffBaseSpeedUpgrade>
</MovementUpgrade>

<MaintenanceUpgrade>
  <MaintenanceFactorUpgrade>
    <Value>-75</Value>
    <Percental>1</Percental> <!-- -75% cost -->
  </MaintenanceFactorUpgrade>
</MaintenanceUpgrade>

<ItemContainerUpgrade>
  <AdditionalSlots>9</AdditionalSlots>
</ItemContainerUpgrade>

<UnitUpgrade>
  <DiscoveryRadiusUpgrade>
    <Value>100</Value>
    <Percental>0</Percental>
  </DiscoveryRadiusUpgrade>
  <AttackSpeedArcherModulePercentualUpgrade>
    <Value>300</Value>
    <Percental>0</Percental> <!-- Absolute speed boost -->
  </AttackSpeedArcherModulePercentualUpgrade>
  <!-- ... repeat for Catapult, Ballista, Torch, Ranged -->
</UnitUpgrade>
```

**Lessons:**
1. Use individual ship GUIDs (not pool 38995) to exclude specific ship types
2. ShipBuff supports multiple simultaneous upgrades (health, speed, maintenance, slots, discovery, attack)
3. Speed uses Percental=1 for percentage, attack speed uses Percental=0 for absolute values
4. Remove BoostCondition section entirely for unconditional ship captains

---

## Complete Ship Pool Reference

### All Ships (GUID 38995) - Use for universal ship captains

```xml
<Asset>
  <Template>AssetPoolNamed</Template>
  <Values>
    <Standard>
      <GUID>38995</GUID>
      <Name>Asset Pool All Ships</Name>
    </Standard>
    <AssetPool>
      <AssetList>
        <Item><Asset>37224</Asset><!-- Roman Quinquireme --></Item>
        <Item><Asset>37222</Asset><!-- Roman Penteconter --></Item>
        <Item><Asset>37223</Asset><!-- Roman Trireme --></Item>
        <Item><Asset>5473</Asset><!-- Latium Flagship --></Item>
        <Item><Asset>43094</Asset><!-- Roman PirateShip Penteconter --></Item>
        <Item><Asset>44483</Asset><!-- Roman PirateShip Trireme --></Item>
        <Item><Asset>52121</Asset><!-- Latium Startship --></Item>
        <Item><Asset>39570</Asset><!-- Celtic Quinquireme --></Item>
        <Item><Asset>39572</Asset><!-- Celtic Penteconter --></Item>
        <Item><Asset>39573</Asset><!-- Albion Flagship --></Item>
        <Item><Asset>90561</Asset><!-- Roman PirateShip Caesos FlagShip --></Item>
        <Item><Asset>39571</Asset><!-- Celtic Trireme --></Item>
        <Item><Asset>52122</Asset><!-- Albion Startship --></Item>
        <Item><Asset>90562</Asset><!-- Roman PirateShip Caesos BestShip --></Item>
      </AssetList>
    </AssetPool>
  </Values>
</Asset>
```

**Use individual GUIDs from this pool to create selective ship captains (e.g., heavy warships only, no pirates, etc.)**
