#> wmw_after:system/finish/winner/werewolf

title @a title "人狼の勝利"
playsound ui.toast.challenge_complete record @a[scores={CurrentRole=1..199}] ~ ~ ~ 100 1 1
playsound entity.wither.spawn record @a[scores={CurrentRole=201..}] ~ ~ ~ 100 2 1
playsound entity.wither.spawn record @a[scores={CurrentRole=0}] ~ ~ ~ 100 2 1
function wmw_after:system/finish/end