# too long without attack
execute if entity @s[scores={attackdelay=..-150},nbt={DragonPhase:0}] unless entity @s[tag=summoned] run data merge entity @s {DragonPhase:1}
execute if entity @s[scores={attackdelay=..-150},nbt=!{DragonPhase:0}] run scoreboard players set @s attackdelay -100
execute if entity @s[scores={attackdelay=..-150,altattack=69}] run scoreboard players set @s attackdelay -100
# blizzard
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=1}] at @a[distance=..700] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=1}] run scoreboard players set @s altattack 6
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=1}] run scoreboard players set @s timer 1
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=1}] run scoreboard players set @s attackdelay 123
execute if entity @s[scores={altattack=6}] in minecraft:the_end at @a[distance=..700] run function mobs:blizzard
execute if entity @s[scores={altattack=6,timer=103}] run scoreboard players set @s altattack 0
# fireball rain
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=2}] run scoreboard players set @s raintime 400
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=2}] run scoreboard players set @s attackdelay 501
execute if entity @s[scores={raintime=1..400}] as @e[type=ender_dragon,sort=furthest,limit=1] at @r[distance=..700] run function mobs:acid_rain_main
execute positioned 0 64 0 if entity @s[scores={raintime=1}] run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace fire
scoreboard players remove @s[scores={raintime=1..}] raintime 1
# central crystal
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=3}] in minecraft:the_end run setblock 0 80 0 structure_block[mode=load]{name:"dragons:crystal_attack",posX:-2,posY:0,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=3}] in minecraft:the_end run setblock 0 81 0 redstone_block
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=3}] in minecraft:the_end run summon end_crystal 0 81 0 {ShowBottom:0b,Tags:["crystalattack"]}
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=3}] at @a[distance=..700] run playsound minecraft:item.totem.use master @a ~ ~ ~ 10 0.5 1
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=3}] at @a[distance=..700] run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 10 0.5 1
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=3}] run scoreboard players set @s attackdelay 302
execute positioned 0 81 0 unless entity @e[tag=crystalattack,distance=..3,limit=1] run fill ~2 ~2 ~2 ~-2 ~-1 ~-2 air replace iron_bars
execute positioned 0 81 0 unless entity @e[tag=crystalattack,distance=..3,limit=1] run kill @e[tag=crystaltarget]
# circle fangs
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=4..5}] at @a[distance=..700] run playsound entity.evoker.prepare_attack master @a ~ ~ ~
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=4..5}] run scoreboard players set @s altattack 1
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=4..5}] run scoreboard players set @s timer 1
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=4..5}] run scoreboard players set @s attackdelay 224
execute if entity @s[scores={altattack=1,timer=16}] in minecraft:the_end positioned 0 80 0 at @a[distance=..700] run function mobs:fang_normal
execute if entity @s[scores={altattack=1,timer=46}] in minecraft:the_end positioned 0 80 0 at @a[distance=..700] run function mobs:fang_normal
execute if entity @s[scores={altattack=1,timer=76}] in minecraft:the_end positioned 0 80 0 at @a[distance=..700] run function mobs:fang_normal
execute if entity @s[scores={altattack=1,timer=106}] in minecraft:the_end positioned 0 80 0 at @a[distance=..700] run function mobs:fang_normal
execute if entity @s[scores={altattack=1,timer=136}] in minecraft:the_end positioned 0 80 0 at @a[distance=..700] run function mobs:fang_normal
execute if entity @s[scores={altattack=1,timer=166}] in minecraft:the_end positioned 0 80 0 at @a[distance=..700] run function mobs:fang_normal
execute if entity @s[scores={altattack=1,timer=196}] in minecraft:the_end positioned 0 80 0 at @a[distance=..700] run function mobs:fang_normal
execute if entity @s[scores={altattack=1,timer=226}] run scoreboard players set @s altattack 0
# endermite ring
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=6}] at @a[distance=..700] run playsound entity.evoker.prepare_attack master @a ~ ~ ~
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=6}] run scoreboard players set @s altattack 2
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=6}] run scoreboard players set @s timer 1
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=6}] run scoreboard players set @s attackdelay 187
execute if entity @s[scores={altattack=2,timer=31..}] in minecraft:the_end positioned 0 80 0 at @a[distance=..700] run function mobs:endermite_ring
execute if entity @s[scores={altattack=2,timer=47..}] run scoreboard players set @s altattack 0
# levitation fireballs
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=7}] at @a[distance=..700] run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=7}] run scoreboard players set @s altattack 3
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=7}] run scoreboard players set @s timer 1
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=7}] run scoreboard players set @s attackdelay 406
execute if entity @s[scores={altattack=3}] at @s run function mobs:levitate
execute if entity @s[scores={altattack=3,timer=399}] run kill @e[tag=levitation_ball]
execute if entity @s[scores={altattack=3,timer=399}] run scoreboard players set @s altattack 0
# lightning
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=8}] at @a[distance=..700] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=8}] run scoreboard players set @s altattack 4
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=8}] run scoreboard players set @s timer 1
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=8}] run scoreboard players set @s attackdelay 228
execute if entity @s[scores={altattack=4}] at @s run function mobs:lightning
execute if entity @s[scores={altattack=4,timer=200}] run kill @e[tag=lightning]
execute if entity @s[scores={altattack=4,timer=200}] run scoreboard players set @s summon 0
execute if entity @s[scores={altattack=4,timer=200}] run scoreboard players set @s altattack 0
# acid aura
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=9..10}] at @a[distance=..700] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=9..10}] run scoreboard players set @s altattack 5
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=9..10}] run scoreboard players set @s timer 1
execute if entity @s[scores={attackdelay=..0},nbt={DragonPhase:1}] if entity @p[scores={rng=9..10}] run scoreboard players set @s attackdelay 201
execute if entity @s[scores={altattack=5}] in minecraft:the_end at @a[distance=..700] run function mobs:acid_aura
execute if entity @s[scores={altattack=5,timer=200}] run scoreboard players set @s altattack 0
# set summon
execute if entity @s[nbt={DragonPhase:3},tag=!summoning] run tag @s add summoning
execute if entity @s[tag=summoning,tag=!phantom,tag=!evoker,tag=!shulker,tag=!stray] if entity @p[scores={rng=10}] run tag @s add evoker
execute if entity @s[tag=summoning,tag=!phantom,tag=!evoker,tag=!shulker,tag=!stray] if entity @p[scores={rng=7..9}] run tag @s add stray
execute if entity @s[tag=summoning,tag=!phantom,tag=!evoker,tag=!shulker,tag=!stray] if entity @p[scores={rng=4..6}] run tag @s add shulker
execute if entity @s[tag=summoning,tag=!phantom,tag=!evoker,tag=!shulker,tag=!stray] if entity @p[scores={rng=1..3}] run tag @s add phantom
execute if entity @s[scores={startsummon=0},nbt={DragonPhase:3}] run scoreboard players set @s startsummon 1
execute if entity @s[scores={startsummon=1},nbt=!{DragonPhase:3}] run scoreboard players set @s altattack 69
execute if entity @s[scores={startsummon=1},nbt=!{DragonPhase:3}] run scoreboard players set @s timer 1
execute if entity @s[scores={startsummon=1},nbt=!{DragonPhase:3}] run scoreboard players set @s altattack 69
execute if entity @s[scores={startsummon=1},nbt=!{DragonPhase:3}] run scoreboard players set @s timer 1
execute if entity @s[tag=summoning] at @s run function mobs:summoning
# generic
execute if entity @s[nbt={HurtTime:1s}] if entity @s[nbt={DragonPhase:0}] if entity @p[scores={rng=10}] at @s run function mobs:mystictp
scoreboard players remove @s attackdelay 1
scoreboard players add @s[scores={timer=1..}] timer 1
scoreboard players set @s[scores={altattack=0}] timer 0
execute if entity @s[nbt={DragonPhase:1}] run data merge entity @s {DragonPhase:0}
# By Aquilix