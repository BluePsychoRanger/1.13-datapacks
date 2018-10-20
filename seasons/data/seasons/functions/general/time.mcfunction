execute store result score szn_Detect szn_daytime run time query daytime
execute if score szn_Detect szn_daytime matches 0 run scoreboard players add szn_Detect szn_day 1

execute if score szn_Detect szn_daytime matches 0 if score szn_Detect szn_day matches 25 run scoreboard players add szn_Detect szn_season 1
execute if score szn_Detect szn_daytime matches 0 if score szn_Detect szn_day matches 25 run scoreboard players set szn_Detect szn_day 1

execute if score szn_Detect szn_daytime matches 0 if score szn_Detect szn_season matches 5 run scoreboard players set szn_Detect szn_season 1


execute if score szn_Detect szn_season matches 1 if score szn_Detect szn_day matches 1 if score szn_Detect szn_daytime matches ..110 run gamerule doDaylightCycle true
execute if score szn_Detect szn_season matches 3 if score szn_Detect szn_day matches 1 if score szn_Detect szn_daytime matches ..110 run gamerule doDaylightCycle true