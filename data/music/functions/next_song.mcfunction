# increment song index (counter), if not repeating same song
execute as @s[tag=!repeat_one] if score @s play_list_idx <= music:data number_of_songs run scoreboard players add @s play_list_idx 1

# confirm this is in the right place
execute as @s[tag=repeat_all,tag=!repeat_one] if score @s play_list_idx >= music:data number_of_songs run scoreboard players set @s song_idx 0
execute as @s[tag=repeat_all,tag=!repeat_one] if score @s play_list_idx >= music:data number_of_songs run scoreboard players set @s songs_played 0
execute as @s[tag=repeat_all,tag=!repeat_one] if score @s play_list_idx >= music:data number_of_songs run scoreboard players set @s play_list_idx 0

# update number of songs listened to in current listen
execute as @s[tag=!repeat_one] if score @s play_list_idx > @s songs_played run scoreboard players operation @s songs_played = @s play_list_idx

# if shuffle (and not repeat one), append song_idx to play_list
execute as @s[tag=!repeat_one,tag=shuffle] if score @s play_list_idx = @s songs_played run data modify storage music:data play_list append from storage music:data song_idx
$execute as @s[tag=!repeat_one,tag=shuffle] store result storage music:data song_idx int 1 store result score @s song_idx run random value 1..$(max_idx) music:shuffle

# if not shuffle, increment song_idx
execute as @s[tag=!repeat_one,tag=!shuffle] store result storage music:data song_idx int 1 run scoreboard players add @s song_idx 1

# play song
execute as @s if score @s song_idx <= music:data number_of_songs run function music:play_song with storage music:data

# stop music if not repeating all songs
execute as @s[tag=!repeat_all] if score @s song_idx > music:data number_of_songs as @s run function music:stop