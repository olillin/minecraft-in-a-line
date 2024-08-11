# Mode 1
execute store success score #success line run function line:check_mode {mode: 1}
execute if score #success line matches 1 run function line:line/mode/1/off_line
# Mode 2
execute store success score #success line run function line:check_mode {mode: 2}
execute if score #success line matches 1 run function line:line/mode/2/off_line
# Mode 3
execute store success score #success line run function line:check_mode {mode: 3}
execute if score #success line matches 1 run function line:line/mode/3/off_line
