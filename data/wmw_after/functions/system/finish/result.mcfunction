#> wmw_after:system/finish/result

tellraw @s {"text":"\n\n\n\n======役職======","color": "dark_green"}

tellraw @s [{"translate":"%s:%s","with":[{"interpret":true,"nbt":"Villager","storage":"datapack:werewolf"},{"selector":"@a[scores={PrevRole=200}]","bold": false}],"color": "green"}]
tellraw @s [{"translate":"%s:%s","with":[{"interpret":true,"nbt":"Seer","storage":"datapack:werewolf"},{"selector":"@a[scores={PrevRole=201}]","bold": false}],"color": "aqua"}]
execute unless data storage datapack:wmw_after {DetectiveEnabled:true} run tellraw @s [{"translate":"%s:%s","with":[{"interpret":true,"nbt":"Medium","storage":"datapack:werewolf"},{"selector":"@a[scores={PrevRole=202}]","bold": false}],"color": "yellow"}]
execute if data storage datapack:wmw_after {DetectiveEnabled:true} run tellraw @s [{"translate":"%s:%s","with":[{"text":"探偵"},{"selector":"@a[scores={PrevRole=205}]","bold": false}],"color": "yellow"}]

tellraw @s ""

tellraw @s [{"translate":"%s:%s","with":[{"interpret":true,"nbt":"Werewolf","storage":"datapack:werewolf"},{"selector":"@a[scores={PrevRole=1}]","bold": false}],"color": "dark_red"}]
tellraw @s [{"translate":"%s:%s","with":[{"interpret":true,"nbt":"Madman","storage":"datapack:werewolf"},{"selector":"@a[scores={PrevRole=100}]","bold": false}],"color": "dark_purple"}]

tellraw @s ""

tellraw @s [{"translate":"%s %s","with":[{"text":"[生存者]","bold": true},{"selector":"@a[scores={DeathCount=0}]","bold": false}]}]
