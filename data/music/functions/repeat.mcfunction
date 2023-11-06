scoreboard players add @s repeat 1
execute if score @s repeat matches 3.. run scoreboard players reset @s repeat
tag @s remove repeat_one
tag @s remove repeat_all
execute as @s[scores={repeat=1}] run tag @s add repeat_all
execute as @s[scores={repeat=2}] run tag @s add repeat_one
