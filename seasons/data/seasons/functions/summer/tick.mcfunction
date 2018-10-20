function seasons:summer/time
execute if score szn_Detect szn_day matches 4..9 run function seasons:summer/wheat_beg
execute if score szn_Detect szn_day matches 10..21 run function seasons:summer/wheat_mid
execute if score szn_Detect szn_day matches 22..24 run function seasons:summer/wheat_end