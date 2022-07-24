#################################################################
# Phase
# 1 - 怪盗タイム
# 2 - 開始前カウントダウン
# 3 - ゲーム中
#################################################################

execute if score #WMWAfter Phase matches 1 run function wmw_after:system/preparation/ontick
execute if score #WMWAfter Phase matches 2 run function wmw_after:system/preparation/countdown
execute if score #WMWAfter Phase matches 3 run function wmw_after:system/ongame/ongame

## Login with en route
function wmw_after:system/en_route
