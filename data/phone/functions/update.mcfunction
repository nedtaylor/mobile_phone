# update phone in player inventory
$execute if data entity @s Inventory[{tag:{serial_number:"$(serial_number)"}}].Slot store result storage phone:data slot_id int 1 run data get entity @s Inventory[{tag:{serial_number:"$(serial_number)"}}].Slot 1
function misc:slot_index_to_name with storage phone:data
execute as @s run function phone:install_update with storage phone:data

# update phone in taxi storage 1
data modify storage phone:data storage_coord set value "-837 40 94"
$execute if data block -837 40 94 Items[{tag:{serial_number:"$(serial_number)"}}].Slot run function phone:update_in_storage with storage phone:data

# update phone in taxi storage 2
data modify storage phone:data storage_coord set value "-836 40 94"
$execute if data block -836 40 94 Items[{tag:{serial_number:"$(serial_number)"}}].Slot run function phone:update_in_storage with storage phone:data