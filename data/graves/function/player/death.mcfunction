execute if score graves graves.settings matches 0 run return fail

execute if score @s graves.player.grave_disabled matches 1 run return fail

execute at @s if entity @e[type=item,distance=..5,tag=!graves.item] align xyz run function graves:grave/spawn

scoreboard players reset @s graves.death