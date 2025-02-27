advancement revoke @s only graves:interact_with_grave

execute store result storage graves:main id int 1 run scoreboard players get @s graves.player.id

tag @s add graves.player.interact_with_grave
execute as @n[tag=graves.grave] run function graves:grave/check
tag @s remove graves.player.interact_with_grave