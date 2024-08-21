#Set storage to currently selected player
execute store result storage duel:main player.current int 1 run scoreboard players get @s playerNum

#If player does not have a number, run this function
execute unless entity @s[scores={playerNum=1..}] run function duel:player/init

#Run player character functions if they have number using current selected player's number
execute if entity @s[scores={playerNum=1..}] run function duel:char/all/init with storage duel:main player


#Character specific stuff
execute if entity @s[scores={deaths=1..}] run function duel:char/all/death/init
execute if entity @s[scores={damageTaken=1..}] run function duel:char/all/hurt/init
execute if entity @s[scores={charActions=1..}] run function duel:char/all/ability/init