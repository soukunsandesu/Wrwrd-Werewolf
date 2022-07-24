title @a title "村の勝利！！"
playsound ui.toast.challenge_complete record @a[scores={CurrentRole=3..}] ~ ~ ~ 100 1 1
playsound entity.wither.spawn record @a[scores={CurrentRole=0..2}] ~ ~ ~ 100 2 1
function wmw:system/finish/end