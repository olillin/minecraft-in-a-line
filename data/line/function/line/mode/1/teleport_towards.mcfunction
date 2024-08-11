$execute positioned as @s anchored feet facing $(x) $(y) $(z) run tp @s ^ ^ ^$(force)
$execute unless function line:line/check_if_on run function line:line/teleport_towards {x: "$(x)", y: "$(y)", z: "$(z)"}
