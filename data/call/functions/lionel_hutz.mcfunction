execute as @s run function call:calling
execute unless entity @s[advancements={phone:contact_lionel_hutz=true}] run tellraw @s {"text": "Adding Lionel Hutz to contacts (as \'Hutz\')')","color":"gold"}
execute unless entity @s[advancements={phone:contact_lionel_hutz=true}] run advancement grant @s until phone:contact_lionel_hutz
execute if entity @s[advancements={phone:contact_lionel_hutz=true}] run tellraw @s {"text": "Calling Lionel Hutz...","color":"gold"}
tellraw @s ["",{"text":"[Lionel Hutz] ","color":"#d76553"},{"text":"Mr. Simpson, this is the most blatant case of fraudulent advertising since my suit against the movie, The Neverending Story!"}]
