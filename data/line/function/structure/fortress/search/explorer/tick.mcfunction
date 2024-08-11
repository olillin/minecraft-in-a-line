execute unless score #fortress_search_active line matches 2 run return fail
execute if entity @s[tag=line.fortress_search.kill] run return run kill @s
execute if entity @s[tag=line.fortress_search.dead] run return run tag @s add line.fortress_search.kill
# particle explosion
# Check for spawner
execute if block ~ ~ ~ spawner run return run function line:structure/fortress/search/explorer/end
# Summon surrounding explorers
execute positioned ~-1 ~ ~ if block ~ ~ ~ #line:fortress_air unless entity @e[type=marker,distance=..0.5,tag=line.fortress_search] run function line:structure/fortress/search/explorer/summon
execute positioned ~1 ~ ~ if block ~ ~ ~ #line:fortress_air unless entity @e[type=marker,distance=..0.5,tag=line.fortress_search] run function line:structure/fortress/search/explorer/summon
execute positioned ~ ~1 ~ if block ~ ~ ~ #line:fortress_air unless entity @e[type=marker,distance=..0.5,tag=line.fortress_search] run function line:structure/fortress/search/explorer/summon
execute positioned ~ ~-1 ~ if block ~ ~ ~ #line:fortress_air unless entity @e[type=marker,distance=..0.5,tag=line.fortress_search] run function line:structure/fortress/search/explorer/summon
execute positioned ~ ~ ~-1 if block ~ ~ ~ #line:fortress_air unless entity @e[type=marker,distance=..0.5,tag=line.fortress_search] run function line:structure/fortress/search/explorer/summon
execute positioned ~ ~ ~1 if block ~ ~ ~ #line:fortress_air unless entity @e[type=marker,distance=..0.5,tag=line.fortress_search] run function line:structure/fortress/search/explorer/summon
# Don't tick again
tag @s add line.fortress_search.dead