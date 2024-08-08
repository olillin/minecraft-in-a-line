execute if block ~ ~ ~ end_portal_frame[facing=east] facing ~1 ~ ~ run function line:structure/stronghold/search/portal/check_frames
execute if block ~ ~ ~ end_portal_frame[facing=west] facing ~-1 ~ ~ run function line:structure/stronghold/search/portal/check_frames
execute if block ~ ~ ~ end_portal_frame[facing=south] facing ~ ~ ~1 run function line:structure/stronghold/search/portal/check_frames
execute if block ~ ~ ~ end_portal_frame[facing=north] facing ~ ~ ~-1 run function line:structure/stronghold/search/portal/check_frames
