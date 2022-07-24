#> wmw_after:ontick

#################################################################
# Phase
# 2 - 開始前カウントダウン
# 3 - ゲーム中
#################################################################

execute if data storage datapack:wmw_after {CurrentPhase:2b} run function wmw_after:system/preparation/countdown
execute if data storage datapack:wmw_after {CurrentPhase:3b} run function wmw_after:system/ongame/ongame

## Login with en route
execute if data storage datapack:wmw_after {CurrentPhase:2b} run function wmw_after:system/en_route
execute if data storage datapack:wmw_after {CurrentPhase:3b} run function wmw_after:system/en_route
