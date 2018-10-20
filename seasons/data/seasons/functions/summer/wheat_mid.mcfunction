execute if entity @a[scores={szn_mineWheat=1..}] run scoreboard players set #maxrand szn_rng 10
execute if entity @a[scores={szn_mineWheat=1..}] run function seasons:rng/nextrand

execute if entity @a[scores={szn_mineWheat=1..}] if score #randval szn_rng matches 0..4 at @a[scores={szn_mineWheat=1..}] if entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:wheat",Count:1b}},distance=..7] run data merge entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:wheat",Count:1b}},limit=1,distance=..7] {Item:{Count:2b}}
execute if entity @a[scores={szn_mineWheat=1..}] if score #randval szn_rng matches 5..6 at @a[scores={szn_mineWheat=1..}] if entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:wheat",Count:1b}},distance=..7] run data merge entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:wheat",Count:1b}},limit=1,distance=..7] {Item:{Count:3b}}

execute if entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:wheat"}}] run tag @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:wheat"}}] add szn_checked