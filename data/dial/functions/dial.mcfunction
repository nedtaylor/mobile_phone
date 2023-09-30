# add temporary dialed tag
tag @s add dialed

execute as @s[tag=dialed] if score @s calling = @s calling run function call:call_end
# execute as @s[tag=dialed] if score @s dialing matches 5550742 run dial:call_home
execute as @s[tag=dialed] if score @s dialing matches 5550001 run function call:burns
########
## Ned Flanders possibly has multiple numbers
execute as @s[tag=dialed] if score @s dialing matches 5550172 run function call:flanders
execute as @s[tag=dialed] if score @s dialing matches 5558904 run function call:flanders
########
execute as @s[tag=dialed] if score @s dialing matches 5551000 run function call:sleep_eazy
execute as @s[tag=dialed] if score @s dialing matches 5551239 run function call:moe
execute as @s[tag=dialed] if score @s dialing matches 5552509 run function call:kang_kodos
execute as @s[tag=dialed] if score @s dialing matches 5553642 run function call:hibbert
## Mr Plow and the Pretzel Wagon share the same number
execute as @s[tag=dialed] if score @s dialing matches 5553226 run function call:mr_plow
execute as @s[tag=dialed] if score @s dialing matches 5553226 run function call:pretzel_wagon
execute as @s[tag=dialed] if score @s dialing matches 5553700 run function call:monroe
execute as @s[tag=dialed] if score @s dialing matches 5555246 run function call:powerplant
execute as @s[tag=dialed] if score @s dialing matches 5555299 run function call:lionel_hutz
execute as @s[tag=dialed] if score @s dialing matches 5555782 run function call:frink
########
## 742 Evergreen Terrace has been shown to have two numbers (and one for Simpsons' residence)
execute as @s[tag=dialed] if score @s dialing matches 5550123 run function call:742
execute as @s[tag=dialed] if score @s dialing matches 5556258 run function call:742
execute as @s[tag=dialed] if score @s dialing matches 5556832 run function call:742
execute as @s[tag=dialed] if score @s dialing matches 5558707 run function call:742
########
execute as @s[tag=dialed] if score @s dialing matches 5556542 run function call:lovejoy
execute as @s[tag=dialed] if score @s dialing matches 5557334 run function call:homer_work
execute as @s[tag=dialed] if score @s dialing matches 5556425 run function call:nick
execute as @s[tag=dialed] if score @s dialing matches 5556921 run function call:edna
execute as @s[tag=dialed] if score @s dialing matches 5557495 run function call:rays_pizza
execute as @s[tag=dialed] if score @s dialing matches 555911 run function call:police
execute as @s[tag=dialed] if score @s dialing matches 911 run function call:police

## TESTING PURPOSES
execute as @s[tag=dialed] if score @s dialing matches 555 run function call:test_number

## wrong number
execute as @s[tag=dialed] unless score @s calling = @s calling run say "That was not a real number"
## reset number
execute as @s[tag=dialed] unless score @s calling = @s calling run scoreboard players set @s dialing 555

# remove temporary dialed tag
tag @s remove dialed

# https://simpsonswiki.com/wiki/Telephone_numbers_in_The_Simpsons#cite_note-Grunt-14

## Otto 8221
## Taxi (make up)
## Skinner (random, 554601, like 24601)
