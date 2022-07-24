gamemode adventure @a
clear @a
effect clear @a
tag @a remove Starter

function wmw_after:system/finish/rebirth_environment
function wmw_after:system/finish/team_name
execute if score #WMWAfter Phase matches 3 as @a run function wmw_after:system/finish/result

#execute if entity @a[scores={DeathNumber=1..}] run tellraw @a [{"translate":"%sキルログ%s","with":[{"text":"       ","strikethrough": true,"bold": false},{"text":"       ","strikethrough": true,"bold": false}],"color":"red","bold": true}]
#execute as @a at @s if score @s[scores={DeathNumber=1..}] DeathNumber = @a[limit=1,sort=nearest] PlayerNumber run tellraw @a [{"translate":"%s --> %s","with":[{"selector":"@a[limit=1,sort=nearest]","color":"green"},{"selector":"@s","color": "red"}]}]


function wmw_after:system/finish/remove/scoreboard
function wmw_after:system/finish/remove/entities
function wmw_after:system/finish/rebirth_gamerle
function wmw_after:system/finish/remove/team
