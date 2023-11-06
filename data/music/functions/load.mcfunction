data modify storage music:data storage set value "music:data"

scoreboard objectives add song_time dummy
scoreboard objectives add song_idx dummy

# current number of songs in app
data modify storage music:data max_idx set value 3
scoreboard objectives add number_of_songs dummy
scoreboard players set music:data number_of_songs 3

scoreboard objectives add songs_played dummy
scoreboard objectives add play_list_idx dummy

scoreboard objectives add repeat dummy
scoreboard objectives add shuffle dummy

execute unless data storage music:data play_pause_symbol run data modify storage music:data play_pause_symbol set value "⏵"
execute unless data storage music:data play_pause_hover run data modify storage music:data play_pause_hover set value "Play"
execute unless data storage music:data repeat_color run data modify storage music:data repeat_color set value "black"
execute unless data storage music:data shuffle_color run data modify storage music:data shuffle_color set value "black"
execute unless data storage music:data repeat_hover run data modify storage music:data repeat_hover set value "Repeat All"
execute unless data storage music:data shuffle_hover run data modify storage music:data shuffle_hover set value "Enable Shuffle"