execute unless score @s dialing matches ..999999 run playsound minecraft:block.tripwire.click_on neutral @p ~ ~ ~ 40 2
execute if score @s dialing matches ..999999 run scoreboard players set digit dialing 7
execute if score @s dialing matches ..999999 run function dial:add_digit