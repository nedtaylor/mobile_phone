# the player is tagged with 'taxi' and is 'tpd' to the map
tag @s add taxi
data modify storage taxi:data pickup_x set from entity @s Pos[0]
data modify storage taxi:data pickup_y set from entity @s Pos[1]
data modify storage taxi:data pickup_z set from entity @s Pos[2]
data modify storage taxi:data pickup_horizontal set from entity @s Rotation[0]
data modify storage taxi:data pickup_vertical set from entity @s Rotation[1]
tp @s -826 26 96 -90 0

# their inventory is stored somewhere, and their inventory is replaced with light bulbs
execute as @s run function misc:store_inventory {x1:-826, y1:22, z1:96, x2:-826, y2:21, z2:96}
clear @s
execute as @s run function taxi:get_lights with storage taxi:data

# a scoreboard objective ('sneak', or, more likely, 'set_dropoff') is added
scoreboard objectives add set_dropoff minecraft.custom:minecraft.sneak_time

# the player selected hotbar value is then used to define which dropoff is overwritten in the book
# - looks for nearest button and gets a tag/nbt data from it for the name and tp coordinate values, etc
# - there might be a hovering display somewhere that says what their dropoff points are
# - and, above each button, there is hovering text saying the name of the place, and what dropoff slot it currently takes up


# when a player presses a button to leave, they are given back their inventory
# the tag 'taxi' and 'set_dropoff' are removed, and the scoreboard 'set_dropoff' is removed


# execute as @a[scores={sneak=1..},tag=taxi] run tag @s add sneaking
# tag @a remove sneaking
# scoreboard players set @a sneak 0