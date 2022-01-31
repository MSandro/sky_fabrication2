# particles
execute at @a[scores={rng=4}] run particle minecraft:end_rod ~3 ~ ~ 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=4}] run particle minecraft:end_rod ~ ~ ~3 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=4}] run particle minecraft:end_rod ~3 ~1.5 ~4 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=4}] run particle minecraft:end_rod ~-3 ~1.5 ~-4 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=4}] run particle minecraft:end_rod ~3 ~1.5 ~-4 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=4}] run particle minecraft:end_rod ~-3 ~1.5 ~4 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=3}] run particle minecraft:end_rod ~-3 ~ ~ 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=3}] run particle minecraft:end_rod ~ ~ ~-3 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=3}] run particle minecraft:end_rod ~ ~-1.5 ~3 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=3}] run particle minecraft:end_rod ~3 ~-1.5 ~ 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=3}] run particle minecraft:end_rod ~3 ~-1.5 ~3 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=3}] run particle minecraft:end_rod ~-3 ~-1.5 ~-3 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=3}] run particle minecraft:end_rod ~3 ~-1.5 ~-3 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=3}] run particle minecraft:end_rod ~-3 ~-1.5 ~3 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=3}] run particle minecraft:end_rod ~-3 ~-1.5 ~ 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=3}] run particle minecraft:end_rod ~ ~-1.5 ~-3 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=2}] run particle minecraft:end_rod ~-2 ~-4 ~ 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=2}] run particle minecraft:end_rod ~ ~-4 ~-2 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=2}] run particle minecraft:end_rod ~ ~-4 ~2 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=2}] run particle minecraft:end_rod ~2 ~-4 ~ 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=2}] run particle minecraft:end_rod ~2 ~-4 ~2 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=2}] run particle minecraft:end_rod ~-2 ~-4 ~-2 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=2}] run particle minecraft:end_rod ~2 ~-4 ~-2 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=2}] run particle minecraft:end_rod ~-2 ~-4 ~2 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=2}] run particle minecraft:end_rod ~-2 ~-4 ~ 0.01 0.01 0.01 0.08 3 normal
execute at @a[scores={rng=2}] run particle minecraft:end_rod ~ ~-4 ~-2 0.01 0.01 0.01 0.08 3 normal
# general
scoreboard players add @e[tag=tornado] timer 1
execute as @s[scores={timer=2}] in minecraft:the_end at @a[distance=0..] run effect give @p levitation 4 9 true
execute as @s[scores={timer=90..328}] in minecraft:the_end at @a[distance=0..] run effect give @p levitation 14 252 true
execute as @s[scores={timer=90..328}] in minecraft:the_end at @a[distance=0..] if block ~ ~-1 ~ end_stone run scoreboard players set @s timer 329
execute as @s[scores={timer=90..328}] in minecraft:the_end at @a[distance=0..] if block ~ ~-1 ~ end_stone run effect clear @p levitation
execute as @s[scores={timer=90..328}] in minecraft:the_end at @a[distance=0..] if block ~ ~-1 ~ obsidian run scoreboard players set @s timer 329
execute as @s[scores={timer=90..328}] in minecraft:the_end at @a[distance=0..] if block ~ ~-1 ~ obsidian run effect clear @p levitation
execute as @s[scores={timer=90..328}] in minecraft:the_end at @a[distance=0..] if block ~ ~-1 ~ bedrock run scoreboard players set @s timer 329
execute as @s[scores={timer=90..328}] in minecraft:the_end at @a[distance=0..] if block ~ ~-1 ~ bedrock run effect clear @p levitation
execute as @s[scores={timer=90..328}] in minecraft:the_end at @a[distance=0..] if block ~ ~-1 ~ iron_bars run scoreboard players set @s timer 329
execute as @s[scores={timer=90..328}] in minecraft:the_end at @a[distance=0..] if block ~ ~-1 ~ iron_bars run effect clear @p levitation
execute as @s[scores={timer=90..328}] in minecraft:the_end at @a[distance=0..] run attribute @p minecraft:generic.knockback_resistance base set 1
execute as @s[scores={timer=330}] run kill @e[tag=tornadorain]
execute as @s[scores={timer=332}] in minecraft:the_end at @a[distance=0..] run effect clear @p levitation
execute as @s[scores={timer=332}] in minecraft:the_end at @a[distance=0..] run attribute @p minecraft:generic.knockback_resistance base set 0
execute as @s[scores={timer=332}] in minecraft:the_end at @a[distance=0..] run effect give @p jump_boost 10 255 true
execute as @s[scores={timer=333}] run kill @s
# damage
execute as @e[tag=tornadorain] at @s run function mobs:tornadorain
execute as @s[scores={timer=105}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=105}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=105}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=120}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=120}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=120}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=135}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=135}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=135}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=150}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=150}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=150}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=150}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast","center"],DisabledSlots:4144959}
execute as @s[scores={timer=165}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=165}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=165}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=180}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=180}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=180}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=195}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=195}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=195}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=195}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","center","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=210}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=210}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=210}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=225}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=225}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=225}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=240}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=240}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=240}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=240}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain","center","fast"],DisabledSlots:4144959}
execute as @s[scores={timer=255}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain"],DisabledSlots:4144959}
execute as @s[scores={timer=255}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain"],DisabledSlots:4144959}
execute as @s[scores={timer=255}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain"],DisabledSlots:4144959}
execute as @s[scores={timer=270}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain"],DisabledSlots:4144959}
execute as @s[scores={timer=270}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain"],DisabledSlots:4144959}
execute as @s[scores={timer=270}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain"],DisabledSlots:4144959}
execute as @s[scores={timer=295}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain"],DisabledSlots:4144959}
execute as @s[scores={timer=295}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain"],DisabledSlots:4144959}
execute as @s[scores={timer=295}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain"],DisabledSlots:4144959}
execute as @s[scores={timer=310}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain"],DisabledSlots:4144959}
execute as @s[scores={timer=310}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain"],DisabledSlots:4144959}
execute as @s[scores={timer=310}] in minecraft:the_end at @a[distance=0..] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["tornadorain"],DisabledSlots:4144959}