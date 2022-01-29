scoreboard players add @s timer 1
execute as @s[tag=!center,scores={timer=2}] run spreadplayers ~ ~ 2 4 false @s
execute as @s[tag=center,scores={timer=2}] run spreadplayers ~ ~ 0 1 false @s
execute as @s[tag=!fast,scores={timer=3}] run effect give @s levitation 10 10 true
execute as @s[tag=fast,scores={timer=3}] run effect give @s levitation 10 15 true
execute as @s[scores={timer=3..}] run particle dust 0.000 0.031 1.000 2 ~ ~ ~ 0.000 0.031 1.000 0 0 force
execute as @s[scores={timer=3..}] at @s at @p[distance=..0.9] run effect give @p instant_damage 1 0 true
execute as @s[scores={timer=150..}] run kill @s
