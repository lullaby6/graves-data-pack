scoreboard players set graves graves.settings 1
scoreboard players set despawn graves.settings 0
scoreboard players set despawn_delay graves.settings 86400
scoreboard players set glowing graves.settings 1
scoreboard players set owner graves.settings 1

execute if score load graves.settings matches 1 run function graves:settings

scoreboard players set load graves.settings 1