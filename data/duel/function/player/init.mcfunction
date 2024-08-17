##This function gives each player a unique "playerNum" score and creates a new storage for that player using the score.

#Give score
    #Turn the player's "null" playerNum into a useable number
    scoreboard players add @s playerNum 0

    #If there is a player who needs a number, add 1 to the global scale (this is to prevent 2 players from having the same number)
    execute if entity @s[scores={playerNum=0}] run scoreboard players add #main playerNum 1

    #Set player's number to new number
    scoreboard players operation @s[scores={playerNum=0}] playerNum = #main playerNum


#Create custom player storage
    #Set global "num" value to 0.
    data modify storage duel:main player set value {"num":0}

    #Set the global storage's "num" value to the current player's "playerNum"
    execute store result storage duel:main player.num int 1 run scoreboard players get @s playerNum

    #Create a new storage using that player's "playerNum"
    function duel:storage/player with storage duel:main player