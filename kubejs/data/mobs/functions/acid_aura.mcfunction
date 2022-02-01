execute if entity @s[scores={timer=2}] run effect give @p slowness 1 4 true
execute if entity @s[scores={timer=2}] run effect give @p blindness 1 0 true
execute if entity @s[scores={timer=6}] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={timer=11}] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={timer=21}] run summon fireball ~4 ~4 ~ {ExplosionPower:1,power:[0.0,-0.4,0.0],Item:{id:"minecraft:ender_pearl",Count:1b,tag:{Enchantments:[{}]}}}
execute if entity @s[scores={timer=21}] run summon fireball ~-4 4 ~ {ExplosionPower:1,power:[0.0,-0.4,0.0],Item:{id:"minecraft:ender_pearl",Count:1b,tag:{Enchantments:[{}]}}}
execute if entity @s[scores={timer=21}] run summon fireball ~ ~4 ~4 {ExplosionPower:1,power:[0.0,-0.4,0.0],Item:{id:"minecraft:ender_pearl",Count:1b,tag:{Enchantments:[{}]}}}
execute if entity @s[scores={timer=21}] run summon fireball ~ ~4 ~-4 {ExplosionPower:1,power:[0.0,-0.4,0.0],Item:{id:"minecraft:ender_pearl",Count:1b,tag:{Enchantments:[{}]}}}
execute if entity @s[scores={timer=26}] run summon fireball ~4 ~4 ~ {ExplosionPower:1,power:[0.0,-0.4,0.0],Item:{id:"minecraft:ender_pearl",Count:1b,tag:{Enchantments:[{}]}}}
execute if entity @s[scores={timer=26}] run summon fireball ~-4 ~4 ~ {ExplosionPower:1,power:[0.0,-0.4,0.0],Item:{id:"minecraft:ender_pearl",Count:1b,tag:{Enchantments:[{}]}}}
execute if entity @s[scores={timer=26}] run summon fireball ~ ~4 ~4 {ExplosionPower:1,power:[0.0,-0.4,0.0],Item:{id:"minecraft:ender_pearl",Count:1b,tag:{Enchantments:[{}]}}}
execute if entity @s[scores={timer=26}] run summon fireball ~ ~4 ~-4 {ExplosionPower:1,power:[0.0,-0.4,0.0],Item:{id:"minecraft:ender_pearl",Count:1b,tag:{Enchantments:[{}]}}}
execute if entity @s[scores={timer=31}] run summon dragon_fireball ~4 ~4 ~ {power:[0.0,-0.4,0.0]}
execute if entity @s[scores={timer=31}] run summon dragon_fireball ~-4 ~4 ~ {power:[0.0,-0.4,0.0]}
execute if entity @s[scores={timer=31}] run summon dragon_fireball ~ ~4 ~4 {power:[0.0,-0.4,0.0]}
execute if entity @s[scores={timer=31}] run summon dragon_fireball ~ ~4 ~-4 {power:[0.0,-0.4,0.0]}
execute if entity @s[scores={timer=199}] run kill @e[type=area_effect_cloud,distance=..50]
# By Aquilix