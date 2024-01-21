
scoreboard players set @s[tag=!ranged] ranged 0
scoreboard players add @s[tag=ranged] ranged 1

scoreboard players add @s[tag=melee] melee 1
scoreboard players set @s[tag=!melee] melee 0

scoreboard players add @s[scores={back=35..}] back 1




execute @s[tag=ranged,scores={ranged=41..44}] ~~~ tp @s ~~0.3~ true
execute @s[tag=ranged,scores={ranged=41..44}] ~~~ tp @s ^^^0.7 true
execute @s[tag=ranged,scores={ranged=45..47}] ~~~ tp @s ~~-0.3~ true
execute @s[tag=ranged,scores={ranged=45..47}] ~~~ tp @s ^^^0.7 true

scoreboard players set @s[scores={ranged=48..}] ranged 0


tag @s[tag=tomelee] add melee
tag @s[tag=tomelee] remove ranged

tag @s[tag=toranged] add ranged
tag @s[tag=toranged] remove melee


execute @s[tag=damaging,tag=melee] ~~~ scoreboard players set @s back 35

execute @s[tag=melee,scores={melee=1..4}] ~~~ tp @s ~~0.3~ true
execute @s[tag=melee,scores={melee=1..4}] ~~~ tp @s ^^^0.7 true
execute @s[tag=melee,scores={melee=5..7}] ~~~ tp @s ~~-0.3~ true
execute @s[tag=melee,scores={melee=5..7}] ~~~ tp @s ^^^0.7 true



execute @s[scores={back=35..38}] ~~~ tp @s ~~0.3~ true
execute @s[scores={back=35..38}] ~~~ tp @s ^^-0.2^-0.7 true
execute @s[scores={back=39..41}] ~~~ tp @s ~~-0.3~ true
execute @s[scores={back=39..41}] ~~~ tp @s ^^-0.2^-0.7 true

scoreboard players set @s[scores={melee=50..}] melee 0
scoreboard players set @s[scores={back=42..}] back 0

execute @s[scores={break=50..}] ~~~ fill ^^0.5^1 ^^1.5^1 air 0 destroy
execute @s[scores={break=50..}] ~~~ scoreboard players set @s break 0


tag @s[tag=damaging] remove damaging
tag @s[tag=tomelee] remove tomelee
tag @s[tag=toranged] remove toranged
tag @s[tag=onair] remove onair

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
execute @s[tag=!blocky] ~~~ detect ~~-1~ zex:nblock 0 tag @s add blockxplace


execute @s[tag=blockx,rx=-45,rxm=-90] ~~~ tag @s add blocky
execute @s[tag=blockx,rx=-45,rxm=-90] ~~~ tag @s remove blockx

execute @s[tag=!blocky,rx=45,rxm=-10] ~~~ tag @s add blockx

execute @s[tag=blockx,rx=90,rxm=45] ~~~ tag @s remove blockx


execute @s[tag=blocky] ~~~ fill ~~2~ ~~2~ air 0 destroy


scoreboard players add @s[tag=blocky] blocky 1

execute @s[scores={break=50..}] ~~~ fill ^^0.5^1 ^^1.5^1 air 0 destroy
execute @s[scores={break=50..}] ~~~ scoreboard players set @s break 0

execute @s[tag=blocky,scores={blocky=1..3}] ~~~ tp @s ~~0.5~
execute @s[tag=blocky,scores={blocky=4..9}] ~~~ fill ~~-1~ ~~-1~ zex:nblock 0 keep
execute @s[tag=blocky,scores={blocky=4..9}] ~~~ fill ~~-1~ ~~-1~ zex:nblock 0 replace snow_layer
scoreboard players set @s[scores={blocky=10..}] blocky 0

execute @s[tag=blockxplace] ~~~ fill ^^-1^1 ^^-1^1 zex:nblock 0 keep

scoreboard players add @s[tag=blockx,tag=!blockxplace] blockx 1
execute @s[tag=blockx,scores={blockx=41..44},tag=!blockxplace] ~~~ tp @s ^^0.3^0.7 true
execute @s[tag=blockx,scores={blockx=45..47},tag=!blockxplace] ~~~ tp @s ^^-0.3^0.7 true

#effect @s[tag=blockx,scores={blockx=41..43},tag=!blockxplace] speed 1 23 true
#effect @s[tag=blockx,scores={blockx=44..46},tag=!blockxplace] levitation 1 17 true
#effect @s[tag=blockx,scores={blockx=47..50},tag=!blockxplace] clear
scoreboard players set @s[scores={blockx=51..}] blockx 0

tag @s[tag=blockxplace] remove blockxplace
