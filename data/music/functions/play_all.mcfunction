
tag @s add listening_to_music
tag @s add play_all_music

execute as @s store result storage music:data song_idx int 1 run scoreboard players set @s song_idx 1
scoreboard players set @s songs_played 0
scoreboard players set @s play_list_idx 0

execute as @s run function music:play_song with storage music:data