tellraw @s ""
tellraw @s [{"color":"gray","text":"In the End: "}]
$execute as @e[scores={graves.grave.player.id=$(player_id)}] run function graves:player/trigger/all_graves/found {"player_id":$(player_id)}