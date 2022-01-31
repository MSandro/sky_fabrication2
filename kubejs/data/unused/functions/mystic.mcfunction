# normal fangs
execute as @s[nbt={DragonPhase:1}] unless entity @s[scores={attackdelay=1..}] in minecraft:the_end at @a[distance=0..500] run playsound minecraft:entity.evoker.prepare_attack master @a
execute as @s[nbt={DragonPhase:1}] unless entity @s[scores={attackdelay=1..}] unless entity @p[scores={rng=4..5}] run scoreboard players set @s timer 1
execute as @s[nbt={DragonPhase:1}] unless entity @s[scores={attackdelay=1..}] run scoreboard players set @s attackdelay 1
execute as @s[scores={timer=1},nbt={DragonPhase:1}] in minecraft:the_end at @a[distance=0..300] run function mobs:fang_normal
execute as @s[scores={timer=31},nbt={DragonPhase:0}] in minecraft:the_end at @a[distance=0..300] run function mobs:fang_normal
execute as @s[scores={timer=61},nbt={DragonPhase:0}] in minecraft:the_end at @a[distance=0..300] run function mobs:fang_normal
execute as @s[scores={timer=91},nbt={DragonPhase:0}] in minecraft:the_end at @a[distance=0..300] run function mobs:fang_normal
execute as @s[scores={timer=121},nbt={DragonPhase:0}] in minecraft:the_end at @a[distance=0..300] run function mobs:fang_normal
# line fangs
execute as @s[nbt={DragonPhase:1}] unless entity @s[scores={attackdelay=2..}] if entity @p[scores={rng=4..5}] run scoreboard players set @s altattack 1
execute as @s[scores={altattack=1}] in minecraft:the_end at @a[distance=0..300] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["fang_line","1"],DisabledSlots:4144959}
execute as @s[scores={altattack=16}] in minecraft:the_end at @a[distance=0..300] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["fang_line","2"],DisabledSlots:4144959}
execute as @s[scores={altattack=31}] in minecraft:the_end at @a[distance=0..300] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["fang_line","3"],DisabledSlots:4144959}
execute as @s[scores={altattack=46}] in minecraft:the_end at @a[distance=0..300] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["fang_line","4"],DisabledSlots:4144959}
execute as @s[scores={altattack=61}] in minecraft:the_end at @a[distance=0..300] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["fang_line","5"],DisabledSlots:4144959}
execute as @s[scores={altattack=76}] in minecraft:the_end at @a[distance=0..300] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["fang_line","6"],DisabledSlots:4144959}
execute as @s[scores={altattack=91}] in minecraft:the_end at @a[distance=0..300] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["fang_line","7"],DisabledSlots:4144959}
execute as @s[scores={altattack=106}] in minecraft:the_end at @a[distance=0..300] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["fang_line","8"],DisabledSlots:4144959}
execute as @s[scores={altattack=121}] in minecraft:the_end at @a[distance=0..300] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["fang_line","9"],DisabledSlots:4144959}
execute as @s[scores={altattack=136}] in minecraft:the_end at @a[distance=0..300] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["fang_line","10"],DisabledSlots:4144959}
# summon mystics
execute as @s[scores={startsummon=0},nbt={DragonPhase:3}] run scoreboard players set @s startsummon 1
execute as @s[scores={startsummon=1},nbt={DragonPhase:6}] run scoreboard players set @s summon 1
execute as @s[scores={startsummon=1},nbt={DragonPhase:7}] run scoreboard players set @s summon 1
execute as @s[nbt={DragonPhase:6}] run scoreboard players set @s startsummon 0
execute as @s[nbt={DragonPhase:7}] run scoreboard players set @s startsummon 0
execute as @s[scores={summon=3},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] in minecraft:the_end at @a[distance=0..300] run playsound minecraft:entity.evoker.prepare_summon master @a
execute as @s[scores={summon=3},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] run summon armor_stand ~ ~30 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mage"],DisabledSlots:4144959}
execute as @s[scores={summon=3},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] run summon armor_stand ~ ~30 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mage"],DisabledSlots:4144959}
execute as @s[scores={summon=3},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] if entity @s[scores={rng=70..}] run summon armor_stand ~ ~30 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mage","illusion"],DisabledSlots:4144959}
execute as @s[scores={summon=4},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] at @s run spreadplayers ~ ~ 8 15 false @e[tag=mage]
execute unless entity @s[scores={summon=1..3}] at @e[tag=mage] run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 0.1 40 force
execute at @e[tag=mage,scores={summon=120..}] run playsound minecraft:item.totem.use master @a ~ ~ ~ 1 0.7
execute at @e[tag=mage,tag=!illusion,scores={summon=120..}] run summon minecraft:evoker ~ ~ ~ {DeathLootTable:"mobs:entities/mage"}
execute at @e[tag=illusion,scores={summon=120..}] run summon minecraft:illusioner
execute at @e[tag=illusion,scores={summon=120..}] as @e[tag=illusioner,distance=..100] run data merge entity @s {DeathLootTable:"mobs:entities/mage",Spellticks:0}
execute as @s[scores={summon=60},nbt=!{DragonPhase:1},nbt=!{DragonPhase:0}] run data merge entity @s {DragonPhase:0}
# generic
scoreboard players add @s[scores={timer=1..}] timer 1
scoreboard players add @s[scores={altattack=1..}] altattack 1
scoreboard players add @s[scores={summon=1..}] summon 1
scoreboard players add @s[scores={attackdelay=1..}] attackdelay 1
scoreboard players set @s[scores={attackdelay=270}] attackdelay 0
scoreboard players set @s[scores={summon=128}] summon 0
kill @e[tag=mage,scores={summon=120..}]
execute as @s[nbt={DragonPhase:1}] run data merge entity @s {DragonPhase:0}
execute as @s[nbt={DragonPhase:9}] run kill @e[tag=mage]
execute as @s[tag=mystic] run data merge entity @s {CustomName:'{"text":"Mystical Dragon","color":"dark_purple","bold":true}'}
execute as @s[nbt={HurtTime:1s}] unless entity @s[nbt={DragonPhase:3}] if entity @p[scores={rng=5}] run function mobs:mystictp