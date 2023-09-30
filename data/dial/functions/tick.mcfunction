execute as @a[predicate=!phone:selected] run scoreboard players reset @s dialing
scoreboard players reset digit dialing
execute as @a[predicate=phone:selected] unless score @s dialing = @s dialing run scoreboard players set @s dialing 555

execute as @a[predicate=!phone:selected] if score @s calling = @s calling run function call:call_end
#scoreboard players reset @s calling

# execute if entity @a[scores={calling=0}] as @a at @s run playsound minecraft:block.note_block.iron_xylophone neutral @s ~ ~ ~ 1 1.375
# execute if entity @a[scores={calling=2}] as @a at @s run playsound minecraft:block.note_block.iron_xylophone neutral @s ~ ~ ~ 1 1.375
# execute if entity @a[scores={calling=4}] as @a at @s run playsound minecraft:block.note_block.iron_xylophone neutral @s ~ ~ ~ 1 1.375
# execute if entity @a[scores={calling=6}] as @a at @s run playsound minecraft:block.note_block.iron_xylophone neutral @s ~ ~ ~ 1 1.375
# execute if entity @a[scores={calling=8}] as @a at @s run playsound minecraft:block.note_block.iron_xylophone neutral @s ~ ~ ~ 1 1.375
execute if entity @a[scores={calling=0}] as @a at @s run playsound minecraft:block.note_block.bass neutral @s ~ ~ ~ 1 2
execute if entity @a[scores={calling=2}] as @a at @s run playsound minecraft:block.note_block.bass neutral @s ~ ~ ~ 1 2
execute if entity @a[scores={calling=4}] as @a at @s run playsound minecraft:block.note_block.bass neutral @s ~ ~ ~ 1 2
execute if entity @a[scores={calling=6}] as @a at @s run playsound minecraft:block.note_block.bass neutral @s ~ ~ ~ 1 2
execute if entity @a[scores={calling=8}] as @a at @s run playsound minecraft:block.note_block.bass neutral @s ~ ~ ~ 1 2


execute as @a[predicate=phone:selected] if score @s calling = @s calling run scoreboard players add @s calling 1
execute as @a[predicate=phone:selected] if score @s calling matches 400.. run function call:call_end
# playsound minecraft:block.note_block.iron_xylophone neutral @p ~ ~ ~ 1 2
# execute as @a if score @s carrot matches 1 run function tutorial:carrot
# #execute as @a if score @s fungus matches 1 run function tutorial:fungus_first
# #execute as @a if score @s fungus matches 2 run function tutorial:fungus_second
