#使用するスコアボード
scoreboard objectives add onday dummy
scoreboard objectives add break dummy
scoreboard objectives add gostep dummy
scoreboard objectives add break dummy

#ゾンビの歩行速度を強化。

#帽子を被った状態でtag Z1を付ける。
execute @s[tag=!Z1,tag=!Z2,hasitem={item=leather_helmet,location=slot.armor.head}] ~~~ tag @s add Z1
execute @s[tag=!Z1,tag=!Z2,hasitem={item=chainmail_helmet,location=slot.armor.head}] ~~~ tag @s add Z1
execute @s[tag=!Z1,tag=!Z2,hasitem={item=iron_helmet,location=slot.armor.head}] ~~~ tag @s add Z1
execute @s[tag=!Z1,tag=!Z2,hasitem={item=diamond_helmet,location=slot.armor.head}] ~~~ tag @s add Z1
execute @s[tag=!Z1,tag=!Z2,hasitem={item=golden_helmet,location=slot.armor.head}] ~~~ tag @s add Z1

#tag Z1が付いていなければ、tag Z2を付ける。
tag @s[tag=!Z1] add Z2

#Z1が付いていれば、革の帽子を着せ、スコアボードをセット。
replaceitem entity @s[tag=Z2,tag=!Z2ed,type=!husk,type=!zombie_pigman] slot.armor.head 0 leather_helmet 
scoreboard players set @s[tag=Z2,tag=!Z2ed,type=!husk,type=!zombie_pigman] onday 1200
tag @s[tag=Z2,tag=!Z2ed,type=!husk,type=!zombie_pigman] add Z2ed

#日に当たっているときにスコアボードを減らす。
scoreboard players remove @s[tag=onday,scores={onday=0..}] onday 1

#スコアボード ondayが0のとき、帽子を脱ぐ
replaceitem entity @s[scores={onday=0}] slot.armor.head 0 air 

scoreboard players set @s[tag=!ed] break 50
tag @s[tag=!ed] add ed
scoreboard players add @s[scores={break=..49}] break 1





