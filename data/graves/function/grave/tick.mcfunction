scoreboard players add @s graves.grave.despawn_delay 1

execute if score @s graves.grave.despawn_delay >= despawn_delay graves.config run function graves:grave/loot/force