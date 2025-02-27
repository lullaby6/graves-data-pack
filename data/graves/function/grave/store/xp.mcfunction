execute as @e[type=experience_orb,distance=..6] store result score @s graves.player.xp run data get entity @s Value
execute as @e[type=experience_orb,distance=..6] run scoreboard players operation @n[tag=graves.interaction.new] graves.player.xp += @s graves.player.xp
kill @e[type=experience_orb,distance=..6]