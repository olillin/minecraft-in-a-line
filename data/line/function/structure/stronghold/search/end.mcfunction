kill @e[type=marker,tag=line.stronghold_search]
scoreboard players set $stronghold_search_active line 0
advancement revoke @a[tag=line.stronghold_search.host] only minecraft:story/follow_ender_eye
tag @a remove line.stronghold_search.host