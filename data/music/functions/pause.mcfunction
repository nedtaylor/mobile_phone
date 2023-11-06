stopsound @s music
tag @s add paused_music
tag @s remove listening_to_music
tag @s remove play_pause_button

data modify storage music:data play_pause_symbol set value "⏵"
data modify storage music:data play_pause_hover set value "Play"