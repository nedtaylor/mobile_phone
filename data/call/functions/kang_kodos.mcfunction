execute as @s run function call:calling
execute unless entity @s[advancements={phone:contact_kang_kodos=true}] run tellraw @s {"text": "Adding Kang & Kodos to contacts (as \'Aliens\')')","color":"gold"}
execute unless entity @s[advancements={phone:contact_kang_kodos=true}] run advancement grant @s until phone:contact_kang_kodos
execute if entity @s[advancements={phone:contact_kang_kodos=true}] run tellraw @s {"text": "Calling Kang & Kodos...","color":"gold"}
tellraw @s ["",{"text":"[Kang] ","color":"#a0b212"},{"text":"Have you fixed our ship yet?"}]
tellraw @s ["",{"text":"[Kodos] ","color":"#a0b212"},{"text":"We need it done, pronto!"}]
