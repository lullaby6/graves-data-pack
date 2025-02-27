tag @s add graves.grave.text_display
$tag @s add graves.grave.text_display.$(id)

$ride @s mount @n[tag=graves.grave.$(id)]

data modify entity @s billboard set value "vertical"
data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]}
$data modify entity @s text set value '[{"selector":"@p[tag=graves.player.$(id)]"},{"text":"\'s Grave"}]'