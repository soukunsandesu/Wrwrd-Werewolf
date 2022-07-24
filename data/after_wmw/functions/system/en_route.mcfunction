## Log-in midtime of all game
execute if score #WMWAfter Phase matches 1..2 run gamemode spectator @a[team=!WMWAfter]
execute if score #WMWAfter Phase matches 1..2 run gamemode spectator @a[scores={CurrentRole=0}]
execute if score #WMWAfter Phase matches 1..2 run scoreboard players add @a PlayerNumber 0