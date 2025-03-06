tag @s add graves.grave
tag @s add graves.grave.new

$tag @s add graves.grave.$(grave_id)
$tag @s add graves.grave.player.$(player_id)

data modify entity @s response set value 1b

$scoreboard players set @s graves.grave.id $(grave_id)
$scoreboard players set @s graves.grave.player.id $(player_id)

$scoreboard players set @s graves.grave.pos.x $(x)
$scoreboard players set @s graves.grave.pos.y $(y)
$scoreboard players set @s graves.grave.pos.z $(z)

forceload add ~ ~

$function graves:grave/entity/marker/summon {"player_id":$(player_id),"grave_id":$(grave_id)}
$function graves:grave/entity/text_display/summon {"player_id":$(player_id),"grave_id":$(grave_id)}
$function graves:grave/entity/block_display/summon {"player_id":$(player_id),"grave_id":$(grave_id)}

$execute as @e[type=experience_orb,distance=..6] run function graves:grave/entity/experience_orb/save {"player_id":$(player_id),"grave_id":$(grave_id)}

tag @s remove graves.grave.new

execute if block ~ ~ ~ lava run function graves:grave/entity/interaction/lava

execute if dimension minecraft:the_end if score @s graves.grave.pos.y matches ..1 run tp ~ 1 ~