
#Character specific stuff
execute if entity @s[scores={deaths=1..}] run function duel:char/all/death/init
execute if entity @s[scores={damageTaken=1..}] run function duel:char/all/hurt/init
execute if entity @s[scores={charActions=1..}] run function duel:char/all/ability/init
execute if entity @s[predicate=!duel:ingame/has_armor,predicate=!duel:effect/is_invisible] run function duel:char/all/armor/init

execute store result score @s armorCount run clear @s #duel:armor 0
execute if entity @s[scores={armorCount=5..}] run clear @s #duel:armor