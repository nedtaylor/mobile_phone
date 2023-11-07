scoreboard objectives add donut_recipe_intro dummy
scoreboard players set @s donut_recipe_intro 0

execute as @s run function misc:clear_chat

tellraw @s ["",\
    {"text":"[Marge] ","color":"#3c75de"},\
    {"text":"Homer, have you seen my donut recipe? I need to make some donuts for the bake sale today."},\
    "\n",\
    {"text":" [1] ", "clickEvent":{"action":"run_command","value":"/execute as @s run function side_quest:donut_recipe/intro/response {choice: 1}"}, "extra": ["Mmmm, donuts..."]},"\n",\
    {"text":" [2] ", "clickEvent":{"action":"run_command","value":"/execute as @s run function side_quest:donut_recipe/intro/response {choice: 2}"}, "extra": ["Do you expect me to keep track of all the things I might or might not have lost? I mean... what recipe?"]},"\n",\
    {"text":" [3] ", "clickEvent":{"action":"run_command","value":"/execute as @s run function side_quest:donut_recipe/intro/response {choice: 3}"}, "extra": ["Work? Come on Marge, you know I\'m not gonna do that."]},"\n",\
    {"text":" [4] ", "clickEvent":{"action":"run_command","value":"/execute as @s run function side_quest:donut_recipe/intro/final"}, "extra": ["I'm too busy Marge, gotta help some green things make a tin can fly!"]}\
    ]
