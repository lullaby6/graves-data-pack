execute on passengers if entity @s[tag=graves.grave.marker] run function graves:grave/entity/item/summon

execute if score xp graves.settings matches 1 if score @s graves.grave.xp matches 1.. run function graves:grave/entity/experience_orb/data