/// @description Moves an item from the inventory to the crafting space
/// @function MoveItemToCrafting(item)
/// @param {item} Item to move

// Grab arguments
var itemToMove = argument0

// If there are still items to move, and the item you're moving is in the inventory
if(ds_list_size(inventory) > 0 && ds_list_find_index(inventory, itemToMove) != -1)
{
    // Remove the item from the inventory
    ds_list_delete(inventory, ds_list_find_index(inventory, itemToMove))
    
    // Add to crafting area
    ds_list_add(crafting, itemToMove)
}

// Move items around
RepositionItems()
