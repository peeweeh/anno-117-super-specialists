# GUID Catalog

This is the canonical index for this mod's GUIDs and the base-game GUIDs its ModOps target. Keep the XML comments beside each item/buff definition and target aligned with this catalog. `Site-listed` means the Anno 117 Tools index names the asset; it does not prove that a ModOp path still exists in the installed game build.

## Aegyptus Farms and Agriculture

| Building | Aegyptus GUID | Kind | Fertility / module note | Evidence status |
|---|---:|---|---|---|
| Apiary | 152279 | Meadow producer | Catalog only; module path unverified | Site-listed Aegyptus variant |
| Barley Farm | 151993 | Arable field | Normal field target; floodplain variant targeted separately | Fertility ModOp applied; in-game limit unverified |
| Barley Farm, floodplain variant | 155404 | Arable field | Floodplain field target | Fertility ModOp applied; in-game limit unverified |
| Blue Lotus Plantation | 152107 | Plantation | Module-limit target | Fertility ModOp applied; in-game limit unverified |
| Date Farm | 152272 | Forest crop | Requires forest terrain; catalog only until module path is confirmed | Site-listed Aegyptus variant |
| House of Kamels | 152012 | Livestock | Catalog only; not a field-module target unless game data proves otherwise | Site-listed Aegyptus asset |
| Hemp Farm | 152144 | Arable field | Fertility ModOp sets module limit to 72 | Site-listed Aegyptus variant; loader/in-game check pending |
| Oat Farm | 152151 | Arable field | Normal field target; floodplain variant targeted separately | Fertility ModOp applied; in-game limit unverified |
| Oat Farm, floodplain variant | 155409 | Arable field | Floodplain field target | Fertility ModOp applied; in-game limit unverified |
| Olive Grower | 152153 | Plantation | `ModuleOwner/ModuleLimits/Main` target | Fertility ModOp applied; in-game limit unverified |
| Pomegranate Farm | 152145 | Plantation | `ModuleOwner/ModuleLimits/Main` target | Fertility ModOp applied; in-game limit unverified |
| Reed Gatherer | 151997 | Marsh gatherer | Fertility ModOp sets module limit to 100 | Site-listed Aegyptus variant; loader/in-game check pending |
| Sanga Cattle Farm | 152257 | Livestock | Catalog only; not a field-module target unless game data proves otherwise | Site-listed Aegyptus asset |
| Sesame Farm | 151994 | Arable field | Normal field target; floodplain variant targeted separately | Fertility ModOp applied; in-game limit unverified |
| Sesame Farm, floodplain variant | 155406 | Arable field | Floodplain field target | Fertility ModOp applied; in-game limit unverified |
| Hemp Farm, floodplain variant | 155408 | Arable field | Fertility ModOp sets module limit to 72 | Site-listed Aegyptus variant; loader/in-game check pending |
| Sheep Farm | 152256 | Livestock | Catalog only; not a field-module target unless game data proves otherwise | Site-listed; Aegyptus variant split from combined footer |
| Wheat Farm | 152143 | Arable field | Fertility ModOp sets module limit to 72 | Site-listed Aegyptus variant; loader/in-game check pending |
| Wheat Farm, floodplain variant | 155407 | Arable field | Fertility ModOp sets module limit to 72 | Site-listed Aegyptus variant; loader/in-game check pending |

Auroch Farm (`5847`) and Shell Gatherer (`8431`) are excluded from the Aegyptus-built list: the index says they are built in Albion, even where Aegyptus residents can unlock or staff them.

Super Fertility currently has 28 module-limit operations. Wheat Farm variants `2693` and `5972` are Latium targets; Aegyptus Wheat Farm `152143` and its floodplain variant `155407` are also targeted at 72. Other Aegyptus 72-limit targets are `151993`, `155404`, `152151`, `155409`, `151994`, `155406`, `152153`, `152145`, `152107`, `152144`, and `155408`; Aegyptus Reed Gatherer `151997` is set to 100. Verify the new Wheat Farm paths and caps in a fresh loader log and in game. Herb Garden `31764` was removed because its module-limit path was missing.

## Aegyptus Residents and Workforce

| Name | Residence GUID | Workforce GUID | Status |
|---|---:|---:|---|
| Thresher | 149684 | 149685 | Residence site-listed; workforce GUID is reference-listed, tier mapping provisional |
| Potter | 150584 | 150543 | Residence site-listed; workforce GUID is reference-listed, tier mapping provisional |
| Chanter | 150585 | 150544 | Residence site-listed; workforce GUID is reference-listed, tier mapping provisional |
| Scribe | 150586 | 150545 | Residence site-listed; workforce GUID is reference-listed, tier mapping provisional |
| Gymnasiarch | 150587 | 150546 | Residence site-listed; workforce GUID is reference-listed, tier mapping provisional |

The downloaded Praefectus Liberius XML contains the five workforce IDs but does not label their names. The current roster uses the IDs in tier bundles as a provisional crosswalk; confirm those names against extracted game assets before describing them as specific occupations.

The home-specialist target split is the one confirmed in the conversation:

| Gracchus home tier | Residence target GUIDs | Added workforce GUIDs |
|---|---|---|
| Latium lower homes (Julia) | Libertus `3087`, Plebeian `3141` | `2185`, `2186` |
| Latium higher homes (Scipio) | Eques `3142`, Patrician `3145` | `2181`, `2184` |
| Albion lower homes (Cassius) | Wader `6414`, Smith `6471`, Mercator `6475` | `2196`, `2197`, `2199` |
| Albion higher homes (Cornelia) | Alderman `6472`, Noble `6514` | `2192`, `2198` |
| Aegyptus lower homes (Marius) | Thresher `149684`, Potter `150584`, Scribe `150586` | `150544`, `150546` (mapping provisional) |
| Aegyptus higher homes (Appius) | Chanter `150585`, Gymnasiarch `150587` | `149685`, `150543`, `150545` (mapping provisional) |

Gracchus Gaius's all-residence buff grants all 14 known regional workforce GUIDs to the 14 listed residence assets. The Aegyptus workforce names remain provisional pending extracted game-data confirmation.

## Other Residence Targets

| Region | Residence | GUID | Home tier group |
|---|---|---:|---|
| Latium | Libertus | 3087 | Lower |
| Latium | Plebeian | 3141 | Lower |
| Latium | Eques | 3142 | Higher |
| Latium | Patrician | 3145 | Higher |
| Albion | Wader | 6414 | Lower |
| Albion | Smith | 6471 | Lower |
| Albion | Mercator | 6475 | Lower |
| Albion | Alderman | 6472 | Higher |
| Albion | Noble | 6514 | Higher |

## Specialist Target Groups and Chest References

| Name | GUID | Use |
|---|---:|---|
| Production Buildings | 38370 | Global productivity and regional industry target group; site lists 143 buildings |
| Warehouses | 38564 | Standard warehouse loading target group; site lists five buildings |
| Trading Posts | 37202 | Loading-speed target group, including Aegyptus river posts; site lists six buildings |
| All Buildings in Aegyptus | 151971 | Catalog only; do not use as a production-only target |
| All Aegyptus Province Residences | 152041 | Catalog group from the site; verify before using as a ModOp target |
| Add-next-sibling base asset | 41350 | Base asset anchor used to create mod-owned assets |
| Roman trader reward pools | 43018, 43021, 43019, 43020 | Specialist trader integration |
| Aegyptus reward-pool candidates | 153068, 153070 | Inferred candidates for Heron and Kandis stock; loader and in-game confirmation pending |
| Trader item-slot assets | 32777, 27124, 32778, 27079, 153067, 153069 | Specialist vendor slot ModOp |
| Gracchi Legacy Chest | 1500050050 | Mod-owned; grants the specialist roster and starter goods |
| Gracchi Legacy Chest text | 1500059936 | Mod-owned chest label LineId/OasisId |
| Auto-grant trigger | 1500050052 | Mod-owned start trigger; grants chest `1500050050` |
| Gracchi Materials Care Package | 1500050053 | Mod-owned one-use chest; grants 100 of each of 13 Construction Materials |
| Materials Care Package text | 1500059940, 1500059941 | Mod-owned name and description LineId/OasisId values |
| Materials Care Package trigger | 1500050054 | Separate mod-owned start trigger; grants chest `1500050053` |

Aegyptus river-post assets in the Trading Posts group:

| Building | GUID |
|---|---:|
| Riverside Trading Post | 149683 |
| Improved River Post | 150642 |
| Grand River Post | 150645 |

Anno 117 Tools lists Port of Naukratis as building GUID `153121`, Epistrategos Heron as seller GUID `153067`, and Kandis of Kashta as seller GUID `153069`. The loader rejected `153121` for `RewardPool/ItemsPool`; the mod now tests inferred candidate pool GUIDs `153068` and `153070`. Confirm these candidates with a fresh loader log and in-game stock check.

Construction Material goods granted by the Materials Care Package, 100 each: Timber `2174`, Tiles `2176`, Concrete `2178`, Marble `2179`, Mosaics `2152`, Rope `2171`, Sails `2172`, Weapons `2173`, Armour `13810`, Wattle & Daub `2169`, Granite `31709`, Mud Bricks `151704`, and Limestone Bricks `151705`. The Legacy Chest's existing starter kit remains at 75 each of Timber, Tiles, Concrete, Marble, Mosaics, Wattle & Daub, and Granite.

## Active Gracchus Roster GUIDs

All active item display names use the `Gracchus` prefix. `Name LineId` is the item's displayed name; `Description LineId` is the buff GUID; `Buff-name LineId` is the active buff label.

| Role | Display name | Item GUID | Buff GUID | Name LineId | Description LineId | Buff-name LineId |
|---|---|---:|---:|---:|---:|---:|
| Production +100%, warehouse +150% | Gracchus Tiberius | 1500050001 | 1500050002 | 1500059900 | 1500050002 | 1500059901 |
| All-region residence workforce | Gracchus Gaius | 1500050004 | 1500050005 | 1500059902 | 1500050005 | 1500059903 |
| Albion higher home | Gracchus Cornelia | 1500050007 | 1500050008 | 1500059904 | 1500050008 | 1500059905 |
| Latium higher home | Gracchus Scipio | 1500050010 | 1500050011 | 1500059906 | 1500050011 | 1500059907 |
| Production +250%, warehouse +150% | Gracchus Fulvia | 1500050013 | 1500050014 | 1500059908 | 1500050014 | 1500059909 |
| Ship captain | Gracchus Duilius | 1500050016 | 1500050017 | 1500059910 | 1500050017 | 1500059911 |
| Latium lower home | Gracchus Julia | 2001000097 | 2001000098 | 1500059912 | 2001000098 | 1500059913 |
| Albion lower home | Gracchus Cassius | 1500050025 | 1500050026 | 1500059918 | 1500050026 | 1500059919 |
| Production +450%, warehouse +150% | Gracchus Crassus | 1500050031 | 1500050032 | 1500059924 | 1500050032 | 1500059925 |
| Aegyptus lower home | Gracchus Marius | 1500050034 | 1500050035 | 1500059926 | 1500050035 | 1500059927 |
| Aegyptus higher home | Gracchus Appius | 1500050037 | 1500050038 | 1500059928 | 1500050038 | 1500059929 |

Retired specialist assets: Diocles item/buff `1500050043/1500050044`; Maecenas `1500050046/1500050047`; Varro `1500050048/1500050049`; Columella `2001000100/2001000101`; Lucius item/buff `1500050019/1500050020`; Agrippa item/buff `1500050040/1500050041`. Do not reuse retired GUIDs for a different specialist.

## External Super Specialists GUID Reference

Extracted from `[Specialists] super-specialists [gz2k2]`, `ModID` `gz2k2-super-specialists-mod`, version `2.3.0`. These GUIDs belong to the external mod and are reference-only; do not reuse them for this mod's assets.

| Specialist | Item GUID | Buff GUID | Description GUID |
| --- | ---: | ---: | ---: |
| Praefectus Adriana (Troops) | 2144000003 | 2144000004 | 2144000005 |
| Praefectus Antonius (Defense) | 2144000006 | 2144000007 | 2144000008 |
| Praefectus Aurelia (Ship Combat) | 2144000009 | 2144000010 | 2144000011 |
| Praefectus Aurora (Ship Logistics) | 2144000027 | 2144000028 | 2144000029 |
| Praefectus Caius (Citywatch) | 2144000012 | 2144000013 | 2144000014 |
| Praefectus Juno (Harbor) | 2144000015 | 2144000016 | 2144000017 |
| Praefectus Laetitia (City) | 2144000018 | 2144000019 | 2144000020 |
| Praefectus Liberius (Production) | 2144000021 | 2144000022 | 2144000023 |
| Praefectus Lucius (Production) | 2144000024 | 2144000025 | 2144000026 |
| Praefectus Maximilian (Racer) | 2144000030 | 2144000031 | 2144000032 |

| Other external asset | GUID |
| --- | ---: |
| Praefectus All Specialists Chest Account | 2144000000 |
| Praefectus All Specialists Chest Trader | 2144000001 |
| Keybind trigger | 2144000002 |
| Unlock-from-start trigger | 2144000100 |

## GUID Maintenance

- Add a short XML comment beside every mod-owned item/buff definition with its Gracchus name and item/buff/text GUIDs.
- Label each base-game target GUID by name in a nearby XML comment; keep the Aegyptus farm/residence target names aligned with the tables above.
- Add new GUIDs here before using them. Remove active status when a GUID is retired; never silently repurpose one.
- Run a duplicate-GUID/catalog parity check after roster edits and verify every target with a fresh Anno 117 3.0 loader log.
