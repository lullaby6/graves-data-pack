scoreboard players set despawn graves.settings 1

function graves:settings

execute as @e[tag=graves.interaction] if score despawn_delay graves.settings matches 1.. store result score @s graves.despawn_delay run scoreboard players get despawn_delay graves.settings