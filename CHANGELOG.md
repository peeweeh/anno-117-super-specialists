# Changelog

All notable changes to this project are documented here. This project follows Semantic Versioning.

## [Unreleased]
- Consolidated the Latium, Albion, and Aegyptus workforce specialists into Gaius, covering all 14 known residence assets and workforce GUIDs
- Retired Lucius and Agrippa from the item assets, trader pool, and Legacy Chest; the active roster is now 12 specialists with Marcellus
- Consolidated the five regional residence-stat specialists into universal Scipio; Gaius remains the universal workforce specialist
- Retired Julia, Cornelia, Cassius, Marius, and Appius; the active roster is now 7 specialists
- Added 30t of storage to each Granary and all normal warehouse tiers, including upgrades
- Added Marcellus: -75% recruitment cost, +300% recruitment speed, +100% troop health/morale/movement, and +100 offense/defense/armor/shields/attack speed
- Added Gracchus Latinus, Britannicus, and Aegyptius: each gives the island it is equipped on every fertility and lode of its region at 100% (Latium 14, Albion 15, Aegyptus 15); the active roster is now 10 specialists at 990 Denarii. In-game behavior is unverified

## [2.1.0] - 2026-11-09
- Added a separately auto-granted, one-use Materials Care Package chest with 100 of each of the 13 Construction Materials
- Added a distinct trigger so existing saves can receive the new chest independently of the Legacy Chest trigger

## [2.0.0] - 2026-11-09
- Rebuilt the roster as 13 Gracchus specialists: two home tiers and one industry item per region, three production/warehouse tiers, and Duilius
- Set all specialist prices to 99 Denarii
- Replaced the global intensity option with fixed +100%, +250%, and +450% production variants, each with +150% loading speed
- Added Aegyptus residence and industry coverage and Aegyptus vendor stock
- Updated the Gracchi Legacy Chest to grant all 13 items
- Breaking change: retired standalone specialist assets were removed

## [1.2.4] - 2026-09-05
- Removed the F12 keybind for re-requesting the Gracchi Legacy Chest (didn't trigger in-game). The chest
  is now auto-granted once at game start only; missing specialists can still be bought from any trader

## [1.2.3] - 2026-08-29
- Fixed bug: Cassius was showing Lucius's description (copy-paste leftover) instead of his own
- Rewrote the 6 v1.2.0 specialist descriptions (Marius, Appius, Agrippa, Diocles, Maecenas, Varro) to
  match the rest of the roster's humor, grounded in real history instead of dry fact recitation
- Removed all em-dashes from specialist text (Tiberius, Lucius, Cassius)
- Removed dead text entries left over from the Sextus/Decimus retirement in v1.2.0

## [1.2.2] - 2026-08-29
- Gave Diocles an actual effect: +15 prestige, +10 happiness on residences in radius (was previously a
  flavor-only item with no buff, which felt bad for 69 Denarii)

## [1.2.1] - 2026-08-29
- Fixed missing names/descriptions for the 6 v1.2.0 specialists (Marius, Appius, Agrippa, Diocles,
  Maecenas, Varro) and the Gracchi Legacy Chest - texts_english.xml LineId entries were never added,
  so they displayed blank in-game

## [1.2.0] - 2026-08-29
- Added 6 new specialists: Marius (Legion Master, Troops), Appius (City Watch Captain, Citywatch),
  Agrippa (Harbor Master, Harbor), Diocles (Circus Champion, collectible), Maecenas (Treasury Advisor,
  Income), Varro (Scholar, Knowledge) - fills role gaps (Troops/Citywatch/Harbor/Racer/Income/Knowledge)
  not previously covered
- Added Gracchi Legacy Chest: auto-granted at game start, bundles all
  16 specialists plus a 75x starter kit of 7 core Roman building-material goods
- Retired Sextus and Decimus: found to be 100% redundant with Gaius/Cornelia (identical targets and
  workforce grants), a leftover copy-paste bug from initial development
- Total specialists: 16

## [1.1.0] - 2026-08-29
- Added `Options` support: new "Specialist Power" setting (100/50/25) scales all numeric specialist
  buffs (production, ship stats, attributes, maintenance) via `active-options.jsonc` - no separate
  balanced mod needed
- Documented trader/item mod conflict workarounds in README (LoadAfter, mod-loader.log)
- Verified modinfo.json and file structure against current Anno 117 modloader spec - no changes required

## [1.0.4] - 2025-12-20
- Reverted Income attribute from Scipio (did not display in-game)
- Updated release workflow for better mod.io compatibility
- Fixed workflow for proper folder structure in releases

## [1.0.3] - 2024-11-22
- Added Gracchus Crassus: Rich Benefactor (-50% residence maintenance within radius)
- Removed Gracchus Columella: effects were out of scope
- Fixed broken icons for Cassius, Duilius, and Decimus
- Fixed Crassus using MaintenanceUpgrade (income boost does not exist in Anno 117)
- Total specialists: 12
- Total cost: 828 Denarii

## [1.2.0] - 2024-11-22
- Added Gracchus Lucius: Patrician Workforce Master for Latium (adds Citizen & Patrician workforce to Tier 1 Latium residences)
- Added Gracchus Cassius: Patrician Workforce Master for Albion (adds Patrician workforce to Tier 1 Albion residences)
- Added Gracchus Sextus: Peasant Workforce Master for Latium (adds Peasant workforce to Tier 3 & 4 Latium buildings)
- Added Gracchus Decimus: Peasant Workforce Master for Albion (adds Peasant workforce to Tier 3 & 4 Albion buildings)
- Workforce specialists now region-specific to prevent cross-region conflicts
- Total specialists: 12

## [1.1.0] - 2024-11-20
- Added Gracchus Julia: Population Booster (+5 pop per residence, +5 happiness)
- Added Gracchus Columella: Harvest Master (-50% workforce, +50% field capacity, +50% transporter range, +10 happiness)
- Updated trader integration: all specialists now available from traders
- Added icons for all specialists
- Total specialists: 8

## [1.0.0] - 2024-11-19
- Initial public release
- 6 specialists: Tiberius, Gaius, Cornelia, Scipio, Fulvia, Duilius
- GUID range: 1500050000-1500059999
