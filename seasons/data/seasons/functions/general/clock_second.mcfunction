function seasons:general/change
function seasons:blocks/global
function seasons:weather/cycle

execute if score szn_Detect szn_season matches 1 run function seasons:spring/animals
execute if score szn_Detect szn_season matches 2 run function seasons:summer/thirst
execute if score szn_Detect szn_season matches 2 run function seasons:summer/zombie_check
execute if score szn_Detect szn_season matches 4 run function seasons:winter/freeze
execute if score szn_Detect szn_season matches 4 run function seasons:winter/skeleton_check

execute if entity @a[scores={szn_death=1..}] run function seasons:general/death



#CHECK OCEAN
execute if entity @a[tag=szn_checkOcean] as @a[tag=szn_checkOcean] run function seasons:general/ocean_check/reset

execute if entity @a[scores={szn_timer=1..}] run function seasons:general/ocean_check/remove