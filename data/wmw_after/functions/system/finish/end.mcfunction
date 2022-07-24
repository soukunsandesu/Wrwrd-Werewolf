#> wmw_after:system/finish/end

gamemode adventure @a
clear @a
effect clear @a
tag @a remove Starter

function wmw_after:system/finish/rebirth_environment
execute if data storage datapack:wmw_after {CurrentPhase:3b} as @a run function wmw_after:system/finish/result

function wmw_after:system/finish/remove/scoreboard
function wmw_after:system/finish/remove/entities
function wmw_after:system/finish/rebirth_gamerle
function wmw_after:system/finish/remove/team
function wmw_after:system/init/ongame