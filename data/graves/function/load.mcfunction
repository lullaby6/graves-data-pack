scoreboard objectives add graves.grave.id dummy
scoreboard objectives add graves.grave.pos.x dummy
scoreboard objectives add graves.grave.pos.y dummy
scoreboard objectives add graves.grave.pos.z dummy
scoreboard objectives add graves.grave.player.id dummy
scoreboard objectives add graves.grave.despawn_delay dummy
scoreboard objectives add graves.grave.xp dummy

scoreboard objectives add graves.marker.grave.id dummy

scoreboard objectives add graves.settings dummy
execute unless score load graves.settings matches 1 run function graves:settings/reset

scoreboard objectives add graves.player.id dummy
scoreboard objectives add graves.player.death deathCount
scoreboard objectives add graves.player.death.dimension dummy
scoreboard objectives add graves.player.death.pos.x dummy
scoreboard objectives add graves.player.death.pos.y dummy
scoreboard objectives add graves.player.death.pos.z dummy
scoreboard objectives add graves.player.disabled trigger
scoreboard objectives add graves.player.last_grave trigger

gamerule keepInventory false
gamerule doImmediateRespawn false

advancement revoke @a only graves:interact_with_grave
advancement revoke @a only graves:tick