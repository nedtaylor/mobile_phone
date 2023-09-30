execute as @s run function call:calling
execute unless entity @s[advancements={phone:contact_police=true}] run tellraw @s {"text": "Adding the police to contacts (as \'911\'))","color":"gold"}
execute unless entity @s[advancements={phone:contact_police=true}] run advancement grant @s until phone:contact_police
execute if entity @s[advancements={phone:contact_police=true}] run tellraw @s {"text": "Calling the police...","color":"gold"}
tellraw @s ["",{"text":"[911] ","color":"#357aba"},{"text":"I\'m on a break."}]
execute as @s run function call:call_end