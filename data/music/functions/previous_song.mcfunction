# if at start and not on repeat_all, stop listening to music and return
execute as @s[tag=!repeat_all,tag=!repeat_one,scores={play_list_idx=0}] run function music:stop
execute as @s[tag=!listening_to_music] run return 0

# if non-shuffle, handle previous song in order
# if at start of list and on repeat_all, then play last song in list
$execute as @s[tag=!shuffle,scores={play_list_idx=0}] run scoreboard players set @s play_list_idx $(max_idx)
execute as @s[tag=!repeat_one,tag=!shuffle] store result storage music:data song_idx int 1 run scoreboard players operation @s song_idx = @s play_list_idx
execute as @s[tag=!repeat_one,tag=!shuffle] run scoreboard players remove @s play_list_idx 1
execute as @s[tag=!repeat_one,tag=!shuffle] run scoreboard players operation @s songs_played = @s play_list_idx

# if shuffle, cycle through list in reverse order
# if at start of list, then prepend new random song to list
execute as @s[tag=!repeat_one,tag=shuffle,scores={play_list_idx=0}] run data modify storage music:data prev_idx set value 1
execute as @s[tag=!repeat_one,tag=shuffle,scores={play_list_idx=1..}] store result storage music:data prev_idx int 1 run scoreboard players remove @s play_list_idx 1
$execute as @s[tag=!repeat_one,tag=shuffle] if score @s play_list_idx matches 0 store result storage music:data rnd_idx int 1 run random value 1..$(max_idx) music:data
execute as @s[tag=!repeat_one,tag=shuffle] if score @s play_list_idx matches 0 run data modify storage music:data play_list prepend from storage music:data rnd_idx
execute as @s[tag=!repeat_one,tag=shuffle] run data remove storage music:data rnd_idx
execute as @s[tag=!repeat_one,tag=shuffle] if score @s play_list_idx matches 0 run scoreboard players add @s songs_played 1

# if shuffle, get previously played song
execute as @s[tag=shuffle] run function music:get_previous_shuffle with storage music:data

# play previous song
execute as @s run function music:play_song with storage music:data

