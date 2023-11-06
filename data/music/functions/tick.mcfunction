execute as @a[tag=listening_to_music,scores={song_time=1..}] run scoreboard players remove @s song_time 1

execute as @a[tag=listening_to_music,scores={song_time=..0}] run stopsound @s music

execute as @a[tag=listening_to_music,tag=repeat_one,scores={song_time=..0}] run function music:play_song with storage music:data



execute as @a[tag=listening_to_music,tag=!play_all_music,scores={song_time=..0}] run function music:stop

execute as @a[tag=listening_to_music,tag=play_all_music,scores={song_time=..0}] run function music:next_song with storage music:data

# execute as @a[tag=listening_to_music,scores={song_time=..0}] run scoreboard players reset @s song_time

