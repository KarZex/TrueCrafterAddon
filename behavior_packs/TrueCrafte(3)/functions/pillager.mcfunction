scoreboard objectives add bcool dummy
scoreboard objectives add backing dummy
replaceitem entity @s[tag=!Z2ed] slot.weapon.offhand 0 shield 

scoreboard players set @s[tag=!Z2ed] bcool 100
tag @s[tag=!Z2ed] add Z2ed

scoreboard players add @s[scores={bcool=..99}] bcool 1


