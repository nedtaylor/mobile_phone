tag @s[tag=taxi] remove sneaking
execute as @s[scores={sneak=1..},tag=taxi] run tag @s add sneaking
execute as @s[tag=taxi,tag=!sneaking,tag=lock_dropoff] run tag @s remove lock_dropoff

# execute at @a[tag=taxi] as @e[type=minecraft:item_frame,distance=..3] store success entity @s Invulnerable byte 1 if data entity @s Item{id:"minecraft:light"}
# execute at @a[tag=taxi] as @e[type=minecraft:item_frame,distance=..2] store success entity @s Invulnerable byte 1 if data entity @s Item{id:"minecraft:light"}

# tellraw @a "hi"
# execute as @a[tag=taxi,tag=sneaking] at @s if entity @e[type=minecraft:text_display,tag=dropoff,distance=..1] run data modify storage phone:taxi common_id set from entity @s SelectedItemSlot
# execute as @a[tag=taxi,tag=sneaking] at @s if entity @e[type=minecraft:text_display,tag=dropoff,distance=..1] run data modify storage phone:taxi common_id set from entity @s SelectedItemSlot
execute as @a[tag=taxi,tag=sneaking,tag=!lock_dropoff] at @s if entity @e[type=minecraft:text_display,tag=dropoff,distance=..1] run function taxi:receive_common_change
# execute as @a[tag=taxi,tag=sneaking] at @s if entity @e[type=minecraft:text_display,tag=dropoff,distance=..1] run function taxi:receive_common_change with entity @e[type=minecraft:text_display,tag=dropoff,distance=..2,limit=1] Passengers[0].data
# execute as @a[tag=taxi,tag=sneaking] at @s if entity @e[type=minecraft:text_display,distance=..1] run tellraw @a "set dropoff"


# /summon minecraft:text_display ~ ~0.5 ~ {text:'{"text":"hi"}',billboard:'vertical',Passengers:[{id:"minecraft:marker"}]}
# /summon minecraft:text_display ~ ~0.5 ~ {Tags:["dropoff"],text:'{"text":"Town Center"}',billboard:'vertical',Passengers:[{id:"minecraft:marker",data:{name:"Town Center",dropoff_point:[-831,47,96,-90,-20]}}]}
# summon minecraft:text_display ~ ~4.5 ~ {Tags:["dropoff"], text:'{"text":"Town Hall", "color":"white"}', billboard:'vertical', Passengers:[{id:"minecraft:marker", data:{name:"Town Hall", dropoff_point:"-831 47 96 -90 -20",color:"white"}}]}
# /execute as @e[type=minecraft:text_display,distance=..3] run kill @s

data remove storage tax:data common_id

scoreboard players set @s[tag=taxi] sneak 0