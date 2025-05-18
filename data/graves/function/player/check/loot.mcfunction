execute if entity @e[type=minecraft:item,nbt={Age:0s},distance=..10,tag=!graves.bypass,tag=!graves.grave.item] run return 1
execute if score xp graves.config matches 1 if entity @e[type=minecraft:experience_orb,distance=..10,tag=!graves.bypass] run return 1

return 0