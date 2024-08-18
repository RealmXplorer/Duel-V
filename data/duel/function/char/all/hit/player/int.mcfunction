##This function only runs if a player hits another player. (Runs as the player that is dealing damage)

#End Function
advancement revoke @s only duel:hit_player

#Set current player to this player
execute store result storage duel:main player.current int 1 run scoreboard players get @s playerNum

#Find player
execute at @s run function duel:char/all/hit/player/find with storage duel:main player
