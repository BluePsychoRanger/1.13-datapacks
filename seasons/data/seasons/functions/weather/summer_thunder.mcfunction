scoreboard players set #maxrand szn_rng 600
function seasons:rng/nextrand
scoreboard players operation szn_Cycle szn_weather = #randval szn_rng

scoreboard players set #maxrand szn_rng 601
function seasons:rng/nextrand
scoreboard players operation szn_Duration szn_weather = #randval szn_rng
scoreboard players add szn_Duration szn_weather 300
scoreboard players operation szn_Duration szn_weather += szn_Cycle szn_weather

scoreboard players set szn_Overwrite szn_weather 1