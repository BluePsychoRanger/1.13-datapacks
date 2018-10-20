execute if score szn_Detect szn_daytime matches 0..110 run gamerule doDaylightCycle true
execute if score szn_Detect szn_daytime matches 12000..12004 run gamerule doDaylightCycle false

execute if score szn_Detect szn_daytime matches 0..11998 run time add 1
execute if score szn_Detect szn_daytime matches 12000..23998 run scoreboard players add szn_Winter szn_timer 1
execute if score szn_Winter szn_timer matches 3 run time add 2
execute if score szn_Winter szn_timer matches 3 run scoreboard players set szn_Winter szn_timer 0