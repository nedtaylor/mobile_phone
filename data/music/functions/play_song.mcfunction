stopsound @s music
scoreboard players reset @s song_time

tellraw @s "Now playing..."

tag @s add listening_to_music

$execute as @s run function music:song_$(song_idx)