#Put player in database
execute store result storage duel:main player.current int 1 run scoreboard players get @s playerNum

execute unless entity @s[scores={playerNum=1..}] run function duel:player/init

#Run player character functions
execute if entity @s[scores={playerNum=1..}] run function duel:char/all/init with storage duel:main player