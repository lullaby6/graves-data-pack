tag @s add graves.grave.marker
$tag @s add graves.grave.marker.$(id)

$ride @s mount @n[tag=graves.grave.$(id)]

data modify entity @s data.Inventory set value []

$execute as @e[type=minecraft:item,distance=..6] run function graves:grave/entity/item/save {"id":$(id)}