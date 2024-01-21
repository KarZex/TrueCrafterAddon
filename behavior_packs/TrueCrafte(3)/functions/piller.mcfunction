scoreboard objectives add cast dummy
scoreboard players set @s[tag=!cast] cast 0
tag @s[tag=!cast] add cast

execute @s[scores={cast=5..39}] ~~~ playsound note.pling @a[r=2] ~~~ 1 2
execute @s[scores={cast=5..}] ~~~ particle minecraft:endrod ~~0.5~
execute @s[scores={cast=5..39}] ~~~ particle minecraft:mob_portal ~~0.5~

scoreboard players add @s cast 1

execute @s[scores={cast=40}] ~~~ damage @a[r=2] 6 magic
execute @s[scores={cast=40}] ~~~ tag @a[r=2] add knockup
execute @s[scores={cast=40}] ~~~ particle minecraft:mob_portal ~~~
execute @s[scores={cast=40}] ~~~ particle minecraft:sparkler_emitter ~~~
execute @s[scores={cast=40}] ~~~ particle minecraft:large_explosion ~~~
execute @s[scores={cast=40}] ~~~ particle minecraft:death_explosion_emitter ~~~
execute @s[scores={cast=40}] ~~~ playsound random.explode @a ~~~ 2 1
execute @s[scores={cast=40}] ~~~ playsound item.trident.thunder @a ~~~ 1.5 2

execute @s[scores={cast=40..}] ~~~ effect @s levitation 10 40 true
