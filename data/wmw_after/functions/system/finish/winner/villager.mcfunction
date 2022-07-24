#> wmw_after:system/finish/winner/villager

title @a title "村の勝利！！"
playsound ui.toast.challenge_complete record @a[scores={CurrentRole=201..}] ~ ~ ~ 100 1 1
playsound entity.wither.spawn record @a[scores={CurrentRole=0..199}] ~ ~ ~ 100 2 1
function wmw_after:system/finish/end