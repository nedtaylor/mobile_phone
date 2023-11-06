# increment player shuffle score
# 0 = off, 1 = on, 2 = reset (i.e. back to 0)
scoreboard players add @s shuffle 1
execute if score @s shuffle matches 2.. run scoreboard players reset @s shuffle

# reset shuffle tags
tag @s remove shuffle

# update shuffle button
data modify storage music:data shuffle_hover set value "Enable Shuffle"
data modify storage music:data shuffle_color set value "black"

# if shuffle is on, update shuffle button
execute as @s[scores={shuffle=1}] run tag @s add shuffle
execute as @s[scores={shuffle=1}] run data modify storage music:data shuffle_color set value "dark_green"
execute as @s[scores={shuffle=1}] run data modify storage music:data shuffle_hover set value "Disable Shuffle"

# update the music page of player phone
function phone:update_music with storage music:data