function line:structure/locate {structure: "stronghold"}
tellraw @s [{"text": "Stronghold is at ", "color": "yellow"},{"storage":"line:pos","nbt":"Structure.x", "color": "green"}, " ", {"storage":"line:pos","nbt":"Structure.z", "color": "green"}]
function line:structure/teleport with storage line:pos Structure