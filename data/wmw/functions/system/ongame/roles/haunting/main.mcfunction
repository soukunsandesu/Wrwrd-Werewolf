execute at @e[type=minecraft:armor_stand,tag=HauntPlayer_Teleporter] run effect give @a[scores={Haunting=1..,DeathCount=1..}] minecraft:slowness 1000000 1 false
execute at @e[type=minecraft:armor_stand,tag=HauntPlayer_Teleporter] run effect give @a[scores={Haunting=1..,DeathCount=1..}] minecraft:jump_boost 1000000 200 false
execute at @e[type=minecraft:armor_stand,tag=HauntPlayer_Teleporter] run loot replace entity @a[scores={Haunting=1..,DeathCount=1..}] armor.head loot wmw:item/zombie_head
execute at @e[type=minecraft:armor_stand,tag=HauntPlayer_Teleporter] run title @a[scores={Haunting=1..,DeathCount=1..},distance=10..] title "ここから出られない"
execute at @e[type=minecraft:armor_stand,tag=HauntPlayer_Teleporter] run tp @a[scores={Haunting=1..,DeathCount=1..},distance=10..] ~ ~0.5 ~
execute as @a[scores={Haunting=1..,DeathCount=1..}] run function wmw:system/ongame/limit/all_items/main
execute at @a[scores={Haunting=1..,DeathCount=1..,UsedBow=1..}] run kill @e[type=arrow,distance=..3]
execute at @a[scores={Haunting=1..,DeathCount=1..,UsedP=1..}] run kill @e[type=potion,nbt={Item:{id:"minecraft:splash_potion"}},distance=..3]
execute at @a[scores={Haunting=1..,DeathCount=1..,UsedLP=1..}] run kill @e[type=potion,nbt={Item:{id:"minecraft:lingering_potion"}},distance=..3]
