# Gracchus Duilius - Ship Captain Specialist

**Status:** ✅ COMPLETED

## Implementation

- **GUIDs:** 2001000016 / 2001000017 / 2001000018
- **Name:** Gracchus Duilius (after first Roman naval victor)
- **Price:** 69 denari
- **Icon:** roman_male_020
- **Template:** ItemWithBoost (ship captain)
- **No conditions** - always active

## Effects

- **+5000 health** (absolute)
- **+300% speed** (percental)
- **+9 item slots**
- **+100 discovery radius** (absolute)
- **-75% maintenance** (percental)
- **+300 attack speed** (all weapon types: archer, catapult, ballista, torch, ranged)

## Target Ships (Large Warships Only)

- 37224 - Roman Quinquireme
- 37223 - Roman Trireme
- 5473 - Latium Flagship
- 39570 - Celtic Quinquireme
- 39571 - Celtic Trireme
- 39573 - Albion Flagship

**Excluded:** Penteconter ships (37222, 39572) and all pirate ships

## Why This Design

- Focuses on heavy warships for tactical balance
- Speed boost makes large ships competitive
- Discovery radius helps with exploration
- Maintenance reduction offsets warship costs
- Excludes small/pirate ships to maintain game balance

## Key Implementation Snippets

```xml
<!-- Use individual ship GUIDs to exclude Penteconter and pirates -->
<Targets>
  <Item><GUID>37224</GUID></Item> <!-- Roman Quinquireme -->
  <Item><GUID>37223</GUID></Item> <!-- Roman Trireme -->
  <Item><GUID>5473</GUID></Item>  <!-- Latium Flagship -->
  <Item><GUID>39570</GUID></Item> <!-- Celtic Quinquireme -->
  <Item><GUID>39571</GUID></Item> <!-- Celtic Trireme -->
  <Item><GUID>39573</GUID></Item> <!-- Albion Flagship -->
</Targets>

<!-- ShipBuff with multiple upgrades -->
<HealthUpgrade>
  <BaseHealthUpgrade>
    <Value>5000</Value>
    <Percental>0</Percental>
  </BaseHealthUpgrade>
</HealthUpgrade>

<MovementUpgrade>
  <BuffBaseSpeedUpgrade>
    <Value>300</Value>
    <Percental>1</Percental> <!-- 300% speed -->
  </BuffBaseSpeedUpgrade>
</MovementUpgrade>

<MaintenanceUpgrade>
  <MaintenanceFactorUpgrade>
    <Value>-75</Value>
    <Percental>1</Percental>
  </MaintenanceFactorUpgrade>
</MaintenanceUpgrade>
```

**Full XML examples and ship pool reference in:** `/plans/SYNTAX-REFERENCE.md` (Example 3)