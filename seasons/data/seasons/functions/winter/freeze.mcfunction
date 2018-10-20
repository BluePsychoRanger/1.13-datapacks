execute at @a[scores={szn_effect=..1200}] align x align z run summon area_effect_cloud ~.5 ~ ~.5 {Tags:[szn_outside],Duration:1,CustomName:"{\"text\":\"szn_outside\"}"}

execute as @e[tag=szn_outside] at @s run spreadplayers ~ ~ 0 1 false @s

execute if score szn_Duration szn_weather matches 1.. if score szn_Type szn_weather matches 2 as @a[scores={szn_effect=..1200}] at @s if entity @e[tag=szn_outside,distance=..2] run scoreboard players add @s szn_effect 2

execute if score szn_Duration szn_weather matches 1.. if score szn_Type szn_weather matches 0 as @a[scores={szn_effect=..1200}] at @s if entity @e[tag=szn_outside,distance=..2] run scoreboard players add @s szn_effect 2

execute if entity @a[scores={szn_effect=..1200}] as @a[scores={szn_effect=..1200}] at @s if entity @e[tag=szn_outside,distance=..2] run scoreboard players add @s szn_effect 1

execute if entity @a[scores={szn_effect=..1200}] as @a[scores={szn_effect=..1200}] at @s if score szn_Detect szn_daytime matches 13000..23000 run scoreboard players add @s szn_effect 1

execute if entity @a[scores={szn_effect=..1200}] as @a[scores={szn_effect=..1200}] at @s if score szn_Detect szn_daytime matches 13000..22000 if entity @e[tag=szn_outside,distance=..2] run scoreboard players add @s szn_effect 1

execute if entity @a[scores={szn_effect=..1200}] run scoreboard players add @a[scores={szn_effect=..1200}] szn_effect 1

execute if entity @a[scores={szn_effect=600..}] as @a[scores={szn_effect=600..}] run title @s actionbar ["",{"text":"You are cold!","color":"blue"}]

execute if entity @a[scores={szn_effect=600..}] as @a[scores={szn_effect=600..}] run effect give @s slowness 2 0 true
execute if entity @a[scores={szn_effect=720..}] as @a[scores={szn_effect=720..}] run effect give @s weakness 2 0 true
execute if entity @a[scores={szn_effect=840..}] as @a[scores={szn_effect=840..}] run effect give @s mining_fatigue 2 0 true
execute if entity @a[scores={szn_effect=900..}] as @a[scores={szn_effect=900..}] run effect give @s wither 2 0 true


execute if entity @a[scores={szn_effect=0..}] as @a[scores={szn_effect=0..}] at @s store result score @s szn_warmth run clone ~-3 ~-2 ~-3 ~3 ~3 ~3 ~-3 ~-2 ~-3 filtered #seasons:warmth force
execute if entity @a[scores={szn_effect=0..}] as @a[scores={szn_effect=0..}] run scoreboard players operation @s szn_warmth *= 2 szn_warmth
execute if entity @a[scores={szn_effect=0..}] as @a[scores={szn_effect=0..}] run scoreboard players operation @s szn_effect -= @s szn_warmth


execute if entity @a[scores={szn_effect=0..}] as @a[scores={szn_effect=0..},nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] run scoreboard players remove @s szn_effect 3