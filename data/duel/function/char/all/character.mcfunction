##  Issue with future things: 
##   Advancement triggers will aid in reducing server overhead, but we will need to "refind" the players.

#Constantly running functions
#$function duel:char/$(char)/init

#Run Character Functions
#$execute if entity @s[scores={deaths=1..}] run function duel:char/$(char)/death
#$execute if entity @s[scores={charActions=1..}] run function duel:char/$(char)/ability/init
#$execute if entity @s[scores={damageTaken=1..}] run function duel:char/$(char)/hurt