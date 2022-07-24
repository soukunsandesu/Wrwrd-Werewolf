function wmw:system/finish/remove/scoreboard
scoreboard objectives add PlayerNumber dummy
scoreboard players set @a[gamemode=!spectator] PlayerNumber 0
execute as @a[sort=random] store result score @s PlayerNumber if entity @a[scores={PlayerNumber=0},sort=random]
execute as @a[scores={PlayerNumber=1..},gamemode=!spectator] run scoreboard players add #WMW PlayerNumber 1
execute unless entity @a[scores={PlayerNumber=1..},gamemode=!spectator] run scoreboard players set #WMW PlayerNumber 0
execute if entity @a[tag=WMWtest] run scoreboard players set #WMW PlayerNumber 8
execute if score #WMW PlayerNumber matches ..3 run function wmw:system/finish/error_start/player
execute if score #WMW PlayerNumber matches 4.. run function wmw:system/preparation/start
