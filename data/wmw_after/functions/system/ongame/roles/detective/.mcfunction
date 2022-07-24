#> wmw_after:system/ongame/roles/detective/

#死んでる人限定で処理を回す
execute as @a[scores={PlayerNumber=1..}] at @a[scores={CurrentRole=14,TalkedToVillager=1..99}] if score @s PlayerNumber = @e[type=armor_stand,tag=DeadBody,limit=1,sort=nearest,distance=..5] PlayerNumber run function wmw_after:system/ongame/roles/detective/used_ability
