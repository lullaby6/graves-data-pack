$data modify entity @s data.Inventory set from entity @p[scores={graves.player.id=$(player_id)}] Inventory

$execute if score xp graves.config matches 1 store result score @s graves.marker.xp as @p[scores={graves.player.id=$(player_id)}] run function graves:player/xp/get_total_points