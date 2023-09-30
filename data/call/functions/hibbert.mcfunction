execute as @s run function call:calling
execute unless entity @s[advancements={phone:contact_hibbert=true}] run tellraw @s {"text": "Adding Dr. Hibbert to contacts (as \'Hibbert\')')","color":"gold"}
execute unless entity @s[advancements={phone:contact_hibbert=true}] run advancement grant @s until phone:contact_hibbert
execute if entity @s[advancements={phone:contact_hibbert=true}] run tellraw @s {"text": "Calling Dr. Hibbert...","color":"gold"}
tellraw @s ["",{"text":"[Dr. Hibbert] ","color":"#ffc5eb"},{"text":"A-heh-heh-heh."}]
