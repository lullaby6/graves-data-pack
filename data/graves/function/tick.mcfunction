execute as @a if score @s graves.player.death matches 1.. at @s run function graves:player/death

execute as @e[tag=graves.grave] if score despawn graves.settings matches 1 if score despawn_delay graves.settings matches 1.. at @s run function graves:grave/tick

scoreboard players enable @a graves.player.disabled