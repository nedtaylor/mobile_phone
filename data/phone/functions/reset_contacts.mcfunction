# remove all known contacts from list
advancement revoke @s from phone:contacts

# update phone contacts page
execute as @s run function phone:update_contacts with storage phone:data