# set name, color, and command for common dropoff index
$data modify storage taxi:data common$(common_id)_name set from storage taxi:data common_name
$data modify storage taxi:data common$(common_id)_color set from storage taxi:data common_color
$data modify storage taxi:data common$(common_id)_cmd set value "/tp @s $(common_coord)"
$data modify storage taxi:data common_json set value {Name:'{"text":"$(common_name)","color":"$(common_color)"}'}

# update the indexing light bulb in hand
item modify entity @s weapon.mainhand taxi:update_dropoff_item

# update the taxi page of player phone
function phone:update_taxi with storage taxi:data