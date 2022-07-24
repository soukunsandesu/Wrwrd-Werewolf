execute at @s run summon armor_stand ~ ~ ~ {Marker:0b,Tags:["DeadBody","NoOnGround"],Silent:1b,Invisible:1}
execute at @s run summon villager ~ ~ ~ {NoAI:true,Tags:["DeadBody"],Silent:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:10000000,ShowParticles:false}],Invulnerable:1}
execute as @s[nbt=!{ActiveEffects:[{Id:14b}]}] at @s run loot replace entity @e[type=villager,tag=DeadBody,sort=nearest,limit=1,distance=..3] armor.head loot wmw_after:item/head_copy
execute as @s[nbt={ActiveEffects:[{Id:14b}]},name=!"wakou114"] at @s run loot replace entity @e[type=villager,tag=DeadBody,sort=nearest,limit=1,distance=..3] armor.head loot minecraft:blocks/player_head
execute as @s[nbt={ActiveEffects:[{Id:14b}]},name="wakou114"] at @s run loot replace entity @e[type=villager,tag=DeadBody,sort=nearest,limit=1,distance=..3] armor.head loot minecraft:blocks/skeleton_skull
execute at @s run scoreboard players operation @e[type=armor_stand,tag=DeadBody,sort=nearest,limit=1,distance=..3] PlayerNumber = @s PlayerNumber
execute at @s run scoreboard players operation @e[type=villager,tag=DeadBody,sort=nearest,limit=1,distance=..3] PlayerNumber = @s PlayerNumber
execute at @s run tp @e[type=villager,tag=DeadBody,sort=nearest,limit=1,distance=..3] @s
gamemode spectator @s
