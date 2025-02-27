scoreboard objectives add graves.grave.id dummy
scoreboard objectives add graves.grave.despawn_delay dummy

scoreboard objectives add graves.settings dummy
execute unless score load graves.settings matches 1 run function graves:settings/reset

scoreboard objectives add graves.player.id dummy
scoreboard objectives add graves.player.death deathCount
scoreboard objectives add graves.player.xp dummy
scoreboard objectives add graves.player.grave_disabled trigger

gamerule keepInventory false
gamerule doImmediateRespawn false

advancement revoke @a only graves:interact_with_grave
advancement revoke @a only graves:tick