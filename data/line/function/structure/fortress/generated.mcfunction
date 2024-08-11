kill @e[type=marker,tag=line.fortress_search.generated]
tellraw @a[tag=line.fortress_search.host] {"text": "Fortress generated", "color": "green"}
execute at @a[tag=line.fortress_search.host,limit=1] run function line:structure/fortress/search/start
