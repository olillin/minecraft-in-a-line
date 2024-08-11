scoreboard players set #loaded line 0
$execute in $(dimension) positioned $(x) $(y) $(z) if loaded ~ ~ ~ if loaded ~32 ~ ~ if loaded ~-32 ~ ~ if loaded ~ ~ ~32 if loaded ~ ~ ~-32 if entity @e[type=marker,tag=line.loaded,distance=..5] run scoreboard players set #loaded line 1
execute unless score #loaded line matches 1 run return run schedule function line:position/_await_loaded/loop 1 replace
kill @e[type=marker,tag=line.loaded]
$$(command)