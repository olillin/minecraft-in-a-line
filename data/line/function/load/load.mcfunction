scoreboard objectives add line dummy
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true
schedule function line:load/wait_for_player 1

# Default config
execute unless data storage line:config margin run data modify storage line:config margin set value 1.0d

# Hardcoded locations
execute unless data storage line:pos Platform run data modify storage line:pos Platform set value {x: 100.5d, y: 49.5d, z: 0.5d}
execute unless data storage line:pos ExitPortal run data modify storage line:pos ExitPortal set value {x: 0.5d, y: 65.9d, z: 0.5d}