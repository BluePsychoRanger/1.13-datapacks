scoreboard players set #maxrand szn_rng 600
function seasons:rng/nextrand
scoreboard players operation szn_Cycle szn_weather = #randval szn_rng

scoreboard players set #maxrand szn_rng 601
function seasons:rng/nextrand
scoreboard players operation szn_Duration szn_weather = #randval szn_rng
scoreboard players add szn_Duration szn_weather 300
scoreboard players operation szn_Duration szn_weather += szn_Cycle szn_weather

scoreboard players set #maxrand szn_rng 100
function seasons:rng/nextrand
execute if score #randval szn_rng matches 0..59 run scoreboard players set szn_Overwrite szn_weather 2
execute if score #randval szn_rng matches 60.. run scoreboard players set szn_Overwrite szn_weather 0