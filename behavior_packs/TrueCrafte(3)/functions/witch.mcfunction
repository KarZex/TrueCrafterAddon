#使用するスコアボード
scoreboard objectives add tp dummy
scoreboard objectives add tpa dummy
scoreboard objectives add witchcreep dummy

scoreboard players set @s[tag=!tp] tp 0
scoreboard players set @s[tag=!tp] tpa 0
tag @s[tag=!tp] add tp

scoreboard players add @s[scores={tp=..99}] tp 1
scoreboard players add @s[scores={tpa=..99}] tpa 1

execute @e[type=pig,r=8,tag=!ed] ~~~ event entity @s become_zombie
execute @e[type=pig,r=8,tag=!ed] ~~~ playsound mob.evocation_illager.prepare_attack @a[r=12] ~~~ 2 2
execute @e[type=pig,r=8,tag=!ed] ~~~ tag @s add ed

execute @e[type=rabbit,r=8,tag=!ed] ~~~ event entity @s killer
execute @e[type=rabbit,r=8,tag=!ed] ~~~ playsound mob.evocation_illager.prepare_attack @a[r=12] ~~~ 2 2
execute @e[type=rabbit,r=8,tag=!ed] ~~~ tag @s add ed

execute @e[r=8,family=monster,type=!witch] ~~~ function buff


scoreboard players set @e[r=8,type=creeper,tag=!witchcreeping] witchcreep 60
execute @e[type=creeper,r=8,tag=!witchcreeping] ~~~ playsound mob.evocation_illager.prepare_attack @a[r=12] ~~~ 2 2
tag @e[r=8,type=creeper] add witchcreeping