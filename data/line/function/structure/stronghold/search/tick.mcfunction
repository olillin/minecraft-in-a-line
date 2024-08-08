# 
execute store result score $e line if entity @e[type=marker,tag=line.stronghold_search]
execute if score $e line matches 10000.. run return run schedule function line:structure/stronghold/search/abort 1
execute if score $e line matches 0 run return run schedule function line:structure/stronghold/search/abort 1
# Tick
execute if score $stronghold_search_active line matches 1 as @e[type=marker,tag=line.stronghold_search.caver] at @s run function line:structure/stronghold/search/caver/tick
execute if score $stronghold_search_active line matches 2 as @e[type=marker,tag=line.stronghold_search.explorer] at @s run function line:structure/stronghold/search/explorer/tick