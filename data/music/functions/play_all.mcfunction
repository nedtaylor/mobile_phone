# add tags relating to music
tag @s add listening_to_music
tag @s add play_all_music

# initialise song index and play count
$execute as @s[tag=shuffle] store result storage music:data song_idx int 1 store result score @s song_idx run random value 1..$(max_idx) music:shuffle
execute as @s[tag=!shuffle] store result storage music:data song_idx int 1 run scoreboard players set @s song_idx 1

# initialise play count
scoreboard players set @s songs_played 0
scoreboard players set @s play_list_idx 0

# play first song
execute as @s run function music:play_song with storage music:data