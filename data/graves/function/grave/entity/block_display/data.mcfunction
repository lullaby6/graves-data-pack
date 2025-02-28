tag @s add graves.grave.block_display
$tag @s add graves.grave.block_display.$(grave_id)

$ride @s mount @n[tag=graves.grave.$(grave_id)]

data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1.0f,0.875f,1.0f]}
data modify entity @s block_state.Name set value "minecraft:mossy_cobblestone_wall"

execute if score glowing graves.settings matches 1 run data modify entity @s Glowing set value 1b