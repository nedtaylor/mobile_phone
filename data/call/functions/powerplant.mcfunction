execute as @s run function call:calling
execute unless entity @s[advancements={phone:contact_powerplant=true}] run tellraw @s {"text": "Adding Power Plant to contacts","color":"gold"}
execute unless entity @s[advancements={phone:contact_powerplant=true}] run advancement grant @s until phone:contact_powerplant
execute if entity @s[advancements={phone:contact_powerplant=true}] run tellraw @s {"text": "Calling Nuclear Power Plant...","color":"gold"}
tellraw @s ["",{"text":"[Power Plant] ","color":"#858994"},{"text":"We're having a meltdown!","color":"red"}]
execute as @s run function call:call_end