#> wmw_after:system/preparation/countdown

scoreboard players remove #WMWAfter CountDown 1
title @a title ""

execute if score #WMWAfter CountDown matches 600 run title @a subtitle "準備時間 残り30秒"
execute if score #WMWAfter CountDown matches 580 run title @a subtitle "準備時間 残り29秒"
execute if score #WMWAfter CountDown matches 560 run title @a subtitle "準備時間 残り28秒"
execute if score #WMWAfter CountDown matches 540 run title @a subtitle "準備時間 残り27秒"
execute if score #WMWAfter CountDown matches 520 run title @a subtitle "準備時間 残り26秒"
execute if score #WMWAfter CountDown matches 500 run title @a subtitle "準備時間 残り25秒"
execute if score #WMWAfter CountDown matches 480 run title @a subtitle "準備時間 残り24秒"
execute if score #WMWAfter CountDown matches 460 run title @a subtitle "準備時間 残り23秒"
execute if score #WMWAfter CountDown matches 440 run title @a subtitle "準備時間 残り22秒"
execute if score #WMWAfter CountDown matches 420 run title @a subtitle "準備時間 残り21秒"
execute if score #WMWAfter CountDown matches 400 run title @a subtitle "準備時間 残り20秒"
execute if score #WMWAfter CountDown matches 380 run title @a subtitle "準備時間 残り19秒"
execute if score #WMWAfter CountDown matches 360 run title @a subtitle "準備時間 残り18秒"
execute if score #WMWAfter CountDown matches 340 run title @a subtitle "準備時間 残り17秒"
execute if score #WMWAfter CountDown matches 320 run title @a subtitle "準備時間 残り16秒"
execute if score #WMWAfter CountDown matches 300 run title @a subtitle "準備時間 残り15秒"
execute if score #WMWAfter CountDown matches 280 run title @a subtitle "準備時間 残り14秒"
execute if score #WMWAfter CountDown matches 260 run title @a subtitle "準備時間 残り13秒"
execute if score #WMWAfter CountDown matches 240 run title @a subtitle "準備時間 残り12秒"
execute if score #WMWAfter CountDown matches 220 run title @a subtitle "準備時間 残り11秒"
execute if score #WMWAfter CountDown matches 200 run title @a subtitle "準備時間 残り10秒"
execute if score #WMWAfter CountDown matches 180 run title @a subtitle "準備時間 残り9秒"
execute if score #WMWAfter CountDown matches 160 run title @a subtitle "準備時間 残り8秒"
execute if score #WMWAfter CountDown matches 140 run title @a subtitle "準備時間 残り7秒"
execute if score #WMWAfter CountDown matches 120 run title @a subtitle "準備時間 残り6秒"
execute if score #WMWAfter CountDown matches 100 run title @a subtitle "準備時間 残り5秒"
execute if score #WMWAfter CountDown matches 80 run title @a subtitle "準備時間 残り4秒"
execute if score #WMWAfter CountDown matches 60 run title @a subtitle "準備時間 残り3秒"
execute if score #WMWAfter CountDown matches 40 run title @a subtitle "準備時間 残り2秒"
execute if score #WMWAfter CountDown matches 20 run title @a subtitle "準備時間 残り1秒"
execute if score #WMWAfter CountDown matches 0 run title @a subtitle "準備時間 残り0秒"
execute if score #WMWAfter CountDown matches 0 run playsound minecraft:entity.wolf.howl record @a ~ ~ ~ 1 1 1
execute if score #WMWAfter CountDown matches 0 run function wmw_after:system/ongame/change_to3
execute if score #WMWAfter CountDown matches 0 run title @a times 10 70 20