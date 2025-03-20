$data modify storage graves:trigger_nearest_grave data.player_id set value $(player_id)

$execute store result storage graves:trigger_nearest_grave data.grave_id int 1 run scoreboard players get @n[scores={graves.grave.player.id=$(player_id)}] graves.grave.id

$execute store result storage graves:trigger_nearest_grave data.x int 1 run data get entity @n[scores={graves.grave.player.id=$(player_id)}] Pos[0]
$execute store result storage graves:trigger_nearest_grave data.y int 1 run data get entity @n[scores={graves.grave.player.id=$(player_id)}] Pos[1]
$execute store result storage graves:trigger_nearest_grave data.z int 1 run data get entity @n[scores={graves.grave.player.id=$(player_id)}] Pos[2]

$execute at @n[scores={graves.grave.player.id=$(player_id)}] if dimension minecraft:overworld run data modify storage graves:trigger_nearest_grave data.dimension set value "minecraft:overworld"
$execute at @n[scores={graves.grave.player.id=$(player_id)}] if dimension minecraft:the_nether run data modify storage graves:trigger_nearest_grave data.dimension set value "minecraft:the_nether"
$execute at @n[scores={graves.grave.player.id=$(player_id)}] if dimension minecraft:the_end run data modify storage graves:trigger_nearest_grave data.dimension set value "minecraft:the_end"

function graves:player/trigger/nearest_grave/message with storage graves:trigger_nearest_grave data