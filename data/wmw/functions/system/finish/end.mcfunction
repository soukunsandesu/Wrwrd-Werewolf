gamemode adventure @a
clear @a
effect clear @a
tag @a remove Starter

function wmw:system/finish/rebirth_environment
function wmw:system/finish/team_name
execute if score #WMW Phase matches 3 as @a run function wmw:system/finish/result

#execute if entity @a[scores={DeathNumber=1..}] run tellraw @a [{"translate":"%sキルログ%s","with":[{"text":"       ","strikethrough": true,"bold": false},{"text":"       ","strikethrough": true,"bold": false}],"color":"red","bold": true}]
#execute as @a at @s if score @s[scores={DeathNumber=1..}] DeathNumber = @a[limit=1,sort=nearest] PlayerNumber run tellraw @a [{"translate":"%s --> %s","with":[{"selector":"@a[limit=1,sort=nearest]","color":"green"},{"selector":"@s","color": "red"}]}]


function wmw:system/finish/remove/scoreboard
function wmw:system/finish/remove/entities
function wmw:system/finish/rebirth_gamerle
function wmw:system/finish/remove/team
