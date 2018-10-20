execute if entity @a[scores={szn_mineLeavesO=1..}] run scoreboard players set #maxrand szn_rng 10
execute if entity @a[scores={szn_mineLeavesO=1..}] run function seasons:rng/nextrand

execute if entity @a[scores={szn_mineLeavesB=1..}] run scoreboard players set #maxrand szn_rng 10
execute if entity @a[scores={szn_mineLeavesB=1..}] run function seasons:rng/nextrand

execute if entity @a[scores={szn_mineLeavesD=1..}] run scoreboard players set #maxrand szn_rng 10
execute if entity @a[scores={szn_mineLeavesD=1..}] run function seasons:rng/nextrand


execute if entity @a[scores={szn_mineLeavesO=1..}] if score #randval szn_rng matches 0..1 at @a[scores={szn_mineLeavesO=1..}] if entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:oak_leaves",Count:1b}},distance=..7] run data merge entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:oak_leaves",Count:1b}},limit=1,distance=..7] {Item:{id:"minecraft:stick",Count:2b}}
execute if entity @a[scores={szn_mineLeavesO=1..}] if score #randval szn_rng matches 2..4 at @a[scores={szn_mineLeavesO=1..}] if entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:oak_leaves",Count:1b}},distance=..7] run data merge entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:oak_leaves",Count:1b}},limit=1,distance=..7] {Item:{id:"minecraft:stick",Count:1b}}

execute if entity @a[scores={szn_mineLeavesB=1..}] if score #randval szn_rng matches 0..1 at @a[scores={szn_mineLeavesB=1..}] if entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:birch_leaves",Count:1b}},distance=..7] run data merge entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:birch_leaves",Count:1b}},limit=1,distance=..7] {id:"minecraft:stick",Item:{Count:2b}}
execute if entity @a[scores={szn_mineLeavesB=1..}] if score #randval szn_rng matches 2..4 at @a[scores={szn_mineLeavesB=1..}] if entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:birch_leaves",Count:1b}},distance=..7] run data merge entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:birch_leaves",Count:1b}},limit=1,distance=..7] {id:"minecraft:stick",Item:{Count:1b}}

execute if entity @a[scores={szn_mineLeavesD=1..}] if score #randval szn_rng matches 0..1 at @a[scores={szn_mineLeavesD=1..}] if entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:dark_oak_leaves",Count:1b}},distance=..7] run data merge entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:dark_oak_leaves",Count:1b}},limit=1,distance=..7] {id:"minecraft:stick",Item:{Count:2b}}
execute if entity @a[scores={szn_mineLeavesD=1..}] if score #randval szn_rng matches 2..4 at @a[scores={szn_mineLeavesD=1..}] if entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:dark_oak_leaves",Count:1b}},distance=..7] run data merge entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:dark_oak_leaves",Count:1b}},limit=1,distance=..7] {id:"minecraft:stick",Item:{Count:1b}}



execute if entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:oak_leaves"}}] run tag @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:oak_leaves"}}] add szn_checked
execute if entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:birch_leaves"}}] run tag @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:birch_leaves"}}] add szn_checked
execute if entity @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:dark_oak_leaves"}}] run tag @e[type=item,tag=!szn_checked,nbt={Item:{id:"minecraft:dark_oak_leaves"}}] add szn_checked