tellraw @a "\n------------------------------------\n"
tellraw @a {"interpret":true,"nbt":"Credit","storage":"datapack:wmw_after"}
tellraw @a {"translate":"\n    現在の人数は、%s人です。  当ゲームの必要最低人数は、%s人です。","with":[{"score":{"name": "#WMWAfter","objective": "PlayerNumber"},"color":"red","bold":true},{"text":"4","color":"red","bold":true}]}
tellraw @a {"translate":"  %s人目以降の人とスペクテイターの人は、観戦者となります。","with":[{"text":"16","color":"red","bold":true}]}
tellraw @a "\n------------------------------------\n"
scoreboard objectives remove PlayerNumber