execute as @s run function call:calling
execute unless entity @s[advancements={phone:contact_742=true}] run tellraw @s {"text": "Adding Home to contacts)","color":"gold"}
execute unless entity @s[advancements={phone:contact_742=true}] run advancement grant @s until phone:contact_742
execute if entity @s[advancements={phone:contact_742=true}] run tellraw @s {"text": "Calling home...","color":"gold"}
tellraw @s ["",{"text":"[742 Evergreen Terrace] ","color":"#fcd705"},{"text":"You reached the Simpsons' residence. No one is home right now."}]
execute as @s run function call:call_end