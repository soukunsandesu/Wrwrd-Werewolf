scoreboard players remove @a[scores={CurrentRole=8..9,DeathCount=0,CountDown=1..}] CountDown 1
execute as @a[scores={CurrentRole=8..9,DeathCount=0,CountDown=100}] run title @s title "５"
execute as @a[scores={CurrentRole=8..9,DeathCount=0,CountDown=80}] run title @s title "４"
execute as @a[scores={CurrentRole=8..9,DeathCount=0,CountDown=60}] run title @s title "３"
execute as @a[scores={CurrentRole=8..9,DeathCount=0,CountDown=40}] run title @s title "２"
execute as @a[scores={CurrentRole=8..9,DeathCount=0,CountDown=20}] run title @s title "１"
execute as @a[scores={CurrentRole=8..9,DeathCount=0,CountDown=0}] run function wmw_after:system/ongame/roles/brothers/explode

