function line:structure/locate {structure: "fortress"}
tellraw @s [{"text": "Fortress is at ", "color": "yellow"},{"storage":"line:pos","nbt":"Structure.x", "color": "green"}, " ", {"storage":"line:pos","nbt":"Structure.z", "color": "green"}]
function line:structure/teleport with storage line:pos Structure