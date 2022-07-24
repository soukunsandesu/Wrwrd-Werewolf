#################################################################
# Phase
# 1 - 怪盗タイム
# 2 - 開始前カウントダウン
# 3 - ゲーム中
#################################################################

execute if score #WMW Phase matches 1 run function wmw:system/preparation/ontick
execute if score #WMW Phase matches 2 run function wmw:system/preparation/countdown
execute if score #WMW Phase matches 3 run function wmw:system/ongame/ongame

## Login with en route
function wmw:system/en_route
