data modify storage line:data Nearest set value {}
data modify storage line:data Temp set value {}
data modify storage line:data Temp.Var set value {}

# Get center of player
data modify storage line:data Temp.Var.cx set from entity @s Pos[0]
data modify storage line:data Temp.x set from entity @s Pos[1]
data modify storage line:data Temp.y set value 0.9f
function gm:add with storage line:data Temp
data modify storage line:data Temp.Var.cy set from storage gm:io out
data modify storage line:data Temp.Var.cz set from entity @s Pos[2]

# Calculate t = ((cx - ax)(bx-ax) + (cy - ay)(by-ay) + (cz - az)(bz-az))/((bx-ax)² + (by-ay)² + (bz-az)²)

# a = (cx - ax)(bx-ax)
data modify storage line:data Temp.x set from storage line:data Temp.Var.cx
$data modify storage line:data Temp.y set from storage line:data $(positionA).x
function gm:subtract with storage line:data Temp
data modify storage line:data Temp.a set from storage gm:io out
$data modify storage line:data Temp.x set from storage line:data $(positionB).x
$data modify storage line:data Temp.y set from storage line:data $(positionA).x
function gm:subtract with storage line:data Temp
data modify storage line:data Temp.x set from storage line:data Temp.a
data modify storage line:data Temp.y set from storage gm:io out
function gm:multiply with storage line:data Temp
data modify storage line:data Temp.Var.a set from storage gm:io out
# b = (cy - ay)(by-ay)
data modify storage line:data Temp.x set from storage line:data Temp.Var.cy
$data modify storage line:data Temp.y set from storage line:data $(positionA).y
function gm:subtract with storage line:data Temp
data modify storage line:data Temp.b set from storage gm:io out
$data modify storage line:data Temp.x set from storage line:data $(positionB).y
$data modify storage line:data Temp.y set from storage line:data $(positionA).y
function gm:subtract with storage line:data Temp
data modify storage line:data Temp.x set from storage line:data Temp.b
data modify storage line:data Temp.y set from storage gm:io out
function gm:multiply with storage line:data Temp
data modify storage line:data Temp.Var.b set from storage gm:io out
# c = (cz - az)(bz-az))
data modify storage line:data Temp.x set from storage line:data Temp.Var.cz
$data modify storage line:data Temp.y set from storage line:data $(positionA).z
function gm:subtract with storage line:data Temp
data modify storage line:data Temp.c set from storage gm:io out
$data modify storage line:data Temp.x set from storage line:data $(positionB).z
$data modify storage line:data Temp.y set from storage line:data $(positionA).z
function gm:subtract with storage line:data Temp
data modify storage line:data Temp.x set from storage line:data Temp.c
data modify storage line:data Temp.y set from storage gm:io out
function gm:multiply with storage line:data Temp
data modify storage line:data Temp.Var.c set from storage gm:io out
# d = a + b + c
data modify storage line:data Temp.x set from storage line:data Temp.Var.a
data modify storage line:data Temp.y set from storage line:data Temp.Var.b
function gm:add with storage line:data Temp
data modify storage line:data Temp.x set from storage gm:io out
data modify storage line:data Temp.y set from storage line:data Temp.Var.c
function gm:add with storage line:data Temp
data modify storage line:data Temp.Var.d set from storage gm:io out

# e = (bx-ax)²
$data modify storage line:data Temp.x set from storage line:data $(positionB).x
$data modify storage line:data Temp.y set from storage line:data $(positionA).x
function gm:subtract with storage line:data Temp
data modify storage line:data Temp.x set from storage gm:io out
function gm:square with storage line:data Temp
data modify storage line:data Temp.Var.e set from storage gm:io out
# f = (by-ay)²
$data modify storage line:data Temp.x set from storage line:data $(positionB).y
$data modify storage line:data Temp.y set from storage line:data $(positionA).y
function gm:subtract with storage line:data Temp
data modify storage line:data Temp.x set from storage gm:io out
function gm:square with storage line:data Temp
data modify storage line:data Temp.Var.f set from storage gm:io out
# g = (bz-az)²
$data modify storage line:data Temp.x set from storage line:data $(positionB).z
$data modify storage line:data Temp.y set from storage line:data $(positionA).z
function gm:subtract with storage line:data Temp
data modify storage line:data Temp.x set from storage gm:io out
function gm:square with storage line:data Temp
data modify storage line:data Temp.Var.g set from storage gm:io out
# h = e + f + g
data modify storage line:data Temp.x set from storage line:data Temp.Var.e
data modify storage line:data Temp.y set from storage line:data Temp.Var.f
function gm:add with storage line:data Temp
data modify storage line:data Temp.x set from storage gm:io out
data modify storage line:data Temp.y set from storage line:data Temp.Var.g
function gm:add with storage line:data Temp
data modify storage line:data Temp.Var.h set from storage gm:io out

# t = d/h
data modify storage line:data Temp.x set from storage line:data Temp.Var.d
data modify storage line:data Temp.y set from storage line:data Temp.Var.h
function gm:divide with storage line:data Temp
data modify storage line:data Temp.Var.t set from storage gm:io out

# Calculate point
# x = ax + t(bx - ax)
$data modify storage line:data Temp.x set from storage line:data $(positionB).x
$data modify storage line:data Temp.y set from storage line:data $(positionA).x
function gm:subtract with storage line:data Temp
data modify storage line:data Temp.x set from storage line:data Temp.Var.t
data modify storage line:data Temp.y set from storage gm:io out
function gm:multiply with storage line:data Temp
$data modify storage line:data Temp.x set from storage line:data $(positionA).x
data modify storage line:data Temp.y set from storage gm:io out
function gm:add with storage line:data Temp
data modify storage line:data Nearest.x set from storage gm:io out
# y = ay + t(by - ay)
$data modify storage line:data Temp.x set from storage line:data $(positionB).y
$data modify storage line:data Temp.y set from storage line:data $(positionA).y
function gm:subtract with storage line:data Temp
data modify storage line:data Temp.x set from storage line:data Temp.Var.t
data modify storage line:data Temp.y set from storage gm:io out
function gm:multiply with storage line:data Temp
$data modify storage line:data Temp.x set from storage line:data $(positionA).y
data modify storage line:data Temp.y set from storage gm:io out
function gm:add with storage line:data Temp
data modify storage line:data Nearest.y set from storage gm:io out
# z = az + t(bz - az)
$data modify storage line:data Temp.x set from storage line:data $(positionB).z
$data modify storage line:data Temp.y set from storage line:data $(positionA).z
function gm:subtract with storage line:data Temp
data modify storage line:data Temp.x set from storage line:data Temp.Var.t
data modify storage line:data Temp.y set from storage gm:io out
function gm:multiply with storage line:data Temp
$data modify storage line:data Temp.x set from storage line:data $(positionA).z
data modify storage line:data Temp.y set from storage gm:io out
function gm:add with storage line:data Temp
data modify storage line:data Nearest.z set from storage gm:io out
