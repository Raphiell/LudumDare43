/// @description Recalculates the tag counts of items in the crafting area

// Reset all tags
nextTag = ds_map_find_first(tagMap)

// While we still have tags to go
while(!is_undefined(nextTag))
{
    tagMap[? nextTag].count = 0
    nextTag = ds_map_find_next(tagMap, nextTag)
    
}

// For every item in crafting, increment the corresponding tag count
for(i = 0; i < ds_list_size(crafting); i++)
{
    current_item = ds_list_find_value(crafting, i)
    // For every tag of that item
    for(j = 0; j < array_length_1d(current_item.tags); j++){
        current_item.tags[j].count += 1
    }
}
