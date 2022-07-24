gamerule sendCommandFeedback false
tellraw @s "\n------------------------------------\n"
tellraw @a [{"text":"※複数導入不可","color":"red","underlined": true}]

execute if score #カウンセラー wrwrSettings matches 0 run tellraw @s [{"text":"カウンセラー","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/enable/doctor"},"hoverEvent": {"action": "show_text","value": "クリックして有効化"},"underlined": true,"color": "gray"}]
execute if score #カウンセラー wrwrSettings matches 1 run tellraw @s [{"text":"カウンセラー","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/disable/doctor"},"hoverEvent": {"action": "show_text","value": "クリックして無効化"},"underlined": true,"color": "yellow"}]

execute if score #パン屋 wrwrSettings matches 0 run tellraw @s [{"text":"パン屋","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/enable/bread"},"hoverEvent": {"action": "show_text","value": "クリックして有効化"},"underlined": true,"color": "gray"}]
execute if score #パン屋 wrwrSettings matches 1 run tellraw @s [{"text":"パン屋","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/disable/bread"},"hoverEvent": {"action": "show_text","value": "クリックして無効化"},"underlined": true,"color": "yellow"}]

execute if score #探偵 wrwrSettings matches 0 run tellraw @s [{"text":"探偵","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/enable/detective"},"hoverEvent": {"action": "show_text","value": "クリックして有効化"},"underlined": true,"color": "gray"}]
execute if score #探偵 wrwrSettings matches 1 run tellraw @s [{"text":"探偵","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/disable/detective"},"hoverEvent": {"action": "show_text","value": "クリックして無効化"},"underlined": true,"color": "yellow"}]

execute if score #従者 wrwrSettings matches 0 run tellraw @s [{"text":"従者","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/enable/jusha"},"hoverEvent": {"action": "show_text","value": "クリックして有効化"},"underlined": true,"color": "gray"}]
execute if score #従者 wrwrSettings matches 1 run tellraw @s [{"text":"従者","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/disable/jusha"},"hoverEvent": {"action": "show_text","value": "クリックして無効化"},"underlined": true,"color": "yellow"}]

execute if score #ボマー wrwrSettings matches 0 run tellraw @s [{"text":"ボマー","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/enable/bommer"},"hoverEvent": {"action": "show_text","value": "クリックして有効化"},"underlined": true,"color": "gray"}]
execute if score #ボマー wrwrSettings matches 1 run tellraw @s [{"text":"ボマー","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/disable/bommer"},"hoverEvent": {"action": "show_text","value": "クリックして無効化"},"underlined": true,"color": "yellow"}]

tellraw @s "\n------------------------------------\n"
