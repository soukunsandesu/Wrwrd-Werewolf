tellraw @s {"text":"\n\n\n\n======役職======","color": "dark_green"}

tellraw @s [{"translate":"%s:%s","with":[{"text":"村人"},{"selector":"@a[scores={PrevRole=5}]","bold": false}],"color": "green"}]
execute if score #Brother wrwrSettings matches 0 if entity @a[scores={PrevRole=3,IsPonkotu=0}] run tellraw @s [{"translate":"%s:%s","with":[{"text":"預言者"},{"selector":"@a[scores={PrevRole=3,IsPonkotu=0}]","bold": false}],"color": "aqua"}]
execute if score #Ponkotu wrwrSettings matches 1 if entity @a[scores={PrevRole=3,IsPonkotu=1}] run tellraw @s [{"translate":"%s:%s","with":[{"text":"ポンコツ預言者"},{"selector":"@a[scores={PrevRole=3,IsPonkotu=1}]","bold": false}],"color": "aqua"}]
execute if score #radaokun wrwrSettings matches 0 if score #Itako wrwrSettings matches 0 if score #Detective wrwrSettings matches 0 run tellraw @s [{"translate":"%s:%s","with":[{"text":"霊媒師"},{"selector":"@a[scores={PrevRole=4}]","bold": false}],"color": "yellow"}]
execute if score #Itako wrwrSettings matches 1 run tellraw @s [{"translate":"%s:%s","with":[{"text":"イタコ"},{"selector":"@a[scores={PrevRole=11}]","bold": false}],"color": "yellow"}]
execute if score #Detective wrwrSettings matches 1 run tellraw @s [{"translate":"%s:%s","with":[{"text":"探偵"},{"selector":"@a[scores={PrevRole=14}]","bold": false}],"color": "yellow"}]

tellraw @s ""

tellraw @s [{"translate":"%s:%s","with":[{"text":"人狼"},{"selector":"@a[scores={PrevRole=1}]","bold": false}],"color": "dark_red"}]
tellraw @s [{"translate":"%s:%s","with":[{"text":"狂人"},{"selector":"@a[scores={PrevRole=2}]","bold": false}],"color": "dark_purple"}]

execute if score #Drunk wrwrSettings matches 0 if score #Haunting wrwrSettings matches 0 run tellraw @s ""

execute if score #Thief wrwrSettings matches 1 run tellraw @s [{"translate":"%s:%s","with":[{"text":"怪盗"},{"selector":"@a[scores={PrevRole=6}]","bold": false}],"color": "blue"}]
execute if score #radaokun wrwrSettings matches 1 run tellraw @s [{"translate":"%s:%s","with":[{"text":"青陰キャ"},{"selector":"@a[scores={PrevRole=7}]","bold": false}],"color": "blue"}]
execute if score #Brother wrwrSettings matches 1 run tellraw @s [{"translate":"%s:%s","with":[{"text":"兄弟"},{"selector":"@a[scores={PrevRole=8..9}]","bold": false}],"color": "dark_green"}]
execute if score #WolfBoy wrwrSettings matches 1 run tellraw @s [{"translate":"%s:%s","with":[{"text":"オオカミ少年"},{"selector":"@a[scores={PrevRole=10}]","bold": false}],"color": "gold"}]

execute if score #Thief wrwrSettings matches 1 run tellraw @s [{"text":"\n怪盗記録  "},{"translate":"%s => %s","with":[{"selector":"@a[scores={PrevRole=6}]","color": "blue"},{"selector":"@a[scores={thief=100}]","color": "white"}]}]

tellraw @s [{"translate":"%s %s","with":[{"text":"[生存者]","bold": true},{"selector":"@a[scores={DeathCount=0}]","bold": false}]}]
