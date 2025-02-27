execute store result score @s graves.player.xp run data get entity @s Value
$scoreboard players operation @n[tag=graves.grave.$(id)] graves.player.xp += @s graves.player.xp
kill @s