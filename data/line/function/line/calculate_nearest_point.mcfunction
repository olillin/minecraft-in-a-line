data modify storage line:position Nearest set value {}
data modify storage line:math Buffer set value {}
data modify storage line:math Var set value {}

# Get center of player
data modify storage line:math Var.cx set from entity @s Pos[0]
data modify storage line:math Buffer.x set from entity @s Pos[1]
data modify storage line:math Buffer.y set value 0.9f
execute in overworld run function gm:add with storage line:math Buffer
data modify storage line:math Var.cy set from storage gm:io out
data modify storage line:math Var.cz set from entity @s Pos[2]

# Calculate t = ((cx - ax)(bx-ax) + (cy - ay)(by-ay) + (cz - az)(bz-az))/((bx-ax)² + (by-ay)² + (bz-az)²)

# a = (cx - ax)(bx-ax)
data modify storage line:math Buffer.x set from storage line:math Var.cx
$data modify storage line:math Buffer.y set from storage line:position $(positionA).x
execute in overworld run function gm:subtract with storage line:math Buffer
data modify storage line:math Buffer.a set from storage gm:io out
$data modify storage line:math Buffer.x set from storage line:position $(positionB).x
$data modify storage line:math Buffer.y set from storage line:position $(positionA).x
execute in overworld run function gm:subtract with storage line:math Buffer
data modify storage line:math Buffer.x set from storage line:math Buffer.a
data modify storage line:math Buffer.y set from storage gm:io out
execute in overworld run function gm:multiply with storage line:math Buffer
data modify storage line:math Var.a set from storage gm:io out
# b = (cy - ay)(by-ay)
data modify storage line:math Buffer.x set from storage line:math Var.cy
$data modify storage line:math Buffer.y set from storage line:position $(positionA).y
execute in overworld run function gm:subtract with storage line:math Buffer
data modify storage line:math Buffer.b set from storage gm:io out
$data modify storage line:math Buffer.x set from storage line:position $(positionB).y
$data modify storage line:math Buffer.y set from storage line:position $(positionA).y
execute in overworld run function gm:subtract with storage line:math Buffer
data modify storage line:math Buffer.x set from storage line:math Buffer.b
data modify storage line:math Buffer.y set from storage gm:io out
execute in overworld run function gm:multiply with storage line:math Buffer
data modify storage line:math Var.b set from storage gm:io out
# c = (cz - az)(bz-az))
data modify storage line:math Buffer.x set from storage line:math Var.cz
$data modify storage line:math Buffer.y set from storage line:position $(positionA).z
execute in overworld run function gm:subtract with storage line:math Buffer
data modify storage line:math Buffer.c set from storage gm:io out
$data modify storage line:math Buffer.x set from storage line:position $(positionB).z
$data modify storage line:math Buffer.y set from storage line:position $(positionA).z
execute in overworld run function gm:subtract with storage line:math Buffer
data modify storage line:math Buffer.x set from storage line:math Buffer.c
data modify storage line:math Buffer.y set from storage gm:io out
execute in overworld run function gm:multiply with storage line:math Buffer
data modify storage line:math Var.c set from storage gm:io out
# d = a + b + c
data modify storage line:math Buffer.x set from storage line:math Var.a
data modify storage line:math Buffer.y set from storage line:math Var.b
execute in overworld run function gm:add with storage line:math Buffer
data modify storage line:math Buffer.x set from storage gm:io out
data modify storage line:math Buffer.y set from storage line:math Var.c
execute in overworld run function gm:add with storage line:math Buffer
data modify storage line:math Var.d set from storage gm:io out

# e = (bx-ax)²
$data modify storage line:math Buffer.x set from storage line:position $(positionB).x
$data modify storage line:math Buffer.y set from storage line:position $(positionA).x
execute in overworld run function gm:subtract with storage line:math Buffer
data modify storage line:math Buffer.x set from storage gm:io out
execute in overworld run function gm:square with storage line:math Buffer
data modify storage line:math Var.e set from storage gm:io out
# f = (by-ay)²
$data modify storage line:math Buffer.x set from storage line:position $(positionB).y
$data modify storage line:math Buffer.y set from storage line:position $(positionA).y
execute in overworld run function gm:subtract with storage line:math Buffer
data modify storage line:math Buffer.x set from storage gm:io out
execute in overworld run function gm:square with storage line:math Buffer
data modify storage line:math Var.f set from storage gm:io out
# g = (bz-az)²
$data modify storage line:math Buffer.x set from storage line:position $(positionB).z
$data modify storage line:math Buffer.y set from storage line:position $(positionA).z
execute in overworld run function gm:subtract with storage line:math Buffer
data modify storage line:math Buffer.x set from storage gm:io out
execute in overworld run function gm:square with storage line:math Buffer
data modify storage line:math Var.g set from storage gm:io out
# h = e + f + g
data modify storage line:math Buffer.x set from storage line:math Var.e
data modify storage line:math Buffer.y set from storage line:math Var.f
execute in overworld run function gm:add with storage line:math Buffer
data modify storage line:math Buffer.x set from storage gm:io out
data modify storage line:math Buffer.y set from storage line:math Var.g
execute in overworld run function gm:add with storage line:math Buffer
data modify storage line:math Var.h set from storage gm:io out

# t = d/h
data modify storage line:math Buffer.x set from storage line:math Var.d
data modify storage line:math Buffer.y set from storage line:math Var.h
execute in overworld run function gm:divide with storage line:math Buffer
data modify storage line:math Var.t set from storage gm:io out

# Calculate point
# x = ax + t(bx - ax)
$data modify storage line:math Buffer.x set from storage line:position $(positionB).x
$data modify storage line:math Buffer.y set from storage line:position $(positionA).x
execute in overworld run function gm:subtract with storage line:math Buffer
data modify storage line:math Buffer.x set from storage line:math Var.t
data modify storage line:math Buffer.y set from storage gm:io out
execute in overworld run function gm:multiply with storage line:math Buffer
$data modify storage line:math Buffer.x set from storage line:position $(positionA).x
data modify storage line:math Buffer.y set from storage gm:io out
execute in overworld run function gm:add with storage line:math Buffer
data modify storage line:position Nearest.x set from storage gm:io out
# y = ay + t(by - ay)
$data modify storage line:math Buffer.x set from storage line:position $(positionB).y
$data modify storage line:math Buffer.y set from storage line:position $(positionA).y
execute in overworld run function gm:subtract with storage line:math Buffer
data modify storage line:math Buffer.x set from storage line:math Var.t
data modify storage line:math Buffer.y set from storage gm:io out
execute in overworld run function gm:multiply with storage line:math Buffer
$data modify storage line:math Buffer.x set from storage line:position $(positionA).y
data modify storage line:math Buffer.y set from storage gm:io out
execute in overworld run function gm:add with storage line:math Buffer
data modify storage line:position Nearest.y set from storage gm:io out
# z = az + t(bz - az)
$data modify storage line:math Buffer.x set from storage line:position $(positionB).z
$data modify storage line:math Buffer.y set from storage line:position $(positionA).z
execute in overworld run function gm:subtract with storage line:math Buffer
data modify storage line:math Buffer.x set from storage line:math Var.t
data modify storage line:math Buffer.y set from storage gm:io out
execute in overworld run function gm:multiply with storage line:math Buffer
$data modify storage line:math Buffer.x set from storage line:position $(positionA).z
data modify storage line:math Buffer.y set from storage gm:io out
execute in overworld run function gm:add with storage line:math Buffer
data modify storage line:position Nearest.z set from storage gm:io out
