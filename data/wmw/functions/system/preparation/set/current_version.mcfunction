loot replace entity @s weapon.mainhand loot wmw:item/special/end_rod
loot replace entity @s weapon.mainhand loot wmw:item/special/lightning_rod

execute if entity @s[nbt={SelectedItem:{id:"minecraft:end_rod"}}] run scoreboard players set #WMW CurrentVersion 16
execute if entity @s[nbt={SelectedItem:{id:"minecraft:lightning_rod"}}] run scoreboard players set #WMW CurrentVersion 17

scoreboard players operation @a CurrentVersion = #WMW CurrentVersion

clear @s