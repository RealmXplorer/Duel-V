#$function duel:char/$(char)/init

#Run Character Functions
$execute if entity @s[scores={deaths=1..}] run function duel:char/$(char)/death
$execute if entity @s[scores={charActions=1..}] run function duel:char/$(char)/ability/init