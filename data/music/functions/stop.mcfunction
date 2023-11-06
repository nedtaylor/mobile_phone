# print to chat
tellraw @s "Stopping music..."

# stop all music
stopsound @s music

# reset all music-related scores
scoreboard players reset @s song_time
scoreboard players reset @s song_idx
scoreboard players reset @s songs_played
scoreboard players reset @s play_list_idx

# remove all data relating to current play session
data remove storage music:data play_list
data remove storage music:data play_list_idx
data remove storage music:data song_idx

# remove the listening_to_music tag
tag @s remove listening_to_music

# update the play/pause button
data modify storage music:data play_pause_symbol set value "⏵"
data modify storage music:data play_pause_hover set value "Play"

# update the music page of player phone
function phone:update_music with storage music:data