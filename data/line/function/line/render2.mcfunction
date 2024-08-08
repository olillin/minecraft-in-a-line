# $particle dust{color:[1.0d,1.0d,1.0d],scale:0.5d} $(x) $(y) $(z)
scoreboard players set #count line 0
$execute positioned $(x) $(y) $(z) facing $(ax) $(ay) $(az) positioned ^ ^ ^50 facing ^ ^ ^-1 run function line:line/ray