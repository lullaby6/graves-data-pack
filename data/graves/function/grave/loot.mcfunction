particle cloud ~ ~ ~ 0 0 0 0.125 10 force @a
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 10

execute at @p[tag=graves.player.interact_with_grave] run function graves:grave/player

function graves:grave/clear