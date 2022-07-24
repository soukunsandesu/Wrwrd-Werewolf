#> wmw_after:system/ongame/items/tear_of_koneshima

execute if entity @a[scores={TearOfKonesihma=1..}] if entity @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b,tag:{CustomModelData:18}}}] at @a[scores={TearOfKonesihma=0,DeathCount=0}] if block ~ ~ ~ air run summon armor_stand ~ ~3 ~ {Invisible:1,Marker:1,Tags:["WMWAfterstand","TearOfKonesihma"]}
execute if entity @a[scores={TearOfKonesihma=1..}] if entity @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b,tag:{CustomModelData:18}}}] at @e[type=armor_stand,tag=TearOfKonesihma] if block ~ ~ ~ air run setblock ~ ~ ~ water keep
execute if entity @a[scores={TearOfKonesihma=1..}] if entity @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b,tag:{CustomModelData:18}}}] at @e[type=armor_stand,tag=TearOfKonesihma] if block ~ ~-1 ~ air run setblock ~ ~ ~ barrier keep
execute if entity @a[scores={TearOfKonesihma=1..}] if entity @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b,tag:{CustomModelData:18}}}] at @e[type=armor_stand,tag=TearOfKonesihma] if block ~ ~-1 ~ barrier run setblock ~ ~ ~ air
execute if entity @a[scores={TearOfKonesihma=1..}] if entity @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b,tag:{CustomModelData:18}}}] run title @a title "コネシマが泣いている"
execute if entity @a[scores={TearOfKonesihma=1..}] if entity @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b,tag:{CustomModelData:18}}}] run playsound entity.horse.death record @a ~ ~ ~ 100 1 1
execute if entity @a[scores={TearOfKonesihma=1..}] if entity @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b,tag:{CustomModelData:18}}}] run playsound entity.ghast.hurt record @a ~ ~ ~ 100 1 1
execute as @a[scores={TearOfKonesihma=1..}] if entity @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b,tag:{CustomModelData:18}}}] run clear @s ghast_tear{CustomModelData:18} 1
execute if entity @a[scores={TearOfKonesihma=1..}] as @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b,tag:{CustomModelData:18}}}] run kill @s
execute as @a[scores={TearOfKonesihma=1..}] run scoreboard players set @s TearOfKonesihma 0
