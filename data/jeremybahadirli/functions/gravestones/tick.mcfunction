execute as @a[gamemode=survival] unless score @s initialSpawn matches 1 run function jeremybahadirli:gravestones/initial-spawn

execute as @a run scoreboard players operation $global deaths += @s deaths
execute as @a if score @s deaths matches 1 run function jeremybahadirli:gravestones/spawn

execute at @e[tag=gravestone-stand,scores={willRevive=0}] run particle minecraft:ash ~ ~1 ~1 0.5 0.5 1 0 1
execute at @e[tag=gravestone-stand,scores={willRevive=1}] run particle minecraft:smoke ~ ~1 ~1 0.5 0.5 1 0 2

execute as @e[tag=gravestone-stand,scores={willRevive=0}] at @s if entity @e[type=minecraft:potion,nbt={Item:{tag:{undying-potion:1b}}},distance=..4] run function jeremybahadirli:gravestones/activate-grave
execute as @e[tag=gravestone-stand,scores={willRevive=1}] at @s run function jeremybahadirli:gravestones/check-player
