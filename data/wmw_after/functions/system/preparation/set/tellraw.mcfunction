tellraw @a ""
execute if data storage datapack:wmw_after {CounselorEnabled:true} run tellraw @a [{"translate":"           %s           ","with":[{"text":"カウンセラー人狼","color":"dark_aqua","bold":true,"hoverEvent":{"action":"show_text","value": "・預言者の代わりにアサインされる。\n"}}]}]
execute if data storage datapack:wmw_after {BakeryEnabled:true} run tellraw @a [{"translate":"           %s           ","with":[{"text":"パン屋人狼","color":"dark_aqua","bold":true,"hoverEvent":{"action":"show_text","value": "・新しい役職としてアサインされる。\n生きていると一定秒数ごとにパンを5個配る。人狼には64個配る"}}]}]
execute if data storage datapack:wmw_after {DetectiveEnabled:true} run tellraw @a [{"translate":"           %s           ","with":[{"text":"探偵人狼","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value": "・霊媒師の代わりにアサインされる。\n霊媒のトリガーが「死体を右クリックする」に変わった役職。"}}]}]

tellraw @a [{"text":"新役職についてわからない方は、上のテキストにカーソルを合わせてください。"}]

tellraw @a [{"text":"・"},{"text":"人狼","color": "red"},{"text":" : ","color":"reset"},{"score":{"name":"#WMWAfter","objective":"WolfCount"}},{"text":"人"}]

tellraw @a [{"text":"・"},{"text":"参加人数","color": "yellow"},{"text":" : ","color":"reset"},{"score":{"name":"#WMWAfter","objective":"PlayerNumber"}},{"text":"人"}]
tellraw @a [{"text":"===","color": "green"},{"text":"参加者名","underlined":true},{"text":"===","underlined":false}]
execute as @a[gamemode=!spectator] run tellraw @a [{"text":"・"},{"selector":"@s","color":"light_purple"}]
execute if entity @a[gamemode=spectator] run tellraw @a [{"text":"観戦者    :    ","color":"gray"},{"selector":"@a[gamemode=spectator]"}]

tellraw @a ""
