gamemode spectator @s
tag @a remove line.fortress_search.host
tag @s add line.fortress_search.host
tp @s ~ ~ ~
tellraw @s {"text": "Teleporting to nether...", "color": "yellow"}
execute at @s run function line:position/await_loaded {command: "execute as @a[tag=line.load.host] at @s run function line:structure/fortress/in_nether"}