execute as @s run function call:calling
execute unless entity @s[advancements={phone:contact_frink=true}] run tellraw @s {"text": "Adding Prof Frink to contacts","color":"gold"}
execute unless entity @s[advancements={phone:contact_frink=true}] run advancement grant @s until phone:contact_frink
execute if entity @s[advancements={phone:contact_frink=true}] run tellraw @s {"text": "Calling Prof Frink...","color":"gold"}
tellraw @s ["",{"text":"[Prof Frink] ","color":"#f27db0"},{"text":"HOYVIN-GLAVIN! My experiments!"}]
execute as @s run function call:call_end