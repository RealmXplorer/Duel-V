#Find Player
#execute store result storage duel:main player.current int 1 run scoreboard players get @s playerNum
$function duel:char/all/character with storage duel:player$(current) character

#Functions
#function duel:char/all/init with storage duel:main player
#execute if entity @s[scores={deaths=1..}] run function duel:char/all/init with storage duel:main player
#execute if entity @s[scores={charActions=1..}] run function duel:char/all/init with storage duel:main player

#Pick Character
$execute if entity @s[scores={char=1},tag=menu] run data modify storage duel:player$(current) character set value {"char":"saac"}
$execute if entity @s[scores={char=2},tag=menu] run data modify storage duel:player$(current) character set value {"char":"willo"}

# execute if entity @s[scores={char=1..},tag=menu] run function duel:char/all/pick with storage duel:main player
