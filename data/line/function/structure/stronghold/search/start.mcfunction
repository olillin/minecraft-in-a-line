kill @e[type=marker,tag=line.stronghold_search]
scoreboard players set $stronghold_search_active line 1
tellraw @a[tag=line.stronghold_search.host] {"text": "Looking for stronghold wall...", "color": "yellow"}
execute align xz positioned ~0.5 -40.5 ~0.5 run function line:structure/stronghold/search/caver/summon
execute align xz positioned ~0.5 -20.5 ~0.5 run function line:structure/stronghold/search/caver/summon
execute align xz positioned ~0.5 0.5 ~0.5 run function line:structure/stronghold/search/caver/summon
execute align xz positioned ~0.5 20.5 ~0.5 run function line:structure/stronghold/search/caver/summon
execute align xz positioned ~0.5 40.5 ~0.5 run function line:structure/stronghold/search/caver/summon