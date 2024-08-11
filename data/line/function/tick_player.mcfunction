execute unless data storage line:pos Portal if dimension the_nether if block ~ ~ ~ nether_portal align xyz positioned ~.5 ~.5 ~.5 run function line:set_position {position: "Portal"}

execute if dimension overworld run function line:line/create_line {"positionA": "Spawn", "positionB": "Stronghold"}
execute if dimension the_nether run function line:line/create_line {"positionA": "Portal", "positionB": "Fortress"}
execute if dimension the_end run function line:line/create_line {"positionA": "Platform", "positionB": "ExitPortal"}