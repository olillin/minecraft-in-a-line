execute as @a at @s run function line:tick_player

# Search
execute if score #stronghold_search_active line matches 1.. run function line:structure/stronghold/search/tick
execute if score #fortress_search_active line matches 1.. run function line:structure/fortress/search/tick