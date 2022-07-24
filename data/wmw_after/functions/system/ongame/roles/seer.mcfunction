scoreboard players enable @a[scores={CurrentRole=3,seer=0}] seer
scoreboard players enable @a[scores={PrevRole=3,CurrentRole=5,seer=0}] seer

execute as @a if score @s PlayerNumber = @a[scores={CurrentRole=3,IsPonkotu=0},limit=1] seer run tag @s add seer
execute as @a if score @s PlayerNumber = @a[scores={PrevRole=3,CurrentRole=5},limit=1] seer run tag @s add fakeseer
execute as @a if score @s PlayerNumber = @a[scores={CurrentRole=3,IsPonkotu=1},limit=1] seer run tag @s add Ponkotuseer

# 酔っぱらいの預言結果
execute if entity @a[scores={CurrentRole=1,Drunk=1..2},tag=seer] run tellraw @a[scores={CurrentRole=3,seer=1..}] [{"translate":" %sは酔っぱらっています","with":[{"selector":"@a[tag=seer]"}]}]

# 本当の預言結果
execute if entity @a[scores={CurrentRole=1,Drunk=0},tag=seer] run tellraw @a[scores={CurrentRole=3,seer=1..}] [{"translate":" %sは人狼です","with":[{"selector":"@a[tag=seer]"}]}]
execute if entity @a[scores={CurrentRole=2..9,Drunk=0},tag=seer] run tellraw @a[scores={CurrentRole=3,seer=1..}] [{"translate":" %sは人狼ではありません","with":[{"selector":"@a[tag=seer]"}]}]
execute if entity @a[scores={CurrentRole=11..,Drunk=0},tag=seer] run tellraw @a[scores={CurrentRole=3,seer=1..}] [{"translate":" %sは人狼ではありません","with":[{"selector":"@a[tag=seer]"}]}]

# 盗まれた預言結果
execute if entity @a[tag=fakeseer] run tellraw @a[scores={PrevRole=3,CurrentRole=5,seer=1..}] [{"translate":" %sは人狼ではありません","with":[{"selector":"@a[tag=fakeseer]"}]}]

# オオカミ少年の預言結果
execute if entity @a[scores={CurrentRole=10},tag=seer] run tellraw @a[scores={CurrentRole=3,seer=1..}] [{"translate":" %sは人狼です","with":[{"selector":"@a[tag=seer]"}]}]

# ポンコツ預言者の預言結果
execute if entity @a[tag=Ponkotuseer] run tellraw @a[scores={CurrentRole=3,IsPonkotu=1,seer=1..}] [{"translate":" %sは人狼ではありません","with":[{"selector":"@a[tag=Ponkotuseer]"}]}]

# 本を消す
clear @a[scores={seer=1..}] written_book{CustomModelData:5,title:"預言の書"} 1
clear @a[scores={seer=1..}] written_book{CustomModelData:5,title:"役職本"} 1

tag @a[tag=seer] remove seer
tag @a[tag=fakeseer] remove fakeseer
tag @a[tag=Ponkotuseer] remove Ponkotuseer

scoreboard players reset @a[scores={seer=1..}] seer