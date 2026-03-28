# 疑似乱数（0〜99）
scoreboard players set @s random 0
execute store result score @s random run time query gametime
scoreboard players operation @s random %= #hundred login_bonus

# ===== 報酬 =====

# 超レア（5%）
execute if score @s random matches 0..4 run give @s minecraft:netherite_ingot 1
execute if score @s random matches 0..4 run playsound minecraft:entity.player.levelup master @s

# レア（25%）
execute if score @s random matches 5..29 run give @s minecraft:diamond 10
execute if score @s random matches 5..29 run playsound minecraft:entity.experience_orb.pickup master @s

# ノーマル（70%）
execute if score @s random matches 30..99 run give @s minecraft:emerald 30

# フラグ
scoreboard players set @s login_reward_7 1

# 演出
title @a actionbar {"text":"累計7日ログインボーナス！","color":"gold"}