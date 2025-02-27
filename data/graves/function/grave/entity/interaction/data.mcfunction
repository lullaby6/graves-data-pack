tag @s add graves.grave
tag @s add graves.grave.new
$tag @s add graves.grave.$(id)
tag @s add graves.interaction
tag @s add graves.interaction.new

data modify entity @s response set value 1b

$scoreboard players set @s graves.grave.id $(id)
execute if score despawn graves.settings matches 1 if score despawn_delay graves.settings matches 1.. store result score @s graves.grave.despawn_delay run scoreboard players get despawn_delay graves.settings

forceload add ~ ~

$function graves:grave/entity/marker/summon {"id":$(id)}
$function graves:grave/entity/text_display/summon {"id":$(id)}
$function graves:grave/entity/block_display/summon {"id":$(id)}

$execute as @e[type=experience_orb,distance=..6] run function graves:grave/entity/experience_orb/save {"id":$(id)}

tag @s remove graves.grave.new