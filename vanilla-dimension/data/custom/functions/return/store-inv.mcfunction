# This function copies all the player's inventory to a double chest while they use the creative dimension.
#
# The project can be found here: https://github.com/kiweezi/vanilla-dimension
# By Kiweezi

# Check if scoreboard exists, if not, create it.
execute unless entity @p[scores={objective_name=slotnum}] run scoreboard objectives add slotnum dummy

# Store the hotbar and first two rows of inventory.
data modify block ~ 0 0 Items set from entity @p Inventory

# Store the inventory data in a temp area for use later.
data modify storage temp Inventory set from entity @p Inventory
# Store the 4th row of the inventory, the armor slots and offhand.
execute positioned ~ 0 1