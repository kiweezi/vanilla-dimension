# This function copies the 4th row, armor and offhand items to the second chest.
#
# The project can be found here: https://github.com/kiweezi/vanilla-dimension
# By Kiweezi

# Increments a number variable to loop through the inventory.
execute store result score .slot number run data get storage temp Inventory[0].Slot
scoreboard players operation .slot2 number = .slot number

# Stores the location and item data for the 4th row of items. 
execute if score .slot number matches 27..35 store result storage temp Inventory[0].Slot byte 1 run scoreboard players remove .slot2 number 27
# Stores the location and item data for the armor. 
execute if score .slot number matches 100..103 store result storage temp Inventory[0].Slot byte -1 run scoreboard players remove .slot2 number 121
# Stores the location and item data for the offhand. 
execute if score .slot number matches -106 run data modify storage temp Inventory[0].Slot set value 26b

# Adds each of the items to the chest.
execute unless score .slot number matches 0..26 run data modify block ~ ~ ~ Items append from storage temp Inventory[0]
# Resets the variable.
data remove storage temp Inventory[0]

# Runs the function again if there is anything stored in the variable in order to loop through the inventory.
execute if data storage temp Inventory[0] run function custom:dimensions/copyitem