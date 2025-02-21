execute as @a if score @s graves.death matches 1.. run function graves:player/death

execute as @e[tag=graves.interaction] if score @s graves.despawn_delay matches 1.. if score despawn graves.settings matches 1 if score despawn_delay graves.settings matches 1.. run function graves:grave/tick

scoreboard players enable @a graves.player.grave_disabled