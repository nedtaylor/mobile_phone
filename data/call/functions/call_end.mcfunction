execute as @s if score @s calling matches 1.. run function misc:clear_chat
execute as @s run scoreboard players reset @s calling
execute as @s run scoreboard players set @s dialing 555
tellraw @s {"text":"Call ended","color":"red"}
execute as @s run stopsound @s * minecraft:block.note_block.bass
execute at @s run playsound minecraft:block.note_block.bit neutral @s ~ ~ ~ 1 0.5

# remove temporary dialed tag
tag @s remove dialed