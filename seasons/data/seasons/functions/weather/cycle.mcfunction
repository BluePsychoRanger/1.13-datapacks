execute if score szn_Cycle szn_weather matches 1.. run scoreboard players remove szn_Cycle szn_weather 1

execute if score szn_Cycle szn_weather matches 0 unless score szn_Overwrite szn_weather matches 0..2 run function seasons:weather/set
execute if score szn_Cycle szn_weather matches 0 if score szn_Overwrite szn_weather matches 0..2 run function seasons:weather/special
execute if score szn_Cycle szn_weather matches 0 run function seasons:weather/reset

execute if score szn_Duration szn_weather matches 1.. run function seasons:weather/duration