#Run character specific functions using current player's storage.
$function duel:char/all/character with storage duel:player$(current) character


#Pick Character
$execute if entity @s[scores={char=1},tag=menu] run data modify storage duel:player$(current) character set value {"char":"saac"}
$execute if entity @s[scores={char=2},tag=menu] run data modify storage duel:player$(current) character set value {"char":"willo"}
