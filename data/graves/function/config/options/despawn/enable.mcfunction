scoreboard players set despawn graves.config 1

function graves:config

execute as @e[tag=graves.grave] if score despawn_delay graves.config matches 1.. store result score @s graves.grave.despawn_delay run scoreboard players get despawn_delay graves.config