#弓矢配布
loot give @a[team=WMWAfter] loot wmw_after:item/common

#特殊アイテム
execute if data storage datapack:wmw_after {DetectiveEnabled:true} as @a[scores={random_item=1..},tag=!GAVE] run loot give @s loot wmw_after:item/detective_special
execute if data storage datapack:wmw_after {DetectiveEnabled:true} as @a[scores={random_item=1..},tag=!GAVE] run tag @s add GAVE

execute if data storage datapack:wmw_after {CounselorEnabled:true} as @a[scores={random_item=1..},tag=!GAVE] run loot give @s loot wmw_after:item/detective_special
execute if data storage datapack:wmw_after {CounselorEnabled:true} as @a[scores={random_item=1..},tag=!GAVE] run tag @s add GAVE

execute if data storage datapack:wmw_after {Servant:true} as @a[scores={random_item=1..},tag=!GAVE] run loot give @s loot wmw_after:item/detective_special
execute if data storage datapack:wmw_after {Servant:true} as @a[scores={random_item=1..},tag=!GAVE] run tag @s add GAVE

execute if data storage datapack:wmw_after {BomberEnabled:true} as @a[scores={random_item=1..},tag=!GAVE] run loot give @s loot wmw_after:item/detective_special
execute if data storage datapack:wmw_after {BomberEnabled:true} as @a[scores={random_item=1..},tag=!GAVE] run tag @s add GAVE

execute if data storage datapack:wmw_after {BakeryEnabled:true} as @a[scores={random_item=1..},tag=!GAVE] run loot give @s loot wmw_after:item/detective_special
execute if data storage datapack:wmw_after {BakeryEnabled:true} as @a[scores={random_item=1..},tag=!GAVE] run tag @s add GAVE

execute as @a[tag=!GAVE] run loot give @s loot wmw_after:item/special