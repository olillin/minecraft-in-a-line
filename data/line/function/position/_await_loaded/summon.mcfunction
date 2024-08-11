tag @s add line
tag @s add line.loaded
data modify storage line:await LoadedContext.x set from entity @s Pos[0]
data modify storage line:await LoadedContext.y set from entity @s Pos[1]
data modify storage line:await LoadedContext.z set from entity @s Pos[2]
data modify storage line:await LoadedContext.dimension set from entity @p Dimension
schedule function line:position/_await_loaded/loop 1