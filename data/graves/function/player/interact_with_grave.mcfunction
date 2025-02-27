advancement revoke @s only graves:interact_with_grave

execute store result storage graves:main id int 1 run scoreboard players get . graves.player.id
function graves:grave/find with storage graves:main
data remove storage graves:main id