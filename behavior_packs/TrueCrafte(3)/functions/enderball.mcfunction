tp @s[tag=!cast] ~~~ facing @p
tag @s[tag=!cast] add cast

execute @s ~~~ detect ~~~ air 0 tag @s add onair
execute @s ~~~ detect ~~~ obsidian 0 tag @s add onair
execute @s ~~~ detect ~~~ bedrock 0 tag @s add onair
execute @s ~~~ detect ~~~ end_stone 0 tag @s add onair

execute @s ~~~ damage @a[r=1] 4 magic entity @e[type=ender_dragon,c=1]
execute @s[tag=!onair] ~~~ fill ~~~ ~~~ air 0 destroy




execute @s ~~~ tp @s[name=s] ^^^1 ~ ~
execute @s ~~~ tp @s[name=w] ^0.05^^1 ~ ~
execute @s ~~~ tp @s[name=e] ^-0.05^^1 ~ ~

tag @s remove onair
