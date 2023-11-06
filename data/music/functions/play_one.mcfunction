# add tags relating to music
tag @s add listening_to_music
tag @s remove play_all_music

# initialise music data and counters
$execute as @s store result storage music:data song_idx int 1 run scoreboard players set @s song_idx $(idx)
scoreboard players set @s songs_played 0
scoreboard players set @s play_list_idx 0

# play song
execute as @s run function music:play_song with storage music:data