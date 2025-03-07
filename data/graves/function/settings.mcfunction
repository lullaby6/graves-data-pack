function graves:utils/clear_chat

tellraw @s [{"text":"==========[ ","color":"gray"},{"text":"GRAVES","color":"white","bold":true},{"text":" ]==========","color":"gray"}]
tellraw @s [{"color":"gray","text":"Version: "},{"color":"aqua","text":"v2.1.3"}]

tellraw @s ""

tellraw @s {"color":"gray","text":"Settings:","underlined":true}

tellraw @s ""

execute if score graves graves.settings matches 1 run tellraw @s [{"color":"gray","text":"- Graves: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/graves/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable players graves"}]},"text":"ENABLED"}]
execute if score graves graves.settings matches 0 run tellraw @s [{"color":"gray","text":"- Graves: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/graves/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable players graves"}]},"text":"DISABLED"}]

execute if score despawn graves.settings matches 1 run tellraw @s [{"color":"gray","text":"- Despawn: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/despawn/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable graves despawn"}]},"text":"ENABLED"}]
execute if score despawn graves.settings matches 0 run tellraw @s [{"color":"gray","text":"- Despawn: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/despawn/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable graves despawn"}]},"text":"DISABLED"}]

execute if score despawn graves.settings matches 1 run tellraw @s [{"color":"gray","text":"- Despawn Delay: "},{"color":"aqua","bold":true,"text":"- ","hoverEvent":{"action":"show_text","value":[{"text":"Click to remove a minute from despawn delay"}]},"clickEvent":{"action":"run_command","value":"/function graves:settings/despawn_delay/remove"}},{"color":"green","bold":true,"score":{"name":"despawn_delay","objective":"graves.settings"},"hoverEvent":{"action":"show_text","value":[{"text":"To change click or run: /scoreboard players set despawn_delay graves.settings <ticks>"}]},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set despawn_delay graves.settings "}},{"color":"aqua","bold":true,"text":" +","hoverEvent":{"action":"show_text","value":[{"text":"Click to add a minute to despawn delay"}]},"clickEvent":{"action":"run_command","value":"/function graves:settings/despawn_delay/add"}}]

execute if score owner graves.settings matches 1 run tellraw @s [{"color":"gray","text":"- Owner: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/owner/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable graves owner"}]},"text":"ENABLED"}]
execute if score owner graves.settings matches 0 run tellraw @s [{"color":"gray","text":"- Owner: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/owner/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable graves owner"}]},"text":"DISABLED"}]

execute if score glowing graves.settings matches 1 run tellraw @s [{"color":"gray","text":"- Glowing: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/glowing/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable graves glowing"}]},"text":"ENABLED"}]
execute if score glowing graves.settings matches 0 run tellraw @s [{"color":"gray","text":"- Glowing: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/glowing/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable graves glowing"}]},"text":"DISABLED"}]

execute if score name_visible graves.settings matches 1 run tellraw @s [{"color":"gray","text":"- Visible Name: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/name_visible/disable"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable graves visible name"}]},"text":"ENABLED"}]
execute if score name_visible graves.settings matches 0 run tellraw @s [{"color":"gray","text":"- Visible Name: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/name_visible/enable"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable graves visible name"}]},"text":"DISABLED"}]

execute if score name graves.settings matches 1 run tellraw @s [{"color":"gray","text":"- Name: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/name/disable"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable graves name"}]},"text":"ENABLED"}]
execute if score name graves.settings matches 0 run tellraw @s [{"color":"gray","text":"- Name: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/name/enable"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable graves name"}]},"text":"DISABLED"}]

execute if score xp graves.settings matches 1 run tellraw @s [{"color":"gray","text":"- XP: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/xp/disable"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable graves saves XP"}]},"text":"ENABLED"}]
execute if score xp graves.settings matches 0 run tellraw @s [{"color":"gray","text":"- XP: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/xp/enable"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable graves saves XP"}]},"text":"DISABLED"}]

execute if score death_message graves.settings matches 1 run tellraw @s [{"color":"gray","text":"- Death Message: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/death_message/disable"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable death messages"}]},"text":"ENABLED"}]
execute if score death_message graves.settings matches 0 run tellraw @s [{"color":"gray","text":"- Death Message: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/death_message/enable"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable death messages"}]},"text":"DISABLED"}]

tellraw @s ""

tellraw @s {"color":"gray","text":"Commands:","underlined":true}

tellraw @s ""

tellraw @s [{"text":"- ","color":"gray"},{"text":"Loot Nearest Grave","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to loot the nearest grave"}]},"clickEvent":{"action":"run_command","value":"/function graves:settings/loot_nearest_grave"}}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"Loot All Graves","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Clicck to loot all graves"}]},"clickEvent":{"action":"run_command","value":"/function graves:settings/loot_all_graves"}}]

tellraw @s ""

tellraw @s [{"text":"- ","color":"gray"},{"text":"Clear Nearest Grave","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to clear nearest grave"}]},"clickEvent":{"action":"run_command","value":"/function graves:settings/clear_nearest_grave"}}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"Clear All Graves","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to clear all graves"}]},"clickEvent":{"action":"run_command","value":"/function graves:settings/clear_all_graves"}}]

# tellraw @s ""

# tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset All Players","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to reset all players"}]},"clickEvent":{"action":"run_command","value":"/function graves:settings/reset_all_players"}}]

tellraw @s ""

tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset Settings","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to reset settings"}]},"clickEvent":{"action":"run_command","value":"/function graves:settings/reset"}}]

tellraw @s ""

tellraw @s [{"text":"===========","color":"gray"},{"text":"======","color":"gray"},{"text":"===========","color":"gray"}]

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 2