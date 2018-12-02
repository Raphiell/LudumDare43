/// @description Moves the items in the inventory to their proper positions
var verticalMargin = 0
var x_pos = 736
var y_pos = 128

// For each item in inventory
for(i = 0; i < ds_list_size(inventory); i++)
{
    // Current item
    item = ds_list_find_value(inventory, i)
    
    if(i < inventory_max + inventory_position && i >= inventory_position)
    {
        item.x = x_pos 
        item.y = y_pos + (item.sprite_width + verticalMargin) * (i - inventory_position)
    }
    else
    {
        // If it's greater than or = 4, hide it, it will be shown when we scroll
        item.x = -2000
        item.y = -2000
    }
}
