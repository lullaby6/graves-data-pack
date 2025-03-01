tag @a remove graves.player.load

execute as @a run function graves:player/reset

scoreboard players reset * graves.player.id

advancement revoke @a only graves:tick
advancement revoke @a only graves:interact_with_grave

function graves:settings