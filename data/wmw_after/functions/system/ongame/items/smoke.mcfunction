execute at @e[type=area_effect_cloud,nbt={Effects:[{Id:26b,Amplifier:5b}]}] run particle campfire_signal_smoke ~ ~1 ~ 1.5 1.5 1.5 0 3000
execute at @e[type=area_effect_cloud,nbt={Effects:[{Id:26b,Amplifier:5b}]}] run particle campfire_signal_smoke ~ ~1 ~ 1.5 1.5 1.5 0.2 300
execute if entity @e[type=area_effect_cloud,nbt={Effects:[{Id:26b,Amplifier:5b}]}] run playsound entity.generic.explode record @a ~ ~ ~ 100 1 1
execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:26b,Amplifier:5b}]}] run kill @s