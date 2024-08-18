##This function only runs when a player hits any entity. 
#Ends function
advancement revoke @s only duel:hit_all

#Set current player
execute store result storage duel:main player.current int 1 run scoreboard players get @s playerNum

#Find player
execute at @s run function duel:char/all/hit/any/find with storage duel:main player

