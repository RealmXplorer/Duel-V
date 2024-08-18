##This function only runs if a player kills another player (runs as the player doing the killing)

#End function
advancement revoke @s only duel:kill

#Set current player to this player
execute store result storage duel:main player.current int 1 run scoreboard players get @s playerNum

#Find this player
execute at @s run function duel:char/all/kill/find with storage duel:main player
