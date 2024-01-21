tp @s[tag=!cast] ~~~ facing @p
tag @s[tag=!cast] add cast

execute @s ~~~ effect @e[r=1,family=!monster] slowness 2 3
execute @s ~~~ effect @e[r=1,family=!monster] mining_fatigue 2 5


execute @s ~~~ tp @s ^^^0.8 ~ ~ true