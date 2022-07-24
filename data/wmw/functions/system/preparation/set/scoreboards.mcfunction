######################################
# Phase
# 1 怪盗タイム
# 2 開始カウントダウン
# 3 ゲーム中
######################################
## メインシステム
scoreboard objectives add Phase dummy
scoreboard objectives add CurrentVersion dummy
scoreboard objectives add RandomSelect dummy
scoreboard objectives add Selected dummy
scoreboard objectives add CurrentRole dummy
scoreboard objectives add PrevRole dummy
scoreboard objectives add WolfCount dummy
scoreboard objectives add VillageCount dummy
scoreboard objectives add DeathCount deathCount
scoreboard objectives add random_item dummy
scoreboard objectives add UsedBow used:bow
scoreboard objectives add UsedP used:splash_potion
scoreboard objectives add UsedLP used:lingering_potion
scoreboard objectives add KillCount dummy
scoreboard objectives add DeathNumber dummy
scoreboard objectives add CountDown dummy
scoreboard objectives add medium trigger
scoreboard objectives add seer trigger
scoreboard objectives add counselor trigger
scoreboard objectives add thief trigger
scoreboard objectives add fake trigger
scoreboard objectives add Drunk dummy
scoreboard objectives add Drunk_Kill playerKillCount
scoreboard objectives add Drunk_Milk used:milk_bucket
scoreboard objectives add Haunting dummy
scoreboard objectives add Itako dummy
scoreboard objectives add IsPonkotu dummy
#TalkedToVillagerを100以上にするとスコアがリセットされなくなります
scoreboard objectives add TalkedToVillager custom:talked_to_villager

## 特殊アイテムシステム
scoreboard objectives add blind dropped:sunflower
#scoreboard objectives add blind_book trigger
#scoreboard objectives add UseSnowball minecraft.used:minecraft.snowball
#scoreboard objectives add stan2 dummy
scoreboard objectives add TearOfKonesihma dropped:ghast_tear
scoreboard objectives add hirai dummy

# スコア設定
scoreboard players set @a CurrentRole 0
scoreboard players set @a RandomSelect 0
scoreboard players set @a Selected 0
scoreboard players set @a[scores={PlayerNumber=1..}] DeathNumber 0
scoreboard players set @a[scores={CurrentRole=0,PlayerNumber=1..}] counselor 0
scoreboard players set @a[scores={CurrentRole=0,PlayerNumber=1..}] seer 0
scoreboard players set @a[scores={CurrentRole=0,PlayerNumber=1..}] medium 0
execute if score #Thief wrwrSettings matches 1 run scoreboard players set @a[scores={CurrentRole=0,PlayerNumber=1..}] fake 0
scoreboard players set @a[scores={CurrentRole=0,PlayerNumber=1..}] DeathCount 0
scoreboard players set @a[scores={CurrentRole=0,PlayerNumber=1..}] blind 0
scoreboard players set @a[scores={CurrentRole=0,PlayerNumber=1..}] Drunk 0
execute if score #Haunting wrwrSettings matches 0 run scoreboard players set @a[scores={CurrentRole=0,PlayerNumber=1..}] Haunting 0
scoreboard players set @a[scores={CurrentRole=0,PlayerNumber=1..}] TearOfKonesihma 0
scoreboard players set @a IsPonkotu 0
execute if score #Thief wrwrSettings matches 1 run scoreboard players set #WMW Phase 1
execute if score #Thief wrwrSettings matches 0 run function wmw:system/ongame/change_to3
scoreboard players set @a[scores={CurrentRole=0,PlayerNumber=1..},gamemode=!spectator] random_item 0
function wmw:system/preparation/random_item
scoreboard players set @a[scores={CurrentRole=0,PlayerNumber=1..}] hirai 0
