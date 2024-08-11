tag @s add line.load.host
execute unless data storage line:position Spawn align xyz positioned ~0.5 ~0.5 ~0.5 run function line:position/set {position: "Spawn"}
execute unless data storage line:position Stronghold run function line:structure/stronghold/find_portal
function line:position/await {position: "Stronghold", command: "execute as @a[tag=line.load.host] at @s run function line:load/post_stronghold"}