/// @description Clears out the items in the description

// For each item in crafting
for(i = 0; i < ds_list_size(crafting); i++)
{
    // Current item
    item = ds_list_find_value(crafting, i)
    
    // Delete it
    instance_destroy(item)
}

// Clear the list for good measure
ds_list_clear(crafting)

// Move items around
RepositionItems()

// Recalculate the tag counts
CalculateTags()

// Recheck the recipes
CheckRecipes()
