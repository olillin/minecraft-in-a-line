$data modify storage line:position $(position) set value {x: 0, y: 0, z: 0}
$data modify storage line:position $(position).x set from entity @s Pos[0]
$data modify storage line:position $(position).y set from entity @s Pos[1]
$data modify storage line:position $(position).z set from entity @s Pos[2]
kill @s