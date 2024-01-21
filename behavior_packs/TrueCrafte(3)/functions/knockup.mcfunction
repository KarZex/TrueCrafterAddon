scoreboard objectives add cast dummy
scoreboard players set @s[tag=!cast] cast 0
tag @s[tag=!cast] add cast
scoreboard players add @s cast 1

effect @s[scores={cast=1..10}] levitation 1 24 true

effect @s[scores={cast=11..}] levitation 0 24 true
tag @s[scores={cast=11..}] remove cast
tag @s[scores={cast=11..}] remove knockup