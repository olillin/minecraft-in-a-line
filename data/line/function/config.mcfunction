tellraw @s {"text": "\n--- Minecraft in a LINE config ---", "color": "green"}
tellraw @s {"text": "Margin: ", "color":"gold", "extra": [{"storage": "line:config", "nbt": "margin", "color": "aqua"}, " [Edit]"], "clickEvent": {"action": "suggest_command", "value": "/data modify storage line:config margin set value "}}
tellraw @s {"text": "Mode 1 teleportation force: ", "color":"gold", "extra": [{"storage": "line:config", "nbt": "teleport_force", "color": "aqua"}, " [Edit]"], "clickEvent": {"action": "suggest_command", "value": "/data modify storage line:config teleport_force set value "}}
tellraw @s {"text": "Mode: ", "color":"gold", "extra": [{"storage": "line:config", "nbt": "mode", "color": "aqua"}, " [Edit]"], "clickEvent": {"action": "suggest_command", "value": "/data modify storage line:config mode set value "}}
tellraw @s {"text": "Modes:", "color": "green"}
tellraw @s {"text": " 1: ", "color": "aqua", "extra": [{"text": "Teleport player towards line", "underlined": true}], "clickEvent": {"action": "run_command", "value": "/data modify storage line:config mode set value 1"}}
tellraw @s {"text": " 2: ", "color": "aqua", "extra": [{"text": "Teleport player to line", "underlined": true}], "clickEvent": {"action": "run_command", "value": "/data modify storage line:config mode set value 2"}}
tellraw @s {"text": " 3: ", "color": "aqua", "extra": [{"text": "Kill player", "underlined": true}], "clickEvent": {"action": "run_command", "value": "/data modify storage line:config mode set value 3"}}
tellraw @s {"text": "\nRun ", "color": "green", "extra": [{"text": "/function line:config", "color": "gold", "underlined": true, "clickEvent": {"action": "run_command", "value": "/function line:config"}}, " to show this menu\n"]}
