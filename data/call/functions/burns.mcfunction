execute as @s run function call:calling
execute unless entity @s[advancements={phone:contact_burns=true}] run tellraw @s {"text": "Adding Mr. Burns to contacts","color":"gold"}
execute unless entity @s[advancements={phone:contact_burns=true}] run advancement grant @s until phone:contact_burns
execute if entity @s[advancements={phone:contact_burns=true}] run tellraw @s {"text": "Calling Mr. Burns...","color":"gold"}
tellraw @s ["",{"text":"[Mr. Burns] ","color":"#017171"},{"text":"Ahoy-hoy."}]