#Run as all players at all players.
execute as @a at @s run function duel:player/go

#Run if a player is in game.
execute if entity @a[tag=playing] run function duel:ingame/global

#Run if a player is in the lobby
execute if entity @a[tag=lobby] run function duel:lobby/global


##This function runs globally.