#
# szn_rng:seed
execute store result score #seedval szn_rng run data get entity @r Pos[0]
execute if score #seedval szn_rng matches ..0 run scoreboard players operation #seedval szn_rng *= #negone szn_rng
scoreboard players operation #seedval szn_rng %= #mconst szn_rng
scoreboard players operation #random szn_rng = #seedval szn_rng
