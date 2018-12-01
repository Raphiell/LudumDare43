/// @description List all items 


// Display all items in inventory
show_message("In Inventory")
for(i = 0; i < ds_list_size(inventory); i++)
{
    var current_item = ds_list_find_value(inventory, i)

    var message = "Name: " + current_item.name + " Tags: "
    
    for(j = 0; j < array_length_1d(current_item.tags); j++)
    {
        message += current_item.tags[j].name + ", "
    }
    
    show_message(message)
}
// Display all items in inventory
show_message("In Crafting")
for(i = 0; i < ds_list_size(crafting); i++)
{
    var current_item = ds_list_find_value(crafting, i)

    var message = "Name: " + current_item.name + " Tags: "
    
    for(j = 0; j < array_length_1d(current_item.tags); j++)
    {
        message += current_item.tags[j].name + ", "
    }
    
    show_message(message)
}

