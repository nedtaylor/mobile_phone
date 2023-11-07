
$scoreboard players set @s donut_recipe_intro $(choice)

# print some blank lines here
execute as @s run function misc:clear_chat

execute as @s[scores={donut_recipe_intro=1}] run tellraw @s ["",\
    {"text":"[Marge] ","color":"#3c75de"},\
    {"text":"Focus, Homer! I need to find this recipe or I\'ll be the laughing stock of the bake sale!"},\
    "\n",\
    {"text":" [1] ", "clickEvent":{"action":"run_command","value":"/execute as @s run function side_quest:donut_recipe/intro/final"}, "extra": ["Fear not, honey, Max Power is on it! I\'ll go and find it now!"]},"\n",\
    {"text":" [2] ", "clickEvent":{"action":"run_command","value":"/execute as @s run function side_quest:donut_recipe/intro/response {choice: 4}"}, "extra": ["Are you sure it isn\'t where you left it?"]},"\n",\
    {"text":" [3] ", "clickEvent":{"action":"run_command","value":"/execute as @s run function side_quest:donut_recipe/intro/response {choice: 5}"}, "extra": ["Maybe it was the boy... He\'s always doing something suspicious..."]}\
    ]

execute as @s[scores={donut_recipe_intro=2}] run tellraw @s ["",\
    {"text":"[Marge] ","color":"#3c75de"},\
    {"text":"My special donut recipe! The one you keep asking me to make more of. Have you seen it?"},\
    "\n",\
    {"text":" [1] ", "clickEvent":{"action":"run_command","value":"/execute as @s run function side_quest:donut_recipe/intro/response {choice: 4}"}, "extra": ["Where did you last see it?"]},"\n",\
    {"text":" [2] ", "clickEvent":{"action":"run_command","value":"/execute as @s run function side_quest:donut_recipe/intro/response {choice: 6}"}, "extra": ["Maybe it fell into the last batter you made?"]},"\n",\
    {"text":" [3] ", "clickEvent":{"action":"run_command","value":"/execute as @s run function side_quest:donut_recipe/intro/response {choice: 7}"}, "extra": ["Don\'t you remember that thing off by heart by now?"]}\
    ]

execute as @s[scores={donut_recipe_intro=3}] run tellraw @s ["",\
    {"text":"[Marge] ","color":"#3c75de"},\
    {"text":"Homer, if you don\'t help me find it, you\'ll never be able to have your favourite ever again!"},\
    "\n",\
    {"text":" [1] ", "clickEvent":{"action":"run_command","value":"/execute as @s run function side_quest:donut_recipe/intro/response {choice: 8}"}, "extra": ["Ahhh!! We gotta find that recipe, quick!"]},"\n",\
    {"text":" [2] ", "clickEvent":{"action":"run_command","value":"/execute as @s run function side_quest:donut_recipe/intro/response {choice: 4}"}, "extra": ["When did you last have the it?"]},"\n",\
    {"text":" [3] ", "clickEvent":{"action":"run_command","value":"/execute as @s run function side_quest:donut_recipe/intro/response {choice: 12}"}, "extra": [""]}\
    ]

execute as @s[scores={donut_recipe_intro=4}] run tellraw @s ["",\
    {"text":"[Marge] ","color":"#3c75de"},\
    {"text":"I last had it when I was making donuts for Bart\'s birthday, remember? You said you had to pop to the Kwik-E-Mart and then were gone all day. You came back late at night, sticky and covered in frosting."},\
    "\n",\
    {"text":" [1] ", "clickEvent":{"action":"run_command","value":"/execute as @s run function side_quest:donut_recipe/intro/response {choice: 10}"}, "extra": ["Mmmm... secretly reproducing Marge's special donuts. Yum."]},"\n",\
    {"text":" [2] ", "clickEvent":{"action":"run_command","value":"/execute as @s run function side_quest:donut_recipe/intro/response {choice: 8}"}, "extra": ["What do you remember from then?"]},"\n",\
    {"text":" [3] ", "clickEvent":{"action":"run_command","value":"/execute as @s run function side_quest:donut_recipe/intro/response {choice: 12}"}, "extra": [""]}\
    ]
    
# 5: Bart wouldn't have any use for it, he's a sweatheart, not a baker.
    # Homer response: More like troublemaker
# Besides, it was his birthday last time we had donuts, remember?

# 6: No, I always need the recipe to follow the frosting pattern properly. I wouldn't have been able to decorate them for Bart's birthday without it.

# 7: I have too much to do as a mother to also remember all my recipes. Besides, you remember the last time I tried to make it without a recipe? It was a disaster! I had to throw out the whole batch!

# 8: Look around the kitchen, I know that's where I left it.

# always have a 4th response of ("I'm too busy Marge, gotta help some green things make a tin can fly!")