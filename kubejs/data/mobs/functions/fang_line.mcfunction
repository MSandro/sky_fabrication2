execute unless entity @s[tag=stop] if entity @s[tag=1] facing entity @e[tag=fang_line,tag=1,limit=1,sort=nearest] feet run summon evoker_fangs ^ ^ ^1.5 {Tags:["linefang","1"]}
execute unless entity @s[tag=stop] if entity @s[tag=2] facing entity @e[tag=fang_line,tag=2,limit=1,sort=nearest] feet run summon evoker_fangs ^ ^ ^1.5 {Tags:["linefang","2"]}
execute unless entity @s[tag=stop] if entity @s[tag=3] facing entity @e[tag=fang_line,tag=3,limit=1,sort=nearest] feet run summon evoker_fangs ^ ^ ^1.5 {Tags:["linefang","3"]}
execute unless entity @s[tag=stop] if entity @s[tag=4] facing entity @e[tag=fang_line,tag=4,limit=1,sort=nearest] feet run summon evoker_fangs ^ ^ ^1.5 {Tags:["linefang","4"]}
execute unless entity @s[tag=stop] if entity @s[tag=5] facing entity @e[tag=fang_line,tag=5,limit=1,sort=nearest] feet run summon evoker_fangs ^ ^ ^1.5 {Tags:["linefang","5"]}
execute unless entity @s[tag=stop] if entity @s[tag=6] facing entity @e[tag=fang_line,tag=6,limit=1,sort=nearest] feet run summon evoker_fangs ^ ^ ^1.5 {Tags:["linefang","6"]}
execute unless entity @s[tag=stop] if entity @s[tag=7] facing entity @e[tag=fang_line,tag=7,limit=1,sort=nearest] feet run summon evoker_fangs ^ ^ ^1.5 {Tags:["linefang","7"]}
execute unless entity @s[tag=stop] if entity @s[tag=8] facing entity @e[tag=fang_line,tag=8,limit=1,sort=nearest] feet run summon evoker_fangs ^ ^ ^1.5 {Tags:["linefang","8"]}
execute unless entity @s[tag=stop] if entity @s[tag=9] facing entity @e[tag=fang_line,tag=9,limit=1,sort=nearest] feet run summon evoker_fangs ^ ^ ^1.5 {Tags:["linefang","9"]}
execute unless entity @s[tag=stop] if entity @s[tag=10] facing entity @e[tag=fang_line,tag=10,limit=1,sort=nearest] feet run summon evoker_fangs ^ ^ ^1.5 {Tags:["linefang","10"]}
execute if entity @s[tag=1] as @e[tag=fang_line,tag=1,limit=1,sort=nearest,distance=..1.4] run kill @s
execute if entity @s[tag=2] as @e[tag=fang_line,tag=2,limit=1,sort=nearest,distance=..1.4] run kill @s
execute if entity @s[tag=3] as @e[tag=fang_line,tag=3,limit=1,sort=nearest,distance=..1.4] run kill @s
execute if entity @s[tag=4] as @e[tag=fang_line,tag=4,limit=1,sort=nearest,distance=..1.4] run kill @s
execute if entity @s[tag=5] as @e[tag=fang_line,tag=5,limit=1,sort=nearest,distance=..1.4] run kill @s
execute if entity @s[tag=6] as @e[tag=fang_line,tag=6,limit=1,sort=nearest,distance=..1.4] run kill @s
execute if entity @s[tag=7] as @e[tag=fang_line,tag=7,limit=1,sort=nearest,distance=..1.4] run kill @s
execute if entity @s[tag=8] as @e[tag=fang_line,tag=8,limit=1,sort=nearest,distance=..1.4] run kill @s
execute if entity @s[tag=9] as @e[tag=fang_line,tag=9,limit=1,sort=nearest,distance=..1.4] run kill @s
execute if entity @s[tag=10] as @e[tag=fang_line,tag=10,limit=1,sort=nearest,distance=..1.4] run kill @s
execute positioned ~ ~-1 ~ at @p[distance=..0.1] run effect give @p instant_damage 1 0 true
tag @s add stop