scoreboard players set graves graves.settings 1
scoreboard players set despawn graves.settings 0
scoreboard players set despawn_delay graves.settings 86400
scoreboard players set glowing graves.settings 1
scoreboard players set owner graves.settings 1
scoreboard players set name_visible graves.settings 1
scoreboard players set name graves.settings 1
scoreboard players set xp graves.settings 1
scoreboard players set death_message graves.settings 0

execute if score load graves.settings matches 1 run function graves:settings

scoreboard players set load graves.settings 1