scoreboard objectives add creep dummy


scoreboard players remove @s[tag=!witched,scores={witchcreep=1..}] witchcreep 1
execute @s[tag=!witched,scores={witchcreep=0}] ~~~ summon lightning_bolt ~~~
tag @s[tag=!witched,scores={witchcreep=0}] add witched

execute @p ~~~ effect @e[type=creeper,r=16,rm=5] invisibility 1 1 false
execute @p ~~~ effect @e[type=creeper,rm=17] invisibility 0 1 false
execute @p ~~~ effect @e[type=creeper,r=4] invisibility 0 1 false
execute @p ~~~ effect @e[type=creeper,r=16,rm=5] fire_resistance 1 1 true
execute @p ~~~ effect @e[type=creeper,rm=17] fire_resistance 0 1 true
execute @p ~~~ effect @e[type=creeper,r=4] fire_resistance 0 1 true

scoreboard players set @s[tag=!Ced] creep 3
tag @s[tag=!Ced] add Ced

event entity @s[scores={creep=0}] minecraft:despawning