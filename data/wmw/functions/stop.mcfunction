execute if score #WMW PlayerNumber matches 1.. run tellraw @a "\n------------------------------------\n"
execute if score #WMW PlayerNumber matches 1.. run tellraw @a [{"translate":"我々式マイクラ人狼 made by %s","with":[{"text":"Soukun_Palpunte","color":"gold","bold":false}]}]
execute if score #WMW PlayerNumber matches 1.. run tellraw @a "\nゲームを緊急停止させました"
execute if score #WMW PlayerNumber matches 1.. run tellraw @a "\n------------------------------------\n"
execute if score #WMW PlayerNumber matches 1.. run function wmw:system/finish/end
