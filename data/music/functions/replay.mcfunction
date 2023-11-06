# stop music
stopsound @s music

# handle tags
tag @s remove paused_music
tag @s add listening_to_music
tag @s remove play_pause_button

# replay current song
execute as @s run function music:play_song with storage music:data