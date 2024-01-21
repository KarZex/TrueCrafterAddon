scoreboard objectives add blocky dummy
scoreboard objectives add blockx dummy

scoreboard players set @s[tag=!blockx] blockx 0
scoreboard players set @s[tag=blockxplace] blockx 0
scoreboard players set @s[tag=!blocky] blocky 0


#ターゲットが上にあるとき
execute @s[tag=!blocky,tag=!blockx,rx=-10,rxm=-90,tag=angry] ~~~ tag @s add blocky
execute @s[tag=blocky,rx=45,rxm=0,tag=angry] ~~~ tag @s add blockxplace
execute @s[tag=blocky,rx=45,rxm=0,tag=angry] ~~~ tag @s remove blocky

#ゾンビブロックに乗っているとき
execute @s[tag=!blocky,tag=angry] ~~~ detect ~~-1~ zex:nblock 0 tag @s add blockxplace


execute @s[tag=blockx,rx=-45,rxm=-90,tag=angry] ~~~ tag @s add blocky
execute @s[tag=blockx,rx=-45,rxm=-90,tag=angry] ~~~ tag @s remove blockx

execute @s[tag=!blocky,rx=45,rxm=-10] ~~~ tag @s add blockx

execute @s[tag=blockx,rx=90,rxm=45] ~~~ tag @s remove blockx


execute @s[tag=blocky] ~~~ fill ~~2~ ~~2~ air 0 destroy


scoreboard players add @s[tag=blocky] blocky 1

execute @s[scores={break=50..},tag=angry] ~~~ fill ^^0.5^1 ^^1.5^1 air 0 destroy
execute @s[scores={break=50..},tag=angry] ~~~ scoreboard players set @s break 0

execute @s[tag=blocky,scores={blocky=1..3}] ~~~ tp @s ~~0.5~
execute @s[tag=blocky,scores={blocky=4..9}] ~~~ fill ~~-1~ ~~-1~ zex:nblock 0 keep
execute @s[tag=blocky,scores={blocky=4..9}] ~~~ fill ~~-1~ ~~-1~ zex:nblock 0 replace snow_layer
scoreboard players set @s[scores={blocky=10..}] blocky 0

execute @s[tag=blockxplace] ~~~ fill ^^-1^1 ^^-1^1 zex:nblock 0 keep

scoreboard players add @s[tag=blockx,tag=!blockxplace] blockx 1

scoreboard players set @s[scores={blockx=51..}] blockx 0

tag @s[tag=blockxplace] remove blockxplace



scoreboard players set @s[tag=!ranged] ranged 0
scoreboard players add @s[tag=ranged] ranged 1

scoreboard players add @s[tag=melee] melee 1

scoreboard players add @s[scores={back=35..}] back 1

effect @s[tag=melee] weakness 1 1 true

execute @s[scores={ranged=1..40}] ~~~ tp @s ~~-0.1~ true
execute @s[scores={ranged=1..40}] ~~~ tp @s ~~-0.1~ true
execute @s[scores={ranged=1..40}] ~~~ tp @s ~~-0.1~ true
execute @s[scores={ranged=1..40}] ~~~ tp @s ~~-0.1~ true
execute @s[scores={ranged=1..40}] ~~~ tp @s ~~-0.1~ true



scoreboard players set @s[scores={ranged=41..}] ranged 0


loot replace entity @s[tag=tomelee] slot.weapon.mainhand 0 loot pig_axe

replaceitem entity @s[tag=toranged] slot.weapon.mainhand 0 crossbow

execute @s[tag=melee,scores={melee=35}] ~~~ scoreboard players set @s back 35
execute @s[tag=damaging,tag=melee] ~~~ scoreboard players set @s back 35



execute @s[scores={back=35..38}] ~~~ tp @s ~~0.3~ true
execute @s[scores={back=35..38}] ~~~ tp @s ^^-0.2^-0.7 true
execute @s[scores={back=39..41}] ~~~ tp @s ~~-0.3~ true
execute @s[scores={back=39..41}] ~~~ tp @s ^^-0.2^-0.7 true

scoreboard players set @s[scores={melee=50..}] melee 0
scoreboard players set @s[scores={back=42..}] back 0

tag @s[tag=onair] remove onair
tag @s[tag=damaging] remove damaging
tag @s[tag=tomelee] remove tomelee
tag @s[tag=toranged] remove toranged

