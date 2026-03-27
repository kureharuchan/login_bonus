# ===== 基本 =====
scoreboard objectives add login_check dummy
scoreboard objectives add login_timer dummy
scoreboard objectives add login_total dummy

# ===== ランダム =====
scoreboard objectives add random dummy
scoreboard players set @a random 0

# ===== 累計ログボ（7日ごと） =====
scoreboard objectives add login_reward_7 dummy
scoreboard objectives add login_reward_14 dummy
scoreboard objectives add login_reward_21 dummy
scoreboard objectives add login_reward_28 dummy
scoreboard objectives add login_reward_35 dummy
scoreboard objectives add login_reward_42 dummy
scoreboard objectives add login_reward_49 dummy
scoreboard objectives add login_reward_49_repeat dummy

# ===== 特別ログボ =====
scoreboard objectives add login_reward_30 dummy
scoreboard objectives add login_reward_50 dummy
scoreboard objectives add login_reward_100 dummy

# ===== 疑似乱数用 =====
scoreboard objectives add login_bonus dummy
scoreboard players set #hundred login_bonus 100