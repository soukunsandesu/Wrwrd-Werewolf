#> wmw_after:system/preparation/random_item

execute as @a[scores={random_item=0},sort=random] store result score @s random_item if entity @a[scores={random_item=0},sort=random]
scoreboard players set @a[scores={random_item=9..}] random_item 0

## loop
execute if entity @a[scores={random_item=0}] run function wmw_after:system/preparation/random_item
