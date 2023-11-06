# decrement song_time counter for each player listening to music
execute as @a[tag=listening_to_music,scores={song_time=1..}] run scoreboard players remove @s song_time 1

# if song has ended (i.e. song_time counter has reached zero), stop music
execute as @a[tag=listening_to_music,scores={song_time=..0}] run stopsound @s music

# if song has ended and listening to single song on repeat, play song again
execute as @a[tag=listening_to_music,tag=repeat_one,scores={song_time=..0}] run function music:play_song with storage music:data

# if song has ended and listening to only one song, stop music
execute as @a[tag=listening_to_music,tag=!play_all_music,scores={song_time=..0}] run function music:stop

# if song has ended and listening to all songs, play next song
execute as @a[tag=listening_to_music,tag=play_all_music,scores={song_time=..0}] run function music:next_song with storage music:data