# return index of previous song in play_list
$execute store result storage music:data song_idx int 1 store result score @s song_idx run data get storage music:data play_list[$(prev_idx)]