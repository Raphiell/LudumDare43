/// @description Moves the items in the inventory to their proper positions
var horizontalMargin = 10
var verticalMargin = 6
var x_pos = 64 
var y_pos = 512

// Position iterator to track position of items
var positionIterator = 0

// For each item in inventory
for(i = 0; i < array_length_1d(recipes); i++)
{
    // Current recipe
    recipe = recipes[i]
    
    // If the recipe is available
    if(recipe.available)
    {
        recipe.x = x_pos + (recipe.sprite_width + horizontalMargin) * (positionIterator + 1)
        recipe.y = y_pos
        positionIterator++
    }
    else
    {
        // Otherwise hide it
        recipe.x = -32
        recipe.y = -32
    }
}