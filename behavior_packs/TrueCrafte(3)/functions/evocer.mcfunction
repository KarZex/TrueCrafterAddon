#使用するスコアボード
scoreboard objectives add cool dummy

scoreboard players set @s[tag=!cool] cool 0
tag @s[tag=!cool] add cool

scoreboard players remove @s[scores={cool=1..}] cool 1



