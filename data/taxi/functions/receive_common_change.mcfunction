tellraw @a "received"

# get selected slot
data modify storage taxi:data common_id set from entity @s SelectedItemSlot
scoreboard objectives add taxi_tmp dummy
execute store result score id taxi_tmp run data get storage taxi:data common_id
execute store result storage taxi:data common_id int 1 run scoreboard players add id taxi_tmp 1
scoreboard objectives remove taxi_tmp

# get dropoff name, color, and dropoff point coordinates
data modify storage taxi:data common_name set from entity @e[type=minecraft:text_display,tag=dropoff,distance=..2,limit=1] Passengers[0].data.name
data modify storage taxi:data common_color set from entity @e[type=minecraft:text_display,tag=dropoff,distance=..2,limit=1] Passengers[0].data.color
data modify storage taxi:data common_coord set from entity @e[type=minecraft:text_display,tag=dropoff,distance=..2,limit=1] Passengers[0].data.dropoff_point

# call function to set the new common dropoff point
function taxi:set_common with storage taxi:data

# announce to player which common dropoff has been updated
function taxi:say_update with storage taxi:data

# add a locking tag
# player must leave sneaking mode first before another common dropoff can be set
tag @s add lock_dropoff