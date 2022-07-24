#> wmw_after:system/init/on_load
## リロードされるたびに実行する初期化処理

# 設定
execute unless data storage datapack:wmw_after CounselorEnabled run data modify storage datapack:wmw_after CounselorEnabled set value false
execute unless data storage datapack:wmw_after BakeryEnabled run data modify storage datapack:wmw_after BakeryEnabled set value false
execute unless data storage datapack:wmw_after DetectiveEnabled run data modify storage datapack:wmw_after DetectiveEnabled set value false
execute unless data storage datapack:wmw_after Servant run data modify storage datapack:wmw_after Servant set value false
execute unless data storage datapack:wmw_after BomberEnabled run data modify storage datapack:wmw_after BomberEnabled set value false

# 役職名(色付き)
execute unless data storage datapack:werewolf Werewolf run data modify storage datapack:werewolf Werewolf set value '{"text":"人狼","color":"dark_red"}'
execute unless data storage datapack:werewolf Madman run data modify storage datapack:werewolf Madman set value '{"text":"狂人","color":"dark_purple"}'
execute unless data storage datapack:werewolf Seer run data modify storage datapack:werewolf Seer set value '{"text":"預言者","color":"aqua"}'
execute unless data storage datapack:werewolf Medium run data modify storage datapack:werewolf Medium set value '{"text":"霊媒師","color":"yellow"}'
execute unless data storage datapack:werewolf Villager run data modify storage datapack:werewolf Villager set value '{"text":"村人","color":"green"}'

execute unless data storage datapack:wmw_after Counselor run data modify storage datapack:wmw_after Counselor set value '{"text":"カウンセラー","color":"dark_aqua"}'
execute unless data storage datapack:wmw_after Bakery run data modify storage datapack:wmw_after Bakery set value '{"text":"パン屋","color":"gold"}'
execute unless data storage datapack:wmw_after Detective run data modify storage datapack:wmw_after Detective set value '{"text":"探偵","color":"yellow"}'