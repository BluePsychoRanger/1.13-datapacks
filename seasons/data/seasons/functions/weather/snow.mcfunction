weather rain

#summon AEC
execute if entity @a[tag=!szn_inBiome] at @a[tag=!szn_inBiome] align x align z run summon area_effect_cloud ~.5 ~ ~.5 {Tags:[szn_snowfall],Duration:1,CustomName:"{\"text\":\"szn_snowfall\"}"}
execute if entity @a[tag=!szn_inBiome] at @a[tag=!szn_inBiome] align x align z run summon area_effect_cloud ~.5 ~ ~.5 {Tags:[szn_snowfall],Duration:1,CustomName:"{\"text\":\"szn_snowfall\"}"}
execute if entity @a[tag=!szn_inBiome] at @a[tag=!szn_inBiome] align x align z run summon area_effect_cloud ~.5 ~ ~.5 {Tags:[szn_snowfall],Duration:1,CustomName:"{\"text\":\"szn_snowfall\"}"}


#kill nearby AEC (prevents doubling effects)
execute if entity @e[tag=szn_snowfall] as @e[tag=szn_snowfall,limit=1,sort=random] at @s as @e[tag=szn_snowfall,distance=0.1..64] run kill @s

#disperse AEC
execute if entity @e[tag=szn_snowfall] at @a as @e[tag=szn_snowfall,distance=..1,limit=2] run spreadplayers ~ ~ 32 64 false @s
execute if entity @e[tag=szn_snowfall] at @a as @e[tag=szn_snowfall,distance=..1] run spreadplayers ~ ~ 32 128 false @s



execute if entity @e[tag=szn_snowfall] at @e[tag=szn_snowfall] unless block ~ ~-1 ~ snow run summon area_effect_cloud ~ ~ ~ {Tags:[szn_snow],CustomName:"{\"text\":\"szn_snow\"}",Duration:6000}

execute if entity @e[tag=szn_snowfall] at @e[tag=szn_snowfall] align x align z positioned ~.5 ~-1 ~.5 if block ~ ~ ~ snow[layers=1] unless entity @e[tag=szn_snow,distance=0] run summon area_effect_cloud ~ ~ ~ {Tags:[szn_snow],CustomName:"{\"text\":\"szn_snow\"}",Duration:6000}

execute if entity @e[tag=szn_snowfall] at @e[tag=szn_snowfall] align x align z positioned ~.5 ~-1 ~.5 if block ~ ~ ~ snow[layers=1] if entity @e[tag=szn_snow,distance=0] run data merge entity @e[tag=szn_snow,distance=0,limit=1,sort=nearest] {Tags:[szn_snow+]}


execute if entity @e[tag=szn_snowfall] at @e[tag=szn_snowfall] if block ~ ~-1 ~ snow[layers=5] run setblock ~ ~-1 ~ snow[layers=7]
execute if entity @e[tag=szn_snowfall] at @e[tag=szn_snowfall] if block ~ ~-1 ~ snow[layers=3] run setblock ~ ~-1 ~ snow[layers=5]
execute if entity @e[tag=szn_snowfall] at @e[tag=szn_snowfall] if block ~ ~-1 ~ snow[layers=1] run setblock ~ ~-1 ~ snow[layers=3]

execute if entity @e[tag=szn_snowfall] at @e[tag=szn_snowfall] unless block ~ ~-1 ~ snow run setblock ~ ~ ~ snow