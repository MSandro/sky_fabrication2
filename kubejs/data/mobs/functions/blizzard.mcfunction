scoreboard players add @s[scores={timer=1..100}] summon 1
execute if entity @s[scores={timer=2}] run effect give @p slowness 5 3 true
execute if entity @s[scores={timer=2}] run effect give @p wither 5 1 true
execute if entity @s[scores={timer=2}] run effect give @p weakness 60 0 true
execute if entity @s[scores={timer=3}] run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["snow_layer"],DisabledSlots:4144959}
execute if entity @s[scores={timer=4..99}] run spreadplayers ~ ~ 0 3 false @e[tag=snow_layer,distance=..5,limit=1,sort=nearest]
execute if entity @s[scores={timer=4..99}] at @e[tag=snow_layer] unless block ~ ~-1 ~ snow unless block ~ ~-1 ~ air run setblock ~ ~ ~ snow
execute if entity @s[scores={timer=4..99}] run setblock ~ ~ ~ snow
execute if entity @s[scores={summon=1}] run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["snowball"],DisabledSlots:4144959}
execute if entity @s[scores={summon=1}] run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["snowball"],DisabledSlots:4144959}
execute if entity @s[scores={summon=1}] run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["snowball"],DisabledSlots:4144959}
execute if entity @s[scores={summon=2}] at @a positioned ~-1.5 ~ ~-1.5 run spreadplayers ~ ~ 0.2 3 false @e[tag=snowball,distance=..5,limit=3,sort=nearest]
execute if entity @s[scores={summon=3}] as @e[tag=snowball] at @s run tp @s ~ ~6 ~
execute if entity @s[scores={summon=3}] at @e[tag=snowball] run summon snowball ~ ~ ~ {Motion:[0.1,-0.2,0.1]}
execute if entity @s[scores={summon=3}] run kill @e[tag=snowball]
scoreboard players set @s[scores={summon=3}] summon 0
execute if entity @s[scores={timer=101}] run effect give @p slowness 55 0 true
execute if entity @s[scores={timer=101}] run kill @e[tag=snowball]
execute if entity @s[scores={timer=101}] run kill @e[tag=snow_layer]
execute if entity @s[scores={timer=101}] run scoreboard players set @s summon 0
