execute if entity @e[type=ender_dragon,tag=!customized,tag=!normal] as @e[type=ender_dragon,tag=!customized,tag=!normal] run function dragons:setup
execute if entity @e[tag=customized,nbt=!{DragonPhase:9}] as @e[tag=customized,nbt=!{DragonPhase:9}] at @s run function dragons:attacks
execute if entity @e[tag=customized] run function dragons:armor_stand_controls
execute store result score @a deathtest if entity @e[type=ender_dragon]
execute if entity @p[scores={deathtest=8}] at @p run function dragons:loot
scoreboard objectives add rng minecraft.custom:minecraft.jump
scoreboard objectives add deathtest dummy
scoreboard players add @a rng 1
scoreboard players set @a[scores={rng=11..}] rng 1
