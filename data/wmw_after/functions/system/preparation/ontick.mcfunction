## thief
scoreboard players enable @a[scores={CurrentRole=6}] thief
execute as @a if score @s PlayerNumber = @a[scores={CurrentRole=6},limit=1] thief run tag @s add thief

# 盗み先==>人狼
execute as @a[tag=thief,scores={CurrentRole=1}] run tellraw @a[scores={CurrentRole=6,thief=1..}] [{"translate":"%sから %s を盗みました","with":[{"selector":"@s"},{"text":"人狼","bold": true,"color": "red"}]}]
execute if entity @a[tag=thief,scores={CurrentRole=1}] run scoreboard players set @a[scores={CurrentRole=6,thief=1..}] CurrentRole 1

# 盗み先==>狂人
execute as @a[tag=thief,scores={CurrentRole=2}] run tellraw @a[scores={CurrentRole=6,thief=1..}] [{"translate":"%sから %s を盗みました","with":[{"selector":"@s"},{"text":"狂人","bold": true,"color": "light_purple"}]}]
execute if entity @a[tag=thief,scores={CurrentRole=2}] run scoreboard players set @a[scores={CurrentRole=6,thief=1..}] CurrentRole 2

# 盗み先==>預言者
execute as @a[tag=thief,scores={CurrentRole=3}] run tellraw @a[scores={CurrentRole=6,thief=1..}] [{"translate":"%sから %s を盗みました","with":[{"selector":"@s"},{"text":"預言者","bold": true,"color": "aqua"}]}]
execute if entity @a[tag=thief,scores={CurrentRole=3}] run scoreboard players set @a[scores={CurrentRole=6,thief=1..}] CurrentRole 3
## ポンコツの場合引き継ぐ


# 盗み先==>霊媒師
execute as @a[tag=thief,scores={CurrentRole=4}] run tellraw @a[scores={CurrentRole=6,thief=1..}] [{"translate":"%sから %s を盗みました","with":[{"selector":"@s"},{"text":"霊能者","bold": true,"color": "yellow"}]}]
execute if entity @a[tag=thief,scores={CurrentRole=4}] run scoreboard players set @a[scores={CurrentRole=6,thief=1..}] CurrentRole 4

# 盗み先==>村人
execute as @a[tag=thief,scores={CurrentRole=5}] run tellraw @a[scores={CurrentRole=6,thief=1..}] [{"translate":"%sから %s を盗みました","with":[{"selector":"@s"},{"text":"村人","bold": true,"color": "green"}]}]
execute if entity @a[tag=thief,scores={CurrentRole=5}] run scoreboard players set @a[scores={CurrentRole=6,thief=1..}] CurrentRole 5

# 盗み先==>青陰キャ
execute as @a[tag=thief,scores={CurrentRole=7}] run tellraw @a[scores={CurrentRole=6,thief=1..}] [{"translate":"%sから %s を盗みました","with":[{"selector":"@s"},{"text":"青陰キャ","bold": true,"color": "blue"}]}]
execute if entity @a[tag=thief,scores={CurrentRole=7}] run scoreboard players set @a[scores={CurrentRole=6,thief=1..}] CurrentRole 7

# 盗み先==>兄
execute as @a[tag=thief,scores={CurrentRole=8}] run tellraw @a[scores={CurrentRole=6,thief=1..}] [{"translate":"%sから %s を盗みました","with":[{"selector":"@s"},{"text":"兄","bold": true,"color": "dark_green"}]}]
execute if entity @a[tag=thief,scores={CurrentRole=8}] run scoreboard players set @a[scores={CurrentRole=6,thief=1..}] CurrentRole 8

# 盗み先==>弟
execute as @a[tag=thief,scores={CurrentRole=9}] run tellraw @a[scores={CurrentRole=6,thief=1..}] [{"translate":"%sから %s を盗みました","with":[{"selector":"@s"},{"text":"村人","bold": true,"color": "green"}]}]
execute if entity @a[tag=thief,scores={CurrentRole=9}] run scoreboard players set @a[scores={CurrentRole=6,thief=1..}] CurrentRole 9

# 盗み先==>オオカミ少年
execute as @a[tag=thief,scores={CurrentRole=10}] run tellraw @a[scores={CurrentRole=6,thief=1..}] [{"translate":"%sから %s を盗みました","with":[{"selector":"@s"},{"text":"村人","bold": true,"color": "green"}]}]
execute if entity @a[tag=thief,scores={CurrentRole=10}] run scoreboard players set @a[scores={CurrentRole=6,thief=1..}] CurrentRole 10

# 盗み先==>イタコ
execute as @a[tag=thief,scores={CurrentRole=11}] run tellraw @a[scores={CurrentRole=6,thief=1..}] [{"translate":"%sから %s を盗みました","with":[{"selector":"@s"},{"text":"イタコ","bold": true,"color": "yellow"}]}]
execute if entity @a[tag=thief,scores={CurrentRole=11}] run scoreboard players set @a[scores={CurrentRole=6,thief=1..}] CurrentRole 11

# 盗み先==>イタコ
execute as @a[tag=thief,scores={CurrentRole=12}] run tellraw @a[scores={CurrentRole=6,thief=1..}] [{"translate":"%sから %s を盗みました","with":[{"selector":"@s"},{"text":"カウンセラー","bold": true,"color": "dark_aqua"}]}]
execute if entity @a[tag=thief,scores={CurrentRole=12}] run scoreboard players set @a[scores={CurrentRole=6,thief=1..}] CurrentRole 12

# 盗み先==>イタコ
execute as @a[tag=thief,scores={CurrentRole=13}] run tellraw @a[scores={CurrentRole=6,thief=1..}] [{"translate":"%sから %s を盗みました","with":[{"selector":"@s"},{"text":"パン屋","bold": true,"color": "gold"}]}]
execute if entity @a[tag=thief,scores={CurrentRole=13}] run scoreboard players set @a[scores={CurrentRole=6,thief=1..}] CurrentRole 13

# 盗み先==>探偵
execute as @a[tag=thief,scores={CurrentRole=14}] run tellraw @a[scores={CurrentRole=6,thief=1..}] [{"translate":"%sから %s を盗みました","with":[{"selector":"@s"},{"text":"探偵","bold": true,"color": "yellow"}]}]
execute if entity @a[tag=thief,scores={CurrentRole=14}] run scoreboard players set @a[scores={CurrentRole=6,thief=1..}] CurrentRole 14

#盗まれた人を村人にする
execute as @a[tag=thief] run scoreboard players set @s CurrentRole 5

# 本を消す
clear @a[scores={thief=1..}] written_book{CustomModelData:5,title:"怪盗の書"}

scoreboard players reset @a[scores={thief=1..}] thief
execute if entity @a[tag=thief] run function wmw_after:system/preparation/change_to_2