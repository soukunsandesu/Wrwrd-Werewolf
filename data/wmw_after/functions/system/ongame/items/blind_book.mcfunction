#> wmw_after:system/ongame/items/blind_book

scoreboard players enable @a[scores={blind_book=0}] blind_book
execute if entity @a[scores={blind_book=1..}] run effect give @a[scores={DeathCount=0}] blindness 10 0 false
execute if entity @a[scores={blind_book=1..}] run playsound entity.wither.spawn record @a ~ ~ ~ 100 1 1
execute if entity @a[scores={blind_book=1..}] run title @a title "停 電 発 生"
execute if entity @a[scores={blind_book=1..}] run title @a subtitle "10秒後に復旧します"
execute as @a[scores={blind_book=1..}] run clear @s written_book{CustomModelData:1,title:"停電の書",resolved:1b} 1
scoreboard players reset @a[scores={blind_book=1..}] blind_book