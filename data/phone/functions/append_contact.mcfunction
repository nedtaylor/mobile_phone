# append contacts to list
$data modify storage phone:contacts_page contents set value '$(contents),$(contact_contents)'