# store player phone inventory slot_id
data modify storage phone:data tmp_slot_id set from storage phone:data slot_id

# get slot_id
$execute store result storage phone:data slot_id int 1 run data get block $(storage_coord) Items[{tag:{serial_number:"$(serial_number)"}}].Slot 1

# get slot_name relating to slot_id
function misc:slot_index_to_name with storage phone:data

# update phone in storage block
function phone:install_update_in_storage with storage phone:data

# retrieve player phone inventory slot_id
data modify storage phone:data slot_id set from storage phone:data tmp_slot_id

# remove temporary data storage
data remove storage phone:data tmp_slot_id