
#Character specific stuff
execute if entity @s[scores={deaths=1..}] run function duel:char/all/death/init
execute if entity @s[scores={damageTaken=1..}] run function duel:char/all/hurt/init
execute if entity @s[scores={charActions=1..}] run function duel:char/all/ability/init