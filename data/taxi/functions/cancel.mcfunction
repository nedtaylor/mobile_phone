# the player has their taxi tag removed
tag @s remove taxi

# player inventory is cleared and returned
clear @s
execute as @s run function misc:replace_inventory {x1:-826, y1:22, z1:96, x2:-826, y2:21, z2:96}
data modify block -826 22 96 Items set value ""
data modify block -826 21 96 Items set value ""

# 'set_dropoff' scoreboard objective removed
scoreboard objectives remove set_dropoff

# player teleported (dropped off) by taxi to destination
$tp @s $(pickup_x) $(pickup_y) $(pickup_z) $(pickup_horizontal) $(pickup_vertical)

# announce arrival to player
tellraw @s [{"text":"[Taxi driver] ","color":"yellow"},{"text":"Sorry 'bout that","color":"white"}]
