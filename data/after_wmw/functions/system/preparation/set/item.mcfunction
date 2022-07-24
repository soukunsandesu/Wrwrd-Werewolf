#弓矢配布
loot give @a[team=WMWAfter] loot wmw_after:item/common

#特殊アイテム
execute if score #探偵 wrwrSettings matches 1 as @a[scores={random_item=1..},tag=!GAVE] run loot give @s loot wmw_after:item/detective_special
execute if score #探偵 wrwrSettings matches 1 as @a[scores={random_item=1..},tag=!GAVE] run tag @s add GAVE

execute if score #カウンセラー wrwrSettings matches 1 as @a[scores={random_item=1..},tag=!GAVE] run loot give @s loot wmw_after:item/detective_special
execute if score #カウンセラー wrwrSettings matches 1 as @a[scores={random_item=1..},tag=!GAVE] run tag @s add GAVE

execute if score #従者 wrwrSettings matches 1 as @a[scores={random_item=1..},tag=!GAVE] run loot give @s loot wmw_after:item/detective_special
execute if score #従者 wrwrSettings matches 1 as @a[scores={random_item=1..},tag=!GAVE] run tag @s add GAVE

execute if score #ボマー wrwrSettings matches 1 as @a[scores={random_item=1..},tag=!GAVE] run loot give @s loot wmw_after:item/detective_special
execute if score #ボマー wrwrSettings matches 1 as @a[scores={random_item=1..},tag=!GAVE] run tag @s add GAVE

execute if score #パン屋 wrwrSettings matches 1 as @a[scores={random_item=1..},tag=!GAVE] run loot give @s loot wmw_after:item/detective_special
execute if score #パン屋 wrwrSettings matches 1 as @a[scores={random_item=1..},tag=!GAVE] run tag @s add GAVE