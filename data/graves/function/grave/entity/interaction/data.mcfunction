tag @s add graves.grave
tag @s add graves.grave.new

$tag @s add graves.grave.$(grave_id)
$tag @s add graves.grave.player.$(player_id)

data modify entity @s response set value 1b

$scoreboard players set @s graves.grave.id $(grave_id)
$scoreboard players set @s graves.grave.player.id $(player_id)
execute if score despawn graves.settings matches 1 if score despawn_delay graves.settings matches 1.. store result score @s graves.grave.despawn_delay run scoreboard players get despawn_delay graves.settings

forceload add ~ ~

$function graves:grave/entity/marker/summon {"player_id":$(player_id),"grave_id":$(grave_id)}
$function graves:grave/entity/text_display/summon {"player_id":$(player_id),"grave_id":$(grave_id)}
$function graves:grave/entity/block_display/summon {"player_id":$(player_id),"grave_id":$(grave_id)}

$execute as @e[type=experience_orb,distance=..6] run function graves:grave/entity/experience_orb/save {"player_id":$(player_id),"grave_id":$(grave_id)}

tag @s remove graves.grave.new