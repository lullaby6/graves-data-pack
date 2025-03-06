tag @s add graves.grave.text_display
$tag @s add graves.grave.text_display.$(grave_id)

$ride @s mount @n[tag=graves.grave.$(grave_id)]

data modify entity @s billboard set value "vertical"
data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]}
$data modify entity @s text set value '[{"selector":"@p[tag=graves.player.$(player_id)]"},{"text":"\'s Grave"}]'

execute if score display_name graves.settings matches 1 run return run data modify entity @s view_range set value 1
execute if score display_name graves.settings matches 0 run return run data modify entity @s view_range set value 0.025