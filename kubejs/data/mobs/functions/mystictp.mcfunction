execute at @s run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.15 750 force
execute positioned 0 80 0 run spreadplayers ~ ~ 1 60 false @s
execute in minecraft:the_end at @a[distance=0..500] run playsound minecraft:entity.enderman.teleport master @a
schedule function mobs:mystictp2 1t replace
