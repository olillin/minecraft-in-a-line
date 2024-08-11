$function line:line/calculate_nearest_point {"positionA": "$(positionA)", "positionB": "$(positionB)"}
$function line:line/render {"positionA": "$(positionA)", "positionB": "$(positionB)"}
execute store success score #on_line line run function line:line/check_if_on
execute if score #on_line line matches 0 if entity @s[gamemode=survival] run function line:line/player_off with storage line:position Nearest
execute if score #on_line line matches 1 if entity @s[gamemode=survival] run function line:line/player_on with storage line:position Nearest