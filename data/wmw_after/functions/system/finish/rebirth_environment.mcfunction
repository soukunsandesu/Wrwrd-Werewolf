## 特殊アイテムシステム
# スパイダーランチャー
execute at @e[type=minecraft:armor_stand,tag=spider] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:cobweb
kill @e[tag=spider]
# コネシマの涙
execute at @e[type=minecraft:armor_stand,tag=TearOfKonesihma] if block ~ ~ ~ water run setblock ~ ~ ~ air
kill @e[tag=TearOfKonesihma]
