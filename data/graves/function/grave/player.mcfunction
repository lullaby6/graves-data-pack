execute on passengers if entity @s[tag=graves.marker] run function graves:grave/item

execute if score @s graves.xp matches 1.. run summon experience_orb ~ ~ ~ {Tags:["graves.grave.xp"],Invulnerable:1b}
execute store result entity @n[tag=graves.grave.xp] Value int 1 run scoreboard players get @s graves.xp
tag @n[tag=graves.grave.xp] remove graves.grave.xp