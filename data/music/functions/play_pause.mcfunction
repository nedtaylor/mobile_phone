# check if player has the tag "listening_to_music"
tag @s add play_pause_button
execute as @s[tag=listening_to_music,tag=play_pause_button] run function music:pause
execute as @s[tag=paused_music,tag=play_pause_button] run function music:replay
execute as @s[tag=!listening_to_music,tag=play_pause_button] run function music:play_all with storage music:data
tag @s remove play_pause_button

# update the play/pause button
execute as @s[tag=!paused_music] run data modify storage music:data play_pause_symbol set value "⏸"
execute as @s[tag=!paused_music] run data modify storage music:data play_pause_hover set value "Play"

# update the music page of player phone
function phone:update_music with storage music:data