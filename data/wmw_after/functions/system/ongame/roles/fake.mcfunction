scoreboard players enable @a[scores={fake=0}] fake
execute as @a[scores={fake=1..}] run tellraw @s [{"translate":" %sは人狼ではありません","with":[{"selector":"@s"}]}]
clear @a[scores={fake=1..}] written_book{CustomModelData:5,title:"fake book"} 1
scoreboard players reset @a[scores={fake=1..}] fake