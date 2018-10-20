#FREEZING WATER
execute at @e[tag=szn_global] align x align z positioned ~.5 ~-1 ~.5 if block ~ ~ ~ packed_ice unless entity @e[tag=szn_ice,distance=0] unless entity @e[tag=szn_packed_ice,distance=0] run summon area_effect_cloud ~ ~ ~ {Tags:[szn_block,szn_blue_ice],CustomName:"{\"text\":\"szn_blue_ice\"}",Duration:36000}
execute at @e[tag=szn_global] if block ~ ~-1 ~ packed_ice run setblock ~ ~-1 ~ blue_ice


execute at @e[tag=szn_global] align x align z positioned ~.5 ~-1 ~.5 if block ~ ~ ~ packed_ice unless entity @e[tag=szn_ice,distance=0] run summon area_effect_cloud ~ ~ ~ {Tags:[szn_block,szn_packed_ice],CustomName:"{\"text\":\"szn_packed_ice\"}",Duration:36000}
execute at @e[tag=szn_global] if block ~ ~-1 ~ ice run setblock ~ ~-1 ~ packed_ice


execute at @e[tag=szn_global] if block ~1 ~-1 ~ water run summon area_effect_cloud ~1 ~-1 ~ {Tags:[szn_block,szn_ice],CustomName:"{\"text\":\"szn_ice\"}",Duration:36000}
execute at @e[tag=szn_global] if block ~1 ~-1 ~ water run setblock ~1 ~-1 ~ ice

execute at @e[tag=szn_global] if block ~-1 ~-1 ~ water run summon area_effect_cloud ~-1 ~-1 ~ {Tags:[szn_block,szn_ice],CustomName:"{\"text\":\"szn_ice\"}",Duration:36000}
execute at @e[tag=szn_global] if block ~-1 ~-1 ~ water run setblock ~-1 ~-1 ~ ice

execute at @e[tag=szn_global] if block ~ ~-1 ~1 water run summon area_effect_cloud ~ ~-1 ~1 {Tags:[szn_block,szn_ice],CustomName:"{\"text\":\"szn_ice\"}",Duration:36000}
execute at @e[tag=szn_global] if block ~ ~-1 ~1 water run setblock ~ ~-1 ~1 ice

execute at @e[tag=szn_global] if block ~ ~-1 ~-1 water run summon area_effect_cloud ~ ~-1 ~-1 {Tags:[szn_block,szn_ice],CustomName:"{\"text\":\"szn_ice\"}",Duration:36000}
execute at @e[tag=szn_global] if block ~ ~-1 ~-1 water run setblock ~ ~-1 ~-1 ice


#UNFERTILIZE FARMLAND
execute at @e[tag=szn_global] run fill ~ ~ ~ ~ ~-2 ~ farmland[moisture=0] replace farmland
