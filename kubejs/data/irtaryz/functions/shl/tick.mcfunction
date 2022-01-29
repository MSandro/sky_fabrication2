##########
#  TICK  #
##########

execute as @e[tag=!SHL.witch,type=minecraft:witch] at @s if entity @e[tag=!SHL.cat,type=minecraft:cat,nbt={CatType:10},distance=..1,limit=1] run function irtaryz:shl/structure_scan
execute as @e[type=minecraft:armor_stand,tag=SHL.as] at @s unless block ~ ~ ~ minecraft:crafting_table run kill @s
execute as @e[type=minecraft:armor_stand,tag=SHL.as] at @s if block ~ ~ ~ minecraft:crafting_table run function irtaryz:shl/set_chest