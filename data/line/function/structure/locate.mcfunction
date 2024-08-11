$loot spawn ~ ~ ~ loot line:locate_map/$(structure)
tag @e[type=item,nbt={Item:{id:"minecraft:filled_map"}},sort=nearest,limit=1] add line
tag @e[type=item,nbt={Item:{id:"minecraft:filled_map"}},sort=nearest,limit=1] add line.map
data modify storage line:position Structure set value {x: 0, z: 0}
execute store result storage line:position Structure.x int 1.0 run data get entity @e[type=item,distance=..1,tag=line,tag=line.map,limit=1] Item.components.minecraft:map_decorations.+.x
execute store result storage line:position Structure.z int 1.0 run data get entity @e[type=item,distance=..1,tag=line,tag=line.map,limit=1] Item.components.minecraft:map_decorations.+.z
kill @e[type=item,distance=..1,tag=line,tag=line.map]