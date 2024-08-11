# Mode 1
execute store success score #success line run function line:check_mode {mode: 1}
execute if score #success line matches 1 run function line:line/teleport_towards with storage line:position Nearest
# Mode 2
execute store success score #success line run function line:check_mode {mode: 2}
execute if score #success line matches 1 run function line:position/teleport with storage line:position Nearest
# Mode 3
execute store success score #success line run function line:check_mode {mode: 3}
execute if score #success line matches 1 run kill @s