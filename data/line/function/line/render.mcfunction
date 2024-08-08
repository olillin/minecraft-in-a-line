$data modify storage line:data Nearest.ax set from storage line:data $(positionA).x
$data modify storage line:data Nearest.ay set from storage line:data $(positionA).y
$data modify storage line:data Nearest.az set from storage line:data $(positionA).z
function line:line/render2 with storage line:data Nearest
