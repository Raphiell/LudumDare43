// This script will add a specific item to the global inventory

// Passed variables
var itemToAdd = argument0

// Push onto list
ds_list_add(inventory, itemToAdd)

show_message("" + ds_list_find_value(inventory, 0).name)

