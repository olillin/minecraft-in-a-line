# Set margin
data modify storage line:pos Nearest.margin set from storage line:config margin
data modify storage line:math Buffer set value {x: 0, y: 2.0}
data modify storage line:math Buffer.x set from storage line:config margin
execute in overworld run function gm:multiply with storage line:math Buffer
data modify storage line:pos Nearest.2margin set from storage gm:io out
# Check collision
execute store success score #colliding line run function line:line/check_if_collide with storage line:pos Nearest
# Act on collision result
execute if score #colliding line matches 1 run title @s actionbar {"text": "YOU ARE ON THE LINE", "color": "green"}
execute if score #colliding line matches 0 run title @s actionbar {"text": "YOU ARE OFF THE LINE", "color": "red"}
# execute if score #colliding line matches 0 run kill @s