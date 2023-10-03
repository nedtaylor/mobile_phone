tag @s[tag=taxi] remove sneaking
execute as @s[scores={set_dropoff=1..},tag=taxi] run tag @s add sneaking
execute as @s[tag=taxi,tag=!sneaking,tag=lock_dropoff] run tag @s remove lock_dropoff

# execute as @a[tag=taxi,tag=sneaking] at @s if entity @e[type=minecraft:text_display,tag=dropoff,distance=..1] run data modify storage phone:taxi common_id set from entity @s SelectedItemSlot
execute as @s[tag=taxi,tag=sneaking,tag=!lock_dropoff] at @s if entity @e[type=minecraft:text_display,tag=dropoff,distance=..1.5] run function taxi:receive_common_change

# /summon minecraft:text_display ~ ~0.5 ~ {text:'{"text":"hi"}',billboard:'vertical',Passengers:[{id:"minecraft:marker"}]}
# /summon minecraft:text_display ~ ~0.5 ~ {Tags:["dropoff"],text:'{"text":"Town Center"}',billboard:'vertical',Passengers:[{id:"minecraft:marker",data:{name:"Town Center",dropoff_point:[-831,47,96,-90,-20]}}]}
# summon minecraft:text_display ~ ~4.5 ~ {Tags:["dropoff"], text:'{"text":"Town Hall", "color":"white"}', billboard:'vertical', Passengers:[{id:"minecraft:marker", data:{name:"Town Hall", dropoff_point:"-831 47 96 -90 -20",color:"white"}}]}
# /execute as @e[type=minecraft:text_display,distance=..3] run kill @s

data remove storage tax:data common_id

scoreboard players set @s[tag=taxi] set_dropoff 0