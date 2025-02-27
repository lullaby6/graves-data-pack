tag @s add graves.grave
$tag @s add graves.grave.$(id)
tag @s add graves.interaction
tag @s add graves.interaction.new

data modify entity @s width set value 1f
data modify entity @s height set value 1f
data modify entity @s response set value 1b
data modify entity @s left_rotation set value [0f,0f,0f,1f]
data modify entity @s right_rotation set value [0f,0f,0f,1f]
data modify entity @s translation set value [0f,1f,0f]
data modify entity @s scale set value [1f,1f,1f]
data modify entity @s billboard set value "vertical"

$scoreboard players set @s graves.grave.id $(id)

forceload add ~ ~

summon marker ~ ~ ~ {data:{Inventory:[]},Tags:["graves.marker","graves.marker.new"]}
summon text_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},billboard:"vertical",Tags:["graves.text","graves.text.new"],text:'[{"selector":"@p[tag=graves.player.death]"},{"text":"\'s Grave"}]'}
summon block_display ~ ~ ~ {block_state:{Name:"minecraft:mossy_cobblestone_wall"},Tags:["graves.block","graves.block.new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1.0f,0.875f,1.0f]}}

execute if score glowing graves.settings matches 1 run data modify entity @n[tag=graves.block.new] Glowing set value 1b

execute as @n[tag=graves.interaction.new] store result score @s graves.grave.id run scoreboard players get @p[tag=graves.player.death] graves.player.id

execute as @e[tag=graves.item,distance=..6] run data modify entity @n[tag=graves.marker.new] data.Inventory append from entity @s Item
kill @e[tag=graves.item,distance=..6]

execute if score despawn graves.settings matches 1 if score despawn_delay graves.settings matches 1.. store result score @n[tag=graves.interaction.new] graves.grave.despawn_delay run scoreboard players get despawn_delay graves.settings

ride @n[tag=graves.marker.new] mount @n[tag=graves.interaction.new]
ride @n[tag=graves.text.new] mount @n[tag=graves.interaction.new]
ride @n[tag=graves.block.new] mount @n[tag=graves.interaction.new]

tag @n[tag=graves.marker.new] remove graves.marker.new
tag @n[tag=graves.interaction.new] remove graves.interaction.new
tag @n[tag=graves.text.new] remove graves.text.new
tag @n[tag=graves.block.new] remove graves.block.new