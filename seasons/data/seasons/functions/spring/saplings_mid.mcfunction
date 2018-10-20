execute if entity @a[scores={szn_mineLeavesO=1..}] run scoreboard players set #maxrand szn_rng 5
execute if entity @a[scores={szn_mineLeavesO=1..}] run function seasons:rng/nextrand

execute if entity @a[scores={szn_mineLeavesB=1..}] run scoreboard players set #maxrand szn_rng 5
execute if entity @a[scores={szn_mineLeavesB=1..}] run function seasons:rng/nextrand

execute if entity @a[scores={szn_mineLeavesD=1..}] run scoreboard players set #maxrand szn_rng 5
execute if entity @a[scores={szn_mineLeavesD=1..}] run function seasons:rng/nextrand

execute if entity @a[scores={szn_mineLeavesJ=1..}] run scoreboard players set #maxrand szn_rng 5
execute if entity @a[scores={szn_mineLeavesJ=1..}] run function seasons:rng/nextrand


execute if entity @a[scores={szn_mineLeavesO=1..}] if score #randval szn_rng matches 1 at @a[scores={szn_mineLeavesO=1..}] if entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:oak_sapling",Count:1b}},distance=..7] run data merge entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:oak_sapling",Count:1b}},limit=1,distance=..7] {Item:{Count:2b}}

execute if entity @a[scores={szn_mineLeavesB=1..}] if score #randval szn_rng matches 1 at @a[scores={szn_mineLeavesB=1..}] if entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:birch_sapling",Count:1b}},distance=..7] run data merge entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:birch_sapling",Count:1b}},limit=1,distance=..7] {Item:{Count:2b}}

execute if entity @a[scores={szn_mineLeavesD=1..}] if score #randval szn_rng matches 1 at @a[scores={szn_mineLeavesD=1..}] if entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:dark_oak_sapling",Count:1b}},distance=..7] run data merge entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:dark_oak_sapling",Count:1b}},limit=1,distance=..7] {Item:{Count:2b}}

execute if entity @a[scores={szn_mineLeavesJ=1..}] if score #randval szn_rng matches 1 at @a[scores={szn_mineLeavesJ=1..}] if entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:jungle_sapling",Count:1b}},distance=..7] run data merge entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:jungle_sapling",Count:1b}},limit=1,distance=..7] {Item:{Count:2b}}


tag @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:oak_sapling"}}] add szn_checked
tag @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:birch_sapling"}}] add szn_checked
tag @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:dark_oak_sapling"}}] add szn_checked
tag @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:jungle_sapling"}}] add szn_checked