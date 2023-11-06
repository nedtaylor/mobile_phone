# stop music function to close all playing things, reset lists etc

tellraw @s "Stopping music..."

stopsound @s music

scoreboard players reset @s song_time
scoreboard players reset @s song_idx
scoreboard players reset @s songs_played
scoreboard players reset @s play_list_idx

data remove storage music:data play_list
data remove storage music:data play_list_idx

tag @s remove listening_to_music