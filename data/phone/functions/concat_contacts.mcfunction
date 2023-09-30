# copy $(contact)'s entry into the temporary storage 'contact_contents'
$data modify storage contacts:page contact_contents set string storage contacts:page $(contact)

# append temporary storage to page contents
function phone:append_contact with storage contacts:page

# increment list index
execute store result storage contacts:page list_index int 1 run scoreboard players add list_index contacts_tracker 1

# if index at list length, return
execute if score list_indexplus1 contacts_tracker >= list_len contacts_tracker run return 0

# set next contact name to 'contact'
$data modify storage contacts:page contact set from storage contacts:page known[$(list_indexplus1)]

# increment index+1
execute store result storage contacts:page list_indexplus1 int 1 run scoreboard players add list_indexplus1 contacts_tracker 1

# recursively execute self
function phone:concat_contacts with storage contacts:page