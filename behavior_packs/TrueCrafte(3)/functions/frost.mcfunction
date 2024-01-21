scoreboard objectives add cool dummy
scoreboard objectives add cast dummy
loot replace entity @s[tag=!cast] slot.armor.feet 0 loot iceboot
scoreboard players set @s[tag=!cast] cast 0
tag @s[tag=!cast] add cast

scoreboard players remove @s[scores={cast=1..}] cast 1

loot replace entity @s[tag=!cool] slot.armor.feet 0 loot iceboot
scoreboard players set @s[tag=!cool] cool 0
tag @s[tag=!cool] add cool

scoreboard players remove @s[scores={cool=1..}] cool 1
