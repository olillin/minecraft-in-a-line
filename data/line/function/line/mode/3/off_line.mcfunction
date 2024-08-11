execute if score @s line.respawn matches 0 unless entity @s[nbt={Health:0.0f}] run return run function line:position/teleport with storage line:position Nearest
kill @s