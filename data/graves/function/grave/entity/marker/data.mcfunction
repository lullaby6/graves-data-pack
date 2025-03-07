tag @s add graves.grave.marker
$tag @s add graves.grave.marker.$(grave_id)

$ride @s mount @n[scores={graves.grave.id=$(grave_id)}]

$scoreboard players set @s graves.marker.grave.id $(grave_id)

data modify entity @s data.Inventory set value []

$execute as @e[type=minecraft:item,tag=!graves.bypass,distance=..6] run function graves:grave/entity/item/save {"player_id":$(player_id),"grave_id":$(grave_id)}