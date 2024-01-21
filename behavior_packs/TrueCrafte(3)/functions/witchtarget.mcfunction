
execute @p[r=16,rm=6] ~~~ spreadplayers ~~ 0 3 @e[scores={tp=100},type=witch,tag=has.target,c=1]
execute @s[scores={tp=100}] ~~~ particle minecraft:large_explosion ~~~
execute @s[scores={tp=100}] ~~~ playsound mob.endermen.portal @a ~~~ 2 1
scoreboard players set @s[scores={tp=100}] tp 0

execute @s[scores={tpa=100},type=witch,tag=damaged] ~~~ summon zex:w ^^^-5
execute @e[type=zex:w,c=1] ~~~ spreadplayers ~~ 0 3 @e[scores={tpa=100},type=witch,tag=damaged]
execute @s[scores={tpa=100},type=witch,tag=damaged] ~~~ event entity @e[type=zex:w,c=1] A
execute @s[scores={tpa=100},type=witch,tag=damaged] ~~~ particle minecraft:large_explosion ~~~
execute @s[scores={tpa=100},type=witch,tag=damaged] ~~~ playsound mob.endermen.portal @a ~~~ 2 1
scoreboard players set @s[scores={tpa=100},type=witch,tag=damaged] tpa 0

scoreboard players set @s[type=witch,tag=damaged] tp -50
tag @s[tag=damaged] remove damaged
