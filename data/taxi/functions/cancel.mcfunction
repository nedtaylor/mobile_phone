# the player has their taxi tag removed
tag @s remove taxi

# player inventory is cleared and returned
clear @s
execute as @s run function misc:replace_inventory {x1:-836, y1:27, z1:94, x2:-836, y2:26, z2:94}
data modify block -836 27 94 Items set value ""
data modify block -836 26 94 Items set value ""

# 'set_dropoff' scoreboard objective removed
scoreboard objectives remove set_dropoff

# player teleported (dropped off) by taxi to destination
$tp @s $(pickup_x) $(pickup_y) $(pickup_z) $(pickup_horizontal) $(pickup_vertical)

# announce arrival to player
tellraw @s [{"text":"[Taxi driver] ","color":"yellow"},{"text":"Sorry 'bout that","color":"white"}]
