summon marker ~ ~ ~ {Tags:["line","line.pos"]}
$data modify storage line:pos $(position) set value {x: 0, y: 0, z: 0}
$data modify storage line:pos $(position).x set from entity @e[type=marker,tag=line.pos,limit=1] Pos[0]
$data modify storage line:pos $(position).y set from entity @e[type=marker,tag=line.pos,limit=1] Pos[1]
$data modify storage line:pos $(position).z set from entity @e[type=marker,tag=line.pos,limit=1] Pos[2]
kill @e[type=marker,tag=line.pos]