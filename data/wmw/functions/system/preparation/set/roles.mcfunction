#################################################################
# 役職score number
# 1  W人狼-赤(red)
# 2  W狂人-ピンク(light_purple)
# 3  V預言者-水色(aqua) ※設定でポンコツにもなり得る
# 4  V霊媒師-黄色(yellow)
# 5  V村人-緑(green)
#################################################################
# 6  N怪盗-青(blue)
# 7  V青陰キャ-青(blue)
# 8  V兄弟(兄)-深緑(dark_green)
# 9  V兄弟(弟)-深緑(dark_green)
# 10 Vオオカミ少年-オレンジ(gold)
# 11 Vイタコ-黄色(yellow)
# 12 Vカウンセラー-青緑(dark_aqua)
# 13 Vパン屋(実装予定なし)-オレンジ(gold)
# 14 V探偵-黄色(yellow)
#################################################################
# テスト用の役職割り当て
scoreboard players set @a[tag=Debugger] CurrentRole 14
# 通常の役職割り当て
scoreboard players set @a[sort=random,limit=2,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 1
execute if score #WMW PlayerNumber matches 10.. run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 1
scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 2
execute if score #Brother wrwrSettings matches 0 run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 3
execute if score #radaokun wrwrSettings matches 0 if score #Itako wrwrSettings matches 0 if score #Detective wrwrSettings matches 0 run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 4
execute if score #Thief wrwrSettings matches 1 run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 6
execute if score #radaokun wrwrSettings matches 1 run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 7
execute if score #Brother wrwrSettings matches 1 run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 8
execute if score #Brother wrwrSettings matches 1 run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 9
execute if score #WolfBoy wrwrSettings matches 1 run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 10
execute if score #Itako wrwrSettings matches 1 run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 11
execute if score #Counselor wrwrSettings matches 1 run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 12
#execute if score #Bakery wrwrSettings matches 1 run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 13
execute if score #Detective wrwrSettings matches 1 run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 14
scoreboard players set @a[scores={CurrentRole=0},gamemode=!spectator] CurrentRole 5

execute if score #Drunk wrwrSettings matches 1 run function wmw:system/preparation/random_select
execute if score #Drunk wrwrSettings matches 1 run scoreboard players set @a[scores={Selected=1},tag=!IgnoreRandSelect] Drunk 1
execute if score #Haunting wrwrSettings matches 1 run function wmw:system/preparation/random_select
execute if score #Haunting wrwrSettings matches 1 run scoreboard players set @a[scores={Selected=1},tag=!IgnoreRandSelect] Haunting 1
execute if score #Ponkotu wrwrSettings matches 1 run tag @a[scores={CurrentRole=3}] add WMW_RandomSelect
execute if score #Ponkotu wrwrSettings matches 1 run function wmw:system/preparation/random_select
execute if score #Ponkotu wrwrSettings matches 1 run scoreboard players set @a[scores={Selected=1,CurrentRole=3},tag=!IgnoreRandSelect] IsPonkotu 1

execute as @a[scores={CurrentRole=1..}] run scoreboard players operation @s PrevRole = @s CurrentRole

# 各陣営ごとの生存者数
execute as @a[scores={CurrentRole=1}] run scoreboard players add #WMW WolfCount 1
execute as @a[scores={CurrentRole=3..}] run scoreboard players add #WMW VillageCount 1

#IgnoreRandSelect削除
tag @a remove IgnoreRandSelect