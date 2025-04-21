# function graves:utils/clear_chat

tellraw @s [{"text":"==========[ ","color":"gray"},{"text":"Graves","color":"white","bold":true},{"text":" ]==========","color":"gray"}]
tellraw @s [{"color":"gray","text":"Version: "},{"color":"aqua","text":"v2.1.5"}]

tellraw @s ""

tellraw @s {"color":"gray","text":"Settings:","underlined":true}

tellraw @s ""

execute if score graves graves.config matches 1 run tellraw @s [{"color":"gray","text":"- Graves: "},{"bold":true,"click_event":{"action":"run_command","command":"/function graves:config/graves/disable"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Click to disable players graves"}]},"text":"ENABLED"}]
execute if score graves graves.config matches 0 run tellraw @s [{"color":"gray","text":"- Graves: "},{"bold":true,"click_event":{"action":"run_command","command":"/function graves:config/graves/enable"},"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Click to enable players graves"}]},"text":"DISABLED"}]

execute if score despawn graves.config matches 1 run tellraw @s [{"color":"gray","text":"- Despawn: "},{"bold":true,"click_event":{"action":"run_command","command":"/function graves:config/despawn/disable"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Click to disable graves despawn"}]},"text":"ENABLED"}]
execute if score despawn graves.config matches 0 run tellraw @s [{"color":"gray","text":"- Despawn: "},{"bold":true,"click_event":{"action":"run_command","command":"/function graves:config/despawn/enable"},"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Click to enable graves despawn"}]},"text":"DISABLED"}]

execute if score despawn graves.config matches 1 run tellraw @s [{"color":"gray","text":"- Despawn Delay: "},{"color":"aqua","bold":true,"text":"- ","hover_event":{"action":"show_text","value":[{"text":"Click to remove a minute from despawn delay"}]},"click_event":{"action":"run_command","command":"/function graves:config/despawn_delay/remove"}},{"color":"green","bold":true,"score":{"name":"despawn_delay","objective":"graves.config"},"hover_event":{"action":"show_text","value":[{"text":"To change click or run: /scoreboard players set despawn_delay graves.config <ticks>"}]},"click_event":{"action":"suggest_command","value":"/scoreboard players set despawn_delay graves.config "}},{"color":"aqua","bold":true,"text":" +","hover_event":{"action":"show_text","value":[{"text":"Click to add a minute to despawn delay"}]},"click_event":{"action":"run_command","command":"/function graves:config/despawn_delay/add"}}]

execute if score owner graves.config matches 1 run tellraw @s [{"color":"gray","text":"- Owner: "},{"bold":true,"click_event":{"action":"run_command","command":"/function graves:config/owner/disable"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Click to disable graves owner"}]},"text":"ENABLED"}]
execute if score owner graves.config matches 0 run tellraw @s [{"color":"gray","text":"- Owner: "},{"bold":true,"click_event":{"action":"run_command","command":"/function graves:config/owner/enable"},"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Click to enable graves owner"}]},"text":"DISABLED"}]

execute if score glowing graves.config matches 1 run tellraw @s [{"color":"gray","text":"- Glowing: "},{"bold":true,"click_event":{"action":"run_command","command":"/function graves:config/glowing/disable"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Click to disable graves glowing"}]},"text":"ENABLED"}]
execute if score glowing graves.config matches 0 run tellraw @s [{"color":"gray","text":"- Glowing: "},{"bold":true,"click_event":{"action":"run_command","command":"/function graves:config/glowing/enable"},"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Click to enable graves glowing"}]},"text":"DISABLED"}]

execute if score name_visible graves.config matches 1 run tellraw @s [{"color":"gray","text":"- Visible Name: "},{"bold":true,"click_event":{"action":"run_command","command":"/function graves:config/name_visible/disable"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Click to disable graves visible name"}]},"text":"ENABLED"}]
execute if score name_visible graves.config matches 0 run tellraw @s [{"color":"gray","text":"- Visible Name: "},{"bold":true,"click_event":{"action":"run_command","command":"/function graves:config/name_visible/enable"},"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Click to enable graves visible name"}]},"text":"DISABLED"}]

execute if score name graves.config matches 1 run tellraw @s [{"color":"gray","text":"- Name: "},{"bold":true,"click_event":{"action":"run_command","command":"/function graves:config/name/disable"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Click to disable graves name"}]},"text":"ENABLED"}]
execute if score name graves.config matches 0 run tellraw @s [{"color":"gray","text":"- Name: "},{"bold":true,"click_event":{"action":"run_command","command":"/function graves:config/name/enable"},"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Click to enable graves name"}]},"text":"DISABLED"}]

execute if score xp graves.config matches 1 run tellraw @s [{"color":"gray","text":"- XP: "},{"bold":true,"click_event":{"action":"run_command","command":"/function graves:config/xp/disable"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Click to disable graves saves XP"}]},"text":"ENABLED"}]
execute if score xp graves.config matches 0 run tellraw @s [{"color":"gray","text":"- XP: "},{"bold":true,"click_event":{"action":"run_command","command":"/function graves:config/xp/enable"},"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Click to enable graves saves XP"}]},"text":"DISABLED"}]

execute if score death_message graves.config matches 1 run tellraw @s [{"color":"gray","text":"- Death Message: "},{"bold":true,"click_event":{"action":"run_command","command":"/function graves:config/death_message/disable"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Click to disable death messages"}]},"text":"ENABLED"}]
execute if score death_message graves.config matches 0 run tellraw @s [{"color":"gray","text":"- Death Message: "},{"bold":true,"click_event":{"action":"run_command","command":"/function graves:config/death_message/enable"},"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Click to enable death messages"}]},"text":"DISABLED"}]

tellraw @s ""

tellraw @s {"color":"gray","text":"Commands:","underlined":true}

tellraw @s ""

tellraw @s [{"text":"- ","color":"gray"},{"text":"Loot Nearest Grave","color":"green","hover_event":{"action":"show_text","contents":[{"text":"Click to loot the nearest grave"}]},"click_event":{"action":"run_command","command":"/function graves:config/loot_nearest_grave"}}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"Loot Nearest Grave In Inventory","color":"green","hover_event":{"action":"show_text","contents":[{"text":"Click to loot the nearest grave in inventory"}]},"click_event":{"action":"run_command","command":"/function graves:config/loot_nearest_grave_inventory"}}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"Loot All Graves","color":"green","hover_event":{"action":"show_text","contents":[{"text":"Clicck to loot all graves"}]},"click_event":{"action":"run_command","command":"/function graves:config/loot_all_graves"}}]

# tellraw @s ""

tellraw @s [{"text":"- ","color":"gray"},{"text":"Clear Nearest Grave","color":"red","hover_event":{"action":"show_text","contents":[{"text":"Click to clear nearest grave"}]},"click_event":{"action":"run_command","command":"/function graves:config/clear_nearest_grave"}}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"Clear All Graves","color":"red","hover_event":{"action":"show_text","contents":[{"text":"Click to clear all graves"}]},"click_event":{"action":"run_command","command":"/function graves:config/clear_all_graves"}}]

# tellraw @s ""

tellraw @s [{"text":"- ","color":"gray"},{"text":"TP To Nearest Grave","color":"red","hover_event":{"action":"show_text","contents":[{"text":"Click to teleport to nearest grave"}]},"click_event":{"action":"run_command","command":"/function graves:config/tp_nearest"}}]

# tellraw @s ""

# tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset All Players","color":"red","hover_event":{"action":"show_text","contents":[{"text":"Click to reset all players"}]},"click_event":{"action":"run_command","command":"/function graves:config/reset_all_players"}}]

# tellraw @s ""

tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset Settings","color":"red","hover_event":{"action":"show_text","contents":[{"text":"Click to reset settings"}]},"click_event":{"action":"run_command","command":"/function graves:config/reset"}}]

tellraw @s ""

tellraw @s [{"text":"===========","color":"gray"},{"text":"======","color":"gray"},{"text":"===========","color":"gray"}]

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 2