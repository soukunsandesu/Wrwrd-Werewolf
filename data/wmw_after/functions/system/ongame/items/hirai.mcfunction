execute as @a[scores={hirai=1..}] run scoreboard players remove @s hirai 1
execute as @e[type=armor_stand,tag=hirai,nbt={OnGround:true}] run data merge entity @s {Marker:1}

execute as @e[type=item,nbt={Item:{id:"minecraft:end_rod",tag:{CustomModelData:4}}}] at @s run scoreboard players set @a[limit=1,sort=nearest,scores={DeathCount=0,hirai=0}] hirai 20
execute as @e[type=item,nbt={Item:{id:"minecraft:end_rod",tag:{CustomModelData:4}}}] at @s run summon armor_stand ~ ~0.4 ~ {Invisible:1,Marker:0,Tags:["WMWAfterstand","hirai"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:end_rod",tag:{CustomModelData:4}}}] run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:lightning_rod",tag:{CustomModelData:11}}}] at @s run scoreboard players set @a[limit=1,sort=nearest,scores={DeathCount=0,hirai=0}] hirai 20
execute as @e[type=item,nbt={Item:{id:"minecraft:lightning_rod",tag:{CustomModelData:11}}}] at @s run summon armor_stand ~ ~0.4 ~ {Invisible:1,Marker:0,Tags:["WMWAfterstand","hirai"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:lightning_rod",tag:{CustomModelData:11}}}] run kill @s

execute at @e[type=armor_stand,tag=hirai] as @a[scores={hirai=0,DeathCount=0},distance=..1] run tag @s add hirai2
execute if entity @a[tag=hirai2] as @e[type=armor_stand,tag=hirai] run kill @s

effect give @a[tag=hirai2] blindness 10 0 false
effect give @a[tag=hirai2] slowness 10 200 false
effect give @a[tag=hirai2] jump_boost 10 200 true
execute at @a[tag=hirai2] run playsound entity.lightning_bolt.impact record @a ~ ~ ~ 1 1 1
execute at @a[tag=hirai2] run playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 1 1 1
execute at @a[tag=hirai2] run particle minecraft:flash ~ ~1 ~ 1 1 1 1 50
execute at @a[tag=hirai2] run particle minecraft:dust 1 1 0 1 ~ ~ ~ 2.5 2.5 2.5 1 2000
execute as @a[tag=hirai2] run tag @s remove hirai2