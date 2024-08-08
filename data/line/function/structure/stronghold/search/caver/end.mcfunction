scoreboard players set $stronghold_search_active line 2
kill @e[type=marker,tag=line.stronghold_search.caver]
tellraw @a[tag=line.stronghold_search.host] {"text": "Looking for end portal...", "color": "yellow"}
function line:structure/stronghold/search/explorer/summon