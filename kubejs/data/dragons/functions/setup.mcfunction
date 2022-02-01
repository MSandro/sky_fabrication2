# By Aquilix
scoreboard objectives add startattack dummy
scoreboard objectives add startsummon dummy
scoreboard objectives add timer dummy
scoreboard objectives add attackdelay dummy
scoreboard objectives add altattack dummy
scoreboard objectives add summon dummy
scoreboard objectives add raintime dummy
scoreboard players set @s attackdelay 100
scoreboard players set @s startsummon 0
data merge entity @s {Tags:["customized"],Attributes:[{Name:generic.max_health,Base:400},{Name:generic.movement_speed,Base:0.75}]}
execute as @s[nbt={Health:200f}] run data merge entity @s {Health:400f}
