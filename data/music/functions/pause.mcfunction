# stop current song
stopsound @s music

# add and remove tags relating to play and pause music
tag @s add paused_music
tag @s remove listening_to_music
tag @s remove play_pause_button

# update the play/pause button
data modify storage music:data play_pause_symbol set value "⏵"
data modify storage music:data play_pause_hover set value "Play"