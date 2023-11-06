scoreboard players add @s repeat 1
execute if score @s repeat matches 3.. run scoreboard players reset @s repeat
tag @s remove repeat_one
tag @s remove repeat_all
data modify storage music:data repeat_color set value "black"
data modify storage music:data repeat_hover set value "Repeat All"
data modify storage music:data repeat_symbol set value "🔁"

execute as @s[scores={repeat=1..}] run data modify storage music:data repeat_color set value "green"

execute as @s[scores={repeat=1}] run tag @s add repeat_all
execute as @s[scores={repeat=1}] run data modify storage music:data repeat_hover set value "Repeat One"

execute as @s[scores={repeat=2}] run tag @s add repeat_one
execute as @s[scores={repeat=2}] run data modify storage music:data repeat_symbol set value "🔂"
execute as @s[scores={repeat=2}] run data modify storage music:data repeat_hover set value "Disable Repeat"

# update the music page of player phone
function phone:update_music with storage music:data