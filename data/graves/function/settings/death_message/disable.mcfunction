scoreboard players set death_message graves.settings 0

function graves:settings

execute as @a run trigger graves.player.last_grave add 0
execute as @a run trigger graves.player.nearest_grave add 0
execute as @a run trigger graves.player.all_graves add 0