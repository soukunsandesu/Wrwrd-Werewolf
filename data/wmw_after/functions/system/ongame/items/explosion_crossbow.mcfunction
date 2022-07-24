## 炸裂のクロスボウ
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:30b,Amplifier:60b}]}] at @s[nbt={inGround:true}] run particle poof ~ ~ ~ 2 2 2 0 5000
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:30b,Amplifier:60b}]}] at @s[nbt={inGround:true}] run particle witch ~ ~ ~ 2 2 2 1 100
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:30b,Amplifier:60b}]}] at @s[nbt={inGround:true}] run playsound entity.generic.explode record @a ~ ~ ~ 5 0 1
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:30b,Amplifier:60b}]}] at @s[nbt={inGround:true}] run playsound entity.generic.extinguish_fire record @a ~ ~ ~ 5 0 1
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:30b,Amplifier:60b}]}] at @s[nbt={inGround:true}] run playsound entity.generic.extinguish_fire record @a ~ ~ ~ 5 0 1
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:30b,Amplifier:60b}]}] if entity @s[nbt={inGround:true}] run effect give @s instant_damage 1 10 true
execute at @e[nbt={ActiveEffects:[{Id:30b,Amplifier:60b}]}] run particle poof ~ ~ ~ 2 2 2 0 5000
execute at @e[nbt={ActiveEffects:[{Id:30b,Amplifier:60b}]}] run particle witch ~ ~ ~ 2 2 2 1 100
execute at @e[nbt={ActiveEffects:[{Id:30b,Amplifier:60b}]}] run playsound entity.generic.explode record @a ~ ~ ~ 5 0 1
execute at @e[nbt={ActiveEffects:[{Id:30b,Amplifier:60b}]}] run playsound entity.generic.extinguish_fire record @a ~ ~ ~ 5 0 1
execute at @e[nbt={ActiveEffects:[{Id:30b,Amplifier:60b}]}] run playsound entity.generic.extinguish_fire record @a ~ ~ ~ 5 0 1
execute as @e[nbt={ActiveEffects:[{Id:30b,Amplifier:60b}]}] run kill @s[scores={DeathCount=0,LeagueRole=1..3},gamemode=adventure]
execute as @e[nbt={ActiveEffects:[{Id:30b,Amplifier:60b}]}] run effect clear @s dolphins_grace
