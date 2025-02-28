scoreboard players reset @s graves.player.death

execute unless score @s graves.player.id matches 1.. run function graves:player/load

execute if score graves graves.settings matches 0 run return fail
execute if score @s graves.player.disabled matches 1 run return fail
execute if entity @s[tag=graves.player.disabled] run return fail
execute unless score @s graves.player.id matches 1.. run return fail
execute unless entity @e[type=item,distance=..6,tag=!graves.grave.item] run return fail


execute store result storage graves:main player_id int 1 run scoreboard players get . graves.player.id

scoreboard players add . graves.grave.id 1
execute store result storage graves:main grave_id int 1 run scoreboard players get . graves.grave.id

function graves:grave/spawn with storage graves:main

data remove storage graves:main player_id
data remove storage graves:main grave_id