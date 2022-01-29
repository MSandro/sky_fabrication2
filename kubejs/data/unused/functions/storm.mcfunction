# slow lightning
execute as @s[scores={startattack=0},nbt={DragonPhase:1}] unless entity @s[scores={altattack=4}] unless entity @s[scores={attackdelay=1..}] run scoreboard players set @s timer 1
execute as @s[scores={startattack=0},nbt={DragonPhase:1}] in minecraft:the_end at @a[distance=0..] unless entity @p[scores={altattack=4}] unless entity @s[scores={attackdelay=1..}] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~
execute as @s[scores={startattack=0},nbt={DragonPhase:1}] unless entity @s[scores={altattack=4}] unless entity @s[scores={attackdelay=1..}] run scoreboard players set @s startattack 1
execute as @s[nbt=!{DragonPhase:1}] run scoreboard players set @s startattack 0
execute as @s[scores={timer=5},nbt={DragonPhase:1}] run scoreboard players add @s altattack 1
execute as @s[scores={timer=25},nbt={DragonPhase:1}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["lightning_strike"],DisabledSlots:4144959}
execute as @s[scores={timer=50},nbt={DragonPhase:1}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["lightning_strike"],DisabledSlots:4144959}
execute as @s[scores={timer=75},nbt={DragonPhase:1}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["lightning_strike"],DisabledSlots:4144959}
execute as @s[scores={timer=99},nbt={DragonPhase:1}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["lightning_strike"],DisabledSlots:4144959}
execute as @s[scores={timer=100},nbt={DragonPhase:1}] run data merge entity @s {DragonPhase:0}
execute as @e[type=dragon_fireball,tag=!stormball] in minecraft:the_end at @a[distance=0..] unless entity @e[tag=tornado] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["lightning_strike"],DisabledSlots:4144959}
# tornado
execute as @s[scores={startattack=0},nbt={DragonPhase:1}] if entity @s[scores={altattack=4}] unless entity @e[tag=tornado] run scoreboard players set @s attackdelay 1
execute as @s[scores={startattack=0},nbt={DragonPhase:1}] if entity @s[scores={altattack=4}] unless entity @e[tag=tornado] at @p run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["tornado"],DisabledSlots:4144959}
execute as @s[scores={attackdelay=1..},nbt={DragonPhase:1}] run data merge entity @s {DragonPhase:0}
execute as @s[scores={attackdelay=1..}] run scoreboard players add @s attackdelay 1
execute as @s[scores={attackdelay=2}] run scoreboard players set @s altattack 1
execute as @s[scores={attackdelay=600}] run scoreboard players set @s attackdelay 0
# summon drowned
execute as @s[tag=storm,scores={startsummon=0},nbt={DragonPhase:3}] run scoreboard players set @s startsummon 1
execute as @s[tag=storm,scores={startsummon=1},nbt={DragonPhase:6}] run scoreboard players set @s summon 1
execute as @s[tag=storm,scores={startsummon=1},nbt={DragonPhase:7}] run scoreboard players set @s summon 1
execute as @s[nbt={DragonPhase:6}] run scoreboard players set @s startsummon 0
execute as @s[nbt={DragonPhase:7}] run scoreboard players set @s startsummon 0
execute as @s[tag=storm,scores={summon=2},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] at @e[type=ender_dragon,distance=..30] run summon lightning_bolt
execute as @s[tag=storm,scores={summon=17},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] at @e[type=ender_dragon,distance=..30] run summon lightning_bolt
execute as @s[tag=storm,scores={summon=32},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] at @e[type=ender_dragon,distance=..30] run summon lightning_bolt
execute as @s[tag=storm,scores={summon=46},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["drowned"],DisabledSlots:4144959}
execute as @s[tag=storm,scores={summon=46},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["drowned"],DisabledSlots:4144959}
execute as @s[tag=storm,scores={summon=46,rng=40..},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["drowned"],DisabledSlots:4144959}
execute as @s[tag=storm,scores={summon=46,rng=85..},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["drowned"],DisabledSlots:4144959}
spreadplayers ~ ~ 10 20 false @e[tag=drowned]
execute as @s[tag=storm,scores={summon=47},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] at @e[type=ender_dragon,distance=..30] run summon lightning_bolt
execute as @s[tag=storm,scores={summon=47},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] at @e[tag=drowned] run summon drowned ~ ~ ~ {PersistenceRequired:1b,ActiveEffects:[{Id:12b,Amplifier:0b,Duration:999999,ShowParticles:0b}],Tags:["stormsummon"],Health:24f,Attributes:[{Name:generic.max_health,Base:24}],HandItems:[{id:"minecraft:trident",Count:1b},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:diamond_chestplate",Count:1b},{}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F]}
execute as @s[tag=storm,scores={summon=47},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] at @e[tag=drowned] run summon lightning_bolt
execute as @s[tag=storm,scores={summon=47},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] run kill @e[tag=drowned]
execute as @s[tag=storm,scores={summon=47},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] run data merge entity @s {DragonPhase:0}
execute as @e[tag=stormsummon] run data merge entity @s {Fire:-1}
# generic
execute as @s[tag=storm] run data merge entity @s {CustomName:'{"text":"Storm Dragon","color":"blue","bold":true}'}
scoreboard players add @s timer 1
scoreboard players add @s[scores={summon=1..}] summon 1
stopsound @a * minecraft:entity.ender_dragon.shoot
kill @e[type=dragon_fireball,tag=!stormball]
