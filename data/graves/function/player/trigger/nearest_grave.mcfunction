scoreboard players reset @s graves.player.nearest_grave

execute store result storage graves:trigger_nearest_grave data.player_id int 1 run scoreboard players get @s graves.player.id


function graves:grave/spawn with storage graves:trigger_nearest_grave data


data remove storage graves:trigger_nearest_grave data