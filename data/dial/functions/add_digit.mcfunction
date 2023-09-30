execute as @s run scoreboard players operation @s dialing *= 10 constants
execute as @s run playsound minecraft:block.note_block.bit neutral @p ~ ~ ~ 40 1.5
execute as @s run scoreboard players operation @s dialing += digit dialing