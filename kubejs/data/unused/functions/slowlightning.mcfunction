data merge entity @s {Fire:-1}
scoreboard players add @s rng 1
execute as @s[scores={rng=27}] at @s run summon lightning_bolt ~ ~ ~
execute as @s[scores={rng=39..}] at @s run fill ~-2 ~-1 ~-2 ~2 ~1 ~2 air replace fire
kill @s[scores={rng=39..}]
