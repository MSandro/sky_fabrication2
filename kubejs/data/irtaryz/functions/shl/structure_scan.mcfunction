
tag @s add SHL.witch
tag @e[type=minecraft:cat,nbt={CatType:10},distance=..1,limit=1] add SHL.cat
execute align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~ ~ ~1 {Tags:["SHL.as","SHL.as_temp"],Marker:1b,Invisible:1b}
execute align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~ ~ ~-1 {Tags:["SHL.as","SHL.as_temp"],Marker:1b,Invisible:1b}
execute align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~1 ~ ~ {Tags:["SHL.as","SHL.as_temp"],Marker:1b,Invisible:1b}
execute align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~-1 ~ ~ {Tags:["SHL.as","SHL.as_temp"],Marker:1b,Invisible:1b}
execute align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~1 ~ ~1 {Tags:["SHL.as","SHL.as_temp"],Marker:1b,Invisible:1b}
execute align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~1 ~ ~-1 {Tags:["SHL.as","SHL.as_temp"],Marker:1b,Invisible:1b}
execute align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~-1 ~ ~1 {Tags:["SHL.as","SHL.as_temp"],Marker:1b,Invisible:1b}
execute align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~-1 ~ ~-1 {Tags:["SHL.as","SHL.as_temp"],Marker:1b,Invisible:1b}