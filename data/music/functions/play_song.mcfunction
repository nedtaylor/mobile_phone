# stop any current music
stopsound @s music
scoreboard players reset @s song_time

# print to chat
tellraw @s "Now playing..."

# add music tag
tag @s add listening_to_music

# play song
$execute as @s run function music:song_$(song_idx)