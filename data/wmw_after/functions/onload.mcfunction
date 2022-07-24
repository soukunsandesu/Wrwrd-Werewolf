#> wmw_after:onload

execute unless data storage datapack:wmw_after {OnceLoaded:true} run function wmw_after:system/init/once_load
execute if entity @a[tag=ForceLoad] run function wmw_after:system/init/once_load

tellraw @a "\n------------------------------------\n"
tellraw @a {"interpret":true,"nbt":"Credit","storage":"datapack:wmw_after"}
tellraw @a [{"translate":"\n開始コマンド   %s","with": [{"text":"/function #wmw_after:start","color": "light_purple","clickEvent": {"action": "suggest_command","value": "/function #wmw_after:start"},"hoverEvent": {"action": "show_text","value": "クリックしてチャット欄に貼り付ける"}}]}]
tellraw @a [{"translate":"\n終了コマンド   %s","with": [{"text":"/function #wmw_after:stop","color": "light_purple","clickEvent": {"action": "suggest_command","value": "/function #wmw_after:stop"},"hoverEvent": {"action": "show_text","value": "クリックしてチャット欄に貼り付ける"}}]}]
tellraw @a [{"translate":"\n追加役職設定   %s","with": [{"text":"/function #wmw_after:setting","color": "light_purple","clickEvent": {"action": "suggest_command","value": "/function #wmw_after:setting"},"hoverEvent": {"action": "show_text","value": "クリックしてチャット欄に貼り付ける"}}]}]
tellraw @a "\n------------------------------------\n"

scoreboard objectives add wrwrSettings dummy

function wmw_after:system/init/on_load