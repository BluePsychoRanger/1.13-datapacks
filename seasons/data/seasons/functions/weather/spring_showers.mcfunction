scoreboard players set #maxrand szn_rng 60
function seasons:rng/nextrand

scoreboard players operation szn_Duration szn_weather = #randval szn_rng
scoreboard players add szn_Duration szn_weather 60

scoreboard players set szn_Type szn_weather 0