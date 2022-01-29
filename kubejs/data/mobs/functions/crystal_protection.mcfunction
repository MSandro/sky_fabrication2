execute if entity @e[type=fireball,distance=..3] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["crystal"],DisabledSlots:4144959}
execute if entity @e[type=fireball,distance=..3] run schedule function mobs:crystal_replace 3
execute if entity @e[type=fireball,distance=..3] run summon snowball ~ ~2.5 ~ {Motion:[0.0,-10.0,0.0]}
execute if entity @e[type=fireball,distance=..3] run kill @e[type=fireball,distance=..3]
execute if entity @e[type=dragon_fireball,distance=..3] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["crystal"],DisabledSlots:4144959}
execute if entity @e[type=dragon_fireball,distance=..3] run schedule function mobs:crystal_replace 3
execute if entity @e[type=dragon_fireball,distance=..3] run summon snowball ~ ~2.5 ~ {Motion:[0.0,-10.0,0.0]}
execute if entity @e[type=dragon_fireball,distance=..3] run kill @e[type=dragon_fireball,distance=..2]
