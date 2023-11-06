scoreboard players add @s shuffle 1
execute if score @s shuffle matches 2.. run scoreboard players reset @s shuffle

tag @s remove shuffle
data modify storage music:data shuffle_hover set value "Enable Shuffle"
data modify storage music:data shuffle_color set value "black"

execute as @s[scores={shuffle=1}] run tag @s add shuffle
execute as @s[scores={shuffle=1}] run data modify storage music:data shuffle_color set value "green"
execute as @s[scores={shuffle=1}] run data modify storage music:data shuffle_hover set value "Disable Shuffle"

# update the music page of player phone
function phone:update_music with storage music:data