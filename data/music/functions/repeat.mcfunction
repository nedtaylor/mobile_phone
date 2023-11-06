# increment player repeat score
# 0 = no repeat
# 1 = repeat all
# 2 = repeat one
# 3 = reset (i.e. back to 0)
scoreboard players add @s repeat 1
execute if score @s repeat matches 3.. run scoreboard players reset @s repeat

# reset repeat tags
tag @s remove repeat_one
tag @s remove repeat_all

# update repeat button
data modify storage music:data repeat_color set value "black"
data modify storage music:data repeat_hover set value "Repeat All"
data modify storage music:data repeat_symbol set value "🔁"

# if repeat all/one, set repeat button to green
execute as @s[scores={repeat=1..}] run data modify storage music:data repeat_color set value "green"

# if repeat all, update button accordingly
execute as @s[scores={repeat=1}] run tag @s add repeat_all
execute as @s[scores={repeat=1}] run data modify storage music:data repeat_hover set value "Repeat One"

# if repeat one, update button accordingly
execute as @s[scores={repeat=2}] run tag @s add repeat_one
execute as @s[scores={repeat=2}] run data modify storage music:data repeat_symbol set value "🔂"
execute as @s[scores={repeat=2}] run data modify storage music:data repeat_hover set value "Disable Repeat"

# update the music page of player phone
function phone:update_music with storage music:data