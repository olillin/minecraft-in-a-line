$function line:line/calculate_nearest_point {"positionA": "$(positionA)", "positionB": "$(positionB)"}
$function line:line/render {"positionA": "$(positionA)", "positionB": "$(positionB)"}
execute if entity @s[gamemode=survival] run function line:line/check_if_on