execute as @e[limit=1,type=!player] store result score @s plague_summon_random run tag @s add plague_test
execute as @e[tag=plague_test] store result score @s plague_summon_random run random value 1..10000
execute as @e[tag=plague_test] if score @s plague_summon_random matches 1..2 run tag @s add virus
execute as @e[tag=plague_test] run tag @s remove plague_test