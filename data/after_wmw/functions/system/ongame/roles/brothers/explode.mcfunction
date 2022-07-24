title @s title "０"
execute at @s run particle campfire_cosy_smoke ~ ~ ~ 1.5 1.5 1.5 0.3 3000
execute at @s run particle flash ~ ~ ~ 1.5 1.5 1.5 0.3 100
playsound entity.generic.explode record @a ~ ~ ~ 100 1 1
kill @s
scoreboard players reset @s CountDown