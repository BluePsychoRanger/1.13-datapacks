###
# 0 = rain
# 1 = thunder
# 2 = snow
###

scoreboard players set #maxrand szn_rng 601
function seasons:rng/nextrand
scoreboard players operation szn_Duration szn_weather = #randval szn_rng
scoreboard players add szn_Duration szn_weather 600

scoreboard players set #maxrand szn_rng 100
function seasons:rng/nextrand
execute if score #randval szn_rng matches 0..79 run scoreboard players set szn_Type szn_weather 0
execute if score #randval szn_rng matches 80.. run scoreboard players set szn_Type szn_weather 1

execute if score szn_Detect szn_season matches 2 if score szn_Detect szn_day matches 4..21 if score #randval szn_rng matches 0..59 run scoreboard players set szn_Type szn_weather 1
execute if score szn_Detect szn_season matches 2 if score szn_Detect szn_day matches 4..21 if score #randval szn_rng matches 60.. run scoreboard players set szn_Type szn_weather 0

execute if score szn_Detect szn_season matches 4 if score szn_Detect szn_day matches 4..21 if score #randval szn_rng matches 0..59 run scoreboard players set szn_Type szn_weather 2
execute if score szn_Detect szn_season matches 4 if score szn_Detect szn_day matches 4..21  if score #randval szn_rng matches 60..94 run scoreboard players set szn_Type szn_weather 0
execute if score szn_Detect szn_season matches 4 if score szn_Detect szn_day matches 4..21  if score #randval szn_rng matches 95.. run scoreboard players set szn_Type szn_weather 1


execute if score szn_Overwrite szn_weather matches 0 run scoreboard players set szn_Type szn_weather 0
execute if score szn_Overwrite szn_weather matches 1 run scoreboard players set szn_Type szn_weather 1
execute if score szn_Overwrite szn_weather matches 2 run scoreboard players set szn_Type szn_weather 2

execute if score szn_Overwrite szn_weather matches 0..2 run scoreboard players reset szn_Overwrite szn_weather