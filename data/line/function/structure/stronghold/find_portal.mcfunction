gamemode spectator @s
tag @a remove line.stronghold_search.host
tag @s add line.stronghold_search.host
function line:structure/stronghold/generate
tellraw @s {"text": "Waiting for stronghold to generate...", "color": "yellow"}
kill @e[type=marker,tag=line.stronghold_search.generated]
execute at @s run summon marker ~ ~ ~ {Tags: ["line", "line.stronghold_search", "line.stronghold_search.generated"]}
schedule function line:structure/stronghold/wait_for_generation 1