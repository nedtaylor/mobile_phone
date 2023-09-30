execute as @s run function call:calling
execute unless entity @s[advancements={phone:contact_flanders=true}] run tellraw @s {"text": "Adding Ned Flanders to contacts (as \'Flanders\')')","color":"gold"}
execute if entity @s[advancements={phone:contact_flanders=true}] run tellraw @s {"text": "Calling Ned Flanders...","color":"gold"}
execute if entity @s[advancements={phone:contact_flanders=true}] run tellraw @s ["",{"text":"[Ned Flanders] ","color":"#467b2e"},{"text":"Hi-Diddly-Ho, Strangerino!"}]
execute unless entity @s[advancements={phone:contact_flanders=true}] run advancement grant @s until phone:contact_flanders
execute if entity @s[advancements={phone:contact_flanders=true}] run tellraw @s ["",{"text":"[Ned Flanders] ","color":"#467b2e"},{"text":"Hi-Diddly-Ho, Neighborino!"}]