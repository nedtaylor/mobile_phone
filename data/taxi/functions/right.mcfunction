advancement revoke @s only taxi:right_click

say [dp] right

execute as @s[tag=taxi] on target run data remove entity @s interaction

# tag @s add this
# execute as @e[type=interaction,distance=..6] run function a:find_targeted
execute as @s[tag=taxi] run function taxi:dropoff with entity @e[type=minecraft:text_display,distance=..3,sort=nearest,limit=1] Passengers[0].data
