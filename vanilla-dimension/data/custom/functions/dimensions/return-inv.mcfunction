# This function returns stored items to the player.
# Uses a custom shulker box loot table from here: https://www.reddit.com/r/MinecraftCommands/wiki/questions/modifyinventory
# By Kiweezi

# Return the helmet, chestplate, leggings and boots to the player.
# Store the item for editting.
data modify storage return Item set from block ~ 0 -1 Items[{Slot:18b}]
# Change the item so it moves to slot 0 of the shulker box.
data modify storage return Item.Slot set value 0b
# Move the helmet, from the chest to the shulker.
data modify block ~ 0 1 Items append from storage return Item
# Mine the shulker and place in players helmet slot.
loot replace entity @s armor.head 1 mine ~ 0 1 minecraft:air{drop_contents: 1b}
# Remove the item from the chest.
replaceitem block ~ 0 -1 container.18 minecraft:air
# Return chestplate.
data modify storage return Item set from block ~ 0 -1 Items[{Slot:19b}]
data modify storage return Item.Slot set value 0b
data modify block ~ 0 1 Items append from storage return Item
loot replace entity @s armor.chest 1 mine ~ 0 1 minecraft:air{drop_contents: 1b}
replaceitem block ~ 0 -1 container.19 minecraft:air
# Return legs.
data modify storage return Item set from block ~ 0 -1 Items[{Slot:20b}]
data modify storage return Item.Slot set value 0b
data modify block ~ 0 1 Items append from storage return Item
loot replace entity @s armor.legs 1 mine ~ 0 1 minecraft:air{drop_contents: 1b}
replaceitem block ~ 0 -1 container.20 minecraft:air
# Return feet.
data modify storage return Item set from block ~ 0 -1 Items[{Slot:21b}]
data modify storage return Item.Slot set value 0b
data modify block ~ 0 1 Items append from storage return Item
loot replace entity @s armor.feet 1 mine ~ 0 1 minecraft:air{drop_contents: 1b}
replaceitem block ~ 0 -1 container.21 minecraft:air

# Return offhand.
data modify storage return Item set from block ~ 0 -1 Items[{Slot:26b}]
data modify storage return Item.Slot set value 0b
data modify block ~ 0 1 Items append from storage return Item
loot replace entity @s weapon.offhand 1 mine ~ 0 1 minecraft:air{drop_contents: 1b}
replaceitem block ~ 0 -1 container.26 minecraft:air

data modify block 2 56 -8 Items set from block 3 56 -8 Items

#
loot replace entity Kiweezi hotbar.0 mine 2 56 -8 minecraft:air{drop_contents: 1b}