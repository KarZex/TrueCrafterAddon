#使用するスコアボード
scoreboard objectives add onday dummy
scoreboard objectives add break dummy
scoreboard objectives add ranged dummy
scoreboard objectives add melee dummy
scoreboard objectives add back dummy

tag @s[tag=!ranged,tag=!melee,family=!wither] add ranged
tag @s[tag=!ranged,tag=!melee,family=wither] add melee

replaceitem entity @s[tag=elite,tag=!Z2ed] slot.armor.head 0 leather_helmet 
replaceitem entity @s[tag=elite,tag=!Z2ed] slot.armor.chest 0 leather_chestplate
replaceitem entity @s[tag=elite,tag=!Z2ed] slot.armor.legs 0 iron_leggings 
replaceitem entity @s[tag=elite,tag=!Z2ed] slot.armor.feet 0 iron_boots 

replaceitem entity @s[tag=elite,tag=!Z2ed] slot.weapon.offhand 0 shield 


#帽子を被った状態でtag Z1を付ける。
execute @s[tag=!Z1,tag=!Z2,hasitem={item=leather_helmet,location=slot.armor.head}] ~~~ tag @s add Z1
execute @s[tag=!Z1,tag=!Z2,hasitem={item=chainmail_helmet,location=slot.armor.head}] ~~~ tag @s add Z1
execute @s[tag=!Z1,tag=!Z2,hasitem={item=iron_helmet,location=slot.armor.head}] ~~~ tag @s add Z1
execute @s[tag=!Z1,tag=!Z2,hasitem={item=diamond_helmet,location=slot.armor.head}] ~~~ tag @s add Z1
execute @s[tag=!Z1,tag=!Z2,hasitem={item=golden_helmet,location=slot.armor.head}] ~~~ tag @s add Z1
execute @s[family=wither] ~~~ tag @s add Z1

#tag Z1が付いていなければ、tag Z2を付ける。
tag @s[tag=!Z1] add Z2
tag @s[tag=elite] add Z2ed

#Z1が付いていれば、革の帽子を着せ、スコアボードをセット。
replaceitem entity @s[tag=Z2,tag=!Z2ed,family=!wither] slot.armor.head 0 leather_helmet 
scoreboard players set @s[tag=Z2,tag=!Z2ed,family=!wither] onday 1200
tag @s[tag=Z2,tag=!Z2ed,family=!wither] add Z2ed

#日に当たっているときにスコアボードを減らす。
scoreboard players remove @s[tag=onday,scores={onday=0..}] onday 1

#スコアボード ondayが0のとき、帽子を脱ぐ
replaceitem entity @s[scores={onday=0}] slot.armor.head 0 air 

execute @s ~~~ fill ~~~ ~~~ air 0 replace torch

