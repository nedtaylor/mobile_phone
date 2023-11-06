# set up music page
$data modify storage phone:music_page contents set value '\
   {"extra":["",\
         {"text":"×","bold":true,"clickEvent":{"action":"change_page","value":1},"hoverEvent":{"action":"show_text","contents":"Home Screen"}}," ",\
         {"text":"Music:","bold":true,"underlined":true},\
         {"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n"},\
         "\\u2006\\u2006           ",\
         {"text":"⏹","bold":false,"color":"red","clickEvent":{"action":"run_command","value":"/execute as @s run function music:stop"}, "hoverEvent":{"action":"show_text","contents":"Stop"}},\
         {"text":"\\n\\n"},\
         {"text":"\\u2006\\u2006"},\
         {"text":"🔀","bold":false,"color":"$(shuffle_color)","clickEvent":{"action":"run_command","value":"/execute as @s run function music:shuffle"}, "hoverEvent":{"action":"show_text","contents":"$(shuffle_hover)"}},"\\u2006\\u2006 ",\
         {"text":"⏮","bold":false,"clickEvent":{"action":"run_command","value":"/execute as @s run function music:previous_song with storage music:data"}, "hoverEvent":{"action":"show_text","contents":"Previous"}},"\\u2006\\u2006\\u2006",\
         {"text":"$(play_pause_symbol)","bold":false,"clickEvent":{"action":"run_command","value":"/execute as @s run function music:play_pause"}, "hoverEvent":{"action":"show_text","contents":"$(play_pause_hover)"}},"\\u2006\\u2006\\u2006",\
         {"text":"⏭","bold":false,"clickEvent":{"action":"run_command","value":"/execute as @s run function music:next_song with storage music:data"}, "hoverEvent":{"action":"show_text","contents":"Next"}},"\\u2006\\u2006 ",\
         {"text":"$(repeat_symbol)","bold":false,"color":"$(repeat_color)","clickEvent":{"action":"run_command","value":"/execute as @s run function music:repeat"}, "hoverEvent":{"action":"show_text","contents":"$(repeat_hover)"}},\
         {"text":"\\n\\n"},\
         {"text":"            "},{"text":" ⃞","bold":true,"clickEvent":{"action":"change_page","value":1}, "hoverEvent":{"action":"show_text","contents":"Home Screen"}}\
      ],"text":""}'

# update phone
execute as @s run function phone:update with storage phone:data