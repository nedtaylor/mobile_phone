# reinitialise storage data
$data remove storage $(storage) slot_name
$data remove storage $(storage) slot_id

# Input: Slot Index (0 to 44)
scoreboard objectives add inventory_slot dummy
$execute store result storage $(storage) slot_id byte 1 run scoreboard players set @s inventory_slot -999
$execute store result storage $(storage) slot_id byte 1 run scoreboard players set @s inventory_slot $(slot_id)

# Calculate Slot Name
$execute if score @s inventory_slot matches 0 run data modify storage $(storage) slot_name set value hotbar.0
$execute if score @s inventory_slot matches 1 run data modify storage $(storage) slot_name set value hotbar.1
$execute if score @s inventory_slot matches 2 run data modify storage $(storage) slot_name set value hotbar.2
$execute if score @s inventory_slot matches 3 run data modify storage $(storage) slot_name set value hotbar.3
$execute if score @s inventory_slot matches 4 run data modify storage $(storage) slot_name set value hotbar.4
$execute if score @s inventory_slot matches 5 run data modify storage $(storage) slot_name set value hotbar.5
$execute if score @s inventory_slot matches 6 run data modify storage $(storage) slot_name set value hotbar.6
$execute if score @s inventory_slot matches 7 run data modify storage $(storage) slot_name set value hotbar.7
$execute if score @s inventory_slot matches 8 run data modify storage $(storage) slot_name set value hotbar.8
$execute if score @s inventory_slot matches 9 run data modify storage $(storage) slot_name set value inventory.0
$execute if score @s inventory_slot matches 10 run data modify storage $(storage) slot_name set value inventory.1
$execute if score @s inventory_slot matches 11 run data modify storage $(storage) slot_name set value inventory.2
$execute if score @s inventory_slot matches 12 run data modify storage $(storage) slot_name set value inventory.3
$execute if score @s inventory_slot matches 13 run data modify storage $(storage) slot_name set value inventory.4
$execute if score @s inventory_slot matches 14 run data modify storage $(storage) slot_name set value inventory.5
$execute if score @s inventory_slot matches 15 run data modify storage $(storage) slot_name set value inventory.6
$execute if score @s inventory_slot matches 16 run data modify storage $(storage) slot_name set value inventory.7
$execute if score @s inventory_slot matches 17 run data modify storage $(storage) slot_name set value inventory.8
$execute if score @s inventory_slot matches 18 run data modify storage $(storage) slot_name set value inventory.9
$execute if score @s inventory_slot matches 19 run data modify storage $(storage) slot_name set value inventory.10
$execute if score @s inventory_slot matches 20 run data modify storage $(storage) slot_name set value inventory.11
$execute if score @s inventory_slot matches 21 run data modify storage $(storage) slot_name set value inventory.12
$execute if score @s inventory_slot matches 22 run data modify storage $(storage) slot_name set value inventory.13
$execute if score @s inventory_slot matches 23 run data modify storage $(storage) slot_name set value inventory.14
$execute if score @s inventory_slot matches 24 run data modify storage $(storage) slot_name set value inventory.15
$execute if score @s inventory_slot matches 25 run data modify storage $(storage) slot_name set value inventory.16
$execute if score @s inventory_slot matches 26 run data modify storage $(storage) slot_name set value inventory.17
$execute if score @s inventory_slot matches 27 run data modify storage $(storage) slot_name set value inventory.18
$execute if score @s inventory_slot matches 28 run data modify storage $(storage) slot_name set value inventory.19
$execute if score @s inventory_slot matches 29 run data modify storage $(storage) slot_name set value inventory.20
$execute if score @s inventory_slot matches 30 run data modify storage $(storage) slot_name set value inventory.21
$execute if score @s inventory_slot matches 31 run data modify storage $(storage) slot_name set value inventory.22
$execute if score @s inventory_slot matches 32 run data modify storage $(storage) slot_name set value inventory.23
$execute if score @s inventory_slot matches 33 run data modify storage $(storage) slot_name set value inventory.24
$execute if score @s inventory_slot matches 34 run data modify storage $(storage) slot_name set value inventory.25
$execute if score @s inventory_slot matches 35 run data modify storage $(storage) slot_name set value inventory.26

$execute if score @s inventory_slot matches -106 run data modify storage $(storage) slot_name set value weapon.offhand

$execute if score @s inventory_slot matches 100 run data modify storage $(storage) slot_name set value armor.feet
$execute if score @s inventory_slot matches 101 run data modify storage $(storage) slot_name set value armor.legs
$execute if score @s inventory_slot matches 102 run data modify storage $(storage) slot_name set value armor.chest
$execute if score @s inventory_slot matches 103 run data modify storage $(storage) slot_name set value armor.head

# Clear Storage
scoreboard objectives remove inventory_slot
