function graves:utils/clear_chat

tellraw @s [{"text":"==========[ ","color":"gray"},{"text":"GRAVES","color":"white","bold":true},{"text":" ]==========","color":"gray"}]
tellraw @s [{"color":"gray","text":"Version: "},{"color":"aqua","text":"v2.0.2"}]

tellraw @s ""

tellraw @s {"color":"gray","text":"Settings:","underlined":true}

tellraw @s ""

execute if score graves graves.settings matches 1 run tellraw @s [{"color":"gray","text":"- Graves: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/graves/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable players graves"}]},"text":"ENABLED"}]
execute if score graves graves.settings matches 0 run tellraw @s [{"color":"gray","text":"- Graves: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/graves/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable players graves"}]},"text":"DISABLED"}]

execute if score despawn graves.settings matches 1 run tellraw @s [{"color":"gray","text":"- Despawn: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/despawn/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable graves despawn"}]},"text":"ENABLED"}]
execute if score despawn graves.settings matches 0 run tellraw @s [{"color":"gray","text":"- Despawn: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/despawn/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable graves despawn"}]},"text":"DISABLED"}]

execute if score despawn graves.settings matches 1 run tellraw @s [{"color":"gray","text":"- Despawn Delay: "},{"color":"green","bold":true,"score":{"name":"despawn_delay","objective":"graves.settings"}}]

execute if score owner graves.settings matches 1 run tellraw @s [{"color":"gray","text":"- Owner: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/owner/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable graves owner"}]},"text":"ENABLED"}]
execute if score owner graves.settings matches 0 run tellraw @s [{"color":"gray","text":"- Owner: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/owner/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable graves owner"}]},"text":"DISABLED"}]

execute if score glowing graves.settings matches 1 run tellraw @s [{"color":"gray","text":"- Glowing: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/glowing/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable graves glowing"}]},"text":"ENABLED"}]
execute if score glowing graves.settings matches 0 run tellraw @s [{"color":"gray","text":"- Glowing: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function graves:settings/glowing/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable graves glowing"}]},"text":"DISABLED"}]

tellraw @s ""

tellraw @s {"color":"gray","text":"Commands:","underlined":true}

tellraw @s ""

tellraw @s [{"text":"- ","color":"gray"},{"text":"Loot Nearest Grave","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to loot the nearest grave"}]},"clickEvent":{"action":"run_command","value":"/function graves:settings/loot_nearest_grave"}}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"Loot All Grave","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Clicck to loot all graves"}]},"clickEvent":{"action":"run_command","value":"/function graves:settings/loot_all_graves"}}]

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