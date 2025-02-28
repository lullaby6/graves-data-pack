execute store result score @s graves.grave.xp run data get entity @s Value
$scoreboard players operation @n[tag=graves.grave.$(grave_id)] graves.grave.xp += @s graves.grave.xp
kill @s