scoreboard objectives add song_time dummy
scoreboard objectives add song_idx dummy

data modify storage music:data max_idx set value 3
scoreboard objectives add number_of_songs dummy
scoreboard players set music:data number_of_songs 3

scoreboard objectives add songs_played dummy
scoreboard objectives add play_list_idx dummy

scoreboard objectives add repeat dummy
scoreboard objectives add shuffle dummy