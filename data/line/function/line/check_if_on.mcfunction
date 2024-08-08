execute store success score #colliding line run function line:line/check_if_collide with storage line:data Nearest
# execute if score #colliding line matches 1 run title @s actionbar {"text": "ON LINE", "color": "green"}
# execute if score #colliding line matches 0 run title @s actionbar {"text": "OFF LINE", "color": "red"}
execute if score #colliding line matches 0 run kill @s