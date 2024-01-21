tp @s[tag=!cast] ~~~ facing @p
tag @s[tag=!cast] add cast

execute @s ~~~ detect ~~-2~ air 0 tag @s add onair

execute @s ~~~ execute @e[r=2,type=!ender_dragon] ~~~ event entity @e[c=1,type=zex:fireball_d] minecraft:explode
execute @s[tag=!onair] ~~~ event entity @s minecraft:explode




execute @s ~~~ tp @s ^^^2 ~ ~

tag @s remove onair
