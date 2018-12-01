/// @description Recalculates the tag counts of items in the crafting area

// Reset all tags
for(i = 0; i < ds_list_size(tagList); i++)
{
    current_tag = ds_list_find_value(tagList, i)
    current_tag.count = 0
}

// For every item in crafting, increment the corresponding tag count
for(i = 0; i < ds_list_size(crafting); i++)
{
    current_item = ds_list_find_value(crafting, i)
    // For every tag of that item
    for(j = 0; j < array_length_1d(current_item.tags); j++){
        item_tag = current_item.tags[j]
        
        // Increment the count by one
        item_tag.count += 1
    }
}
