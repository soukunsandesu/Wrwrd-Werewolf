execute at @e[type=arrow,nbt={CustomPotionEffects:[{Id:28b,Amplifier:5b}],inGround:true}] run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["WMWstand","Levitation_Trap"]}
execute as @e[type=arrow,nbt={CustomPotionEffects:[{Id:28b,Amplifier:5b}],inGround:true}] run kill @s

execute at @e[type=armor_stand,tag=Levitation_Trap] as @a[scores={DeathCount=0},distance=..3] run effect give @s levitation 60 1 true
execute at @e[type=armor_stand,tag=Levitation_Trap] as @a[scores={DeathCount=0},distance=..3] run effect give @s glowing 60 1 true
execute at @e[type=armor_stand,tag=Levitation_Trap] if entity @a[scores={DeathCount=0},distance=..3] run particle firework ~ ~ ~ 1 1 1 0 1000
execute at @e[type=armor_stand,tag=Levitation_Trap] as @a[scores={DeathCount=0},distance=..3] run title @s title "トラップ発動！！"
execute as @e[type=armor_stand,tag=Levitation_Trap] at @s if entity @a[scores={DeathCount=0},distance=..3] run kill @s