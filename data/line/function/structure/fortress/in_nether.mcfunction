function line:structure/fortress/generate
tellraw @s {"text": "Waiting for fortress to generate...", "color": "yellow"}
execute at @s run function line:position/await_loaded {command: "schedule function line:structure/fortress/generated 1"}