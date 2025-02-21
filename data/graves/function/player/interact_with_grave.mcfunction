advancement revoke @s only graves:interact_with_grave

tag @s add graves.player.interact_with_grave

execute as @n[tag=graves.interaction] run function graves:grave/check_owner

tag @s remove graves.player.interact_with_grave