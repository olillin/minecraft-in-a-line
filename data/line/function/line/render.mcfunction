$data modify storage line:position Nearest.ax set from storage line:position $(positionA).x
$data modify storage line:position Nearest.ay set from storage line:position $(positionA).y
$data modify storage line:position Nearest.az set from storage line:position $(positionA).z
function line:line/render2 with storage line:position Nearest
