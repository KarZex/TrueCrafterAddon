execute @s[scores={cool=0},tag=damaged] ~~~ tag @s add tp
scoreboard players set @s[scores={cool=0},tag=damaged] cool 60

execute @s[tag=tp] ~~~ summon zex:w ^^^-5
execute @s[tag=tp] ~~~ particle minecraft:large_explosion ~~~
execute @e[type=zex:w,c=1] ~~~ spreadplayers ~~ 0 2 @e[tag=tp]
execute @s[tag=tp] ~~~ event entity @e[type=zex:w,c=1] A
execute @s[tag=tp] ~~~ playsound mob.endermen.portal @a ~~~ 2 1

execute @s[tag=tp] ~~~ summon evocation_fang ^^^1
execute @s[tag=tp] ~~~ summon evocation_fang ^1^^1
execute @s[tag=tp] ~~~ summon evocation_fang ^-1^^1

tag @s[tag=damaged] remove damaged
tag @s[tag=tp] remove tp