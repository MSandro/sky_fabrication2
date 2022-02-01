# set mob type
execute if entity @s[scores={altattack=69,timer=2}] in minecraft:the_end at @a[distance=0..300] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~
execute if entity @s[scores={altattack=69,timer=2},tag=phantom] run summon armor_stand ~ ~20 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["summon","phantom","1"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=2},tag=phantom] run summon armor_stand ~ ~20 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["summon","phantom","2"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=2},tag=phantom] run summon armor_stand ~ ~20 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["summon","phantom","3"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=2},tag=phantom] run summon armor_stand ~ ~20 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["summon","phantom","4"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=2},tag=shulker] run summon armor_stand 0 60 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["summon","shulker","1"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=2},tag=shulker] run summon armor_stand 0 57 -3 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["summon","shulker","2"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=2},tag=shulker] run summon armor_stand 3 57 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["summon","shulker","3"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=2},tag=shulker] run summon armor_stand 0 57 3 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["summon","shulker","4"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=2},tag=shulker] run summon armor_stand -3 57 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["summon","shulker","5"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=2},tag=stray] run summon armor_stand ~ ~20 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["summon","stray","1"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=2},tag=stray] run summon armor_stand ~ ~20 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["summon","stray","2"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=2},tag=stray] run summon armor_stand ~ ~20 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["summon","stray","3"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=2},tag=stray] run summon armor_stand ~ ~20 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["summon","stray","4"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=2},tag=evoker] run summon armor_stand ~ ~20 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["summon","evoker","1"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=2},tag=evoker] run summon armor_stand ~ ~20 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["summon","evoker","2"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=2},tag=evoker] run summon armor_stand ~ ~20 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["summon","illusioner","3"],DisabledSlots:4144959}
# start summoning
execute if entity @s[scores={altattack=69,timer=3}] run spreadplayers 0 0 5 30 false @e[tag=summon]
execute if entity @s[scores={altattack=69,timer=4}] as @e[tag=phantom] at @s run tp @s ~ ~7 ~
execute if entity @s[scores={altattack=69,timer=5}] as @e[tag=summon,tag=1] at @s positioned as @e[type=ender_dragon,sort=nearest,limit=1] facing entity @s feet run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["particles","1"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=5}] as @e[tag=summon,tag=2] at @s positioned as @e[type=ender_dragon,sort=nearest,limit=1] facing entity @s feet run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["particles","2"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=5}] as @e[tag=summon,tag=3] at @s positioned as @e[type=ender_dragon,sort=nearest,limit=1] facing entity @s feet run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["particles","3"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=5}] as @e[tag=summon,tag=4] at @s positioned as @e[type=ender_dragon,sort=nearest,limit=1] facing entity @s feet run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["particles","4"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=5}] as @e[tag=summon,tag=5] at @s positioned as @e[type=ender_dragon,sort=nearest,limit=1] facing entity @s feet run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["particles","5"],DisabledSlots:4144959}
execute if entity @s[scores={altattack=69,timer=60}] run data merge entity @s {DragonPhase:0}
execute if entity @s[scores={altattack=69,timer=61..}] run tag @s remove shulker
execute if entity @s[scores={altattack=69,timer=61..}] run tag @s remove phantom
execute if entity @s[scores={altattack=69,timer=61..}] run tag @s remove evoker
execute if entity @s[scores={altattack=69,timer=61..}] run tag @s remove stray
execute if entity @s[scores={altattack=69,timer=62}] run scoreboard players set @s attackdelay 100
execute if entity @s[scores={altattack=69,timer=120}] as @e[tag=summon] at @s if entity @s[tag=phantom] run summon phantom ~ ~ ~ {Health:24f,Size:3,Attributes:[{Name:generic.max_health,Base:24},{Name:generic.follow_range,Base:64}]}
execute if entity @s[scores={altattack=69,timer=120}] as @e[tag=summon] at @s if entity @s[tag=shulker] run summon shulker ~ ~ ~ {DeathLootTable:"mobs:entities/shulkey",Health:34f,AttachFace:0b,Color:16b,Attributes:[{Name:generic.max_health,Base:34},{Name:generic.follow_range,Base:64}]}
execute if entity @s[scores={altattack=69,timer=120}] as @e[tag=summon] at @s if entity @s[tag=stray] run summon stray ~ ~ ~ {HandItems:[{id:"minecraft:bow",Count:1b},{}],Health:24f,Attributes:[{Name:generic.max_health,Base:24},{Name:generic.movement_speed,Base:0.3}]}
execute if entity @s[scores={altattack=69,timer=120}] as @e[tag=summon] at @s if entity @s[tag=evoker] run summon evoker ~ ~ ~ {DeathLootTable:"mobs:entities/mage",Health:28f,Attributes:[{Name:generic.max_health,Base:28}]}
execute if entity @s[scores={altattack=69,timer=120}] as @e[tag=summon] at @s if entity @s[tag=illusioner] run summon illusioner
execute if entity @s[scores={altattack=69,timer=120}] in minecraft:the_end at @a[distance=0..300] run playsound minecraft:item.totem.use master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={altattack=69,timer=121}] run kill @e[tag=summon]
execute if entity @s[scores={altattack=69,timer=121}] run kill @e[tag=particles]
execute if entity @s[scores={altattack=69,timer=121}] run tag @s remove summoning
execute if entity @s[scores={altattack=69,timer=121}] run scoreboard players set @s altattack 0
# reset
execute if entity @s[nbt=!{DragonPhase:3}] run scoreboard players set @s startsummon 0
execute if entity @s[scores={startsummon=1},nbt=!{DragonPhase:3}] run scoreboard players set @s startsummon 0