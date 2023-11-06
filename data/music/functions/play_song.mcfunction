stopsound @s music
scoreboard players reset @s song_time

$tellraw @s "Now playing...$(song_idx)"

tag @s add listening_to_music

$execute as @s run function music:song_$(song_idx)