######################################
# Phase
# 1 怪盗タイム
# 2 開始カウントダウン
# 3 ゲーム中
######################################
## メインシステム
scoreboard objectives add CurrentVersion dummy
scoreboard objectives add RandomSelect dummy
scoreboard objectives add Selected dummy
scoreboard objectives add CurrentRole dummy
scoreboard objectives add PrevRole dummy
scoreboard objectives add WolfCount dummy
scoreboard objectives add VillageCount dummy
scoreboard objectives add DeathCount deathCount
scoreboard objectives add random_item dummy
scoreboard objectives add KillCount dummy
scoreboard objectives add DeathNumber dummy
scoreboard objectives add CountDown dummy
scoreboard objectives add medium trigger
scoreboard objectives add seer trigger
scoreboard objectives add counselor trigger
#TalkedToVillagerを100以上にするとスコアがリセットされなくなります
scoreboard objectives add TalkedToVillager custom:talked_to_villager

## 特殊アイテムシステム
scoreboard objectives add blind dropped:sunflower
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
scoreboard players set @a[scores={CurrentRole=0,PlayerNumber=1..}] DeathCount 0
scoreboard players set @a[scores={CurrentRole=0,PlayerNumber=1..}] blind 0
scoreboard players set @a[scores={CurrentRole=0,PlayerNumber=1..}] TearOfKonesihma 0
scoreboard players set @a IsPonkotu 0

scoreboard players set @a[scores={CurrentRole=0,PlayerNumber=1..},gamemode=!spectator] random_item 0
function wmw_after:system/preparation/random_item
scoreboard players set @a[scores={CurrentRole=0,PlayerNumber=1..}] hirai 0

function wmw_after:system/preparation/change_to_2