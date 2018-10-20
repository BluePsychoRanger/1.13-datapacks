#
# szn_rng:nextrand

# (ax + c) % m

# calculate a * x
scoreboard players operation #temp szn_rng = #aconst szn_rng
scoreboard players operation #temp szn_rng *= #random szn_rng

# calculate ax + c
scoreboard players operation #temp szn_rng += #cconst szn_rng

# calculate (ax+c) % m
scoreboard players operation #temp szn_rng %= #mconst szn_rng
scoreboard players operation #random szn_rng = #temp szn_rng

# if user has specified a rand range, calculate the final result, stored in #randval
execute if score #maxrand szn_rng matches 1.. run function seasons:rng/calcval
