gamemode spectator @s
tag @a remove line.stronghold_search.host
tag @s add line.stronghold_search.host
function line:structure/stronghold/generate
tellraw @s {"text": "Waiting for stronghold to generate...", "color": "yellow"}
execute at @s run function line:position/await_loaded {command: "schedule function line:structure/stronghold/generated 1"}