#> wmw_after:system/ongame/roles/seer

scoreboard players enable @a[scores={CurrentRole=201,seer=0}] seer

execute as @a if score @s PlayerNumber = @a[scores={CurrentRole=201,IsPonkotu=0},limit=1] seer run tag @s add seer

# 本当の預言結果
execute if entity @a[scores={CurrentRole=1},tag=seer] run tellraw @a[scores={CurrentRole=201,seer=1..}] [{"translate":" %sは人狼です","with":[{"selector":"@a[tag=seer]"}]}]
execute if entity @a[scores={CurrentRole=100..},tag=seer] run tellraw @a[scores={CurrentRole=201,seer=1..}] [{"translate":" %sは人狼ではありません","with":[{"selector":"@a[tag=seer]"}]}]

# 本を消す
clear @a[scores={seer=1..}] written_book{CustomModelData:5,title:"役職本"} 1

tag @a[tag=seer] remove seer

scoreboard players reset @a[scores={seer=1..}] seer