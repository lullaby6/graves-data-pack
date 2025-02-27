execute as @e[type=minecraft:item,distance=..6] run data modify entity @n[tag=graves.marker.new] data.Inventory append from entity @s Item
kill @e[type=minecraft:item,distance=..6]