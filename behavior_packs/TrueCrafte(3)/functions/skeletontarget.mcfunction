
scoreboard players set @s[tag=!ranged] ranged 0
scoreboard players add @s[tag=ranged] ranged 1

scoreboard players add @s[tag=melee] melee 1
scoreboard players set @s[tag=!melee,family=wither] melee 0

scoreboard players add @s[scores={back=35..}] back 1

effect @s[tag=melee] weakness 1 1 true


execute @s[tag=!elite,scores={ranged=1..10}] ~~~ tp @s ^0.1^^-0.1 true
execute @s[tag=!elite,scores={ranged=11..20}] ~~~ tp @s ^-0.1^^-0.1 true
execute @s[tag=!elite,scores={ranged=21..30}] ~~~ tp @s ^0.1^^0.1 true
execute @s[tag=!elite,scores={ranged=31..40}] ~~~ tp @s ^-0.1^^0.1 true

execute @s[tag=!elite,scores={ranged=1..10},family=wither] ~~~ tp @s ^0.1^^-0.1 true
execute @s[tag=!elite,scores={ranged=11..20},family=wither] ~~~ tp @s ^-0.1^^-0.1 true
execute @s[tag=!elite,scores={ranged=21..30},family=wither] ~~~ tp @s ^0.1^^0.1 true
execute @s[tag=!elite,scores={ranged=31..40},family=wither] ~~~ tp @s ^-0.1^^0.1 true


execute @s[scores={ranged=40}] ~~~ tp @s ~~1.5~ true



execute @s[tag=ranged,scores={ranged=41..44},family=wither] ~~~ tp @s ~~0.3~ true
execute @s[tag=ranged,scores={ranged=41..44},family=wither] ~~~ tp @s ^^^0.7 true
execute @s[tag=ranged,scores={ranged=45..47},family=wither] ~~~ tp @s ~~-0.3~ true
execute @s[tag=ranged,scores={ranged=45..47},family=wither] ~~~ tp @s ^^^0.7 true

execute @s[scores={ranged=1..40}] ~~~ tp @s ~~-0.1~ true
execute @s[scores={ranged=1..40}] ~~~ tp @s ~~-0.1~ true
execute @s[scores={ranged=1..40}] ~~~ tp @s ~~-0.1~ true
execute @s[scores={ranged=1..40}] ~~~ tp @s ~~-0.1~ true
execute @s[scores={ranged=1..40}] ~~~ tp @s ~~-0.1~ true

execute @s[tag=elite,tag=ranged] ~~~ tp @s ^-0.15^^0.2 facing @p[r=18] true


scoreboard players set @s[scores={ranged=41..},family=!wither] ranged 0
scoreboard players set @s[scores={ranged=48..}] ranged 0


loot replace entity @s[tag=tomelee,family=!wither] slot.weapon.mainhand 0 loot ske_axe
loot replace entity @s[tag=tomelee,family=wither] slot.weapon.mainhand 0 loot "entities/wither_skeleton_gear"

scoreboard players set @s[tag=toranged,family=!wither] back 35
replaceitem entity @s[tag=toranged,family=!wither] slot.weapon.mainhand 0 bow
tag @s[tag=toranged,family=!wither] remove melee

replaceitem entity @s[tag=toranged,family=wither] slot.weapon.mainhand 0 bow

execute @s[tag=melee,scores={melee=35}] ~~~ scoreboard players set @s back 35
execute @s[tag=damaging,tag=melee] ~~~ scoreboard players set @s back 35

execute @s[tag=melee,scores={melee=1..4},family=wither] ~~~ tp @s ~~0.3~ true
execute @s[tag=melee,scores={melee=1..4},family=wither] ~~~ tp @s ^^^0.7 true
execute @s[tag=melee,scores={melee=5..7},family=wither] ~~~ tp @s ~~-0.3~ true
execute @s[tag=melee,scores={melee=5..7},family=wither] ~~~ tp @s ^^^0.7 true



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
