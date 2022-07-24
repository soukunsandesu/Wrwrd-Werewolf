## メインシステム

kill @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:5}}}]

##死体
execute as @e[type=armor_stand,tag=DeadBody,tag=NoOnGround,nbt={OnGround:true}] run data modify entity @s Marker set value 1b
execute as @e[type=villager,tag=DeadBody] at @e[type=armor_stand,tag=DeadBody] if score @s PlayerNumber = @e[type=armor_stand,tag=DeadBody,distance=0,sort=nearest,limit=1] PlayerNumber run tp @s ~ ~-1.2 ~

# 死亡時の処理
execute as @a[scores={DeathCount=1}] at @s if entity @a[scores={KillCount=1..}] run scoreboard players operation @s DeathNumber = @a[scores={KillCount=1..}] PlayerNumber
execute as @a[scores={DeathCount=1}] at @s unless entity @a[scores={KillCount=1..}] run scoreboard players operation @s DeathNumber = @s PlayerNumber
execute as @a[scores={DeathCount=1,CurrentRole=1}] run scoreboard players remove #WMW WolfCount 1
execute as @a[scores={DeathCount=1,CurrentRole=3..}] run scoreboard players remove #WMW VillageCount 1
execute if score #Haunting wrwrSettings matches 1 if score #WMW WolfCount matches 1.. if score #WMW VillageCount matches 1.. unless entity @e[type=minecraft:armor_stand,tag=HauntPlayer_Teleporter] as @a[scores={Haunting=1..,DeathCount=1}] at @s run function wmw:system/ongame/roles/haunting/death
execute if score #WMW WolfCount matches 1.. if score #WMW VillageCount matches 1.. if entity @a[scores={CurrentRole=8..9,DeathCount=1}] as @a[scores={CurrentRole=8..9,DeathCount=0}] run function wmw:system/ongame/roles/brothers/death
execute if score #Haunting wrwrSettings matches 1 run scoreboard players set @a[scores={Haunting=1..,DeathCount=1}] DeathCount 24
execute if score #WMW WolfCount matches 1.. if score #WMW VillageCount matches 1.. as @a[scores={DeathCount=1},tag=Result] run function wmw:system/finish/result
execute if score #Detective wrwrSettings matches 1 as @a[scores={DeathCount=1}] run function wmw:system/ongame/create_deadbody
execute if score #Thief wrwrSettings matches 1 run scoreboard players set @s DeathCount 22
execute as @a[scores={DeathCount=1..23}] run scoreboard players add @s DeathCount 1
execute as @a[scores={DeathCount=23}] run gamemode spectator @s
execute if score #WMW WolfCount matches ..0 run function wmw:system/finish/winner/villager
execute if score #WMW VillageCount matches ..0 run function wmw:system/finish/winner/werewolf

# 預言
function wmw:system/ongame/roles/seer

# 霊媒師
function wmw:system/ongame/roles/medium

# fake book
execute if score #Thief wrwrSettings matches 1 run function wmw:system/ongame/roles/fake

# 酔っぱらい
execute if score #Drunk wrwrSettings matches 1 run function wmw:system/ongame/roles/drunk/main

# 地縛霊
execute if score #Haunting wrwrSettings matches 1 run function wmw:system/ongame/roles/haunting/main

# 青陰キャ
execute if score #radaokun wrwrSettings matches 1 at @a[scores={CurrentRole=7,DeathCount=0}] run function wmw:system/ongame/roles/radaokun

# 兄弟
execute if score #Brother wrwrSettings matches 1 if entity @a[scores={CurrentRole=8..9,DeathCount=0,CountDown=1..}] run function wmw:system/ongame/roles/brothers/main

# イタコ
execute if score #Itako wrwrSettings matches 1 run function wmw:system/ongame/roles/itako

# 探偵
execute if score #Detective wrwrSettings matches 1 run function wmw:system/ongame/roles/detective/

# 停電
#function wmw:system/ongame/items/blind_book
function wmw:system/ongame/items/blind_sunflower

# スタングレネード
#function wmw:system/ongame/items/snowball

# 煙玉
function wmw:system/ongame/items/smoke

# フォースライトニング
#function wmw:system/ongame/items/force_lightning

# スパイダーランチャー
function wmw:system/ongame/items/spider_launcher

# コネシマの涙
function wmw:system/ongame/items/tear_of_koneshima

# UAV
#execute if score #Thief wrwrSettings matches 1 run function wmw:system/ongame/items/

# 避雷針
function wmw:system/ongame/items/hirai

# 浮遊トラップランチャー
function wmw:system/ongame/items/levitation_trap_launcher

# テンプレート
#execute if score #Template wrwrSettings matches 1 run function wmw:system/ongame/items/

# スコアリセット
execute as @a[scores={UsedBow=1..}] run scoreboard players reset @s UsedBow
execute as @a[scores={UsedP=1..}] run scoreboard players reset @s UsedP
execute as @a[scores={UsedLP=1..}] run scoreboard players reset @s UsedLP
execute as @a[scores={KillCount=1..}] run scoreboard players reset @s KillCount
execute as @a[scores={TalkedToVillager=1..99}] run scoreboard players reset @s TalkedToVillager
