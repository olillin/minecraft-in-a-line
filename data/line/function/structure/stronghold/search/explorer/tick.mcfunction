execute unless score $stronghold_search_active line matches 2 run return fail
execute if entity @s[tag=line.stronghold_search.kill] run return run kill @s
execute if entity @s[tag=line.stronghold_search.dead] run return run tag @s add line.stronghold_search.kill
# particle explosion
# Check for portal frame
execute if block ~ ~ ~ end_portal_frame run return run function line:structure/stronghold/search/explorer/end
# Summon surrounding explorers
execute positioned ~-1 ~ ~ if block ~ ~ ~ #line:stronghold_air unless entity @e[type=marker,distance=..0.5,tag=line.stronghold_search] run function line:structure/stronghold/search/explorer/summon
execute positioned ~1 ~ ~ if block ~ ~ ~ #line:stronghold_air unless entity @e[type=marker,distance=..0.5,tag=line.stronghold_search] run function line:structure/stronghold/search/explorer/summon
execute positioned ~ ~1 ~ if block ~ ~ ~ #line:stronghold_air unless entity @e[type=marker,distance=..0.5,tag=line.stronghold_search] run function line:structure/stronghold/search/explorer/summon
execute positioned ~ ~-1 ~ if block ~ ~ ~ #line:stronghold_air unless entity @e[type=marker,distance=..0.5,tag=line.stronghold_search] run function line:structure/stronghold/search/explorer/summon
execute positioned ~ ~ ~-1 if block ~ ~ ~ #line:stronghold_air unless entity @e[type=marker,distance=..0.5,tag=line.stronghold_search] run function line:structure/stronghold/search/explorer/summon
execute positioned ~ ~ ~1 if block ~ ~ ~ #line:stronghold_air unless entity @e[type=marker,distance=..0.5,tag=line.stronghold_search] run function line:structure/stronghold/search/explorer/summon
# Don't tick again
tag @s add line.stronghold_search.dead