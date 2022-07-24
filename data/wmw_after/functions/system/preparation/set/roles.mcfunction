#> wmw_after:system/preparation/set/roles

#################################################################
# 役職score number ( 人狼:1~99 || 狂人:100~199 || 村人陣営:200~299 || 第三陣営...?:300~ )
# 1  W人狼-赤(dark_red)
# 100  W狂人-紫(dark_purple)
# 200  V村人-緑(green)
# 201  V預言者-水色(aqua)
# 202  V霊媒師-黄色(yellow)
#################################################################
# 2 Wボマー-赤(dark_red)
# 203 Vカウンセラー-青緑(dark_aqua)
# 204 Vパン屋(実装予定なし)-オレンジ(gold)
# 205 V探偵-黄色(yellow)
# 206 N従者-緑(green)
#################################################################
# テスト用の役職割り当て
scoreboard players set @a[tag=Debugger] CurrentRole 205
# 通常の役職割り当て
## 人狼
scoreboard players set @a[sort=random,limit=2,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 1
execute if score #WMWAfter PlayerNumber matches 10.. run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 1
## 狂人
scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 100
## 村人陣営
scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 201
execute unless data storage datapack:wmw_after {DetectiveEnabled:true} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 202
execute if data storage datapack:wmw_after {CounselorEnabled:true} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 203
#execute if data storage datapack:wmw_after {BakeryEnabled:true} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 204
execute if data storage datapack:wmw_after {DetectiveEnabled:true} run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 205
## 第三陣営...?
execute if score #DetectiveEnabled wrwrSettings matches 1 run scoreboard players set @a[sort=random,limit=1,scores={CurrentRole=0},gamemode=!spectator] CurrentRole 205
## 余り(村人)
scoreboard players set @a[scores={CurrentRole=0},gamemode=!spectator] CurrentRole 200

execute as @a[scores={CurrentRole=1..}] run scoreboard players operation @s PrevRole = @s CurrentRole

# 各陣営ごとの生存者数
execute as @a[scores={CurrentRole=1..99}] run scoreboard players add #WMWAfter WolfCount 1
execute as @a[scores={CurrentRole=200..}] run scoreboard players add #WMWAfter VillageCount 1

#IgnoreRandSelect削除
tag @a remove IgnoreRandSelect