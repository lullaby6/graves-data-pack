execute as @a if score @s graves.player.death matches 1.. at @s run function graves:player/death
execute if score triggers graves.config matches 1 run function graves:player/triggers

execute as @e[tag=graves.grave] if score despawn graves.config matches 1 if score despawn_delay graves.config matches 1.. at @s run function graves:grave/tick

execute as @a unless score @s graves.trigger.disabled matches 1.. run scoreboard players enable @a graves.disabled
execute as @a if score @s graves.disabled matches 1.. run function graves:player/trigger/disabled

execute as @a if score @s graves.trigger.disabled matches 1.. run scoreboard players enable @a graves.enabled
execute as @a if score @s graves.enabled matches 1.. run function graves:player/trigger/enabled