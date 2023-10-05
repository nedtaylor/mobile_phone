# remove advancement (so it can be activated again)
advancement revoke @s only taxi:right_click

# remove interaction data from interaction entity
execute as @s[tag=taxi] on target run data remove entity @s interaction

# execute dropoff function
execute as @s[tag=taxi] run function taxi:dropoff with entity @e[type=minecraft:text_display,distance=..3,sort=nearest,limit=1] Passengers[0].data
