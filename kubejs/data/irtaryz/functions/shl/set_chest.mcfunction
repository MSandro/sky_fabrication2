
setblock ~ ~1 ~ minecraft:brewing_stand
execute if block ~ ~ ~ minecraft:crafting_table if block ~ ~ ~1 minecraft:cauldron run summon minecraft:armor_stand ~ ~ ~-1 {Tags:["SHL.set_chest"]}
execute if block ~ ~ ~ minecraft:crafting_table if block ~ ~ ~-1 minecraft:cauldron run summon minecraft:armor_stand ~ ~ ~1 {Tags:["SHL.set_chest"]}
execute if block ~ ~ ~ minecraft:crafting_table if block ~1 ~ ~ minecraft:cauldron run summon minecraft:armor_stand ~-1 ~ ~ {Tags:["SHL.set_chest"]}
execute if block ~ ~ ~ minecraft:crafting_table if block ~-1 ~ ~ minecraft:cauldron run summon minecraft:armor_stand ~1 ~ ~ {Tags:["SHL.set_chest"]}
execute as @e[tag=SHL.set_chest] at @s if block ~ ~ ~1 air run setblock ~ ~ ~ minecraft:chest[facing=south]{LootTable:"irtaryz:swamp_hut"}
execute as @e[tag=SHL.set_chest] at @s if block ~ ~ ~-1 air run setblock ~ ~ ~ minecraft:chest[facing=north]{LootTable:"irtaryz:swamp_hut"}
execute as @e[tag=SHL.set_chest] at @s if block ~1 ~ ~ air run setblock ~ ~ ~ minecraft:chest[facing=east]{LootTable:"irtaryz:swamp_hut"}
execute as @e[tag=SHL.set_chest] at @s if block ~-1 ~ ~ air run setblock ~ ~ ~ minecraft:chest[facing=west]{LootTable:"irtaryz:swamp_hut"}
kill @s
kill @e[tag=SHL.set_chest]