execute if score szn_Detect szn_season matches 1 run advancement grant @a only seasons:display/show_spring
execute if score szn_Detect szn_season matches 1 run advancement revoke @a only seasons:display/show_winter
execute if score szn_Detect szn_season matches 1 run advancement revoke @a only seasons:display/show_summer
execute if score szn_Detect szn_season matches 1 run advancement revoke @a only seasons:display/show_autumn

execute if score szn_Detect szn_season matches 2 run advancement grant @a only seasons:display/show_summer
execute if score szn_Detect szn_season matches 2 run advancement revoke @a only seasons:display/show_winter
execute if score szn_Detect szn_season matches 2 run advancement revoke @a only seasons:display/show_spring
execute if score szn_Detect szn_season matches 2 run advancement revoke @a only seasons:display/show_autumn

execute if score szn_Detect szn_season matches 3 run advancement grant @a only seasons:display/show_autumn
execute if score szn_Detect szn_season matches 3 run advancement revoke @a only seasons:display/show_winter
execute if score szn_Detect szn_season matches 3 run advancement revoke @a only seasons:display/show_spring
execute if score szn_Detect szn_season matches 3 run advancement revoke @a only seasons:display/show_summer

execute if score szn_Detect szn_season matches 4 run advancement grant @a only seasons:display/show_winter
execute if score szn_Detect szn_season matches 4 run advancement revoke @a only seasons:display/show_spring
execute if score szn_Detect szn_season matches 4 run advancement revoke @a only seasons:display/show_summer
execute if score szn_Detect szn_season matches 4 run advancement revoke @a only seasons:display/show_autumn


execute if score szn_Detect szn_season matches 1 if entity @a[scores={szn_effect=-1000..}] run scoreboard players set @a[scores={szn_effect=-1000..}] szn_effect 0
execute if score szn_Detect szn_season matches 3 if entity @a[scores={szn_effect=-1000..}] run scoreboard players set @a[scores={szn_effect=-1000..}] szn_effect 0