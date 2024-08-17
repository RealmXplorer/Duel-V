#Set player's custom player number
scoreboard players add @s playerNum 0
execute if entity @s[scores={playerNum=0}] run scoreboard players add #main playerNum 1
scoreboard players operation @s[scores={playerNum=0}] playerNum = #main playerNum

#Create custom player storage
data modify storage duel:main player set value {"num":0}
execute store result storage duel:main player.num int 1 run scoreboard players get @s playerNum
function duel:storage/player with storage duel:main player