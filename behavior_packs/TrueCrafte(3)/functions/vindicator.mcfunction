#使用するスコアボード
scoreboard objectives add break dummy
scoreboard objectives add ranged dummy
scoreboard objectives add melee dummy
scoreboard objectives add back dummy


tag @s[tag=!ranged,tag=!melee] add melee


scoreboard players set @s[tag=!ed] break 50
tag @s[tag=!ed] add ed

scoreboard players add @s[scores={break=..49}] break 1

execute @s ~~~ detect ^^1^0.5 air 0 tag @s add onair

