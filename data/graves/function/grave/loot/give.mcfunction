particle cloud ~ ~ ~ 0 0 0 0.125 10 force @a
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 10

$execute at @p[tag=graves.player.$(player_id)] run function graves:grave/loot/spawn

function graves:grave/clear