#
# szn_rng:load
scoreboard objectives add szn_rng dummy

scoreboard players set #mconst szn_rng 134456
scoreboard players set #aconst szn_rng 8121
scoreboard players set #cconst szn_rng 28411

scoreboard players set #temp szn_rng 0
scoreboard players set #negone szn_rng -1
scoreboard players set #value szn_rng 0

scoreboard players set #maxrand 0
scoreboard players set #randval 0

# seed the generator, or just keep the last value in #random if already seeded
execute store result score #seeded szn_rng run scoreboard players get #random szn_rng
execute if score #seeded szn_rng matches 0 run function seasons:rng/seed
