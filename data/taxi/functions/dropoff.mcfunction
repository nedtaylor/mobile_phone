# the player has their taxi tag removed
tag @s remove taxi

# remove superfluous storage data
data remove storage taxi:data pickup_x
data remove storage taxi:data pickup_y
data remove storage taxi:data pickup_z
data remove storage taxi:data pickup_horizontal
data remove storage taxi:data pickup_vertical

# player inventory is cleared and returned
clear @s
execute as @s run function misc:replace_inventory {x1:-837, y1:40, z1:94, x2:-836, y2:40, z2:94}
data modify block -837 40 94 Items set value ""
data modify block -836 40 94 Items set value ""

# 'set_dropoff' scoreboard objective removed
scoreboard objectives remove set_dropoff

# player teleported (dropped off) by taxi to destination
$tp @s $(dropoff_point)

# announce arrival to player
$tellraw @s [{"text":"[Taxi driver] ","color":"yellow"},{"text":"Here ya are, $(name)","color":"white"}]
