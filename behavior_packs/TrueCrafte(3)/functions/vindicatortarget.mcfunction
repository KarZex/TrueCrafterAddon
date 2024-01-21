
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