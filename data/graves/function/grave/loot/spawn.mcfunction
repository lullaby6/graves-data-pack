execute on passengers if entity @s[tag=graves.grave.marker] if data entity @s data.Inventory[] run function graves:grave/entity/item/summon

execute if score xp graves.config matches 1 if score keep_inventory graves.config matches 0 if score @s graves.grave.xp matches 1.. run return run function graves:grave/entity/experience_orb/data
execute if score xp graves.config matches 1 if score keep_inventory graves.config matches 1 on passengers if entity @s[tag=graves.grave.marker] if score @s graves.marker.xp matches 1.. run return run function graves:grave/loot/give_xp/xp