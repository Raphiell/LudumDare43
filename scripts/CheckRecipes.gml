/// @description Recheck which recipes are available

// For each recipe
for(i = 0; i < array_length_1d(recipes); i++)
{
    // Grab the recipe
    var recipe = recipes[i]
    var available = true
    
    // Can we make it?
    // For each tag in the recipe, check the count of that tag
    for(j = 0; j < array_length_1d(recipe.tags); j++)
    {
        // If we don't have enough of it, we can't make this
        if(tagMap[? recipe.tags[j]].count < 1)
        {
            // Can't make this
            available = false
        }        
    }
    
    // If we can make it, show us
    if(available)
    {
        show_message(recipe.name)
    }
}
