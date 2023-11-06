playsound minecraft:music_disc.chirp music @s ~ ~ ~ 1 1 1

tellraw @a "playing song 3"

data modify storage music:data duration set value 100

# set to length of song, then minus every tick
scoreboard players set @s song_time 100