give @s minecraft:emerald 5

title @s actionbar {"text":"ログインボーナス！","color":"green"}

# クールタイム更新
scoreboard players operation @s last_claim_time = #now login_time

# 累計カウント
scoreboard players add @s login_total 1