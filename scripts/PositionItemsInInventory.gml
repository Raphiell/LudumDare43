/// @description Moves the items in the inventory to their proper positions
var verticalMargin = 6

// For each item in inventory
for(i = 0; i < ds_list_size(inventory); i++)
{
    // Current item
    item = ds_list_find_value(inventory, i)
    item.x = x 
    item.y = y + (item.sprite_height + verticalMargin) * (i + 1)
}
