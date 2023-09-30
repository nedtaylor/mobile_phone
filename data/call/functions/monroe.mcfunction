execute as @s run function call:calling
execute unless entity @s[advancements={phone:contact_monroe=true}] run tellraw @s {"text": "Adding Dr. Marvin Monroe to contacts (as \'Monroe\'))","color":"gold"}
execute unless entity @s[advancements={phone:contact_monroe=true}] run advancement grant @s until phone:contact_monroe
execute if entity @s[advancements={phone:contact_monroe=true}] run tellraw @s {"text": "Calling Dr. Marvin Monroe...","color":"gold"}
tellraw @s ["",{"text":"[Dr. Monroe] ","color":"#3b3b55"},{"text":"Hello. I'm Dr. Marvin Monroe. No doubt you recognize me from TV."}]
