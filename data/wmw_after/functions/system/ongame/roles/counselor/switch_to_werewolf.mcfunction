scoreboard players set @s CurrentRole 1
tellraw @s {"translate":"*陣営が反転し、人狼陣営になりました。(%s)","with":[{"selector":"@a[scores={PrevRole=1}]","underlined":true}],"color":"red"}