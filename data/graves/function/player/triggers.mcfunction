scoreboard players enable @a graves.last_grave
scoreboard players enable @a graves.nearest_grave
scoreboard players enable @a graves.all_graves

execute as @a if score @s graves.nearest_grave matches 1.. at @s run function graves:player/trigger/nearest_grave
execute as @a if score @s graves.all_graves matches 1.. at @s run function graves:player/trigger/all_graves