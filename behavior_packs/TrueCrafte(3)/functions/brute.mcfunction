
scoreboard objectives add onday dummy
scoreboard objectives add break dummy
scoreboard objectives add ranged dummy
scoreboard objectives add melee dummy
scoreboard objectives add back dummy

scoreboard objectives add antifire dummy
scoreboard objectives add restore dummy

scoreboard players set @s[tag=!antifire] antifire 0
scoreboard players set @s[tag=!restore] restore 0

scoreboard players add @s[tag=antifire] antifire 1
scoreboard players add @s[tag=restore] restore 1

execute @s[scores={restore=1..20}] ~~~ replaceitem entity @s slot.weapon.mainhand 0 cooked_porkchop 1
execute @s[scores={restore=4}] ~~~ playsound random.eat @a ~~~
execute @s[scores={restore=14}] ~~~ playsound random.eat @a ~~~
execute @s[scores={restore=20}] ~~~ effect @s instant_health 1 1 true
execute @s[scores={restore=20}] ~~~ playsound random.burp @a ~~~ 1 1
execute @s[scores={restore=20}] ~~~ particle minecraft:crop_growth_emitter ~~1~
execute @s[scores={restore=20}] ~~~ replaceitem entity @s slot.weapon.mainhand 0 golden_axe
tag @s[scores={restore=21..}] remove restore
scoreboard players set @s[scores={restore=21..}] restore 0


execute @s[scores={antifire=1..20}] ~~~ replaceitem entity @s slot.weapon.mainhand 0 potion 1 13
execute @s[scores={antifire=4}] ~~~ playsound random.drink @a ~~~
execute @s[scores={antifire=14}] ~~~ playsound random.drink @a ~~~
execute @s[scores={antifire=20}] ~~~ effect @s fire_resistance 120 1
execute @s[scores={antifire=20}] ~~~ playsound random.burp @a ~~~ 1 1
execute @s[scores={antifire=20}] ~~~ replaceitem entity @s slot.weapon.mainhand 0 golden_axe
tag @s[scores={antifire=21..}] remove antifire
scoreboard players set @s[scores={antifire=21..}] antifire 0


execute @s[tag=angryd] ~~~ execute @e[type=piglin,r=30,tag=!angry] ~~~ event entity @s important_block_destroyed_event
execute @s[tag=angryd] ~~~ execute @e[type=piglin,r=30,tag=!angry] ~~~ playsound mob.piglin.angry @a ~~~
execute @s[tag=angryd] ~~~ execute @e[type=piglin,r=30,tag=!angry] ~~~ particle minecraft:villager_angry ~~2~
execute @s[tag=angryd] ~~~ execute @e[type=piglin,r=30,tag=!angry] ~~~ event entity @s very_angry
execute @s[tag=angryd] ~~~ playsound mob.hoglin.death @a ~~~
execute @s[tag=angryd] ~~~ particle minecraft:villager_angry ~~2~

tag @s[tag=angryd] remove angryd

