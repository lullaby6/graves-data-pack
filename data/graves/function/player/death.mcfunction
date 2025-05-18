scoreboard players reset @s graves.player.death

execute unless score @s graves.player.id matches 1.. run function graves:player/load

execute if score graves graves.config matches 0 run return fail
execute if score @s graves.trigger.disabled matches 1 run return run tellraw @s [{"color":"gray","text":"Your graves are disabled, do /trigger graves.enabled to enable it."}]
execute if entity @s[tag=graves.player.disabled] run return fail
execute unless score @s graves.player.id matches 1.. run return fail
execute if score keep_inventory graves.config matches 0 unless function graves:player/check/loot run return fail
execute if score keep_inventory graves.config matches 1 unless function graves:player/check/keep_inventory run return fail


scoreboard players reset @s graves.player.death.dimension
execute if dimension minecraft:overworld run scoreboard players set @s graves.player.death.dimension 1
execute if dimension minecraft:the_nether run scoreboard players set @s graves.player.death.dimension 2
execute if dimension minecraft:the_end run scoreboard players set @s graves.player.death.dimension 3


execute store result score @s graves.player.death.pos.x run data get entity @s Pos[0]
execute store result score @s graves.player.death.pos.y run data get entity @s Pos[1]
execute store result score @s graves.player.death.pos.z run data get entity @s Pos[2]

execute store result storage graves:main x int 1 run scoreboard players get @s graves.player.death.pos.x
execute store result storage graves:main y int 1 run scoreboard players get @s graves.player.death.pos.y
execute store result storage graves:main z int 1 run scoreboard players get @s graves.player.death.pos.z


execute store result storage graves:main player_id int 1 run scoreboard players get @s graves.player.id

scoreboard players add . graves.grave.id 1
execute store result storage graves:main grave_id int 1 run scoreboard players get . graves.grave.id


function graves:grave/spawn with storage graves:main


data remove storage graves:main player_id
data remove storage graves:main grave_id
data remove storage graves:main x
data remove storage graves:main y
data remove storage graves:main z


execute if score death_message graves.config matches 1 run function graves:player/trigger/last_grave
execute if score keep_inventory graves.config matches 1 run function graves:player/clear