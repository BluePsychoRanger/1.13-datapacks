scoreboard players remove szn_Duration szn_weather 1

execute if score szn_Type szn_weather matches 0 run weather rain
execute if score szn_Type szn_weather matches 1 run weather thunder
execute if score szn_Duration szn_weather matches 1 run weather clear
execute if score szn_Duration szn_weather matches 1 run scoreboard players reset szn_Type szn_weather