# play song at player, with no decay volume
playsound minecraft:music_disc.cat music @s ~ ~ ~ 1 1 1

# print song name to chat
tellraw @a "Song 2"

# set song duration
data modify storage music:data duration set value 100

# set to length of song, then minus every tick
scoreboard players set @s song_time 100