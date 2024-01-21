scoreboard objectives add backstep dummy
scoreboard players set @s[tag=!backstep] backstep 0
tag @s[tag=!backstep] add backstep
scoreboard players add @s[tag=backstep] backstep 1
execute @s[scores={backstep=1..4}] ~~~ tp @s ^^0.3^-0.7 true
execute @s[scores={backstep=5..7}] ~~~ tp @s ^^-0.3^-0.7 true
scoreboard players set @s[scores={backstep=10..},tag=backstep] backstep 0
tag @s[scores={backstep=10..},tag=backstep] remove backstep