scoreboard players set despawn graves.settings 1

function graves:settings

execute as @e[tag=graves.grave] if score despawn_delay graves.settings matches 1.. store result score @s graves.grave.despawn_delay run scoreboard players get despawn_delay graves.settings