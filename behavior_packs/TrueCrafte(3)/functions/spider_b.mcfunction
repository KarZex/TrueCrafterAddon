scoreboard objectives add spiderb dummy
scoreboard players set @s[tag=!Sed] spiderb 0
tag @s[tag=!Sed] add Sed
scoreboard players add @s[scores={spiderb=0..}] spiderb 1

execute @s ~~~ particle minecraft:llama_spit_smoke ~~~
execute @s ~~~ effect @a[r=1.5] slowness 2 3
execute @s ~~~ effect @a[r=1.5] mining_fatigue 2 5

execute @s[family=spider_b.A,scores={spiderb=1..8}] ~~~ tp @s ~0.1~0.3~0.173 true
execute @s[family=spider_b.B,scores={spiderb=1..8}] ~~~ tp @s ~-0.1~0.3~0.173 true
execute @s[family=spider_b.C,scores={spiderb=1..8}] ~~~ tp @s ~0.2~0.3~ true
execute @s[family=spider_b.D,scores={spiderb=1..8}] ~~~ tp @s ~-0.2~0.3~ true
execute @s[family=spider_b.E,scores={spiderb=1..8}] ~~~ tp @s ~0.1~0.3~-0.173 true
execute @s[family=spider_b.F,scores={spiderb=1..8}] ~~~ tp @s ~-0.1~0.3~-0.173 true

execute @s[family=spider_b.A,scores={spiderb=9..16}] ~~~ tp @s ~0.1~-0.3~0.173 true
execute @s[family=spider_b.B,scores={spiderb=9..16}] ~~~ tp @s ~-0.1~-0.3~0.173 true
execute @s[family=spider_b.C,scores={spiderb=9..16}] ~~~ tp @s ~0.2~-0.3~ true
execute @s[family=spider_b.D,scores={spiderb=9..16}] ~~~ tp @s ~-0.2~-0.3~ true
execute @s[family=spider_b.E,scores={spiderb=9..16}] ~~~ tp @s ~0.1~-0.3~-0.173 true
execute @s[family=spider_b.F,scores={spiderb=9..16}] ~~~ tp @s ~-0.1~-0.3~-0.173 true

