kill @e[type=marker,tag=line.fortress_search]
scoreboard players set $fortress_search_active line 0
advancement revoke @a[tag=line.fortress_search.host] only minecraft:nether/find_fortress
tag @a remove line.fortress_search.host