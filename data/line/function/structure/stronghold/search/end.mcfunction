kill @e[type=marker,tag=line.stronghold_search]
scoreboard players set #stronghold_search_active line 0
execute as @a[tag=line.stronghold_search.host] run function line:position/teleport with storage line:position Spawn
advancement revoke @a[tag=line.stronghold_search.host] only minecraft:story/follow_ender_eye
gamemode survival @a[tag=line.stronghold_search.host]
tag @a remove line.stronghold_search.host