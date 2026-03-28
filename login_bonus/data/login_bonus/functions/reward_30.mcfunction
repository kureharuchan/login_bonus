give @s minecraft:diamond 30

scoreboard players set @s login_reward_30 1

title @s title {"text":"✨30日達成！✨","color":"green","bold":true}
title @s subtitle {"text":"累計ログインボーナス","color":"dark_green"}

execute as @s at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1