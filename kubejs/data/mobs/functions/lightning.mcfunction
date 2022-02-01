scoreboard players add @s[scores={timer=40..}] summon 1
scoreboard players add @e[tag=lightning] timer 1
scoreboard players set @s[scores={summon=10}] summon 0
execute if entity @s[scores={summon=1}] in minecraft:the_end at @a[distance=..700] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lightning"],DisabledSlots:4144959}
execute if entity @s[scores={summon=2}] in minecraft:the_end at @a[distance=..700] run spreadplayers ~ ~ 0 2 false @e[tag=lightning,sort=nearest,limit=1]
execute as @e[tag=lightning,scores={timer=19}] at @s run summon lightning_bolt ~ ~ ~
execute as @e[tag=lightning,scores={timer=20}] run kill @s