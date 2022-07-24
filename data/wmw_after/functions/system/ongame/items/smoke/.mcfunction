#> wmw_after:system/ongame/items/smoke/

execute at @e[type=area_effect_cloud,tag=Runned,nbt={Effects:[{Id:27b,Amplifier:5b}]}] run particle minecraft:smoke ~ ~ ~ 1.25 0.6 1.25 0.03 700

execute as @e[type=area_effect_cloud,tag=!Runned,nbt={Effects:[{Id:27b,Amplifier:5b}]}] run data modify entity @s Particle set value "minecraft:smoke"
execute if entity @e[type=area_effect_cloud,tag=!Runned,nbt={Effects:[{Id:27b,Amplifier:5b}]}] run playsound entity.generic.explode record @a ~ ~ ~ 100 1 1
execute as @e[type=area_effect_cloud,tag=!Runned,nbt={Effects:[{Id:27b,Amplifier:5b}]}] run tag @s add Runned