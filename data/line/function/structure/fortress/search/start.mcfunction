kill @e[type=marker,tag=line.fortress_search]
scoreboard players set $fortress_search_active line 1
tellraw @a[tag=line.fortress_search.host] {"text": "Looking for fortress wall...", "color": "yellow"}
execute align xz positioned ~0.5 60.5 ~0.5 run function line:structure/fortress/search/caver/summon
