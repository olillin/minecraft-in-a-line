kill @e[type=marker,tag=line.fortress_search]
scoreboard players set #fortress_search_active line 0
execute as @a[tag=line.fortress_search.host] in overworld run function line:position/teleport with storage line:position Spawn
advancement revoke @a[tag=line.fortress_search.host] only minecraft:nether/find_fortress
gamemode survival @a[tag=line.fortress_search.host]
tag @a remove line.fortress_search.host