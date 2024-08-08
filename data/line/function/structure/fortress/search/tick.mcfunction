# 
execute store result score $e line if entity @e[type=marker,tag=line.fortress_search]
execute if score $e line matches 10000.. run return run schedule function line:structure/fortress/search/abort 1
execute if score $e line matches 0 run return run schedule function line:structure/fortress/search/abort 1
# Tick
execute if score $fortress_search_active line matches 1 as @e[type=marker,tag=line.fortress_search.caver] at @s run function line:structure/fortress/search/caver/tick
execute if score $fortress_search_active line matches 2 as @e[type=marker,tag=line.fortress_search.explorer] at @s run function line:structure/fortress/search/explorer/tick