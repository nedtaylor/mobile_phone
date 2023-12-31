# initialise storage
data modify storage phone:contacts_page known set value []
data modify storage phone:contacts_page contents set value ''
      
data modify storage phone:contacts_page close_button set value '{"text":"×","bold":true,"clickEvent":{"action":"change_page","value":1},"hoverEvent":{"action":"show_text","contents":"Home Screen"}}," ",'
data modify storage phone:contacts_page home_button set value ',{"text":"            "},{"text":" ⃞","bold":true, "clickEvent":{"action":"change_page","value":1}, "hoverEvent":{"action":"show_text","contents":"Home Screen"}}'

# if player has advancement, add append necessary names to list
## execute if entity @s[advancements={phone:contact_=true}] run data modify storage phone:contacts_page known append value ""
execute if entity @s[advancements={phone:contact_742=true}] run data modify storage phone:contacts_page known append value "742"
execute if entity @s[advancements={phone:contact_police=true}] run data modify storage phone:contacts_page known append value "police"
execute if entity @s[advancements={phone:contact_burns=true}] run data modify storage phone:contacts_page known append value "burns"
execute if entity @s[advancements={phone:contact_kang_kodos=true}] run data modify storage phone:contacts_page known append value "kang_kodos"
execute if entity @s[advancements={phone:contact_flanders=true}] run data modify storage phone:contacts_page known append value "flanders"
execute if entity @s[advancements={phone:contact_frink=true}] run data modify storage phone:contacts_page known append value "frink"
execute if entity @s[advancements={phone:contact_hibbert=true}] run data modify storage phone:contacts_page known append value "hibbert"
execute if entity @s[advancements={phone:contact_lionel_hutz=true}] run data modify storage phone:contacts_page known append value "lionel_hutz"
execute if entity @s[advancements={phone:contact_lovejoy=true}] run data modify storage phone:contacts_page known append value "lovejoy"
execute if entity @s[advancements={phone:contact_moe=true}] run data modify storage phone:contacts_page known append value "moe"
execute if entity @s[advancements={phone:contact_monroe=true}] run data modify storage phone:contacts_page known append value "monroe"
execute if entity @s[advancements={phone:contact_powerplant=true}] run data modify storage phone:contacts_page known append value "powerplant"

#  initialise contacts_tracker objective
scoreboard objectives add contacts_tracker dummy
execute store result storage phone:contacts_page list_index int 1 run scoreboard players set list_index contacts_tracker 0
execute store result storage phone:contacts_page list_indexplus1 int 1 run scoreboard players set list_indexplus1 contacts_tracker 1
execute store result score list_len contacts_tracker run data get storage phone:contacts_page known
data modify storage phone:contacts_page contact set from storage phone:contacts_page known[0]

# recursively execute concatentation of known contacts
function phone:concat_contacts with storage phone:contacts_page

# add wrapper JSON formatting to contacts page contents
function phone:wrap_contacts with storage phone:contacts_page

# remove superfluous scoreboard and storage
data remove storage phone:contacts_page list_index
data remove storage phone:contacts_page list_indexplus1
scoreboard objectives remove contacts_tracker
data remove storage phone:contacts_page contact

# modify phone anywhere in player inventory or taxi storage
execute as @s run function phone:update with storage phone:data

# # modify player's phone book
# execute as @s if entity @s[predicate=phone:selected_mainhand] run item modify entity @s weapon.mainhand phone:update_contacts
# execute as @s if entity @s[predicate=phone:selected_offhand] run item modify entity @s weapon.offhand phone:update_contacts

# # example of how command works
# data modify storage phone:contacts_page new_page set value '{"extra":[{"text":"aa"},{"text":"abc","color":"green"}],"text":""}'
# data modify storage phone:contacts_page contact_contents set value '{"clickEvent": {"action": "run_command", "value": "/tp @s ~ ~10 ~"}, "text": "Frink here"}'
