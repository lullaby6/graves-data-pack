tag @s add graves.grave.marker
$tag @s add graves.grave.marker.$(grave_id)

$ride @s mount @n[scores={graves.grave.id=$(grave_id)}]

$scoreboard players set @s graves.marker.grave.id $(grave_id)
$scoreboard players set @s graves.marker.player.id $(player_id)

data modify entity @s data.Inventory set value []

$execute if score keep_inventory graves.config matches 0 as @e[type=minecraft:item,nbt={Age:0s},tag=!graves.bypass,distance=..10] run function graves:grave/entity/item/save {"player_id":$(player_id),"grave_id":$(grave_id)}
$execute if score keep_inventory graves.config matches 1 run function graves:grave/entity/marker/keep_inventory {"player_id":$(player_id),"grave_id":$(grave_id)}