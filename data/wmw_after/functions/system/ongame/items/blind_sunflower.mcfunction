#> wmw_after:system/ongame/items/blind_sunflower

execute if entity @a[scores={blind=1..},nbt={SelectedItem:{id:"minecraft:sunflower",tag:{CustomModelData:2}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:sunflower",tag:{CustomModelData:2}}}] run effect give @a[scores={DeathCount=0,blind=0},nbt=!{SelectedItem:{id:"minecraft:sunflower",tag:{CustomModelData:2}}}] blindness 10 0 false
execute if entity @a[scores={blind=1..},nbt={SelectedItem:{id:"minecraft:sunflower",tag:{CustomModelData:2}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:sunflower",tag:{CustomModelData:2}}}] run playsound entity.wither.spawn record @a ~ ~ ~ 100 1 1
execute if entity @a[scores={blind=1..},nbt={SelectedItem:{id:"minecraft:sunflower",tag:{CustomModelData:2}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:sunflower",tag:{CustomModelData:2}}}] run title @a title "停 電 発 生"
execute if entity @a[scores={blind=1..},nbt={SelectedItem:{id:"minecraft:sunflower",tag:{CustomModelData:2}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:sunflower",tag:{CustomModelData:2}}}] run title @a subtitle "10秒後に復旧します"
execute if entity @a[scores={blind=1..},nbt={SelectedItem:{id:"minecraft:sunflower",tag:{CustomModelData:2}}}] as @e[type=item,nbt={Item:{id:"minecraft:sunflower",tag:{CustomModelData:2}}}] run kill @s
execute as @a[scores={blind=1..},nbt={SelectedItem:{id:"minecraft:sunflower",tag:{CustomModelData:2}}}] run clear @s sunflower{CustomModelData:2} 1
execute as @a[scores={blind=1..}] run scoreboard players set @s blind 0