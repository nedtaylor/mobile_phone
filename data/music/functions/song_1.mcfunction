# play song at player, with no decay volume
playsound minecraft:music_disc.blocks music @s

# print song name to chat
tellraw @a "Song 1"

# set song duration
data modify storage music:data duration set value 6900

# set to length of song, then minus every tick
scoreboard players set @s song_time 6900