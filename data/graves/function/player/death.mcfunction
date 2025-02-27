scoreboard players reset @s graves.player.death

execute if score graves graves.settings matches 0 run return fail
execute if score @s graves.player.grave_disabled matches 1 run return fail
execute if entity @s[tag=graves.player.disabled] run return fail
execute unless score @s graves.player.id matches 1.. run return fail
execute unless entity @e[type=item,distance=..6,tag=!graves.item] run return fail

execute store result storage graves:main id int 1 run scoreboard players get . graves.player.id
function graves:grave/summon with storage graves:main
data remove storage graves:main id