execute if score @s CurrentRole matches 1 run tellraw @a[distance=..0.5,scores={CurrentRole=14,TalkedToVillager=1..99}] {"text":"*この死体は人狼です"}
execute if score @s CurrentRole matches 2.. run tellraw @a[distance=..0.5,scores={CurrentRole=14,TalkedToVillager=1..99}] {"text":"*この死体は人狼ではありません"}
clear @a[distance=..0.5,scores={CurrentRole=14,TalkedToVillager=1..99}] written_book{CustomModelData:5,title:"役職本"} 1
scoreboard players set @a[distance=..0.5,scores={CurrentRole=14,TalkedToVillager=1..99}] TalkedToVillager 100

#tellraw @a[tag=Debugger] "[UsedDetective]実行されたよ！"