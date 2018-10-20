time set 100
scoreboard players add szn_Detect szn_day 1
execute if score szn_Detect szn_day matches 25 run scoreboard players add szn_Detect szn_season 1
execute if score szn_Detect szn_day matches 25 run scoreboard players set szn_Detect szn_day 1
execute if score szn_Detect szn_season matches 5 run scoreboard players set szn_Detect szn_season 1


weather clear

scoreboard players set szn_Duration szn_weather 2

scoreboard players set #maxrand szn_rng 8401
function seasons:rng/nextrand
scoreboard players operation szn_Cycle szn_weather = #randval szn_rng
scoreboard players add szn_Cycle szn_weather 600

#SPRING SHOWERS
execute if score szn_Detect szn_season matches 1 if score szn_Detect szn_day matches 4..21 run scoreboard players set #maxrand szn_rng 10
execute if score szn_Detect szn_season matches 1 if score szn_Detect szn_day matches 4..21 run function seasons:rng/nextrand

execute if score szn_Detect szn_season matches 1 if score szn_Detect szn_day matches 4..21 if score #randval szn_rng matches 0..6 run function seasons:weather/spring_showers

#WINTER - RAIN/SNOW STORMS
execute if score szn_Detect szn_season matches 4 if score szn_Detect szn_day matches 4..21 run scoreboard players set #maxrand szn_rng 10
execute if score szn_Detect szn_season matches 4 if score szn_Detect szn_day matches 4..21 run function seasons:rng/nextrand

execute if score szn_Detect szn_season matches 4 if score szn_Detect szn_day matches 4..21 if score #randval szn_rng matches 0..9 run function seasons:weather/winter_storms

#SUMMER - THUNDERSTORMS
execute if score szn_Detect szn_season matches 2 if score szn_Detect szn_day matches 4..21 run scoreboard players set #maxrand szn_rng 10
execute if score szn_Detect szn_season matches 2 if score szn_Detect szn_day matches 4..21 run function seasons:rng/nextrand

execute if score szn_Detect szn_season matches 2 if score szn_Detect szn_day matches 4..21 if score #randval szn_rng matches 0..3 run function seasons:weather/summer_thunder