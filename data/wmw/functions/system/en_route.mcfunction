## Log-in midtime of all game
execute if score #WMW Phase matches 1..2 run gamemode spectator @a[team=!WMW]
execute if score #WMW Phase matches 1..2 run gamemode spectator @a[scores={CurrentRole=0}]
execute if score #WMW Phase matches 1..2 run scoreboard players add @a PlayerNumber 0