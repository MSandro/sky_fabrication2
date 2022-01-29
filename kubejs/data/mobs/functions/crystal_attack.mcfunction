scoreboard players add @s timer 1
scoreboard players set @s[scores={timer=120..}] timer 0
execute if entity @s[scores={timer=1}] at @p[distance=..50] run summon armor_stand ~ ~-2 ~ {NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["crystaltarget"],DisabledSlots:4144959}
execute if entity @e[tag=crystaltarget,distance=..50] store result entity @e[tag=crystalattack,limit=1,sort=nearest] BeamTarget.X int 1 run data get entity @e[tag=crystaltarget,limit=1,sort=nearest] Pos[0] 1
execute if entity @e[tag=crystaltarget,distance=..50] store result entity @e[tag=crystalattack,limit=1,sort=nearest] BeamTarget.Y int 1 run data get entity @e[tag=crystaltarget,limit=1,sort=nearest] Pos[1] 1
execute if entity @e[tag=crystaltarget,distance=..50] store result entity @e[tag=crystalattack,limit=1,sort=nearest] BeamTarget.Z int 1 run data get entity @e[tag=crystaltarget,limit=1,sort=nearest] Pos[2] 1
execute unless entity @e[tag=crystaltarget,distance=..50] store result entity @e[tag=crystalattack,limit=1,sort=nearest] BeamTarget.X int 1 run data get entity @s Pos[0] 1
execute unless entity @e[tag=crystaltarget,distance=..50] store result entity @e[tag=crystalattack,limit=1,sort=nearest] BeamTarget.Y int 1 run data get entity @s Pos[1] 1
execute unless entity @e[tag=crystaltarget,distance=..50] store result entity @e[tag=crystalattack,limit=1,sort=nearest] BeamTarget.Z int 1 run data get entity @s Pos[2] 1
execute if entity @s[scores={timer=119}] at @e[tag=crystaltarget,sort=nearest,limit=1] run summon tnt ~ ~3 ~ {Fuse:0}
execute if entity @s[scores={timer=119}] at @e[tag=crystaltarget,sort=nearest,limit=1] run kill @e[tag=crystaltarget]