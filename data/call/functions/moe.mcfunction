execute as @s run function call:calling
execute unless entity @s[advancements={phone:contact_moe=true}] run tellraw @s {"text": "Adding Moe to contacts","color":"gold"}
execute unless entity @s[advancements={phone:contact_moe=true}] run advancement grant @s until phone:contact_moe
execute if entity @s[advancements={phone:contact_moe=true}] run tellraw @s {"text": "Calling Moe...","color":"gold"}
tellraw @s ["",{"text":"[Moe] ","color":"#a9cceb"},{"text":"Heya Homer, howya doin'? Wanna beer?","clickEvent":{"action":"run_command","value":"say \"here I am\""},"hoverEvent":{"action":"show_text","contents":"stone"}},"\n",{"text":" [1] Mmmm, beer","clickEvent":{"action":"run_command","value":"/give @p milk_bucket"}},"\n",{"text":" [2] Sorry Moe, I'm on a diet","clickEvent":{"action":"run_command","value":"/execute if score @s calling = @s calling run tellraw @p {\"text\":\"That's a real shame\"}"}}]
