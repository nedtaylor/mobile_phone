scoreboard players add @s shuffle 1
execute if score @s shuffle matches 2.. run scoreboard players reset @s shuffle
tag @s remove shuffle
execute as @s[scores={repeat=1}] run tag @s add shuffle