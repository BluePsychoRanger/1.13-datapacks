#seconds clock
scoreboard players add szn_Clock szn_timer 1

execute if score szn_Clock szn_timer matches 20 run function seasons:general/clock_second
execute if score szn_Clock szn_timer matches 20.. run scoreboard players set szn_Clock szn_timer 0


#ticks clock
function seasons:general/time
execute if score szn_Detect szn_season matches 1 run function seasons:spring/tick
execute if score szn_Detect szn_season matches 2 run function seasons:summer/tick
execute if score szn_Detect szn_season matches 3 run function seasons:autumn/tick
execute if score szn_Detect szn_season matches 4 run function seasons:winter/tick
function seasons:blocks/revert
function seasons:general/sleep/check


execute if entity @a[scores={szn_mineLeavesO=1..}] run scoreboard players reset @a[scores={szn_mineLeavesO=1..}] szn_mineLeavesO
execute if entity @a[scores={szn_mineLeavesB=1..}] run scoreboard players reset @a[scores={szn_mineLeavesB=1..}] szn_mineLeavesB
execute if entity @a[scores={szn_mineLeavesD=1..}] run scoreboard players reset @a[scores={szn_mineLeavesD=1..}] szn_mineLeavesD
execute if entity @a[scores={szn_mineLeavesJ=1..}] run scoreboard players reset @a[scores={szn_mineLeavesJ=1..}] szn_mineLeavesJ

execute if entity @a[scores={szn_mineWheat=1..}] run scoreboard players reset @a[scores={szn_mineWheat=1..}] szn_mineWheat