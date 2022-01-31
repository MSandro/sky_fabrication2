execute as @e[tag=acid_ball] at @s run function mobs:acid_rain_ball
execute in minecraft:the_end positioned 0 80 0 as @e[type=end_crystal,tag=!crystalattack,distance=0..300] at @s run function mobs:crystal_protection
execute as @e[tag=crystalattack] at @s run function mobs:crystal_attack
execute as @e[tag=particles] at @s run function mobs:summon_particles
# By Aquilix