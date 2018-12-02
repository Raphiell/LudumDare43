/// @description Moves the inventory position up or down
/// @function MoveInventoryPosition(amount)
/// @param integer amount The amount to move it by

var amount = argument0

// If we have hidden objects
if(ds_list_size(inventory) > inventory_max)
{
    // If we are moving up, and we aren't already at the top
    if(amount == -1 && inventory_position != 0)
    {
        // Move up
        inventory_position += amount
    }
    else
    // Else we're moving down
    if(amount == 1 && (ds_list_size(inventory) - inventory_max) - inventory_position > 0)
    {
        // Move down
        inventory_position += amount
    }
}

// Reposition
RepositionItems()
