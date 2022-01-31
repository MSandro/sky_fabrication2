execute if entity @p[scores={rng=1}] run tag @e[type=ender_dragon,tag=!frost,tag=!acid,tag=!fire,tag=!mystic,tag=!normal,limit=1,sort=nearest] add storm
execute if entity @p[scores={rng=2}] run tag @e[type=ender_dragon,tag=!storm,tag=!acid,tag=!fire,tag=!mystic,tag=!normal,limit=1,sort=nearest] add frost
execute as @e[tag=frost] run data merge entity @s {CustomName:'{"text":"Frost Dragon","color":"aqua","bold":true}'}
execute if entity @p[scores={rng=3}] run tag @e[type=ender_dragon,tag=!frost,tag=!storm,tag=!fire,tag=!mystic,tag=!normal,limit=1,sort=nearest] add acid
execute as @e[tag=acid] run data merge entity @s {CustomName:'{"text":"Acid Dragon","color":"light_purple","bold":true}'}
execute if entity @p[scores={rng=4}] run tag @e[type=ender_dragon,tag=!storm,tag=!acid,tag=!storm,tag=!mystic,tag=!normal,limit=1,sort=nearest] add fire
execute as @e[tag=fire] run data merge entity @s {CustomName:'{"text":"Fire Dragon","color":"gold","bold":true}'}
execute if entity @p[scores={rng=5}] run tag @e[type=ender_dragon,tag=!frost,tag=!acid,tag=!fire,tag=!storm,tag=!normal,limit=1,sort=nearest] add mystic
execute as @e[type=ender_dragon,tag=!checked] run tag @e[type=ender_dragon,tag=!frost,tag=!storm,tag=!fire,tag=!mystic,tag=!acid,sort=nearest,limit=8] add checked
scoreboard objectives add startattack dummy
scoreboard players set @e[type=ender_dragon] startattack 0
scoreboard objectives add startsummon dummy
scoreboard players set @e[type=ender_dragon] startsummon 0
scoreboard objectives add timer dummy
scoreboard objectives add attackdelay dummy
scoreboard objectives add altattack dummy
scoreboard players add summon dummy
scoreboard players set @e[tag=storm] altattack 1
scoreboard players set @e[tag=mystic] attackdelay 1
