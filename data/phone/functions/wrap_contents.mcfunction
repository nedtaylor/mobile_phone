# add JSON wrapping
$execute if score list_len contacts_tracker matches 1..2 run data modify storage contacts:page contents set value '{"extra":[$(close_button){"text":"Contacts:\\n\\n","bold":true,"underlined":true}$(contents),{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n"}$(home_button)],"text":""}'
$execute if score list_len contacts_tracker matches 3..4 run data modify storage contacts:page contents set value '{"extra":[$(close_button){"text":"Contacts:\\n\\n","bold":true,"underlined":true}$(contents),{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n"}$(home_button)],"text":""}'
$execute if score list_len contacts_tracker matches 5..6 run data modify storage contacts:page contents set value '{"extra":[$(close_button){"text":"Contacts:\\n\\n","bold":true,"underlined":true}$(contents),{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n"}$(home_button)],"text":""}'
$execute if score list_len contacts_tracker matches 7..8 run data modify storage contacts:page contents set value '{"extra":[$(close_button){"text":"Contacts:\\n\\n","bold":true,"underlined":true}$(contents),{"text":"\\n\\n\\n\\n\\n\\n\\n\\n"}$(home_button)],"text":""}'
$execute if score list_len contacts_tracker matches 9..10 run data modify storage contacts:page contents set value '{"extra":[$(close_button){"text":"Contacts:\\n\\n","bold":true,"underlined":true}$(contents),{"text":"\\n\\n\\n\\n\\n\\n\\n"}$(home_button)],"text":""}'
$execute if score list_len contacts_tracker matches 11..12 run data modify storage contacts:page contents set value '{"extra":[$(close_button){"text":"Contacts:\\n\\n","bold":true,"underlined":true}$(contents),{"text":"\\n\\n\\n\\n\\n\\n"}$(home_button)],"text":""}'
$execute if score list_len contacts_tracker matches 13..14 run data modify storage contacts:page contents set value '{"extra":[$(close_button){"text":"Contacts:\\n\\n","bold":true,"underlined":true}$(contents),{"text":"\\n\\n\\n\\n\\n"}$(home_button)],"text":""}'
$execute if score list_len contacts_tracker matches 15..16 run data modify storage contacts:page contents set value '{"extra":[$(close_button){"text":"Contacts:\\n\\n","bold":true,"underlined":true}$(contents),{"text":"\\n\\n\\n\\n"}$(home_button)],"text":""}'
$execute if score list_len contacts_tracker matches 17..18 run data modify storage contacts:page contents set value '{"extra":[$(close_button){"text":"Contacts:\\n\\n","bold":true,"underlined":true}$(contents),{"text":"\\n\\n\\n"}$(home_button)],"text":""}'
$execute if score list_len contacts_tracker matches 19..20 run data modify storage contacts:page contents set value '{"extra":[$(close_button){"text":"Contacts:\\n\\n","bold":true,"underlined":true}$(contents),{"text":"\\n\\n"}$(home_button)],"text":""}'

# $data modify storage contacts:page contents set value '{"extra":[{"text":"Contacts:\\n\\n","bold":true,"underlined":true}$(contents)],"text":""}'