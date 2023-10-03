# add tags and data to player's phone
$data modify storage $(storage) serial_number set value "fone_$(serial_number_value)"
$item modify entity @s $(slot_name) phone:build