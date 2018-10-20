scoreboard players set #maxrand szn_rng 8401
function seasons:rng/nextrand
scoreboard players operation szn_Cycle szn_weather = #randval szn_rng
scoreboard players add szn_Cycle szn_weather 600