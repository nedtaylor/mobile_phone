# initialise contact text
function phone:setup_contact_prompts

# update contacts on every reload, as a precaution
data modify storage phone:contacts_page storage set value "phone:contacts_page"
execute as @a run function phone:update_contacts

# have everything update on load