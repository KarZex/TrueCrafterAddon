tp @s[tag=!cast] ~~~ facing @p
tag @s[tag=!cast] add cast

execute @s ~~~ effect @e[r=1,family=!monster] poison 7 0 true
execute @s ~~~ effect @e[r=1,family=!monster] slowness 2 2 true


execute @s ~~~ tp @s ^^0.1^0.8 ~ ~ true