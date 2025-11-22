# Gracchus Columella - The Harvest Master

## Status: ❌ REMOVED - Effects were out of whack (per user feedback)

## Specialist Details

**Name:** Gracchus Columella  
**GUID Range:** 2001000100 (Item), 2001000101 (Buff), 2001000102 (Text)  
**Icon:** `icon_3d_roman_male_008.png` or available variant  
**Template:** Item (island-wide)  
**Effect Scope:** ObjectsInArea (island-wide)  
**Allocation:** GuildHouse  
**Price:** 69 Denarii  
**Rarity:** Legendary  
**Historical:** After Columella, Roman agricultural writer & farming expert

## Target Buildings

- **GUID:** 42602 (All Farms pool from base game)
- Affects all farm types island-wide

## Effects Applied

### Primary Effect: Farm Productivity
- **Productivity:** +400% (matches Tiberius pattern)
- **Path:** `FactoryUpgrade > ProductivityUpgrade`
- **Value:** 400
- **Percental:** 1 (percentage boost)

### Secondary Effects: Farm Improvements
- **Module Limit Increase:** +50% (140 → 210 modules max)
- **Transporter Range:** +50% (40 → 60 range)
- **Path:** `ModuleOwnerUpgrade > AdditionalModuleLimits` + `FactoryBase > MaxTransporterRange`

## Implementation Notes

- **Template Pattern:** Follows Gracchus Tiberius (simple Item, island-wide)
- **Farm-Specific:** Only affects farms (42602), not all production like Tiberius
- **Use Case:** Food production specialist, complements Tiberius for focused farming
- **Niche:** None (island-wide effect like Tiberius)
- **Module/Transport buffs:** Increase field capacity and logistics range

## Why This Specialist

**Complements Tiberius:** While Tiberius boosts ALL production (+400%), Columella focuses solely on farms but adds extra benefits (module limits, transport range). Players choose based on strategy:
- **Tiberius:** Universal production boost (factories + farms)
- **Columella:** Farm-only but with field expansion bonuses

**Historical Accuracy:** Lucius Junius Moderatus Columella was a Roman writer on agriculture, perfect for a farming specialist.

sample code
<Asset>
	<Template>Production Field</Template>
	<Values>
		<Standard>
			<GUID>2693</GUID>
			<Name>Production Field Roman Wheat</Name>
			<IconFilename>data/ui/fhd/base/icon_content/production_goods/icon_3d_wheat_goods.png</IconFilename>
			<InfoDescription>-6909019630367444839</InfoDescription>
		</Standard>
		<Building>
			<BuildingCategoryName>-6913619028388886843</BuildingCategoryName>
			<BuildModeRandomRotation>180</BuildModeRandomRotation>
			<AssociatedRegions>Roman</AssociatedRegions>
		</Building>
		<Blocking/>
		<Cost>
			<Costs>
				<Item>
					<Ingredient>1010017</Ingredient>
					<!--Money-->
				</Item>
				<Item>
					<Ingredient>2174</Ingredient>
					<!--Good Timber-->
					<Amount>3</Amount>
				</Item>
				<Item>
					<Ingredient>2176</Ingredient>
					<!--Good Tiles-->
					<Amount>1</Amount>
				</Item>
				<Item>
					<Ingredient>2178</Ingredient>
					<!--Good Concrete-->
				</Item>
				<Item>
					<Ingredient>2179</Ingredient>
					<!--Good Marble-->
				</Item>
				<Item>
					<Ingredient>2152</Ingredient>
					<!--Good Mosaics-->
				</Item>
			</Costs>
		</Cost>
		<Object>
			<Variations>
				<Item>
					<Filename>data/base/graphics/roman/buildings/production/field/wheat/field_wheat.cfg</Filename>
				</Item>
			</Variations>
		</Object>
		<Mesh/>
		<Selection>
			<ParticipantMessageArcheType>27081</ParticipantMessageArcheType>
			<!--Libertus-->
			<Colors>
				<WeakSelectionColorType>NoColor</WeakSelectionColorType>
			</Colors>
		</Selection>
		<Text>
			<OasisId>-6901384939648437030</OasisId>
		</Text>
		<Constructable/>
		<Locked/>
		<SoundEmitter>
			<OBJ_Active>
				<Item>
					<VectorElement>
						<InheritedIndex>0</InheritedIndex>
					</VectorElement>
				</Item>
				<Item>
					<Sound>36493</Sound>
				</Item>
			</OBJ_Active>
		</SoundEmitter>
		<FeedbackController/>
		<Infolayer/>
		<Factory7/>
		<FactoryBase>
			<FactoryOutputs>
				<Item>
					<Product>2069</Product>
					<!--Good Wheat-->
					<Amount>1</Amount>
					<StorageAmount>3</StorageAmount>
				</Item>
			</FactoryOutputs>
			<CycleTime>60</CycleTime>
			<IsMainFactory>1</IsMainFactory>
			<MaxTransporterRange>40</MaxTransporterRange>
		</FactoryBase>
		<LogisticNode/>
		<ModuleOwner>
			<ModuleLimits>
				<Main>
					<Limit>140</Limit>
				</Main>
			</ModuleLimits>
			<ConstructionOptions>
				<Item>
					<ModuleGUID>2732</ModuleGUID>
					<!--Module Field Roman Wheat-->
				</Item>
			</ConstructionOptions>
			<FarmType>PlantFarm</FarmType>
		</ModuleOwner>
		<AmbientMoodProvider>
			<Murmur>Farms</Murmur>
			<DynamicEnvironmentType>BuildingIndustry</DynamicEnvironmentType>
		</AmbientMoodProvider>
		<Maintenance>
			<Maintenances>
				<Item>
					<Product>1010017</Product>
					<!--Money-->
					<Amount>6</Amount>
				</Item>
				<Item>
					<Product>2181</Product>
					<!--Workforce Peasants-->
					<Amount>4</Amount>
				</Item>
			</Maintenances>
		</Maintenance>
		<Health>
			<BaseHealth>650</BaseHealth>
			<!--[ empty field / noname ]-->
			<SelfHealPerHealTick>1</SelfHealPerHealTick>
			<PassiveRuinRepairTime>1200000</PassiveRuinRepairTime>
			<DestructionWarScore>70</DestructionWarScore>
		</Health>
		<Pausable/>
		<AqueductConsumer>
			<AqueductConsumptionType>Optional</AqueductConsumptionType>
			<AqueductConsumedWaterSupply>5</AqueductConsumedWaterSupply>
			<AqueductConsumptionBuffEffect>
				<Item>
					<ProductivityBuff>28480</ProductivityBuff>
					<!--AqueductEffect Production Buff-->
				</Item>
			</AqueductConsumptionBuffEffect>
			<UnlockToActivateConsumption>26949</UnlockToActivateConsumption>
			<!--Tech Unlock Aqueduct Farming-->
		</AqueductConsumer>
		<IncidentInfectable>
			<DestructionScore>100</DestructionScore>
		</IncidentInfectable>
		<Buffable/>
		<AttributeProvider>
			<Population>1499</Population>
		</AttributeProvider>
		<EffectSource/>
		<Threatable/>
	</Values>
</Asset>