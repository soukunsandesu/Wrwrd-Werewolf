#> wmw_after:setting

gamerule sendCommandFeedback false
tellraw @s "\n------------------------------------\n"
tellraw @a [{"text":"※複数導入不可","color":"red","underlined": true}]

execute unless data storage datapack:wmw_after {CounselorEnabled:true} run tellraw @s [{"text":"カウンセラー","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/enable/counselor"},"hoverEvent": {"action": "show_text","value": "クリックして有効化"},"underlined": true,"color": "gray"}]
execute if data storage datapack:wmw_after {CounselorEnabled:true} run tellraw @s [{"text":"カウンセラー","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/disable/counselor"},"hoverEvent": {"action": "show_text","value": "クリックして無効化"},"underlined": true,"color": "yellow"}]

execute unless data storage datapack:wmw_after {BakeryEnabled:true} run tellraw @s [{"text":"パン屋","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/enable/bakery"},"hoverEvent": {"action": "show_text","value": "クリックして有効化"},"underlined": true,"color": "gray"}]
execute if data storage datapack:wmw_after {BakeryEnabled:true} run tellraw @s [{"text":"パン屋","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/disable/bakery"},"hoverEvent": {"action": "show_text","value": "クリックして無効化"},"underlined": true,"color": "yellow"}]

execute unless data storage datapack:wmw_after {DetectiveEnabled:true} run tellraw @s [{"text":"探偵","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/enable/detective"},"hoverEvent": {"action": "show_text","value": "クリックして有効化"},"underlined": true,"color": "gray"}]
execute if data storage datapack:wmw_after {DetectiveEnabled:true} run tellraw @s [{"text":"探偵","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/disable/detective"},"hoverEvent": {"action": "show_text","value": "クリックして無効化"},"underlined": true,"color": "yellow"}]

execute unless data storage datapack:wmw_after {Servant:true} run tellraw @s [{"text":"従者","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/enable/servant"},"hoverEvent": {"action": "show_text","value": "クリックして有効化"},"underlined": true,"color": "gray"}]
execute if data storage datapack:wmw_after {Servant:true} run tellraw @s [{"text":"従者","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/disable/servant"},"hoverEvent": {"action": "show_text","value": "クリックして無効化"},"underlined": true,"color": "yellow"}]

execute unless data storage datapack:wmw_after {BomberEnabled:true} run tellraw @s [{"text":"ボマー","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/enable/bomber"},"hoverEvent": {"action": "show_text","value": "クリックして有効化"},"underlined": true,"color": "gray"}]
execute if data storage datapack:wmw_after {BomberEnabled:true} run tellraw @s [{"text":"ボマー","clickEvent": {"action": "run_command","value": "/function wmw_after:system/settings/role/disable/bomber"},"hoverEvent": {"action": "show_text","value": "クリックして無効化"},"underlined": true,"color": "yellow"}]

tellraw @s "\n------------------------------------\n"
