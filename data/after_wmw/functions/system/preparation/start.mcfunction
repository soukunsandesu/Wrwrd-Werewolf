gamemode adventure @a[gamemode=!spectator]
title @a reset
clear @a
kill @e[type=item]
effect clear @a
tag @p add Starter

function wmw_after:system/preparation/set/gamerules
function wmw_after:system/preparation/set/difficulty
function wmw_after:system/preparation/set/scoreboards
function wmw_after:system/preparation/set/current_version
function wmw_after:system/preparation/set/roles
function wmw_after:system/preparation/set/title
function wmw_after:system/preparation/set/teams
function wmw_after:system/preparation/set/tellraw
function wmw_after:system/preparation/set/preparation_thief
function wmw_after:system/preparation/change_to_2