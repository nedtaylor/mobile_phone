# Check if player has the tag "listening_to_music"
tag @s add play_pause_button
execute as @s[tag=listening_to_music,tag=play_pause_button] run function music:pause
execute as @s[tag=!listening_to_music,tag=play_pause_button] run function music:play_all
tag @s remove play_pause_button