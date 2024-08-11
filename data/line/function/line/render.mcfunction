$data modify storage line:pos Nearest.ax set from storage line:pos $(positionA).x
$data modify storage line:pos Nearest.ay set from storage line:pos $(positionA).y
$data modify storage line:pos Nearest.az set from storage line:pos $(positionA).z
$function line:line/draw_point with storage line:pos $(positionA)
$function line:line/draw_point with storage line:pos $(positionB)
function line:line/render2 with storage line:pos Nearest
