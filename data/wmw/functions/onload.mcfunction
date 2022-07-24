tellraw @a "\n------------------------------------\n"
tellraw @a [{"translate":"我々式マイクラ人狼 made by %s","with":[{"text":"Soukun_Palpunte","color":"gold","bold":false}]}]
tellraw @a [{"translate":"Edit by %s","with":[{"text":"Kuranosuke__","color":"yellow","bold":false}]}]
tellraw @a [{"translate":"\n開始コマンド   %s","with": [{"text":"/function #wmw:start","color": "light_purple","clickEvent": {"action": "suggest_command","value": "/function #wmw:start"},"hoverEvent": {"action": "show_text","value": "クリックしてチャット欄に貼り付ける"}}]}]
tellraw @a [{"translate":"\n終了コマンド   %s","with": [{"text":"/function #wmw:stop","color": "light_purple","clickEvent": {"action": "suggest_command","value": "/function #wmw:stop"},"hoverEvent": {"action": "show_text","value": "クリックしてチャット欄に貼り付ける"}}]}]
tellraw @a [{"translate":"\n追加役職設定   %s","with": [{"text":"/function #wmw:setting","color": "light_purple","clickEvent": {"action": "suggest_command","value": "/function #wmw:setting"},"hoverEvent": {"action": "show_text","value": "クリックしてチャット欄に貼り付ける"}}]}]
tellraw @a "\n------------------------------------\n"

scoreboard objectives add wrwrSettings dummy

execute unless score #ボマー wrwrSettings matches 0..1 run scoreboard players set #ボマー wrwrSettings 0
execute unless score #パン屋 wrwrSettings matches 0..1 run scoreboard players set #パン屋 wrwrSettings 0
execute unless score #カウンセラー wrwrSettings matches 0..1 run scoreboard players set #カウンセラー wrwrSettings 0
execute unless score #従者 wrwrSettings matches 0..1 run scoreboard players set #従者 wrwrSettings 0
execute unless score #探偵 wrwrSettings matches 0..1 run scoreboard players set #探偵 wrwrSettings 0