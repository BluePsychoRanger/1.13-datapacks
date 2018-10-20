#COARSE DIRT
execute at @e[tag=szn_global] if block ~ ~-1 ~ dirt if block ~ 6 ~ stone if block ~ 2 ~ bedrock run summon area_effect_cloud ~ ~-1 ~ {Tags:[szn_block,szn_coarse_dirt],CustomName:"{\"text\":\"szn_coarse_dirt\"}",Duration:36000}
execute at @e[tag=szn_global] if block ~ ~-1 ~ dirt if block ~ 6 ~ stone if block ~ 2 ~ bedrock run setblock ~ ~-1 ~ coarse_dirt

#DIRT
execute at @e[tag=szn_global] if block ~ ~-1 ~ grass_block if block ~ 8 ~ stone if block ~ 1 ~ bedrock run setblock ~ ~-1 ~ dirt

#DEAD BUSH
execute at @e[tag=szn_global] if block ~ ~-1 ~ grass if block ~ 13 ~ andesite if block ~ 1 ~ bedrock run summon area_effect_cloud ~ ~-1 ~ {Tags:[szn_block,szn_dead_bush],CustomName:"{\"text\":\"szn_dead_bush\"}",Duration:36000}
execute at @e[tag=szn_global] if block ~ ~-1 ~ grass if block ~ 13 ~ andesite if block ~ 1 ~ bedrock run setblock ~ ~-1 ~ dead_bush
