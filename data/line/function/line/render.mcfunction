$data modify storage line:position Nearest.ax set from storage line:position $(positionA).x
$data modify storage line:position Nearest.ay set from storage line:position $(positionA).y
$data modify storage line:position Nearest.az set from storage line:position $(positionA).z
$function line:line/draw_point with storage line:position $(positionA)
$function line:line/draw_point with storage line:position $(positionB)
function line:line/render2 with storage line:position Nearest
