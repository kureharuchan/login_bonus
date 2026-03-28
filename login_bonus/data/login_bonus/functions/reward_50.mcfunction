give @s minecraft:netherite_ingot 10
scoreboard players set @s login_reward_50 1
title @s title {"text":"✨50日達成！✨","color":"aqua","bold":true}
title @s subtitle {"text":"累計ログインボーナス","color":"blue"}
execute as @s at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.5 1