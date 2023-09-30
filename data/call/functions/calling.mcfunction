execute as @s run function phone:clear_chat
execute as @s if score @s calling = @s calling run function call:call_end
scoreboard players set @s calling 0
execute as @s run playsound minecraft:block.note_block.iron_xylophone neutral @s ~ ~ ~ 12 1
