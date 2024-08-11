# Save coordinates
summon marker ~ ~ ~ {Tags:["line","line.fortress_search","line.fortress_search.spawner"]}
data modify storage line:position Fortress set value {x: 0, y: 0, z: 0}
execute store result storage line:position Fortress.x int 1 run data get entity @e[type=marker,tag=line.fortress_search.spawner,limit=1] Pos[0]
execute store result storage line:position Fortress.y int 1 run data get entity @e[type=marker,tag=line.fortress_search.spawner,limit=1] Pos[1]
execute store result storage line:position Fortress.z int 1 run data get entity @e[type=marker,tag=line.fortress_search.spawner,limit=1] Pos[2]

# End search
function line:structure/fortress/search/success