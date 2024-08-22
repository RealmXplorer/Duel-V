#Set storage to currently selected player
execute store result storage duel:main player.current int 1 run scoreboard players get @s playerNum

#If player does not have a number, run this function
execute unless entity @s[scores={playerNum=1..}] run function duel:player/init

#Run if player is in game
execute if entity @s[tag=playing] run function duel:ingame/all

#Run if player is in lobby
execute if entity @s[tag=lobby] run function duel:lobby/all


#Run player character functions if they have number using current selected player's number
execute if entity @s[scores={playerNum=1..,char=1..},tag=menu] run function duel:char/all/select with storage duel:main player