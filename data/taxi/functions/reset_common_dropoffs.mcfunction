data modify storage taxi:data common1_color set value "red"
data modify storage taxi:data common2_color set value "red"
data modify storage taxi:data common3_color set value "red"
data modify storage taxi:data common4_color set value "red"
data modify storage taxi:data common5_color set value "red"
data modify storage taxi:data common6_color set value "red"
data modify storage taxi:data common7_color set value "red"
data modify storage taxi:data common8_color set value "red"
data modify storage taxi:data common9_color set value "red"

data modify storage taxi:data common1_name set value "Undefined"
data modify storage taxi:data common2_name set value "Undefined"
data modify storage taxi:data common3_name set value "Undefined"
data modify storage taxi:data common4_name set value "Undefined"
data modify storage taxi:data common5_name set value "Undefined"
data modify storage taxi:data common6_name set value "Undefined"
data modify storage taxi:data common7_name set value "Undefined"
data modify storage taxi:data common8_name set value "Undefined"
data modify storage taxi:data common9_name set value "Undefined"

data modify storage taxi:data common1_cmd set value "/tellraw @s {\\\\\"text\\\\\":\\\\\"No location set\\\\\",\\\\\"color\\\\\":\\\\\"red\\\\\"}"
data modify storage taxi:data common2_cmd set value "/tellraw @s {\\\\\"text\\\\\":\\\\\"No location set\\\\\",\\\\\"color\\\\\":\\\\\"red\\\\\"}"
data modify storage taxi:data common3_cmd set value "/tellraw @s {\\\\\"text\\\\\":\\\\\"No location set\\\\\",\\\\\"color\\\\\":\\\\\"red\\\\\"}"
data modify storage taxi:data common4_cmd set value "/tellraw @s {\\\\\"text\\\\\":\\\\\"No location set\\\\\",\\\\\"color\\\\\":\\\\\"red\\\\\"}"
data modify storage taxi:data common5_cmd set value "/tellraw @s {\\\\\"text\\\\\":\\\\\"No location set\\\\\",\\\\\"color\\\\\":\\\\\"red\\\\\"}"
data modify storage taxi:data common6_cmd set value "/tellraw @s {\\\\\"text\\\\\":\\\\\"No location set\\\\\",\\\\\"color\\\\\":\\\\\"red\\\\\"}"
data modify storage taxi:data common7_cmd set value "/tellraw @s {\\\\\"text\\\\\":\\\\\"No location set\\\\\",\\\\\"color\\\\\":\\\\\"red\\\\\"}"
data modify storage taxi:data common8_cmd set value "/tellraw @s {\\\\\"text\\\\\":\\\\\"No location set\\\\\",\\\\\"color\\\\\":\\\\\"red\\\\\"}"
data modify storage taxi:data common9_cmd set value "/tellraw @s {\\\\\"text\\\\\":\\\\\"No location set\\\\\",\\\\\"color\\\\\":\\\\\"red\\\\\"}"


data modify storage taxi:data common_json set value {Name:'{"text":"Undefined","color":"red"}'}
execute as @a[tag=taxi] if data entity @s Inventory[{Slot:0b,id:"minecraft:light"}] run item modify entity @s hotbar.0 taxi:update_dropoff_item
execute as @a[tag=taxi] if data entity @s Inventory[{Slot:1b,id:"minecraft:light"}] run item modify entity @s hotbar.1 taxi:update_dropoff_item
execute as @a[tag=taxi] if data entity @s Inventory[{Slot:2b,id:"minecraft:light"}] run item modify entity @s hotbar.2 taxi:update_dropoff_item
execute as @a[tag=taxi] if data entity @s Inventory[{Slot:3b,id:"minecraft:light"}] run item modify entity @s hotbar.3 taxi:update_dropoff_item
execute as @a[tag=taxi] if data entity @s Inventory[{Slot:4b,id:"minecraft:light"}] run item modify entity @s hotbar.4 taxi:update_dropoff_item
execute as @a[tag=taxi] if data entity @s Inventory[{Slot:5b,id:"minecraft:light"}] run item modify entity @s hotbar.5 taxi:update_dropoff_item
execute as @a[tag=taxi] if data entity @s Inventory[{Slot:6b,id:"minecraft:light"}] run item modify entity @s hotbar.6 taxi:update_dropoff_item
execute as @a[tag=taxi] if data entity @s Inventory[{Slot:7b,id:"minecraft:light"}] run item modify entity @s hotbar.7 taxi:update_dropoff_item
execute as @a[tag=taxi] if data entity @s Inventory[{Slot:8b,id:"minecraft:light"}] run item modify entity @s hotbar.8 taxi:update_dropoff_item

data remove storage taxi:data common_json
data remove storage taxi:data common_name
data remove storage taxi:data common_color
data remove storage taxi:data common_coord

function phone:update_taxi with storage taxi:data

tellraw @s "Common dropoffs reset"