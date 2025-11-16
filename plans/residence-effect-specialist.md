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


## Sample Buffs

```xml
<!-- Corrected Buff Structure (Excerpt) -->
<Asset>
  <Template>BuildingBuff</Template>
  <Values>
    <Standard>
      <GUID>2001000011</GUID>
      <Name>Gracchus Scipio Buff</Name>
    </Standard>
    <Buff>
      <SourceCategory>Item</SourceCategory>
    </Buff>
    <Text>
      <OasisId>2001000012</OasisId>
    </Text>
    <BuildingUpgrade>
      <AdditionalAttributes>
        <Happiness><AmountOrPercent><Value>10</Value><Percental>0</Percental></AmountOrPercent></Happiness>
        <Health><AmountOrPercent><Value>10</Value><Percental>0</Percental></AmountOrPercent></Health>
        <FireSafety><AmountOrPercent><Value>10</Value><Percental>0</Percental></AmountOrPercent></FireSafety>
        <Knowledge><AmountOrPercent><Value>10</Value><Percental>0</Percental></AmountOrPercent></Knowledge>
        <Belief><AmountOrPercent><Value>10</Value><Percental>0</Percental></AmountOrPercent></Belief>
        <Prestige><AmountOrPercent><Value>10</Value><Percental>0</Percental></AmountOrPercent></Prestige>
      </AdditionalAttributes>
    </BuildingUpgrade>
  </Values>
</Asset>
```

<Asset>
	<Template>BuildingBuff</Template>
	<Values>
		<Standard>
			<GUID>64971</GUID>
			<Name>Specialist Balance Health Large Buff</Name>
			<IconFilename>data/ui/fhd/base/icon_content/items_specialist/celtic_female/icon_3d_celtic_female_002.png</IconFilename>
		</Standard>
		<Text>
			<OasisId>-6915424537093066639</OasisId>
		</Text>
		<HealthUpgrade/>
		<BuildingUpgrade>
			<AdditionalAttributes>
				<Health>
					<AmountOrPercent>
						<Value>2</Value>
						<Percental>0</Percental>
					</AmountOrPercent>
				</Health>
			</AdditionalAttributes>
		</BuildingUpgrade>
		<DistributionUpgrade/>
		<Buff>
			<SourceCategory>Item</SourceCategory>
		</Buff>
		<ResidenceUpgrade/>
		<FactoryUpgrade/>
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