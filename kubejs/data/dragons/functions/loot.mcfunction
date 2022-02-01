# By Aquilix
scoreboard objectives add deathtimer dummy
scoreboard players add @e[type=ender_dragon,limit=1] deathtimer 1
execute if entity @e[scores={deathtimer=199},type=ender_dragon] at @e[type=ender_dragon,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot mobs:entities/dragon