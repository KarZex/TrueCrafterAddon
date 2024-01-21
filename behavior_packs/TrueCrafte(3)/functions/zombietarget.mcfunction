#使用するスコアボード
scoreboard objectives add blocky dummy
scoreboard objectives add blockx dummy

scoreboard players set @s[tag=!blockx] blockx 0
scoreboard players set @s[tag=blockxplace] blockx 0
scoreboard players set @s[tag=!blocky] blocky 0


#ターゲットが上にあるとき
execute @s[tag=!blocky,tag=!blockx,rx=-10,rxm=-90] ~~~ tag @s add blocky
execute @s[tag=blocky,rx=45,rxm=0] ~~~ tag @s add blockxplace
execute @s[tag=blocky,rx=45,rxm=0] ~~~ tag @s remove blocky

#ゾンビブロックに乗っているとき
execute @s[tag=!blocky] ~~~ detect ~~-1~ zex:zblock 0 tag @s add blockxplace


execute @s[tag=blockx,rx=-45,rxm=-90] ~~~ tag @s add blocky
execute @s[tag=blockx,rx=-45,rxm=-90] ~~~ tag @s remove blockx

execute @s[tag=!blocky,rx=45,rxm=-10] ~~~ tag @s add blockx

execute @s[tag=blockx,rx=90,rxm=45] ~~~ tag @s remove blockx


execute @s[tag=blocky] ~~~ fill ~~2~ ~~2~ air 0 destroy


scoreboard players add @s[tag=blocky] blocky 1

execute @s[scores={break=50..}] ~~~ fill ^^0.5^1 ^^1.5^1 air 0 destroy
execute @s[scores={break=50..}] ~~~ scoreboard players set @s break 0

execute @s[tag=blocky,scores={blocky=1..3}] ~~~ tp @s ~~0.5~
execute @s[tag=blocky,scores={blocky=4..9}] ~~~ fill ~~-1~ ~~-1~ zex:zblock 0 keep
execute @s[tag=blocky,scores={blocky=4..9}] ~~~ fill ~~-1~ ~~-1~ zex:zblock 0 replace snow_layer
scoreboard players set @s[scores={blocky=10..}] blocky 0

execute @s[tag=blockxplace] ~~~ fill ^^-1^1 ^^-1^1 zex:zblock 0 keep

scoreboard players add @s[tag=blockx,tag=!blockxplace] blockx 1

execute @s[tag=blockx,scores={blockx=41..44},tag=!blockxplace] ~~~ tp @s ~~0.3~ true
execute @s[tag=blockx,scores={blockx=41..44},tag=!blockxplace] ~~~ tp @s ^^^0.7 true
execute @s[tag=blockx,scores={blockx=45..47},tag=!blockxplace] ~~~ tp @s ~~-0.3~ true
execute @s[tag=blockx,scores={blockx=45..47},tag=!blockxplace] ~~~ tp @s ^^^0.7 true


scoreboard players set @s[scores={blockx=51..}] blockx 0

tag @s[tag=blockxplace] remove blockxplace
