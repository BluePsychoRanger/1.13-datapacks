function seasons:winter/time
execute if score szn_Detect szn_day matches 1..3 run function seasons:winter/leaves_beg
execute if score szn_Detect szn_day matches 4..21 run function seasons:winter/leaves_mid
execute if score szn_Detect szn_day matches 22..24 run function seasons:winter/leaves_end