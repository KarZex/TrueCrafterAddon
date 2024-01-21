execute @s[scores={cool=0}] ~~~ effect @s levitation 2 0 true
scoreboard players set @s[scores={cool=0}] cast 40

execute @s[scores={cast=1}] ~~~ playsound mob.blaze.shoot @a[r=16] ~~~ 
execute @s[scores={cast=1}] ~~~ summon zex:iceball ^^1^1 elite s
execute @s[scores={cast=1}] ~~~ summon zex:iceball ^0.5^1^1 elite w
execute @s[scores={cast=1}] ~~~ summon zex:iceball ^-0.5^1^1 elite e


scoreboard players set @s[scores={cool=0}] cool 100

