execute unless score #stronghold_search_active line matches 1 run return fail
execute if entity @s[tag=line.stronghold_search.kill] run return run kill @s
execute if entity @s[tag=line.stronghold_search.dead] run return run tag @s add line.stronghold_search.kill
# particle crit
# Check if stronghold
execute if block ~ ~ ~ #line:stronghold_bricks run return run function line:structure/stronghold/search/caver/end
# Summon surrounding cavers
execute positioned ~1 ~ ~ unless entity @e[type=marker,distance=..0.5,tag=line.stronghold_search] run function line:structure/stronghold/search/caver/summon
execute positioned ~-1 ~ ~ unless entity @e[type=marker,distance=..0.5,tag=line.stronghold_search] run function line:structure/stronghold/search/caver/summon
execute positioned ~ ~1 ~ unless entity @e[type=marker,distance=..0.5,tag=line.stronghold_search] run function line:structure/stronghold/search/caver/summon
execute positioned ~ ~-1 ~ unless entity @e[type=marker,distance=..0.5,tag=line.stronghold_search] run function line:structure/stronghold/search/caver/summon
execute positioned ~ ~ ~1 unless entity @e[type=marker,distance=..0.5,tag=line.stronghold_search] run function line:structure/stronghold/search/caver/summon
execute positioned ~ ~ ~-1 unless entity @e[type=marker,distance=..0.5,tag=line.stronghold_search] run function line:structure/stronghold/search/caver/summon
# Don't tick again
tag @s add line.stronghold_search.dead