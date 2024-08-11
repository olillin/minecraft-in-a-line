$execute positioned as @s anchored feet facing $(x) $(y) $(z) run tp @s ^ ^ ^.1
$execute unless function line:line/check_if_on run function line:line/teleport_towards {x: "$(x)", y: "$(y)", z: "$(z)"}
