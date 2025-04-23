execute as @a if score @s graves.player.death matches 1.. at @s run function graves:player/death
execute if score triggers graves.config matches 1 run function graves:player/triggers

execute as @e[tag=graves.grave] if score despawn graves.config matches 1 if score despawn_delay graves.config matches 1.. at @s run function graves:grave/tick

scoreboard players enable @a graves.disabled