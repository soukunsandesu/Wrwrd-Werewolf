########################################
## 1/2確率
###実行回数分選出される
########################################

scoreboard players set @a[tag=!IgnoreRandSelect,scores={RandomSelect=1..}] RandomSelect 0
tag @a[tag=!IgnoreRandSelect,scores={RandomSelect=1..}] add IgnoreRandSelect


#確率用アマスタ召喚
summon armor_stand ~ ~ ~ {Tags:["WMW_RandomSelect"],Invisible:1,Marker:1}
#選出用スコア設定(プレイヤーのスコアはset/scoreboards.mcfunctionで0に設定済み)
scoreboard players set @e[type=armor_stand,tag=WMW_RandomSelect] RandomSelect 0
#選ばれる予定の人の選出(別の抽選で選ばれていない人に限る)
execute unless entity @a[tag=WMW_RandomSelect] run tag @a[sort=random,limit=1,scores={CurrentRole=1..,RandomSelect=0,Selected=0}] add WMW_RandomSelect

# tag:WMW_RandomSelect,score:RandomSelect=0のエンティティから選出 (1 or 2)
execute as @e[tag=WMW_RandomSelect,scores={RandomSelect=0},sort=random] store result score @s RandomSelect if entity @e[tag=WMW_RandomSelect,scores={RandomSelect=0},sort=random]

########################################
#スコアが1だった人が選ばれたものとする
########################################

#選ばれたら1
scoreboard players set @a[tag=WMW_RandomSelect,scores={RandomSelect=1,Selected=0}] Selected 1
#選ばれなかったら2
scoreboard players set @a[tag=WMW_RandomSelect,scores={RandomSelect=2..,Selected=0}] Selected 2

##リセット
kill @e[type=armor_stand,tag=WMW_RandomSelect]
#今回選ばれた人が二度と選ばれないようにする
scoreboard players set @a[tag=WMW_RandomSelect,scores={RandomSelect=1,Selected=1..2}] RandomSelect 100
#タグ消し
tag @a[tag=WMW_RandomSelect,scores={Selected=1..2}] remove WMW_RandomSelect
