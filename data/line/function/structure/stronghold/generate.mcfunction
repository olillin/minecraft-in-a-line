function line:structure/locate {structure: "stronghold"}
tellraw @s [{"text": "Stronghold is at ", "color": "yellow"},{"storage":"line:position","nbt":"Structure.x", "color": "green"}, " ", {"storage":"line:position","nbt":"Structure.z", "color": "green"}]
function line:structure/teleport with storage line:position Structure