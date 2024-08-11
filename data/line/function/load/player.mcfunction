execute unless data storage line:pos Spawn align xyz positioned ~0.5 ~0.5 ~0.5 run function line:set_position {position: "Spawn"}
execute unless data storage line:pos Stronghold run function line:structure/stronghold/find_portal
function line:load/wait_for_stronghold