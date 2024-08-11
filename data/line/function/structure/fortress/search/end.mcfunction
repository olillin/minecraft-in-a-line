kill @e[type=marker,tag=line.fortress_search]
scoreboard players set #fortress_search_active line 0
advancement revoke @a[tag=line.fortress_search.host] only minecraft:nether/find_fortress
execute as @a[tag=line.stronghold_search.host] in overworld run function line:teleport with storage line:pos Spawn
gamemode survival @a[tag=line.fortress_search.host]
tag @a remove line.fortress_search.host