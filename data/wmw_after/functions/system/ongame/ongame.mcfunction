#> wmw_after:system/ongame/ongame

## メインシステム

kill @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:5}}}]

##死体
execute as @e[type=armor_stand,tag=DeadBody,tag=NoOnGround,nbt={OnGround:true}] run data modify entity @s Marker set value 1b
execute as @e[type=villager,tag=DeadBody] at @e[type=armor_stand,tag=DeadBody] if score @s PlayerNumber = @e[type=armor_stand,tag=DeadBody,distance=0,sort=nearest,limit=1] PlayerNumber run tp @s ~ ~-1.2 ~

# 死亡時の処理
execute as @a[scores={DeathCount=1,CurrentRole=1}] run scoreboard players remove #WMWAfter WolfCount 1
execute as @a[scores={DeathCount=1,CurrentRole=201..}] run scoreboard players remove #WMWAfter VillageCount 1
execute if score #WMWAfter WolfCount matches 1.. if score #WMWAfter VillageCount matches 1.. as @a[scores={DeathCount=1},tag=Result] run function wmw_after:system/finish/result
execute if data storage datapack:wmw_after {} as @a[scores={DeathCount=1}] run function wmw_after:system/ongame/create_deadbody
execute as @a[scores={DeathCount=1}] run gamemode spectator @s
execute as @a[scores={DeathCount=1}] run scoreboard players set @s DeathCount 2

# 勝利判定
execute if score #WMWAfter WolfCount matches ..0 run function wmw_after:system/finish/winner/villager
execute if score #WMWAfter VillageCount matches ..0 run function wmw_after:system/finish/winner/werewolf

# 預言
function wmw_after:system/ongame/roles/seer

# 霊媒師
function wmw_after:system/ongame/roles/medium

# 探偵
execute if score #DetectiveEnabled wrwrSettings matches 1 run function wmw_after:system/ongame/roles/detective/

# 停電
#function wmw_after:system/ongame/items/blind_book
function wmw_after:system/ongame/items/blind_sunflower

# 煙玉
function wmw_after:system/ongame/items/smoke/

# コネシマの涙
function wmw_after:system/ongame/items/tear_of_koneshima

# 避雷針
function wmw_after:system/ongame/items/hirai

# 浮遊トラップランチャー
function wmw_after:system/ongame/items/levitation_trap_launcher

# テンプレート
#execute if score #Template wrwrSettings matches 1 run function wmw_after:system/ongame/items/

# スコアリセット
execute as @a[scores={UsedBow=1..}] run scoreboard players reset @s UsedBow
execute as @a[scores={UsedP=1..}] run scoreboard players reset @s UsedP
execute as @a[scores={UsedLP=1..}] run scoreboard players reset @s UsedLP
execute as @a[scores={KillCount=1..}] run scoreboard players reset @s KillCount
execute as @a[scores={TalkedToVillager=1..99}] run scoreboard players reset @s TalkedToVillager
