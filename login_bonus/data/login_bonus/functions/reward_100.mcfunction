give @s minecraft:netherite_ingot 25
scoreboard players set @s login_reward_100 1
title @s title {"text":"✨100日達成！✨","color":"gold","bold":true}
title @s subtitle {"text":"累計ログインボーナス","color":"yellow"}
execute as @s at @s run playsound minecraft:ui.toast.challenge_complete master @s
execute as @s at @s run particle minecraft:end_rod ~ ~1 ~ 0.5 1 0.5 0.05 50 force