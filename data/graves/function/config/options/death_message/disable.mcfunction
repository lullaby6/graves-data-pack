scoreboard players set death_message graves.config 0

function graves:config

execute as @a run trigger graves.player.last_grave add 0
execute as @a run trigger graves.player.nearest_grave add 0
execute as @a run trigger graves.player.all_graves add 0