execute at @e[type=area_effect_cloud,nbt={Effects:[{Id:7b,Amplifier:5b}]}] run summon lightning_bolt ~ ~ ~
#execute at @e[type=lightning_bolt] run playsound entity.lightning_bolt.impact record @a ~ ~ ~ 1 1
#execute at @e[type=lightning_bolt] run playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 1 1 1
#execute if entity @e[type=area_effect_cloud,nbt={Effects:[{Id:7b,Amplifier:5b}]}] run kill @e[type=lightning_bolt]
execute at @e[type=area_effect_cloud,nbt={Effects:[{Id:7b,Amplifier:5b}]}] run kill @a[distance=..3,scores={DeathCount=0}]
execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:7b,Amplifier:5b}]}] run kill @s