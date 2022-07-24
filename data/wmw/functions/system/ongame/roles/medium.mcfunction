scoreboard players enable @a[scores={CurrentRole=4,medium=0}] medium
scoreboard players enable @a[scores={PrevRole=4,CurrentRole=5,medium=0}] medium

execute as @a if score @s PlayerNumber = @a[scores={CurrentRole=4},limit=1] medium run tag @s add medium
execute as @a if score @s PlayerNumber = @a[scores={PrevRole=4,CurrentRole=5},limit=1] medium run tag @s add medium

# 本当の霊媒結果
execute if entity @a[scores={CurrentRole=1,DeathCount=1..},tag=medium] run tellraw @a[scores={CurrentRole=4,medium=1..}] [{"translate":" %sは人狼です","with":[{"selector":"@a[tag=medium]"}]}]
execute if entity @a[scores={CurrentRole=2..,DeathCount=1..},tag=medium] run tellraw @a[scores={CurrentRole=4,medium=1..}] [{"translate":" %sは人狼ではありません","with":[{"selector":"@a[tag=medium]"}]}]
execute if entity @a[scores={DeathCount=0},tag=medium] run tellraw @a[scores={CurrentRole=4,medium=1..}] [{"translate":" %sは生きています","with":[{"selector":"@a[tag=medium]"}]}]

# 盗まれた霊媒結果
execute if entity @a[tag=medium] run tellraw @a[scores={PrevRole=4,CurrentRole=5,medium=1..}] [{"translate":" %sは人狼ではありません","with":[{"selector":"@a[tag=medium]"}]}]

# 本を消す
clear @a[scores={medium=1..}] written_book{CustomModelData:5,title:"霊能の書"} 1
clear @a[scores={medium=1..}] written_book{CustomModelData:5,title:"役職本"} 1

tag @a remove medium

scoreboard players reset @a[scores={medium=1..}] medium