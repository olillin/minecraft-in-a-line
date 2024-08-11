$data modify storage line:math mode set value $(mode)
execute store success score #success line run data modify storage line:math mode set from storage line:config mode
execute unless score #success line matches 1 run return 1
return fail