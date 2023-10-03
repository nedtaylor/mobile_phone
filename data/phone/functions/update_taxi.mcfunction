# set up taxi page
$data modify storage phone:taxi_page contents set value '\
   {"extra":["",\
      {"text":"×","bold":true,"clickEvent":{"action":"change_page","value":1},"hoverEvent":{"action":"show_text","contents":"Home Screen"}}," ",\
      {"text":"Hit & Run","bold":true,"underlined":true,"italic":true, "extra":[{"text":" Taxis","italic":false}]},\
      {"text":"\\n\\n"},\
      "  ",{"text":"Common dropoffs","bold":true,"underlined":true},{"text":"\\n\\n     ","color":"reset"},\
      {"text":"\\u2460","clickEvent":{"action":"run_command","value":"$(common1_cmd)"},"hoverEvent":{"action":"show_text","contents":{"text":"$(common1_name)","color":"$(common1_color)"}}},\
      {"text":"     "},\
      {"text":"\\u2461","clickEvent":{"action":"run_command","value":"$(common2_cmd)"},"hoverEvent":{"action":"show_text","contents":{"text":"$(common2_name)","color":"$(common2_color)"}}},\
      {"text":"     "},\
      {"text":"\\u2462","clickEvent":{"action":"run_command","value":"$(common3_cmd)"},"hoverEvent":{"action":"show_text","contents":{"text":"$(common3_name)","color":"$(common3_color)"}}},\
      {"text":"\\n\\n     "},\
      {"text":"\\u2463","clickEvent":{"action":"run_command","value":"$(common4_cmd)"},"hoverEvent":{"action":"show_text","contents":{"text":"$(common4_name)","color":"$(common4_color)"}}},\
      {"text":"     "},\
      {"text":"\\u2464","clickEvent":{"action":"run_command","value":"$(common5_cmd)"},"hoverEvent":{"action":"show_text","contents":{"text":"$(common5_name)","color":"$(common5_color)"}}},\
      {"text":"     "},\
      {"text":"\\u2465","clickEvent":{"action":"run_command","value":"$(common6_cmd)"},"hoverEvent":{"action":"show_text","contents":{"text":"$(common6_name)","color":"$(common6_color)"}}},\
      {"text":"\\n\\n     "},\
      {"text":"\\u2466","clickEvent":{"action":"run_command","value":"$(common7_cmd)"},"hoverEvent":{"action":"show_text","contents":{"text":"$(common7_name)","color":"$(common7_color)"}}},\
      {"text":"     "},\
      {"text":"\\u2467","clickEvent":{"action":"run_command","value":"$(common8_cmd)"},"hoverEvent":{"action":"show_text","contents":{"text":"$(common8_name)","color":"$(common8_color)"}}},\
      {"text":"     "},\
      {"text":"\\u2468","clickEvent":{"action":"run_command","value":"$(common9_cmd)"},"hoverEvent":{"action":"show_text","contents":{"text":"$(common9_name)","color":"$(common9_color)"}}},\
      {"text":"\\n\\n\\n        "},\
      {"text":"Open Map","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function taxi:open_map"},"hoverEvent":{"action":"show_text","contents":"Open interactive map"}}\
   ],"text":""}'

# update phone
execute as @s run function phone:update with storage phone:data