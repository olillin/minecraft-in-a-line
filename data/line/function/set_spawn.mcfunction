summon marker ~ ~ ~ {Tags:["line","line.spawn"]}
data modify storage line:data Spawn set value {x: 0, y: 0, z: 0}
data modify storage line:data Spawn.x set from entity @e[type=marker,tag=line.spawn,limit=1] Pos[0]
data modify storage line:data Spawn.y set from entity @e[type=marker,tag=line.spawn,limit=1] Pos[1]
data modify storage line:data Spawn.z set from entity @e[type=marker,tag=line.spawn,limit=1] Pos[2]
kill @e[type=marker,tag=line.spawn]