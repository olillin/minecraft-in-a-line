kill @e[type=marker,tag=line.stronghold_search.generated]
tellraw @a[tag=line.stronghold_search.host] {"text": "Stronghold generated", "color": "green"}
execute at @a[tag=line.stronghold_search.host,limit=1] run function line:structure/stronghold/search/start
