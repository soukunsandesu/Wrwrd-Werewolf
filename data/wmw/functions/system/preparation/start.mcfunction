gamemode adventure @a[gamemode=!spectator]
title @a reset
clear @a
kill @e[type=item]
effect clear @a
tag @p add Starter

function wmw:system/preparation/set/gamerules
function wmw:system/preparation/set/difficulty
function wmw:system/preparation/set/scoreboards
function wmw:system/preparation/set/current_version
function wmw:system/preparation/set/roles
function wmw:system/preparation/set/title
function wmw:system/preparation/set/teams
function wmw:system/preparation/set/tellraw
function wmw:system/preparation/set/preparation_thief
function wmw:system/preparation/change_to_2