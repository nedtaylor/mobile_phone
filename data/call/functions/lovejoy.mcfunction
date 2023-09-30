execute as @s run function call:calling
execute unless entity @s[advancements={phone:contact_lovejoy=true}] run tellraw @s {"text": "Adding Rev. Lovejoy to contacts (as \'Lovejoy\')')","color":"gold"}
execute unless entity @s[advancements={phone:contact_lovejoy=true}] run advancement grant @s until phone:contact_lovejoy
execute if entity @s[advancements={phone:contact_lovejoy=true}] run tellraw @s {"text": "Calling Rev. Lovejoy...","color":"gold"}
tellraw @s ["",{"text":"[Rev. Lovejoy] ","color":"#c35360"},{"text":"This better not be Ned Flanders again!"}]
execute as @s run function call:call_end