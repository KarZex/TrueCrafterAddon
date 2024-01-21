#使用するスコアボード
scoreboard objectives add cool dummy

execute @s[tag=!cool] ~~~ loot replace entity @s slot.armor.feet 0 loot iceboot
scoreboard players set @s[tag=!cool] cool 0
tag @s[tag=!cool] add cool

scoreboard players remove @s[scores={cool=1..}] cool 1

execute @s[scores={cool=0},tag=damaged] ~~~ summon zex:ender_p ~~~
scoreboard players set @s[scores={cool=0},tag=damaged] cool 60

execute @s[scores={cool=1..}] ~~~ fill ^ ^1 ^0.5 ^ ^3 ^0.5 air 0 destroy

tag @s[tag=damaged] remove damaged
