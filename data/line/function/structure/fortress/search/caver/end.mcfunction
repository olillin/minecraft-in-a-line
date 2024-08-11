scoreboard players set #fortress_search_active line 2
kill @e[type=marker,tag=line.fortress_search.caver]
tellraw @a[tag=line.fortress_search.host] {"text": "Looking for blaze spawner...", "color": "yellow"}
function line:structure/fortress/search/explorer/summon