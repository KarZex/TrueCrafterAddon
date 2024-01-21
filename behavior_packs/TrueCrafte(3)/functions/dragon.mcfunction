scoreboard objectives add cool dummy
scoreboard objectives add coolp dummy
scoreboard objectives add coole dummy
scoreboard objectives add cast dummy
scoreboard players set @s[tag=!cast] cast 0
scoreboard players set @s[tag=!cast] cool 0
scoreboard players set @s[tag=!cast] coolp 0
scoreboard players set @s[tag=!cast] coole 200
tag @s[tag=!cast] add cast

scoreboard players set @s[tag=fly,scores={coole=..199}] coole 200

scoreboard players remove @s[tag=fly,scores={cool=1..}] cool 1
scoreboard players remove @s[tag=fly,scores={coolp=1..}] coolp 1
scoreboard players remove @s[scores={cast=1..}] cast 1
scoreboard players remove @s[tag=!fly,scores={coole=1..}] coole 1
scoreboard players set @s[scores={cool=0}] cast 10
execute @s[scores={cast=1}] ~~~ playsound mob.blaze.shoot @a[r=170]
execute @s[scores={cast=1}] ~~~ summon zex:enderball ^^^-9 elite s
execute @s[scores={cast=1}] ~~~ summon zex:enderball ^1^^-9 elite w
execute @s[scores={cast=1}] ~~~ summon zex:enderball ^-1^^-9 elite e
scoreboard players set @s[scores={cool=0}] cool 50


execute @s[scores={coolp=120}] ~~~ function pillerattack

execute @s[scores={coolp=80}] ~~~ function pillerattack

execute @s[scores={coolp=40}] ~~~ function pillerattack

execute @s[scores={coolp=0}] ~~~ function pillerattack

scoreboard players set @s[scores={coolp=0}] coolp 600

execute @s[scores={coole=0}] ~~~ function dnder
execute @s[scores={coole=0}] ~~~ scoreboard players set @s coole 200
