execute unless score #fortress_search_active line matches 1 run return fail
execute if entity @s[tag=line.fortress_search.kill] run return run kill @s
execute if entity @s[tag=line.fortress_search.dead] run return run tag @s add line.fortress_search.kill
# particle crit
# Check if fortress
execute if block ~ ~ ~ #line:fortress_bricks run return run function line:structure/fortress/search/caver/end
# Summon surrounding cavers
execute positioned ~1 ~ ~ unless entity @e[type=marker,distance=..0.5,tag=line.fortress_search] run function line:structure/fortress/search/caver/summon
execute positioned ~-1 ~ ~ unless entity @e[type=marker,distance=..0.5,tag=line.fortress_search] run function line:structure/fortress/search/caver/summon
execute positioned ~ ~1 ~ unless entity @e[type=marker,distance=..0.5,tag=line.fortress_search] run function line:structure/fortress/search/caver/summon
execute positioned ~ ~-1 ~ unless entity @e[type=marker,distance=..0.5,tag=line.fortress_search] run function line:structure/fortress/search/caver/summon
execute positioned ~ ~ ~1 unless entity @e[type=marker,distance=..0.5,tag=line.fortress_search] run function line:structure/fortress/search/caver/summon
execute positioned ~ ~ ~-1 unless entity @e[type=marker,distance=..0.5,tag=line.fortress_search] run function line:structure/fortress/search/caver/summon
# Don't tick again
tag @s add line.fortress_search.dead