scoreboard players add @s[scores={timer=95..280}] summon 1
scoreboard players set @s[scores={summon=6}] summon 0
execute if entity @s[scores={timer=2..320}] in minecraft:the_end at @a[distance=..700] run particle witch ~ ~ ~ 0 0 0 0.1 5 force
execute if entity @s[scores={timer=1}] in minecraft:the_end at @a[distance=..700] run effect give @p levitation 10 3 true
execute if entity @s[scores={summon=3}] in minecraft:the_end at @a[distance=..700] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["levitation_ball"],DisabledSlots:4144959}
execute if entity @s[scores={summon=3}] in minecraft:the_end as @e[tag=levitation_ball] at @s run spreadplayers ~ ~ 0 2 false @s
execute if entity @s[scores={summon=4}] in minecraft:the_end as @e[tag=levitation_ball] at @s run summon fireball ~ ~ ~ {ExplosionPower:2,direction:[0.0,0.4,0.0],power:[0.0,0.4,0.0],Tags:["expire"],Item:{id:"minecraft:ender_pearl",Count:1b,tag:{Enchantments:[{}]}}}
execute if entity @s[scores={summon=4}] in minecraft:the_end at @a[distance=..700] run playsound entity.blaze.shoot master @a ~ ~ ~
execute if entity @s[scores={summon=5}] run kill @e[tag=levitation_ball]
execute if entity @s[scores={timer=200}] in minecraft:the_end at @a[distance=..700] run effect give @p slow_falling 8 0 true
scoreboard players add @e[tag=expire] timer 1
kill @e[tag=expire,scores={timer=50}]
execute if entity @s[scores={timer=281}] run scoreboard players set @s summon 0
execute if entity @s[scores={timer=398}] run kill @e[tag=expire]
execute if entity @s[scores={timer=398}] run scoreboard players set @s summon 0