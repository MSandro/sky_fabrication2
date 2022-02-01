kill @s[scores={timer=2..}]
scoreboard players add @s timer 1
execute as @s[scores={timer=1}] if entity @p[scores={rng=1..9}] run summon fireball ~ ~50 ~ {ExplosionPower:2,direction:[0.02,-0.1,0.02],power:[0.02,-0.1,0.02],Item:{id:"minecraft:ender_pearl",Count:1b,tag:{Enchantments:[{}]}}}
execute as @s[scores={timer=1}] if entity @p[scores={rng=10}] run summon dragon_fireball ~ ~50 ~ {direction:[0.02,-0.1,0.02],power:[0.02,-0.1,0.02]}