# add tag 'taxi' to player
tag @s add taxi

# get player pickup coordinates
data modify storage taxi:data pickup_x set from entity @s Pos[0]
data modify storage taxi:data pickup_y set from entity @s Pos[1]
data modify storage taxi:data pickup_z set from entity @s Pos[2]
data modify storage taxi:data pickup_horizontal set from entity @s Rotation[0]
data modify storage taxi:data pickup_vertical set from entity @s Rotation[1]

# teleport player to interactive taxi map
tp @s -826 26 96 -90 0

# store player inventory in barrels at specified location
execute as @s run function misc:store_inventory {x1:-826, y1:22, z1:96, x2:-826, y2:21, z2:96}
clear @s

# replace inventory with light bulbs (merely for reference of hotbar numbers)
execute as @s run function taxi:get_lights with storage taxi:data

# add 'set_dropoff' objective
scoreboard objectives add set_dropoff minecraft.custom:minecraft.sneak_time