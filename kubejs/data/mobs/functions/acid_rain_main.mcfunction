scoreboard players add @s timer 1
execute if entity @s[scores={timer=9}] at @p[distance=..700] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["acid_ball"],DisabledSlots:4144959}
execute if entity @s[scores={timer=9}] at @p[distance=..700] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["acid_ball"],DisabledSlots:4144959}
execute if entity @s[scores={timer=9}] at @p[distance=..700] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["acid_ball"],DisabledSlots:4144959}
execute if entity @s[scores={timer=9}] at @p[distance=..700] positioned ~-15 ~ ~-15 run spreadplayers ~ ~ 20 30 false @e[tag=acid_ball,tag=!seek]
execute if entity @s[scores={timer=9}] at @p[distance=..700] positioned ~-11 ~ ~-11 if entity @p[scores={rng=10}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["acid_ball","seek"],DisabledSlots:4144959}
scoreboard players set @s[scores={timer=9..}] timer 0
