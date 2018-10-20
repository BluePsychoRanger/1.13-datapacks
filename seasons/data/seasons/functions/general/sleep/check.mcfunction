execute if entity @p[nbt={Sleeping:1b}] run scoreboard players add szn_Detect szn_sleep 1
execute if score szn_Detect szn_sleep matches 1.. if entity @a[nbt={Sleeping:0b}] run scoreboard players set szn_Detect szn_sleep 0

execute if score szn_Detect szn_sleep matches 99 run function seasons:general/sleep/trigger

