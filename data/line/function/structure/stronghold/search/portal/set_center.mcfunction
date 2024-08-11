# Save coordinates
summon marker ~ ~.5 ~ {Tags:["line","line.stronghold_search","line.stronghold_search.portal"]}
data modify storage line:pos Stronghold set value {x: 0, y: 0, z: 0}
data modify storage line:pos Stronghold.x set from entity @e[type=marker,tag=line.stronghold_search.portal,limit=1] Pos[0]
data modify storage line:pos Stronghold.y set from entity @e[type=marker,tag=line.stronghold_search.portal,limit=1] Pos[1]
data modify storage line:pos Stronghold.z set from entity @e[type=marker,tag=line.stronghold_search.portal,limit=1] Pos[2]

# End search
function line:structure/stronghold/search/success