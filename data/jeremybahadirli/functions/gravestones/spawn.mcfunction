execute at @s align xyz run summon minecraft:armor_stand ~.5 ~-.2 ~-.5 {Tags:["gravestone-stand"],Invisible:1b,Small:1b,NoGravity:1b,CustomNameVisible:1b,DisabledSlots:4144959}

scoreboard players set @e[tag=gravestone-stand,sort=nearest,limit=1] willRevive 0
scoreboard players operation @e[tag=gravestone-stand,sort=nearest,limit=1] deathID = $global deaths
scoreboard players operation @s deathID = $global deaths
scoreboard players reset @s deaths

tag @s add target
execute at @s run setblock ~ ~ ~-1 minecraft:oak_sign
execute at @s run data modify block ~ ~ ~-1 Text1 set value '{"selector":"@a[tag=target]"}'
execute at @s run data modify entity @e[tag=gravestone-stand,sort=nearest,limit=1] CustomName set from block ~ ~ ~-1 Text1
tag @s remove target

execute at @s run setblock ~ ~ ~-1 minecraft:bedrock
execute at @s run setblock ~ ~-1 ~-1 minecraft:bedrock
execute at @s run setblock ~ ~-1 ~ minecraft:bedrock
execute at @s run setblock ~ ~-1 ~1 minecraft:bedrock
execute at @s run setblock ~ ~ ~ minecraft:soul_lantern