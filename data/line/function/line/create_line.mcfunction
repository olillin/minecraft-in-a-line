$title @s[gamemode=!survival] actionbar [{"text":"A: $(positionA) ", "color": "yellow"}, {"nbt": "$(positionA)", "storage": "line:pos"} , ", B: $(positionB) ", {"nbt": "$(positionB)", "storage": "line:pos"}]
$function line:line/calculate_nearest_point {"positionA": "$(positionA)", "positionB": "$(positionB)"}
$function line:line/render {"positionA": "$(positionA)", "positionB": "$(positionB)"}
execute if entity @s[gamemode=survival] run function line:line/check_if_on