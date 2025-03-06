function graves:grave/loot/effect

$execute at @p[scores={graves.player.id=$(player_id)}] run function graves:grave/loot/spawn

function graves:grave/clear