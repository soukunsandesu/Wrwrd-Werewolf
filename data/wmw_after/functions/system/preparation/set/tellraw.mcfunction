tellraw @a ""
execute if score #Thief wrwrSettings matches 0 if score #Drunk wrwrSettings matches 0 if score #Haunting wrwrSettings matches 0 if score #radaokun wrwrSettings matches 0 if score #Brother wrwrSettings matches 0 if score #WolfBoy wrwrSettings matches 0 if score #Itako wrwrSettings matches 0 if score #Ponkotu wrwrSettings matches 0 run tellraw @a [{"translate":"                         %s                         ","with":[{"text":"通常人狼","color":"blue","bold":true,"hoverEvent":{"action":"show_text","value": "ごく普通の我々だ人狼。"}}]}]
execute if score #Thief wrwrSettings matches 1 run tellraw @a [{"translate":"           %s           ","with":[{"text":"怪盗人狼","color":"blue","bold":true,"hoverEvent":{"action":"show_text","value": "・デフォルト役職とは別に新しくアサインされる役職。\n試合開始前に誰かの役職を盗むことができる。"}}]}]
execute if score #Drunk wrwrSettings matches 1 run tellraw @a [{"translate":"           %s           ","with":[{"text":"酔っ払い人狼","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value": "・各役職に重複してアサインされる属性。\n役職がわからなくなる。誰かを殺すと、牛乳が付与され、飲むと役職がわかるようになる。"}}]}]
execute if score #Haunting wrwrSettings matches 1 run tellraw @a [{"translate":"           %s           ","with":[{"text":"地縛霊人狼","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value": "・各役職に重複してアサインされる属性。\n死んだ後もしゃべり続けることができる。死亡した地点から一定ブロック離れると、死亡した地点に戻される。"}}]}]
execute if score #radaokun wrwrSettings matches 1 run tellraw @a [{"translate":"           %s           ","with":[{"text":"青陰キャ人狼","color":"blue","bold":true,"hoverEvent":{"action":"show_text","value": "===この試合に霊媒師は存在しない===\n\n・預言者の代わりにアサインされる役職。\nあまりにもかわいそうな役職で、誰かに近づくと近づいた人がダメージを受ける。"}}]}]
execute if score #Brother wrwrSettings matches 1 run tellraw @a [{"translate":"           %s           ","with":[{"text":"兄弟人狼","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value": "===この試合に預言者は存在しない===\n\n・デフォルト役職とは別に新しくアサインされるコンビネーション役職。\n兄が弟を認識していて、どちらか一方が死ぬと生き残っているほうも10秒後に爆死する。"}}]}]
execute if score #WolfBoy wrwrSettings matches 1 run tellraw @a [{"translate":"           %s           ","with":[{"text":"オオカミ少年人狼","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value": "・村人の中から新しくアサインされる属性。\n預言結果が黒になる。"}}]}]
execute if score #Itako wrwrSettings matches 1 run tellraw @a [{"translate":"           %s           ","with":[{"text":"イタコ人狼","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value": "・霊媒師の代わりにアサインされる役職。\n能力を使用すると、1分だけ死んだ人1人としゃべることができる。"}}]}]
execute if score #Ponkotu wrwrSettings matches 1 run tellraw @a [{"translate":"           %s           ","with":[{"text":"ポンコツ預言人狼","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value": "・預言者に重複してアサインされる属性。\n50%の確率で付与され、預言結果が必ず白になる。"}}]}]
execute if score #Counselor wrwrSettings matches 1 run tellraw @a [{"translate":"           %s           ","with":[{"text":"カウンセラー人狼","color":"dark_aqua","bold":true,"hoverEvent":{"action":"show_text","value": "・預言者の代わりにアサインされる。\n"}}]}]
execute if score #Bakery wrwrSettings matches 1 run tellraw @a [{"translate":"           %s           ","with":[{"text":"パン屋人狼","color":"dark_aqua","bold":true,"hoverEvent":{"action":"show_text","value": "・新しい役職としてアサインされる。\n生きていると一定秒数ごとにパンを5個配る。人狼には64個配る"}}]}]
execute if score #Detective wrwrSettings matches 1 run tellraw @a [{"translate":"           %s           ","with":[{"text":"探偵人狼","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value": "・霊媒師の代わりにアサインされる。\n霊媒のトリガーが「死体を右クリックする」に変わった役職。"}}]}]

tellraw @a [{"text":"新役職についてわからない方は、上のテキストにカーソルを合わせてください。"}]

tellraw @a [{"text":"・"},{"text":"人狼","color": "red"},{"text":" : ","color":"reset"},{"score":{"name":"#WMWAfter","objective":"WolfCount"}},{"text":"人"}]

tellraw @a [{"text":"・"},{"text":"参加人数","color": "yellow"},{"text":" : ","color":"reset"},{"score":{"name":"#WMWAfter","objective":"PlayerNumber"}},{"text":"人"}]
tellraw @a [{"text":"===","color": "green"},{"text":"参加者名","underlined":true},{"text":"===","underlined":false}]
execute as @a[gamemode=!spectator] run tellraw @a [{"text":"・"},{"selector":"@s","color":"light_purple"}]
execute if entity @a[gamemode=spectator] run tellraw @a [{"text":"観戦者    :    ","color":"gray"},{"selector":"@a[gamemode=spectator]"}]

tellraw @a ""
