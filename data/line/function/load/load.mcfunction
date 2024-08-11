scoreboard objectives add line dummy
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true

# Default config
execute unless data storage line:config margin run data modify storage line:config margin set value 1.0d
execute unless data storage line:config mode run data modify storage line:config mode set value 1

# Hardcoded locations
execute unless data storage line:position Platform run data modify storage line:position Platform set value {x: 100.5d, y: 49.5d, z: 0.5d}
execute unless data storage line:position ExitPortal run data modify storage line:position ExitPortal set value {x: 0.5d, y: 65.9d, z: 0.5d}

# Continue load
schedule function line:load/wait_for_player 1