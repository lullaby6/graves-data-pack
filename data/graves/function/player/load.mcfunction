execute if score @s graves.player.id matches 1.. run return fail

tag @s add graves.player.load

scoreboard players add . graves.player.id 1
execute store result storage graves:main id int 1 run scoreboard players get . graves.player.id

function graves:player/id with storage graves:main

data remove storage graves:main id