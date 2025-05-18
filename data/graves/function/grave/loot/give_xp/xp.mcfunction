execute store result storage graves:give_xp data.xp int 1 run scoreboard players get @s graves.marker.xp
execute store result storage graves:give_xp data.player_id int 1 run scoreboard players get @s graves.marker.player.id

function graves:grave/loot/give_xp/give with storage graves:give_xp data

data remove storage graves:give_xp data