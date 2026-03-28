# ===== 現在時間取得 =====
execute store result score #now login_time run time query gametime

# ===== 差分計算（修正版） =====
execute as @a run scoreboard players operation @s time_diff = #now login_time
execute as @a run scoreboard players operation @s time_diff -= @s last_claim_time

# ===== クールタイム判定（24時間） =====
execute as @a run execute if score @s time_diff matches 1728000.. run function login_bonus:reward

# ===== 累計ログボ（7日ごと） =====
execute as @a[scores={login_total=7..,login_reward_7=0}] run function login_bonus:reward_7
execute as @a[scores={login_total=14..,login_reward_14=0}] run function login_bonus:reward_14
execute as @a[scores={login_total=21..,login_reward_21=0}] run function login_bonus:reward_21
execute as @a[scores={login_total=28..,login_reward_28=0}] run function login_bonus:reward_28
execute as @a[scores={login_total=35..,login_reward_35=0}] run function login_bonus:reward_35
execute as @a[scores={login_total=42..,login_reward_42=0}] run function login_bonus:reward_42
execute as @a[scores={login_total=49..,login_reward_49=0}] run function login_bonus:reward_49

# ===== 49日以降 =====
execute as @a[scores={login_total=49..,login_reward_49_repeat=0}] run function login_bonus:reward_49_repeat

# ===== 特別ログボ =====
execute as @a[scores={login_total=30..,login_reward_30=0}] run function login_bonus:reward_30
execute as @a[scores={login_total=50..,login_reward_50=0}] run function login_bonus:reward_50
execute as @a[scores={login_total=100..,login_reward_100=0}] run function login_bonus:reward_100