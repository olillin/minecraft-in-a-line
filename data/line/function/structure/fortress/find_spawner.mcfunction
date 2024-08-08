gamemode spectator @s
tag @a remove line.fortress_search.host
tag @s add line.fortress_search.host
function line:structure/fortress/generate
tellraw @s {"text": "Waiting for fortress to generate...", "color": "yellow"}
kill @e[type=marker,tag=line.fortress_search.generated]
execute at @s run summon marker ~ ~ ~ {Tags: ["line", "line.fortress_search", "line.fortress_search.generated"]}
schedule function line:structure/fortress/wait_for_generation 1
