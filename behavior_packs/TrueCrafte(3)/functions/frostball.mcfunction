tp @s[tag=!cast] ~~~ facing @p
tag @s[tag=!cast] add cast

execute @s ~~~ damage @a[r=1] 4 magic entity @e[type=zex:frost,c=1]
execute @s ~~~ effect @a[r=1] slowness 10 1 true


execute @s ~~~ tp @s[name=s] ^^^0.5 ~ ~
execute @s ~~~ tp @s[name=w] ^0.05^^0.5 ~ ~
execute @s ~~~ tp @s[name=e] ^-0.05^^0.5 ~ ~