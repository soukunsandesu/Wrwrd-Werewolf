#> wmw_after:system/ongame/roles/counselor/main

scoreboard players enable @a[scores={CurrentRole=203,counselor=0}] counselor
scoreboard players enable @a[scores={PrevRole=203,CurrentRole=200,counselor=0}] counselor

execute as @a if score @s PlayerNumber = @a[scores={CurrentRole=203},limit=1] PlayerNumber run tag @s add counselor
execute as @a if score @s PlayerNumber = @a[scores={PrevRole=203,CurrentRole=200},limit=1] PlayerNumber run tag @s add fakecounselor

# 本当のカウンセラー結果
execute if entity @a[tag=counselor] run tellraw @a[scores={counselor=1..}] [{"translate":" %sの陣営を反転させました。","with":[{"selector":"@a[tag=counselor]"}]}]
execute as @a[tag=counselor,scores={CurrentRole=1..200}] if entity @a[scores={counselor=1..,CurrentRole=203}] run function wmw_after:system/ongame/roles/counselor/switch_to_villager
execute as @a[tag=counselor,scores={CurrentRole=201..}] if entity @a[scores={counselor=1..,CurrentRole=203}] run function wmw_after:system/ongame/roles/counselor/switch_to_werewolf

# 本を消す
clear @a[scores={counselor=1..}] written_book{CustomModelData:5,title:"カウンセラーの書"} 1
clear @a[scores={counselor=1..}] written_book{CustomModelData:5,title:"役職本"} 1

tag @a[tag=counselor] remove counselor
tag @a[tag=fakecounselor] remove fakecounselor

scoreboard players reset @a[scores={counselor=1..}] counselor